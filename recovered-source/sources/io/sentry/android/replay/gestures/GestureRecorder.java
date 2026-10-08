package io.sentry.android.replay.gestures;

import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.OnRootViewsChangedListener;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.replay.ReplayLifecycle;
import io.sentry.android.replay.ReplayState;
import io.sentry.android.replay.WindowsKt;
import io.sentry.android.replay.capture.CaptureStrategy;
import io.sentry.android.replay.util.FixedWindowCallback;
import io.sentry.util.AutoClosableReentrantLock;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GestureRecorder implements OnRootViewsChangedListener {
    public final SentryOptions j;
    public final ReplayIntegration k;
    public final ArrayList l = new ArrayList();
    public final AutoClosableReentrantLock m = new ReentrantLock();
    public final WeakHashMap n = new WeakHashMap();
    public final AutoClosableReentrantLock o = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SentryReplayGestureRecorder extends FixedWindowCallback {
        public final SentryOptions k;
        public volatile ReplayIntegration l;

        public SentryReplayGestureRecorder(SentryOptions sentryOptions, ReplayIntegration replayIntegration, Window.Callback callback) {
            super(callback);
            this.k = sentryOptions;
            this.l = replayIntegration;
        }

        @Override // io.sentry.android.replay.util.FixedWindowCallback, android.view.Window.Callback
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            CaptureStrategy captureStrategy;
            if (motionEvent != null) {
                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                obtainNoHistory.getClass();
                try {
                    ReplayIntegration replayIntegration = this.l;
                    if (replayIntegration != null && replayIntegration.t.get()) {
                        ReplayLifecycle replayLifecycle = replayIntegration.z;
                        if ((replayLifecycle.a == ReplayState.STARTED || replayLifecycle.a == ReplayState.RESUMED) && (captureStrategy = replayIntegration.v) != null) {
                            captureStrategy.b(obtainNoHistory);
                        }
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public GestureRecorder(SentryOptions sentryOptions, ReplayIntegration replayIntegration) {
        this.j = sentryOptions;
        this.k = replayIntegration;
    }

    @Override // io.sentry.android.replay.OnRootViewsChangedListener
    public final void a(final View view, boolean z) {
        view.getClass();
        ISentryLifecycleToken a = this.m.a();
        ArrayList arrayList = this.l;
        try {
            if (z) {
                arrayList.add(new WeakReference(view));
                b(view);
            } else {
                d(view);
                CollectionsKt.J(arrayList, new Function1<WeakReference<View>, Boolean>() { // from class: io.sentry.android.replay.gestures.GestureRecorder$onRootViewsChanged$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        WeakReference weakReference = (WeakReference) obj;
                        weakReference.getClass();
                        return Boolean.valueOf(Intrinsics.a(weakReference.get(), view));
                    }
                });
            }
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    public final void b(View view) {
        SentryReplayGestureRecorder sentryReplayGestureRecorder;
        WeakHashMap weakHashMap = this.n;
        Window a = WindowsKt.a(view);
        SentryOptions sentryOptions = this.j;
        if (a == null) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Window is invalid, not tracking gestures", new Object[0]);
            return;
        }
        AutoClosableReentrantLock autoClosableReentrantLock = this.o;
        ISentryLifecycleToken a2 = autoClosableReentrantLock.a();
        try {
            WeakReference weakReference = (WeakReference) weakHashMap.get(a);
            if (weakReference != null) {
                sentryReplayGestureRecorder = (SentryReplayGestureRecorder) weakReference.get();
            } else {
                sentryReplayGestureRecorder = null;
            }
            if (sentryReplayGestureRecorder != null) {
                AutoCloseableKt.a(a2, null);
                return;
            }
            AutoCloseableKt.a(a2, null);
            SentryReplayGestureRecorder sentryReplayGestureRecorder2 = new SentryReplayGestureRecorder(sentryOptions, this.k, a.getCallback());
            a.setCallback(sentryReplayGestureRecorder2);
            a2 = autoClosableReentrantLock.a();
            try {
                weakHashMap.put(a, new WeakReference(sentryReplayGestureRecorder2));
                AutoCloseableKt.a(a2, null);
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
    }

    public final void c() {
        ArrayList arrayList = this.l;
        ISentryLifecycleToken a = this.m.a();
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                View view = (View) ((WeakReference) it.next()).get();
                if (view != null) {
                    d(view);
                }
            }
            arrayList.clear();
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    public final void d(View view) {
        ISentryLifecycleToken a;
        SentryReplayGestureRecorder sentryReplayGestureRecorder;
        Window a2 = WindowsKt.a(view);
        if (a2 == null) {
            this.j.getLogger().c(SentryLevel.DEBUG, "Window was null in stopGestureTracking", new Object[0]);
            return;
        }
        Window.Callback callback = a2.getCallback();
        if (callback instanceof SentryReplayGestureRecorder) {
            a2.setCallback(((SentryReplayGestureRecorder) callback).j);
            a = this.o.a();
            try {
                AutoCloseableKt.a(a, null);
                return;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        a = this.o.a();
        try {
            WeakReference weakReference = (WeakReference) this.n.get(a2);
            if (weakReference != null) {
                sentryReplayGestureRecorder = (SentryReplayGestureRecorder) weakReference.get();
            } else {
                sentryReplayGestureRecorder = null;
            }
            AutoCloseableKt.a(a, null);
            if (sentryReplayGestureRecorder != null) {
                sentryReplayGestureRecorder.l = null;
            }
        } catch (Throwable th) {
        }
    }
}
