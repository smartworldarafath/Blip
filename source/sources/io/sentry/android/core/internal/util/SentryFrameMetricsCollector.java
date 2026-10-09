package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Choreographer;
import android.view.FrameMetrics;
import android.view.Window;
import defpackage.qi;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.AndroidLogger;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.util.Objects;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryFrameMetricsCollector implements Application.ActivityLifecycleCallbacks {
    public final BuildInfoProvider j;
    public final CopyOnWriteArraySet k;
    public final ILogger l;
    public final Handler m;
    public WeakReference n;
    public final ConcurrentHashMap o;
    public final boolean p;
    public final WindowFrameMetricsManager q;
    public final f r;
    public Choreographer s;
    public final Field t;
    public long u;
    public long v;
    public final ConcurrentSkipListSet w;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.internal.util.SentryFrameMetricsCollector$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements WindowFrameMetricsManager {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DelayedFrame implements Comparable<DelayedFrame> {
        public final long j;
        public final long k;

        public DelayedFrame(long j, long j2) {
            this.j = j;
            this.k = j2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(DelayedFrame delayedFrame) {
            DelayedFrame delayedFrame2 = delayedFrame;
            int compare = Long.compare(this.k, delayedFrame2.k);
            if (compare != 0) {
                return compare;
            }
            return Long.compare(this.j, delayedFrame2.j);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface FrameMetricsCollectorListener {
        void b(long j, long j2, long j3, long j4, boolean z, boolean z2, float f);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface WindowFrameMetricsManager {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.android.core.internal.util.SentryFrameMetricsCollector$WindowFrameMetricsManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [io.sentry.android.core.internal.util.f] */
    public SentryFrameMetricsCollector(Context context, final AndroidLogger androidLogger, final BuildInfoProvider buildInfoProvider) {
        ?? obj = new Object();
        this.k = new CopyOnWriteArraySet();
        this.o = new ConcurrentHashMap();
        this.p = false;
        this.u = 0L;
        this.v = 0L;
        this.w = new ConcurrentSkipListSet();
        Context applicationContext = context.getApplicationContext();
        context = applicationContext != null ? applicationContext : context;
        Objects.b(androidLogger, "Logger is required");
        this.l = androidLogger;
        Objects.b(buildInfoProvider, "BuildInfoProvider is required");
        this.j = buildInfoProvider;
        this.q = obj;
        if (!(context instanceof Application)) {
            return;
        }
        this.p = true;
        HandlerThread handlerThread = new HandlerThread("io.sentry.android.core.internal.util.SentryFrameMetricsCollector");
        handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.sentry.android.core.internal.util.e
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                ILogger.this.b(SentryLevel.ERROR, "Error during frames measurements.", th);
            }
        });
        handlerThread.start();
        this.m = new Handler(handlerThread.getLooper());
        ((Application) context).registerActivityLifecycleCallbacks(this);
        new Handler(Looper.getMainLooper()).post(new d(this, androidLogger, 2));
        try {
            Field declaredField = Choreographer.class.getDeclaredField("mLastFrameTimeNanos");
            this.t = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            androidLogger.b(SentryLevel.ERROR, "Unable to get the frame timestamp from the choreographer: ", e);
        }
        this.r = new Window.OnFrameMetricsAvailableListener() { // from class: io.sentry.android.core.internal.util.f
            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                float refreshRate;
                long j;
                boolean z;
                boolean z2;
                SentryFrameMetricsCollector sentryFrameMetricsCollector = SentryFrameMetricsCollector.this;
                ConcurrentSkipListSet concurrentSkipListSet = sentryFrameMetricsCollector.w;
                long nanoTime = System.nanoTime();
                buildInfoProvider.getClass();
                if (Build.VERSION.SDK_INT >= 30) {
                    refreshRate = qi.b(window.getContext()).getRefreshRate();
                } else {
                    refreshRate = window.getWindowManager().getDefaultDisplay().getRefreshRate();
                }
                float f = refreshRate;
                long metric = frameMetrics.getMetric(5) + frameMetrics.getMetric(4) + frameMetrics.getMetric(3) + frameMetrics.getMetric(2) + frameMetrics.getMetric(1) + frameMetrics.getMetric(0);
                long max = Math.max(0L, metric - (1.0E9f / f));
                sentryFrameMetricsCollector.j.getClass();
                long metric2 = frameMetrics.getMetric(10);
                if (metric2 < 0) {
                    metric2 = nanoTime - metric;
                }
                long max2 = Math.max(metric2, sentryFrameMetricsCollector.v);
                if (max2 != sentryFrameMetricsCollector.u) {
                    sentryFrameMetricsCollector.u = max2;
                    long j2 = max2 + metric;
                    sentryFrameMetricsCollector.v = j2;
                    if (metric > 1.0E9f / (f - 1.0f)) {
                        j = j2;
                        z = true;
                    } else {
                        j = j2;
                        z = false;
                    }
                    if (z && metric > 700000000) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (max > 0) {
                        long j3 = j - 300000000000L;
                        concurrentSkipListSet.headSet((ConcurrentSkipListSet) new SentryFrameMetricsCollector.DelayedFrame(j3, j3)).clear();
                        if (concurrentSkipListSet.size() < 3600) {
                            concurrentSkipListSet.add(new SentryFrameMetricsCollector.DelayedFrame(max2, sentryFrameMetricsCollector.v));
                        }
                    }
                    Iterator it = sentryFrameMetricsCollector.o.values().iterator();
                    while (it.hasNext()) {
                        long j4 = metric;
                        long j5 = max;
                        ((SentryFrameMetricsCollector.FrameMetricsCollectorListener) it.next()).b(max2, sentryFrameMetricsCollector.v, j4, j5, z, z2, f);
                        max = j5;
                        metric = j4;
                    }
                }
            }
        };
    }

    public final void a(String str) {
        Window window;
        if (this.p) {
            ConcurrentHashMap concurrentHashMap = this.o;
            if (str != null) {
                concurrentHashMap.remove(str);
            }
            WeakReference weakReference = this.n;
            if (weakReference != null) {
                window = (Window) weakReference.get();
            } else {
                window = null;
            }
            if (window != null && concurrentHashMap.isEmpty()) {
                new Handler(Looper.getMainLooper()).post(new d(this, window, 1));
            }
        }
    }

    public final void b() {
        Window window;
        WeakReference weakReference = this.n;
        if (weakReference != null) {
            window = (Window) weakReference.get();
        } else {
            window = null;
        }
        if (window != null && this.p && !this.o.isEmpty() && this.m != null) {
            new Handler(Looper.getMainLooper()).post(new d(this, window, 0));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Window window = activity.getWindow();
        WeakReference weakReference = this.n;
        if (weakReference != null && weakReference.get() == window) {
            return;
        }
        this.n = new WeakReference(window);
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        new Handler(Looper.getMainLooper()).post(new d(this, activity.getWindow(), 1));
        WeakReference weakReference = this.n;
        if (weakReference != null && weakReference.get() == activity.getWindow()) {
            this.n = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
