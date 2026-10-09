package io.sentry.android.core.internal.util;

import io.sentry.ISentryLifecycleToken;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CpuInfoUtils {
    public static final CpuInfoUtils c = new CpuInfoUtils();
    public final AutoClosableReentrantLock a = new ReentrantLock();
    public final ArrayList b = new ArrayList();

    public final ArrayList a() {
        ArrayList arrayList = this.b;
        ISentryLifecycleToken a = this.a.a();
        try {
            if (!arrayList.isEmpty()) {
                a.close();
                return arrayList;
            }
            File[] listFiles = new File("/sys/devices/system/cpu").listFiles();
            if (listFiles == null) {
                ArrayList arrayList2 = new ArrayList();
                a.close();
                return arrayList2;
            }
            for (File file : listFiles) {
                if (file.getName().matches("cpu[0-9]+")) {
                    try {
                        String c2 = FileUtils.c(new File(file, "cpufreq/cpuinfo_max_freq"));
                        if (c2 != null) {
                            arrayList.add(Integer.valueOf((int) (Long.parseLong(c2.trim()) / 1000)));
                        }
                    } catch (IOException | NumberFormatException unused) {
                    }
                }
            }
            a.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
