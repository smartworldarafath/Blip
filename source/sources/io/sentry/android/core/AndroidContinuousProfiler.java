package io.sentry.android.core;

import io.sentry.CompositePerformanceCollector;
import io.sentry.DataCategory;
import io.sentry.IConnectionStatusProvider;
import io.sentry.IContinuousProfiler;
import io.sentry.ILogger;
import io.sentry.IScopes;
import io.sentry.ISentryExecutorService;
import io.sentry.ISentryLifecycleToken;
import io.sentry.NoOpScopes;
import io.sentry.ProfileChunk;
import io.sentry.ProfileLifecycle;
import io.sentry.Sentry;
import io.sentry.SentryDate;
import io.sentry.SentryLevel;
import io.sentry.SentryNanotimeDate;
import io.sentry.SentryOptions;
import io.sentry.TracesSampler;
import io.sentry.android.core.AndroidProfiler;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.protocol.SentryId;
import io.sentry.transport.RateLimiter;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.SentryRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AndroidContinuousProfiler implements IContinuousProfiler, RateLimiter.IRateLimitObserver {
    public volatile boolean A;
    public boolean B;
    public boolean C;
    public int D;
    public final AutoClosableReentrantLock E;
    public final AutoClosableReentrantLock F;
    public final ILogger j;
    public final String k;
    public final int l;
    public final LazyEvaluator.Evaluator m;
    public final BuildInfoProvider n;
    public final SentryFrameMetricsCollector p;
    public IScopes s;
    public Future t;
    public CompositePerformanceCollector u;
    public SentryId w;
    public SentryId x;
    public final AtomicBoolean y;
    public SentryDate z;
    public boolean o = false;
    public AndroidProfiler q = null;
    public boolean r = false;
    public final ArrayList v = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.AndroidContinuousProfiler$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ProfileLifecycle.values().length];
            a = iArr;
            try {
                iArr[ProfileLifecycle.TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ProfileLifecycle.MANUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public AndroidContinuousProfiler(BuildInfoProvider buildInfoProvider, SentryFrameMetricsCollector sentryFrameMetricsCollector, ILogger iLogger, String str, int i, LazyEvaluator.Evaluator evaluator) {
        SentryId sentryId = SentryId.k;
        this.w = sentryId;
        this.x = sentryId;
        this.y = new AtomicBoolean(false);
        this.z = new SentryNanotimeDate();
        this.A = true;
        this.B = false;
        this.C = false;
        this.D = 0;
        this.E = new ReentrantLock();
        this.F = new ReentrantLock();
        this.j = iLogger;
        this.p = sentryFrameMetricsCollector;
        this.n = buildInfoProvider;
        this.k = str;
        this.l = i;
        this.m = evaluator;
    }

    @Override // io.sentry.transport.RateLimiter.IRateLimitObserver
    public final void A(RateLimiter rateLimiter) {
        if (!rateLimiter.h(DataCategory.All) && !rateLimiter.h(DataCategory.ProfileChunkUi)) {
            return;
        }
        this.j.c(SentryLevel.WARNING, "SDK is rate limited. Stopping profiler.", new Object[0]);
        h(false);
    }

    public final void a() {
        IScopes iScopes = this.s;
        if ((iScopes == null || iScopes == NoOpScopes.b) && Sentry.b() != NoOpScopes.b) {
            this.s = Sentry.b();
            this.u = Sentry.b().j().getCompositePerformanceCollector();
            RateLimiter d = this.s.d();
            if (d != null) {
                d.m.add(this);
            }
        }
    }

    @Override // io.sentry.IContinuousProfiler
    public final void b(boolean z) {
        ISentryLifecycleToken a = this.E.a();
        try {
            this.D = 0;
            this.B = true;
            if (z) {
                h(false);
                this.y.set(true);
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

    @Override // io.sentry.IContinuousProfiler
    public final void c(ProfileLifecycle profileLifecycle) {
        ISentryLifecycleToken a = this.E.a();
        try {
            int i = AnonymousClass1.a[profileLifecycle.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.B = true;
                }
            } else {
                int i2 = this.D - 1;
                this.D = i2;
                if (i2 > 0) {
                    a.close();
                    return;
                } else {
                    if (i2 < 0) {
                        this.D = 0;
                    }
                    this.B = true;
                }
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

    @Override // io.sentry.IContinuousProfiler
    public final void d(ProfileLifecycle profileLifecycle, TracesSampler tracesSampler) {
        boolean z;
        ISentryLifecycleToken a = this.E.a();
        try {
            if (this.A) {
                double c = SentryRandom.a().c();
                Double profileSessionSampleRate = tracesSampler.a.getProfileSessionSampleRate();
                if (profileSessionSampleRate != null && profileSessionSampleRate.doubleValue() >= c) {
                    z = true;
                } else {
                    z = false;
                }
                this.C = z;
                this.A = false;
            }
            if (!this.C) {
                this.j.c(SentryLevel.DEBUG, "Profiler was not started due to sampling decision.", new Object[0]);
                a.close();
                return;
            }
            int i = AnonymousClass1.a[profileLifecycle.ordinal()];
            if (i != 1) {
                if (i == 2 && this.r) {
                    this.j.c(SentryLevel.DEBUG, "Profiler is already running.", new Object[0]);
                    a.close();
                    return;
                }
            } else {
                if (this.D < 0) {
                    this.D = 0;
                }
                this.D++;
            }
            if (!this.r) {
                this.j.c(SentryLevel.DEBUG, "Started Profiler.", new Object[0]);
                g();
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

    @Override // io.sentry.IContinuousProfiler
    public final void e() {
        this.A = true;
    }

    @Override // io.sentry.IContinuousProfiler
    public final SentryId f() {
        return this.w;
    }

    public final void g() {
        a();
        this.n.getClass();
        if (!this.o) {
            this.o = true;
            ILogger iLogger = this.j;
            String str = this.k;
            if (str == null) {
                iLogger.c(SentryLevel.WARNING, "Disabling profiling because no profiling traces dir path is defined in options.", new Object[0]);
            } else {
                int i = this.l;
                if (i <= 0) {
                    iLogger.c(SentryLevel.WARNING, "Disabling profiling because trace rate is set to %d", Integer.valueOf(i));
                } else {
                    this.q = new AndroidProfiler(str, 1000000 / i, this.p, null, iLogger);
                }
            }
        }
        if (this.q != null) {
            IScopes iScopes = this.s;
            ILogger iLogger2 = this.j;
            if (iScopes != null) {
                RateLimiter d = iScopes.d();
                if (d != null && (d.h(DataCategory.All) || d.h(DataCategory.ProfileChunkUi))) {
                    iLogger2.c(SentryLevel.WARNING, "SDK is rate limited. Stopping profiler.", new Object[0]);
                    h(false);
                    return;
                } else {
                    if (this.s.j().getConnectionStatusProvider().p0() == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
                        iLogger2.c(SentryLevel.WARNING, "Device is offline. Stopping profiler.", new Object[0]);
                        h(false);
                        return;
                    }
                    this.z = this.s.j().getDateProvider().a();
                }
            } else {
                this.z = new SentryNanotimeDate();
            }
            if (this.q.c() == null) {
                return;
            }
            this.r = true;
            SentryId sentryId = this.w;
            SentryId sentryId2 = SentryId.k;
            if (sentryId.equals(sentryId2)) {
                this.w = new SentryId();
            }
            if (this.x.equals(sentryId2)) {
                this.x = new SentryId();
            }
            CompositePerformanceCollector compositePerformanceCollector = this.u;
            if (compositePerformanceCollector != null) {
                compositePerformanceCollector.a(this.x.toString());
            }
            try {
                this.t = ((ISentryExecutorService) this.m.c()).c(60000L, new b(3, this));
            } catch (RejectedExecutionException e) {
                iLogger2.b(SentryLevel.ERROR, "Failed to schedule profiling chunk finish. Did you call Sentry.close()?", e);
                this.B = true;
            }
        }
    }

    public final void h(boolean z) {
        List list;
        a();
        ISentryLifecycleToken a = this.E.a();
        try {
            Future future = this.t;
            if (future != null) {
                future.cancel(true);
            }
            if (this.q != null && this.r) {
                this.n.getClass();
                CompositePerformanceCollector compositePerformanceCollector = this.u;
                if (compositePerformanceCollector != null) {
                    list = compositePerformanceCollector.c(this.x.toString());
                } else {
                    list = null;
                }
                AndroidProfiler.ProfileEndData a2 = this.q.a(list, false);
                ILogger iLogger = this.j;
                if (a2 == null) {
                    iLogger.c(SentryLevel.ERROR, "An error occurred while collecting a profile chunk, and it won't be sent.", new Object[0]);
                } else {
                    ISentryLifecycleToken a3 = this.F.a();
                    try {
                        this.v.add(new ProfileChunk.Builder(this.w, this.x, a2.d, a2.c, this.z));
                        a3.close();
                    } finally {
                    }
                }
                this.r = false;
                this.x = SentryId.k;
                IScopes iScopes = this.s;
                if (iScopes != null) {
                    SentryOptions j = iScopes.j();
                    try {
                        j.getExecutorService().submit(new m(this, j, iScopes, 3));
                    } catch (Throwable th) {
                        j.getLogger().b(SentryLevel.DEBUG, "Failed to send profile chunks.", th);
                    }
                }
                if (z && !this.B) {
                    iLogger.c(SentryLevel.DEBUG, "Profile chunk finished. Starting a new one.", new Object[0]);
                    g();
                } else {
                    this.w = SentryId.k;
                    iLogger.c(SentryLevel.DEBUG, "Profile chunk finished.", new Object[0]);
                }
                a.close();
                return;
            }
            SentryId sentryId = SentryId.k;
            this.w = sentryId;
            this.x = sentryId;
            a.close();
        } finally {
        }
    }
}
