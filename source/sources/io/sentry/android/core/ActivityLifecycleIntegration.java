package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.core.app.FrameMetricsAggregator;
import defpackage.f7;
import defpackage.fe;
import io.sentry.FullyDisplayedReporter;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ISpan;
import io.sentry.ITransaction;
import io.sentry.Instrumenter;
import io.sentry.Integration;
import io.sentry.MeasurementUnit;
import io.sentry.NoOpTransaction;
import io.sentry.ScopesAdapter;
import io.sentry.SentryDate;
import io.sentry.SentryLevel;
import io.sentry.SentryLongDate;
import io.sentry.SentryNanotimeDate;
import io.sentry.SentryOptions;
import io.sentry.SpanOptions;
import io.sentry.SpanStatus;
import io.sentry.TracesSamplingDecision;
import io.sentry.TransactionContext;
import io.sentry.TransactionOptions;
import io.sentry.android.core.internal.util.ClassUtil;
import io.sentry.android.core.internal.util.FirstDrawDoneListener;
import io.sentry.android.core.performance.ActivityLifecycleSpanHelper;
import io.sentry.android.core.performance.ActivityLifecycleTimeSpan;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ActivityLifecycleIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    public final Application j;
    public final BuildInfoProvider k;
    public ScopesAdapter l;
    public SentryAndroidOptions m;
    public final boolean p;
    public ISpan s;
    public final ActivityFramesTracker z;
    public boolean n = false;
    public boolean o = false;
    public boolean q = false;
    public FullyDisplayedReporter r = null;
    public final WeakHashMap t = new WeakHashMap();
    public final WeakHashMap u = new WeakHashMap();
    public final WeakHashMap v = new WeakHashMap();
    public SentryDate w = new SentryNanotimeDate(new Date(0), 0);
    public Future x = null;
    public final WeakHashMap y = new WeakHashMap();
    public final AutoClosableReentrantLock A = new ReentrantLock();
    public final AutoClosableReentrantLock B = new ReentrantLock();

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public ActivityLifecycleIntegration(Application application, BuildInfoProvider buildInfoProvider, ActivityFramesTracker activityFramesTracker) {
        this.j = application;
        this.k = buildInfoProvider;
        this.z = activityFramesTracker;
        if (Build.VERSION.SDK_INT >= 29) {
            this.p = true;
        }
    }

    public static void h(ISpan iSpan, ISpan iSpan2) {
        SentryDate sentryDate;
        if (iSpan != null && !iSpan.d()) {
            String o = iSpan.o();
            if (o == null || !o.endsWith(" - Deadline Exceeded")) {
                o = iSpan.o() + " - Deadline Exceeded";
            }
            iSpan.m(o);
            if (iSpan2 != null) {
                sentryDate = iSpan2.s();
            } else {
                sentryDate = null;
            }
            if (sentryDate == null) {
                sentryDate = iSpan.u();
            }
            n(iSpan, sentryDate, SpanStatus.DEADLINE_EXCEEDED);
        }
    }

    public static void n(ISpan iSpan, SentryDate sentryDate, SpanStatus spanStatus) {
        if (iSpan != null && !iSpan.d()) {
            if (spanStatus == null) {
                if (iSpan.a() != null) {
                    spanStatus = iSpan.a();
                } else {
                    spanStatus = SpanStatus.OK;
                }
            }
            iSpan.t(spanStatus, sentryDate);
        }
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        boolean z;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.m = sentryAndroidOptions;
        this.l = ScopesAdapter.a;
        if (sentryAndroidOptions.isTracingEnabled() && sentryAndroidOptions.isEnableAutoActivityLifecycleTracing()) {
            z = true;
        } else {
            z = false;
        }
        this.n = z;
        this.r = this.m.getFullyDisplayedReporter();
        this.o = this.m.isEnableTimeToFullDisplayTracing();
        this.j.registerActivityLifecycleCallbacks(this);
        this.m.getLogger().c(SentryLevel.DEBUG, "ActivityLifecycleIntegration installed.", new Object[0]);
        IntegrationUtils.a("ActivityLifecycle");
    }

    public final void a() {
        SentryLongDate sentryLongDate;
        TimeSpan b = AppStartMetrics.c().b(this.m);
        long j = 0;
        if (b.m != 0) {
            if (b.b()) {
                j = b.k + b.a();
            }
            sentryLongDate = new SentryLongDate(j * 1000000);
        } else {
            sentryLongDate = null;
        }
        if (this.n && sentryLongDate != null) {
            n(this.s, sentryLongDate, null);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.m;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "ActivityLifecycleIntegration removed.", new Object[0]);
        }
        ActivityFramesTracker activityFramesTracker = this.z;
        ISentryLifecycleToken a = activityFramesTracker.f.a();
        try {
            if (activityFramesTracker.c()) {
                activityFramesTracker.d(new b(2, activityFramesTracker), "FrameMetricsAggregator.stop");
                ((FrameMetricsAggregator) activityFramesTracker.a.a()).d();
            }
            activityFramesTracker.c.clear();
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        FullyDisplayedReporter fullyDisplayedReporter;
        SentryAndroidOptions sentryAndroidOptions;
        if (!this.p) {
            onActivityPreCreated(activity, bundle);
        }
        ISentryLifecycleToken a = this.A.a();
        try {
            if (this.l != null && (sentryAndroidOptions = this.m) != null && sentryAndroidOptions.isEnableScreenTracking()) {
                this.l.o(new l(1, ClassUtil.a(activity)));
            }
            w(activity);
            ISpan iSpan = (ISpan) this.t.get(activity);
            ISpan iSpan2 = (ISpan) this.u.get(activity);
            this.q = true;
            if (this.n && iSpan != null && iSpan2 != null && (fullyDisplayedReporter = this.r) != null) {
                fullyDisplayedReporter.a.add(new f7(13));
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        WeakHashMap weakHashMap = this.u;
        WeakHashMap weakHashMap2 = this.t;
        WeakHashMap weakHashMap3 = this.v;
        ISentryLifecycleToken a = this.A.a();
        try {
            ActivityLifecycleSpanHelper activityLifecycleSpanHelper = (ActivityLifecycleSpanHelper) weakHashMap3.remove(activity);
            if (activityLifecycleSpanHelper != null) {
                ISpan iSpan = activityLifecycleSpanHelper.d;
                if (iSpan != null && !iSpan.d()) {
                    activityLifecycleSpanHelper.d.g(SpanStatus.CANCELLED);
                }
                activityLifecycleSpanHelper.d = null;
                ISpan iSpan2 = activityLifecycleSpanHelper.e;
                if (iSpan2 != null && !iSpan2.d()) {
                    activityLifecycleSpanHelper.e.g(SpanStatus.CANCELLED);
                }
                activityLifecycleSpanHelper.e = null;
            }
            boolean z = this.n;
            WeakHashMap weakHashMap4 = this.y;
            if (z) {
                ISpan iSpan3 = this.s;
                SpanStatus spanStatus = SpanStatus.CANCELLED;
                if (iSpan3 != null && !iSpan3.d()) {
                    iSpan3.g(spanStatus);
                }
                ISpan iSpan4 = (ISpan) weakHashMap2.get(activity);
                ISpan iSpan5 = (ISpan) weakHashMap.get(activity);
                SpanStatus spanStatus2 = SpanStatus.DEADLINE_EXCEEDED;
                if (iSpan4 != null && !iSpan4.d()) {
                    iSpan4.g(spanStatus2);
                }
                h(iSpan5, iSpan4);
                Future future = this.x;
                if (future != null) {
                    future.cancel(false);
                    this.x = null;
                }
                if (this.n) {
                    q((ITransaction) weakHashMap4.get(activity), null, null);
                }
                this.s = null;
                weakHashMap2.remove(activity);
                weakHashMap.remove(activity);
            }
            weakHashMap4.remove(activity);
            if (weakHashMap4.isEmpty() && !activity.isChangingConfigurations()) {
                this.q = false;
                this.w = new SentryNanotimeDate(new Date(0L), 0L);
                weakHashMap3.clear();
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ISentryLifecycleToken a = this.A.a();
        try {
            if (!this.p) {
                onActivityPrePaused(activity);
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostCreated(Activity activity, Bundle bundle) {
        ActivityLifecycleSpanHelper activityLifecycleSpanHelper = (ActivityLifecycleSpanHelper) this.v.get(activity);
        if (activityLifecycleSpanHelper != null) {
            ISpan iSpan = this.s;
            if (iSpan == null) {
                iSpan = (ISpan) this.y.get(activity);
            }
            if (activityLifecycleSpanHelper.b != null && iSpan != null) {
                ISpan a = ActivityLifecycleSpanHelper.a(iSpan, activityLifecycleSpanHelper.a.concat(".onCreate"), activityLifecycleSpanHelper.b);
                activityLifecycleSpanHelper.d = a;
                a.h();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostStarted(Activity activity) {
        ActivityLifecycleSpanHelper activityLifecycleSpanHelper = (ActivityLifecycleSpanHelper) this.v.get(activity);
        if (activityLifecycleSpanHelper != null) {
            ISpan iSpan = this.s;
            if (iSpan == null) {
                iSpan = (ISpan) this.y.get(activity);
            }
            if (activityLifecycleSpanHelper.c != null && iSpan != null) {
                ISpan a = ActivityLifecycleSpanHelper.a(iSpan, activityLifecycleSpanHelper.a.concat(".onStart"), activityLifecycleSpanHelper.c);
                activityLifecycleSpanHelper.e = a;
                a.h();
            }
            ISpan iSpan2 = activityLifecycleSpanHelper.d;
            if (iSpan2 != null && activityLifecycleSpanHelper.e != null) {
                SentryDate s = iSpan2.s();
                SentryDate s2 = activityLifecycleSpanHelper.e.s();
                if (s != null && s2 != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    AndroidDateUtils.a.getClass();
                    SentryNanotimeDate sentryNanotimeDate = new SentryNanotimeDate();
                    long b = sentryNanotimeDate.b(activityLifecycleSpanHelper.d.u()) / 1000000;
                    long b2 = sentryNanotimeDate.b(s) / 1000000;
                    long b3 = sentryNanotimeDate.b(activityLifecycleSpanHelper.e.u()) / 1000000;
                    long b4 = sentryNanotimeDate.b(s2) / 1000000;
                    ActivityLifecycleTimeSpan activityLifecycleTimeSpan = new ActivityLifecycleTimeSpan();
                    String o = activityLifecycleSpanHelper.d.o();
                    long d = activityLifecycleSpanHelper.d.u().d() / 1000000;
                    TimeSpan timeSpan = activityLifecycleTimeSpan.j;
                    timeSpan.j = o;
                    timeSpan.k = d;
                    timeSpan.l = uptimeMillis - b;
                    timeSpan.m = uptimeMillis - b2;
                    String o2 = activityLifecycleSpanHelper.e.o();
                    long d2 = activityLifecycleSpanHelper.e.u().d() / 1000000;
                    long j = uptimeMillis - b3;
                    long j2 = uptimeMillis - b4;
                    TimeSpan timeSpan2 = activityLifecycleTimeSpan.k;
                    timeSpan2.j = o2;
                    timeSpan2.k = d2;
                    timeSpan2.l = j;
                    timeSpan2.m = j2;
                    AppStartMetrics.c().q.add(activityLifecycleTimeSpan);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreCreated(Activity activity, Bundle bundle) {
        SentryDate sentryNanotimeDate;
        ActivityLifecycleSpanHelper activityLifecycleSpanHelper = new ActivityLifecycleSpanHelper(activity.getClass().getName());
        this.v.put(activity, activityLifecycleSpanHelper);
        if (this.q) {
            return;
        }
        ScopesAdapter scopesAdapter = this.l;
        if (scopesAdapter != null) {
            sentryNanotimeDate = scopesAdapter.j().getDateProvider().a();
        } else {
            AndroidDateUtils.a.getClass();
            sentryNanotimeDate = new SentryNanotimeDate();
        }
        this.w = sentryNanotimeDate;
        activityLifecycleSpanHelper.b = sentryNanotimeDate;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPrePaused(Activity activity) {
        SentryDate sentryNanotimeDate;
        this.q = true;
        ScopesAdapter scopesAdapter = this.l;
        if (scopesAdapter != null) {
            sentryNanotimeDate = scopesAdapter.j().getDateProvider().a();
        } else {
            AndroidDateUtils.a.getClass();
            sentryNanotimeDate = new SentryNanotimeDate();
        }
        this.w = sentryNanotimeDate;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPreStarted(Activity activity) {
        SentryDate sentryNanotimeDate;
        ActivityLifecycleSpanHelper activityLifecycleSpanHelper = (ActivityLifecycleSpanHelper) this.v.get(activity);
        if (activityLifecycleSpanHelper != null) {
            SentryAndroidOptions sentryAndroidOptions = this.m;
            if (sentryAndroidOptions != null) {
                sentryNanotimeDate = sentryAndroidOptions.getDateProvider().a();
            } else {
                AndroidDateUtils.a.getClass();
                sentryNanotimeDate = new SentryNanotimeDate();
            }
            activityLifecycleSpanHelper.c = sentryNanotimeDate;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        ISentryLifecycleToken a = this.A.a();
        try {
            if (!this.p) {
                onActivityPostStarted(activity);
            }
            if (this.n) {
                final ISpan iSpan = (ISpan) this.t.get(activity);
                final ISpan iSpan2 = (ISpan) this.u.get(activity);
                if (activity.getWindow() != null) {
                    final int i = 0;
                    FirstDrawDoneListener.a(activity, new Runnable(this) { // from class: io.sentry.android.core.d
                        public final /* synthetic */ ActivityLifecycleIntegration k;

                        {
                            this.k = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = i;
                            ISpan iSpan3 = iSpan;
                            ISpan iSpan4 = iSpan2;
                            ActivityLifecycleIntegration activityLifecycleIntegration = this.k;
                            switch (i2) {
                                case 0:
                                    activityLifecycleIntegration.v(iSpan4, iSpan3);
                                    return;
                                default:
                                    activityLifecycleIntegration.v(iSpan4, iSpan3);
                                    return;
                            }
                        }
                    }, this.k);
                } else {
                    final int i2 = 1;
                    new Handler(Looper.getMainLooper()).post(new Runnable(this) { // from class: io.sentry.android.core.d
                        public final /* synthetic */ ActivityLifecycleIntegration k;

                        {
                            this.k = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i22 = i2;
                            ISpan iSpan3 = iSpan;
                            ISpan iSpan4 = iSpan2;
                            ActivityLifecycleIntegration activityLifecycleIntegration = this.k;
                            switch (i22) {
                                case 0:
                                    activityLifecycleIntegration.v(iSpan4, iSpan3);
                                    return;
                                default:
                                    activityLifecycleIntegration.v(iSpan4, iSpan3);
                                    return;
                            }
                        }
                    });
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        ISentryLifecycleToken a = this.A.a();
        try {
            if (!this.p) {
                onActivityPostCreated(activity, null);
                onActivityPreStarted(activity);
            }
            if (this.n) {
                this.z.a(activity);
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

    public final void q(ITransaction iTransaction, ISpan iSpan, ISpan iSpan2) {
        if (iTransaction != null && !iTransaction.d()) {
            SpanStatus spanStatus = SpanStatus.DEADLINE_EXCEEDED;
            if (iSpan != null && !iSpan.d()) {
                iSpan.g(spanStatus);
            }
            h(iSpan2, iSpan);
            Future future = this.x;
            if (future != null) {
                future.cancel(false);
                this.x = null;
            }
            SpanStatus a = iTransaction.a();
            if (a == null) {
                a = SpanStatus.OK;
            }
            iTransaction.g(a);
            ScopesAdapter scopesAdapter = this.l;
            if (scopesAdapter != null) {
                scopesAdapter.o(new l(this, iTransaction));
            }
        }
    }

    public final void v(ISpan iSpan, ISpan iSpan2) {
        AppStartMetrics c = AppStartMetrics.c();
        TimeSpan timeSpan = c.m;
        TimeSpan timeSpan2 = c.n;
        if (timeSpan.b() && timeSpan.m == 0) {
            timeSpan.m = SystemClock.uptimeMillis();
        }
        if (timeSpan2.b() && timeSpan2.m == 0) {
            timeSpan2.m = SystemClock.uptimeMillis();
        }
        a();
        ISentryLifecycleToken a = this.B.a();
        try {
            SentryAndroidOptions sentryAndroidOptions = this.m;
            if (sentryAndroidOptions != null && iSpan2 != null) {
                SentryDate a2 = sentryAndroidOptions.getDateProvider().a();
                iSpan2.q("time_to_initial_display", Long.valueOf(a2.b(iSpan2.u()) / 1000000), MeasurementUnit.Duration.MILLISECOND);
                n(iSpan2, a2, null);
            } else if (iSpan2 != null && !iSpan2.d()) {
                iSpan2.h();
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

    public final void w(Activity activity) {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        Boolean bool;
        SentryLongDate sentryLongDate;
        Long valueOf;
        SentryDate sentryDate;
        SpanOptions spanOptions;
        ITransaction iTransaction;
        String str;
        String str2;
        SentryLongDate sentryLongDate2;
        boolean z;
        WeakReference weakReference = new WeakReference(activity);
        if (this.l != null) {
            WeakHashMap weakHashMap3 = this.y;
            if (!weakHashMap3.containsKey(activity)) {
                if (!this.n) {
                    weakHashMap3.put(activity, NoOpTransaction.a);
                    if (this.m.isEnableAutoTraceIdGeneration()) {
                        this.l.o(new fe(29));
                        return;
                    }
                    return;
                }
                Iterator it = weakHashMap3.entrySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    weakHashMap = this.u;
                    weakHashMap2 = this.t;
                    if (!hasNext) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    q((ITransaction) entry.getValue(), (ISpan) weakHashMap2.get(entry.getKey()), (ISpan) weakHashMap.get(entry.getKey()));
                }
                String simpleName = activity.getClass().getSimpleName();
                TimeSpan b = AppStartMetrics.c().b(this.m);
                boolean z2 = false;
                TracesSamplingDecision tracesSamplingDecision = null;
                if (ContextUtils.d() && b.b()) {
                    if (b.b()) {
                        sentryLongDate2 = new SentryLongDate(b.k * 1000000);
                    } else {
                        sentryLongDate2 = null;
                    }
                    if (AppStartMetrics.c().j == AppStartMetrics.AppStartType.COLD) {
                        z = true;
                    } else {
                        z = false;
                    }
                    bool = Boolean.valueOf(z);
                    sentryLongDate = sentryLongDate2;
                } else {
                    bool = null;
                    sentryLongDate = null;
                }
                TransactionOptions transactionOptions = new TransactionOptions();
                long deadlineTimeout = this.m.getDeadlineTimeout();
                if (deadlineTimeout <= 0) {
                    valueOf = null;
                } else {
                    valueOf = Long.valueOf(deadlineTimeout);
                }
                transactionOptions.h = valueOf;
                if (this.m.isEnableActivityLifecycleTracingAutoFinish()) {
                    transactionOptions.g = this.m.getIdleTimeout();
                    transactionOptions.c = true;
                }
                transactionOptions.f = true;
                transactionOptions.i = new f(this, weakReference, simpleName);
                if (!this.q && sentryLongDate != null && bool != null) {
                    TracesSamplingDecision tracesSamplingDecision2 = AppStartMetrics.c().t;
                    AppStartMetrics.c().t = null;
                    tracesSamplingDecision = tracesSamplingDecision2;
                    sentryDate = sentryLongDate;
                } else {
                    sentryDate = this.w;
                }
                transactionOptions.a = sentryDate;
                if (tracesSamplingDecision != null) {
                    z2 = true;
                }
                transactionOptions.e = z2;
                transactionOptions.d = "auto.ui.activity";
                ITransaction n = this.l.n(new TransactionContext(simpleName, TransactionNameSource.COMPONENT, "ui.load", tracesSamplingDecision), transactionOptions);
                SpanOptions spanOptions2 = new SpanOptions();
                spanOptions2.d = "auto.ui.activity";
                if (!this.q && sentryLongDate != null && bool != null) {
                    if (bool.booleanValue()) {
                        str = "app.start.cold";
                    } else {
                        str = "app.start.warm";
                    }
                    String str3 = str;
                    if (bool.booleanValue()) {
                        str2 = "Cold Start";
                    } else {
                        str2 = "Warm Start";
                    }
                    ISpan l = n.l(str3, str2, sentryLongDate, Instrumenter.SENTRY, spanOptions2);
                    n = n;
                    spanOptions = spanOptions2;
                    this.s = l;
                    a();
                } else {
                    spanOptions = spanOptions2;
                }
                String concat = simpleName.concat(" initial display");
                Instrumenter instrumenter = Instrumenter.SENTRY;
                SentryDate sentryDate2 = sentryDate;
                ISpan l2 = n.l("ui.load.initial_display", concat, sentryDate2, instrumenter, spanOptions);
                weakHashMap2.put(activity, l2);
                if (this.o && this.r != null && this.m != null) {
                    ISpan l3 = n.l("ui.load.full_display", simpleName.concat(" full display"), sentryDate2, instrumenter, spanOptions);
                    iTransaction = n;
                    try {
                        weakHashMap.put(activity, l3);
                        this.x = this.m.getExecutorService().c(25000L, new g(this, l3, l2));
                    } catch (RejectedExecutionException e) {
                        this.m.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?", e);
                    }
                } else {
                    iTransaction = n;
                }
                this.l.o(new e(this, iTransaction));
                weakHashMap3.put(activity, iTransaction);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
