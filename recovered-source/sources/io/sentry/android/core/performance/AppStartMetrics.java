package io.sentry.android.core.performance;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationStartInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.SystemClock;
import defpackage.b3;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ITransactionProfiler;
import io.sentry.NoOpLogger;
import io.sentry.TracesSamplingDecision;
import io.sentry.android.core.AndroidContinuousProfiler;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.CurrentActivityHolder;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.internal.util.FirstDrawDoneListener;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.LazyEvaluator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppStartMetrics extends ActivityLifecycleCallbacksAdapter {
    public static volatile AppStartMetrics z;
    public static long y = SystemClock.uptimeMillis();
    public static final AutoClosableReentrantLock A = new ReentrantLock();
    public AppStartType j = AppStartType.UNKNOWN;
    public final LazyEvaluator k = new LazyEvaluator(new Object());
    public volatile long l = -1;
    public ITransactionProfiler r = null;
    public AndroidContinuousProfiler s = null;
    public TracesSamplingDecision t = null;
    public boolean u = false;
    public boolean v = true;
    public final AtomicInteger w = new AtomicInteger();
    public final AtomicBoolean x = new AtomicBoolean(false);
    public final TimeSpan m = new Object();
    public final TimeSpan n = new Object();
    public final TimeSpan o = new Object();
    public final HashMap p = new HashMap();
    public final ArrayList q = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.performance.AppStartMetrics$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements LazyEvaluator.Evaluator<Boolean> {
        @Override // io.sentry.util.LazyEvaluator.Evaluator
        public final Object c() {
            return Boolean.valueOf(ContextUtils.d());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.performance.AppStartMetrics$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        public final /* synthetic */ Handler j;

        public AnonymousClass3(Handler handler) {
            this.j = handler;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppStartMetrics.this.l = SystemClock.uptimeMillis();
            this.j.post(new a(2, this));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum AppStartType {
        UNKNOWN,
        COLD,
        WARM
    }

    public static void a(AppStartMetrics appStartMetrics) {
        if (appStartMetrics.w.get() == 0) {
            appStartMetrics.k.c(Boolean.FALSE);
            ITransactionProfiler iTransactionProfiler = appStartMetrics.r;
            if (iTransactionProfiler != null && iTransactionProfiler.isRunning()) {
                appStartMetrics.r.close();
                appStartMetrics.r = null;
            }
            AndroidContinuousProfiler androidContinuousProfiler = appStartMetrics.s;
            if (androidContinuousProfiler != null && androidContinuousProfiler.r) {
                androidContinuousProfiler.b(true);
                appStartMetrics.s = null;
            }
        }
    }

    public static AppStartMetrics c() {
        if (z == null) {
            ISentryLifecycleToken a = A.a();
            try {
                if (z == null) {
                    z = new AppStartMetrics();
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
        return z;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [io.sentry.android.core.performance.TimeSpan, java.lang.Object] */
    public final TimeSpan b(SentryAndroidOptions sentryAndroidOptions) {
        if (this.j != AppStartType.UNKNOWN && ((Boolean) this.k.a()).booleanValue()) {
            if (sentryAndroidOptions.isEnablePerformanceV2()) {
                TimeSpan timeSpan = this.m;
                if (timeSpan.b() && timeSpan.a() <= 60000) {
                    return timeSpan;
                }
            }
            TimeSpan timeSpan2 = this.n;
            if (timeSpan2.b() && timeSpan2.a() <= 60000) {
                return timeSpan2;
            }
        }
        return new Object();
    }

    public final synchronized void d() {
        if (!this.x.getAndSet(true)) {
            AppStartMetrics c = c();
            TimeSpan timeSpan = c.n;
            timeSpan.getClass();
            timeSpan.m = SystemClock.uptimeMillis();
            TimeSpan timeSpan2 = c.m;
            timeSpan2.getClass();
            timeSpan2.m = SystemClock.uptimeMillis();
        }
    }

    public final void e(Application application) {
        ActivityManager activityManager;
        List historicalProcessStartReasons;
        int startupState;
        int startType;
        if (!this.u) {
            this.u = true;
            this.k.b();
            application.registerActivityLifecycleCallbacks(z);
            if (Build.VERSION.SDK_INT >= 35 && (activityManager = (ActivityManager) application.getSystemService("activity")) != null) {
                historicalProcessStartReasons = activityManager.getHistoricalProcessStartReasons(1);
                if (!historicalProcessStartReasons.isEmpty()) {
                    ApplicationStartInfo b = b3.b(historicalProcessStartReasons.get(0));
                    startupState = b.getStartupState();
                    if (startupState == 0) {
                        startType = b.getStartType();
                        if (startType == 1) {
                            this.j = AppStartType.COLD;
                        } else {
                            this.j = AppStartType.WARM;
                        }
                    }
                }
            }
            AppStartType appStartType = this.j;
            AppStartType appStartType2 = AppStartType.UNKNOWN;
            if (appStartType == appStartType2) {
                Looper.getMainLooper().getQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: io.sentry.android.core.performance.AppStartMetrics.2
                    @Override // android.os.MessageQueue.IdleHandler
                    public final boolean queueIdle() {
                        AppStartMetrics.this.l = SystemClock.uptimeMillis();
                        AppStartMetrics.a(AppStartMetrics.this);
                        return false;
                    }
                });
            } else if (appStartType == appStartType2) {
                Handler handler = new Handler(Looper.getMainLooper());
                handler.post(new AnonymousClass3(handler));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        long uptimeMillis = SystemClock.uptimeMillis();
        CurrentActivityHolder.b.a(activity);
        if (this.w.incrementAndGet() == 1 && !this.x.get()) {
            long uptimeMillis2 = SystemClock.uptimeMillis() - this.m.l;
            if (((Boolean) this.k.a()).booleanValue() && uptimeMillis2 <= 60000) {
                if (this.j == AppStartType.UNKNOWN) {
                    if (bundle != null) {
                        this.j = AppStartType.WARM;
                    } else if (this.l != -1 && uptimeMillis > this.l) {
                        this.j = AppStartType.WARM;
                    } else {
                        this.j = AppStartType.COLD;
                    }
                }
            } else {
                this.j = AppStartType.WARM;
                this.v = true;
                TimeSpan timeSpan = this.m;
                timeSpan.j = null;
                timeSpan.l = 0L;
                timeSpan.m = 0L;
                timeSpan.k = 0L;
                timeSpan.c(uptimeMillis);
                y = uptimeMillis;
                this.p.clear();
                TimeSpan timeSpan2 = this.o;
                timeSpan2.j = null;
                timeSpan2.l = 0L;
                timeSpan2.m = 0L;
                timeSpan2.k = 0L;
            }
        }
        this.k.c(Boolean.TRUE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        CurrentActivityHolder currentActivityHolder = CurrentActivityHolder.b;
        WeakReference weakReference = currentActivityHolder.a;
        if (weakReference == null || weakReference.get() == activity) {
            currentActivityHolder.a = null;
        }
        if (this.w.decrementAndGet() == 0 && !activity.isChangingConfigurations()) {
            this.j = AppStartType.WARM;
            this.k.c(Boolean.TRUE);
            this.v = true;
            this.x.set(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        CurrentActivityHolder currentActivityHolder = CurrentActivityHolder.b;
        WeakReference weakReference = currentActivityHolder.a;
        if (weakReference != null && weakReference.get() != activity) {
            return;
        }
        currentActivityHolder.a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        CurrentActivityHolder.b.a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        CurrentActivityHolder.b.a(activity);
        if (this.x.get()) {
            return;
        }
        if (activity.getWindow() != null) {
            FirstDrawDoneListener.a(activity, new a(0, this), new BuildInfoProvider(NoOpLogger.a));
        } else {
            new Handler(Looper.getMainLooper()).post(new a(1, this));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        CurrentActivityHolder currentActivityHolder = CurrentActivityHolder.b;
        WeakReference weakReference = currentActivityHolder.a;
        if (weakReference != null && weakReference.get() != activity) {
            return;
        }
        currentActivityHolder.a = null;
    }
}
