package io.sentry.android.core;

import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.ISentryExecutorService;
import io.sentry.ISentryLifecycleToken;
import io.sentry.PerformanceCollectionData;
import io.sentry.SentryLevel;
import io.sentry.SentryNanotimeDate;
import io.sentry.SentryUUID;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.profilemeasurements.ProfileMeasurement;
import io.sentry.profilemeasurements.ProfileMeasurementValue;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AndroidProfiler {
    public final File b;
    public final int c;
    public String f;
    public final SentryFrameMetricsCollector g;
    public final LazyEvaluator.Evaluator l;
    public final ILogger m;
    public long a = 0;
    public Future d = null;
    public File e = null;
    public final ArrayDeque h = new ArrayDeque();
    public final ArrayDeque i = new ArrayDeque();
    public final ArrayDeque j = new ArrayDeque();
    public final HashMap k = new HashMap();
    public volatile boolean n = false;
    public final AutoClosableReentrantLock o = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ProfileEndData {
        public final long a;
        public final long b;
        public final File c;
        public final Map d;
        public final boolean e;

        public ProfileEndData(long j, long j2, boolean z, File file, HashMap hashMap) {
            this.a = j;
            this.c = file;
            this.b = j2;
            this.d = hashMap;
            this.e = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ProfileStartData {
        public final long a;
        public final long b;
        public final Date c;

        public ProfileStartData(long j, long j2, Date date) {
            this.a = j;
            this.b = j2;
            this.c = date;
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public AndroidProfiler(String str, int i, SentryFrameMetricsCollector sentryFrameMetricsCollector, LazyEvaluator.Evaluator evaluator, ILogger iLogger) {
        Objects.b(str, "TracesFilesDirPath is required");
        this.b = new File(str);
        this.c = i;
        Objects.b(iLogger, "Logger is required");
        this.m = iLogger;
        this.l = evaluator;
        Objects.b(sentryFrameMetricsCollector, "SentryFrameMetricsCollector is required");
        this.g = sentryFrameMetricsCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #2 {all -> 0x001b, blocks: (B:3:0x0006, B:5:0x000c, B:11:0x0022, B:12:0x0030, B:14:0x0043, B:17:0x0052, B:20:0x005c, B:21:0x006a, B:23:0x0072, B:24:0x0080, B:26:0x0088, B:27:0x0098, B:29:0x009f, B:30:0x00a5, B:40:0x00b5, B:41:0x00b7, B:36:0x0026, B:10:0x001f), top: B:2:0x0006, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0052 A[Catch: all -> 0x001b, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x001b, blocks: (B:3:0x0006, B:5:0x000c, B:11:0x0022, B:12:0x0030, B:14:0x0043, B:17:0x0052, B:20:0x005c, B:21:0x006a, B:23:0x0072, B:24:0x0080, B:26:0x0088, B:27:0x0098, B:29:0x009f, B:30:0x00a5, B:40:0x00b5, B:41:0x00b7, B:36:0x0026, B:10:0x001f), top: B:2:0x0006, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ProfileEndData a(List list, boolean z) {
        ISentryLifecycleToken a = this.o.a();
        try {
            if (!this.n) {
                this.m.c(SentryLevel.WARNING, "Profiler not running", new Object[0]);
                a.close();
                return null;
            }
            try {
                Debug.stopMethodTracing();
            } finally {
                try {
                    this.n = false;
                    this.g.a(this.f);
                    long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                    long elapsedCpuTime = Process.getElapsedCpuTime();
                    if (this.e != null) {
                    }
                } catch (Throwable th) {
                }
            }
            this.n = false;
            this.g.a(this.f);
            long elapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos();
            long elapsedCpuTime2 = Process.getElapsedCpuTime();
            if (this.e != null) {
                this.m.c(SentryLevel.ERROR, "Trace file does not exists", new Object[0]);
                a.close();
                return null;
            }
            if (!this.i.isEmpty()) {
                this.k.put("slow_frame_renders", new ProfileMeasurement("nanosecond", this.i));
            }
            if (!this.j.isEmpty()) {
                this.k.put("frozen_frame_renders", new ProfileMeasurement("nanosecond", this.j));
            }
            if (!this.h.isEmpty()) {
                this.k.put("screen_frame_rates", new ProfileMeasurement("hz", this.h));
            }
            b(list);
            Future future = this.d;
            if (future != null) {
                future.cancel(true);
                this.d = null;
            }
            ProfileEndData profileEndData = new ProfileEndData(elapsedRealtimeNanos2, elapsedCpuTime2, z, this.e, this.k);
            a.close();
            return profileEndData;
        } finally {
        }
    }

    public final void b(List list) {
        long elapsedRealtimeNanos = (SystemClock.elapsedRealtimeNanos() - this.a) - TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        if (list != null) {
            ArrayDeque arrayDeque = new ArrayDeque(list.size());
            ArrayDeque arrayDeque2 = new ArrayDeque(list.size());
            ArrayDeque arrayDeque3 = new ArrayDeque(list.size());
            synchronized (list) {
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        PerformanceCollectionData performanceCollectionData = (PerformanceCollectionData) it.next();
                        long j = performanceCollectionData.d;
                        long j2 = j + elapsedRealtimeNanos;
                        Double d = performanceCollectionData.a;
                        Long l = performanceCollectionData.b;
                        Long l2 = performanceCollectionData.c;
                        if (d != null) {
                            arrayDeque3.add(new ProfileMeasurementValue(Long.valueOf(j2), d, j));
                        }
                        if (l != null) {
                            arrayDeque.add(new ProfileMeasurementValue(Long.valueOf(j2), l, j));
                        }
                        if (l2 != null) {
                            arrayDeque2.add(new ProfileMeasurementValue(Long.valueOf(j2), l2, j));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!arrayDeque3.isEmpty()) {
                this.k.put("cpu_usage", new ProfileMeasurement("percent", arrayDeque3));
            }
            if (!arrayDeque.isEmpty()) {
                this.k.put("memory_footprint", new ProfileMeasurement("byte", arrayDeque));
            }
            if (!arrayDeque2.isEmpty()) {
                this.k.put("memory_native_footprint", new ProfileMeasurement("byte", arrayDeque2));
            }
        }
    }

    public final ProfileStartData c() {
        String a;
        ISentryLifecycleToken a2 = this.o.a();
        try {
            int i = this.c;
            if (i == 0) {
                this.m.c(SentryLevel.WARNING, "Disabling profiling because intervaUs is set to %d", Integer.valueOf(i));
                a2.close();
                return null;
            }
            if (this.n) {
                this.m.c(SentryLevel.WARNING, "Profiling has already started...", new Object[0]);
                a2.close();
                return null;
            }
            this.e = new File(this.b, SentryUUID.a().concat(".trace"));
            this.k.clear();
            this.h.clear();
            this.i.clear();
            this.j.clear();
            SentryFrameMetricsCollector sentryFrameMetricsCollector = this.g;
            SentryFrameMetricsCollector.FrameMetricsCollectorListener frameMetricsCollectorListener = new SentryFrameMetricsCollector.FrameMetricsCollectorListener() { // from class: io.sentry.android.core.AndroidProfiler.1
                public float a = 0.0f;

                @Override // io.sentry.android.core.internal.util.SentryFrameMetricsCollector.FrameMetricsCollectorListener
                public final void b(long j, long j2, long j3, long j4, boolean z, boolean z2, float f) {
                    long d = new SentryNanotimeDate().d();
                    long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos() + (j2 - System.nanoTime());
                    AndroidProfiler androidProfiler = AndroidProfiler.this;
                    long j5 = elapsedRealtimeNanos - androidProfiler.a;
                    if (j5 >= 0) {
                        if (z2) {
                            androidProfiler.j.addLast(new ProfileMeasurementValue(Long.valueOf(j5), Long.valueOf(j3), d));
                        } else if (z) {
                            androidProfiler.i.addLast(new ProfileMeasurementValue(Long.valueOf(j5), Long.valueOf(j3), d));
                        }
                        if (f != this.a) {
                            this.a = f;
                            androidProfiler.h.addLast(new ProfileMeasurementValue(Long.valueOf(j5), Float.valueOf(f), d));
                        }
                    }
                }
            };
            if (!sentryFrameMetricsCollector.p) {
                a = null;
            } else {
                a = SentryUUID.a();
                sentryFrameMetricsCollector.o.put(a, frameMetricsCollectorListener);
                sentryFrameMetricsCollector.b();
            }
            this.f = a;
            try {
                LazyEvaluator.Evaluator evaluator = this.l;
                if (evaluator != null) {
                    this.d = ((ISentryExecutorService) evaluator.c()).c(30000L, new b(4, this));
                }
            } catch (RejectedExecutionException e) {
                this.m.b(SentryLevel.ERROR, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?", e);
            }
            this.a = SystemClock.elapsedRealtimeNanos();
            Date b = DateUtils.b();
            long elapsedCpuTime = Process.getElapsedCpuTime();
            try {
                Debug.startMethodTracingSampling(this.e.getPath(), 3000000, this.c);
                this.n = true;
                ProfileStartData profileStartData = new ProfileStartData(this.a, elapsedCpuTime, b);
                a2.close();
                return profileStartData;
            } catch (Throwable th) {
                a(null, false);
                this.m.b(SentryLevel.ERROR, "Unable to start a profile: ", th);
                this.n = false;
                a2.close();
                return null;
            }
        } finally {
        }
    }
}
