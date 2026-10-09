package io.sentry.android.core;

import android.os.SystemClock;
import android.system.Os;
import android.system.OsConstants;
import io.sentry.ILogger;
import io.sentry.IPerformanceSnapshotCollector;
import io.sentry.PerformanceCollectionData;
import io.sentry.SentryLevel;
import io.sentry.util.FileUtils;
import io.sentry.util.Objects;
import java.io.File;
import java.io.IOException;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidCpuCollector implements IPerformanceSnapshotCollector {
    public final ILogger g;
    public long a = 0;
    public long b = 0;
    public long c = 1;
    public long d = 1;
    public double e = 1.0E9d;
    public final File f = new File("/proc/self/stat");
    public boolean h = false;
    public final Pattern i = Pattern.compile("[\n\t\r ]");

    public AndroidCpuCollector(ILogger iLogger) {
        Objects.b(iLogger, "Logger is required.");
        this.g = iLogger;
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public final void a(PerformanceCollectionData performanceCollectionData) {
        if (!this.h) {
            return;
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        long j = elapsedRealtimeNanos - this.a;
        this.a = elapsedRealtimeNanos;
        long b = b();
        long j2 = b - this.b;
        this.b = b;
        performanceCollectionData.a = Double.valueOf(((j2 / j) / this.d) * 100.0d);
    }

    public final long b() {
        String str;
        ILogger iLogger = this.g;
        try {
            str = FileUtils.c(this.f);
        } catch (IOException e) {
            this.h = false;
            iLogger.b(SentryLevel.WARNING, "Unable to read /proc/self/stat file. Disabling cpu collection.", e);
            str = null;
        }
        if (str != null) {
            String[] split = this.i.split(str.trim());
            try {
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[14]);
                return (long) ((parseLong + parseLong2 + Long.parseLong(split[15]) + Long.parseLong(split[16])) * this.e);
            } catch (ArrayIndexOutOfBoundsException | NumberFormatException e2) {
                iLogger.b(SentryLevel.ERROR, "Error parsing /proc/self/stat file.", e2);
            }
        }
        return 0L;
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public final void c() {
        this.h = true;
        this.c = Os.sysconf(OsConstants._SC_CLK_TCK);
        this.d = Os.sysconf(OsConstants._SC_NPROCESSORS_CONF);
        this.e = 1.0E9d / this.c;
        this.b = b();
    }
}
