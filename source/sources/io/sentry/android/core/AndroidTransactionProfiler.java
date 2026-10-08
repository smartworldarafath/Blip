package io.sentry.android.core;

import android.content.Context;
import android.os.Build;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ITransaction;
import io.sentry.ITransactionProfiler;
import io.sentry.ProfilingTraceData;
import io.sentry.ProfilingTransactionData;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryTracer;
import io.sentry.android.core.AndroidProfiler;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTransactionProfiler implements ITransactionProfiler {
    public final Context a;
    public final ILogger b;
    public final String c;
    public final boolean d;
    public final int e;
    public final LazyEvaluator.Evaluator f;
    public final BuildInfoProvider g;
    public final SentryFrameMetricsCollector j;
    public volatile ProfilingTransactionData k;
    public long m;
    public long n;
    public Date o;
    public boolean h = false;
    public final AtomicBoolean i = new AtomicBoolean(false);
    public volatile AndroidProfiler l = null;
    public final AutoClosableReentrantLock p = new ReentrantLock();

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public AndroidTransactionProfiler(Context context, BuildInfoProvider buildInfoProvider, SentryFrameMetricsCollector sentryFrameMetricsCollector, ILogger iLogger, String str, boolean z, int i, LazyEvaluator.Evaluator evaluator) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext != null ? applicationContext : context;
        Objects.b(iLogger, "ILogger is required");
        this.b = iLogger;
        this.j = sentryFrameMetricsCollector;
        Objects.b(buildInfoProvider, "The BuildInfoProvider is required.");
        this.g = buildInfoProvider;
        this.c = str;
        this.d = z;
        this.e = i;
        this.f = evaluator;
        this.o = DateUtils.b();
    }

    @Override // io.sentry.ITransactionProfiler
    public final void a(ITransaction iTransaction) {
        if (this.i.get() && this.k == null) {
            ISentryLifecycleToken a = this.p.a();
            try {
                if (this.i.get() && this.k == null) {
                    this.k = new ProfilingTransactionData(iTransaction, Long.valueOf(this.m), Long.valueOf(this.n));
                }
                a.close();
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

    @Override // io.sentry.ITransactionProfiler
    public final ProfilingTraceData b(SentryTracer sentryTracer, List list, SentryOptions sentryOptions) {
        return c(sentryTracer.e, sentryTracer.a.toString(), sentryTracer.b.c.j.toString(), false, list, sentryOptions);
    }

    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object, java.util.concurrent.Callable] */
    public final ProfilingTraceData c(String str, String str2, String str3, boolean z, List list, SentryOptions sentryOptions) {
        Long l;
        String str4;
        String str5;
        String str6;
        this.g.getClass();
        int i = Build.VERSION.SDK_INT;
        if (this.l != null) {
            ISentryLifecycleToken a = this.p.a();
            try {
                ProfilingTransactionData profilingTransactionData = this.k;
                if (profilingTransactionData != null && profilingTransactionData.j.equals(str2)) {
                    this.k = null;
                    a.close();
                    this.b.c(SentryLevel.DEBUG, "Transaction %s (%s) finished.", str, str3);
                    AndroidProfiler.ProfileEndData a2 = this.l.a(list, false);
                    this.i.set(false);
                    if (a2 != null) {
                        long j = a2.a - this.m;
                        ArrayList arrayList = new ArrayList(1);
                        arrayList.add(profilingTransactionData);
                        long j2 = a2.a;
                        long j3 = this.m;
                        long j4 = a2.b;
                        long j5 = this.n;
                        if (profilingTransactionData.n == null) {
                            profilingTransactionData.n = Long.valueOf(j2 - j3);
                            profilingTransactionData.m = Long.valueOf(profilingTransactionData.m.longValue() - j3);
                            profilingTransactionData.p = Long.valueOf(j4 - j5);
                            profilingTransactionData.o = Long.valueOf(profilingTransactionData.o.longValue() - j5);
                        }
                        if (sentryOptions instanceof SentryAndroidOptions) {
                            l = DeviceInfoUtil.c(this.a, (SentryAndroidOptions) sentryOptions).h;
                        } else {
                            l = null;
                        }
                        if (l != null) {
                            str4 = Long.toString(l.longValue());
                        } else {
                            str4 = "0";
                        }
                        String[] strArr = Build.SUPPORTED_ABIS;
                        File file = a2.c;
                        Date date = this.o;
                        String l2 = Long.toString(j);
                        this.g.getClass();
                        if (strArr != null && strArr.length > 0) {
                            str5 = strArr[0];
                        } else {
                            str5 = "";
                        }
                        ?? obj = new Object();
                        this.g.getClass();
                        String str7 = Build.MANUFACTURER;
                        this.g.getClass();
                        String str8 = Build.MODEL;
                        this.g.getClass();
                        String str9 = Build.VERSION.RELEASE;
                        Boolean a3 = this.g.a();
                        String proguardUuid = sentryOptions.getProguardUuid();
                        String release = sentryOptions.getRelease();
                        String environment = sentryOptions.getEnvironment();
                        if (!a2.e && !z) {
                            str6 = "normal";
                        } else {
                            str6 = "timeout";
                        }
                        return new ProfilingTraceData(file, date, arrayList, str, str2, str3, l2, i, str5, obj, str7, str8, str9, a3, str4, proguardUuid, release, environment, str6, a2.d);
                    }
                } else {
                    this.b.c(SentryLevel.INFO, "Transaction %s (%s) finished, but was not currently being profiled. Skipping", str, str3);
                    a.close();
                    return null;
                }
            } finally {
            }
        }
        return null;
    }

    @Override // io.sentry.ITransactionProfiler
    public final void close() {
        AndroidTransactionProfiler androidTransactionProfiler;
        ProfilingTransactionData profilingTransactionData = this.k;
        if (profilingTransactionData != null) {
            androidTransactionProfiler = this;
            androidTransactionProfiler.c(profilingTransactionData.l, profilingTransactionData.j, profilingTransactionData.k, true, null, ScopesAdapter.a.j());
        } else {
            androidTransactionProfiler = this;
        }
        androidTransactionProfiler.i.set(false);
        if (androidTransactionProfiler.l != null) {
            AndroidProfiler androidProfiler = androidTransactionProfiler.l;
            ISentryLifecycleToken a = androidProfiler.o.a();
            try {
                Future future = androidProfiler.d;
                if (future != null) {
                    future.cancel(true);
                    androidProfiler.d = null;
                }
                if (androidProfiler.n) {
                    androidProfiler.a(null, true);
                }
                a.close();
            } finally {
            }
        }
    }

    @Override // io.sentry.ITransactionProfiler
    public final boolean isRunning() {
        return this.i.get();
    }

    @Override // io.sentry.ITransactionProfiler
    public final void start() {
        AndroidProfiler.ProfileStartData c;
        this.g.getClass();
        if (!this.i.getAndSet(true)) {
            if (!this.h) {
                this.h = true;
                if (!this.d) {
                    this.b.c(SentryLevel.INFO, "Profiling is disabled in options.", new Object[0]);
                } else {
                    String str = this.c;
                    if (str == null) {
                        this.b.c(SentryLevel.WARNING, "Disabling profiling because no profiling traces dir path is defined in options.", new Object[0]);
                    } else {
                        int i = this.e;
                        if (i <= 0) {
                            this.b.c(SentryLevel.WARNING, "Disabling profiling because trace rate is set to %d", Integer.valueOf(i));
                        } else {
                            this.l = new AndroidProfiler(str, 1000000 / i, this.j, this.f, this.b);
                        }
                    }
                }
            }
            if (this.l == null || (c = this.l.c()) == null) {
                if (this.l != null && this.l.n) {
                    this.b.c(SentryLevel.WARNING, "A profile is already running. This profile will be ignored.", new Object[0]);
                    return;
                }
                ISentryLifecycleToken a = this.p.a();
                try {
                    this.k = null;
                    a.close();
                    this.i.set(false);
                } finally {
                }
            } else {
                this.m = c.a;
                this.n = c.b;
                this.o = c.c;
                this.b.c(SentryLevel.DEBUG, "Profiler started.", new Object[0]);
            }
        }
    }
}
