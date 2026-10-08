package io.sentry.android.replay;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.util.MainLooperHandler;
import io.sentry.android.replay.util.ReplayExecutorService;
import io.sentry.util.AutoClosableReentrantLock;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public final class WindowRecorder implements Recorder, OnRootViewsChangedListener, ExecutorProvider {
    public final SentryOptions j;
    public final ReplayIntegration k;
    public final ReplayIntegration l;
    public final MainLooperHandler m;
    public final ScheduledExecutorService n;
    public final AtomicBoolean o;
    public final ArrayList p;
    public final Point q;
    public final WeakHashMap r;
    public final AutoClosableReentrantLock s;
    public final AutoClosableReentrantLock t;
    public final AutoClosableReentrantLock u;
    public volatile Capturer v;
    public volatile HandlerThread w;
    public volatile Handler x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Capturer implements Runnable {
        public final SentryOptions j;
        public final MainLooperHandler k;
        public ScreenshotRecorder l;
        public ScreenshotRecorderConfig m;
        public final AtomicBoolean n;

        public Capturer(SentryOptions sentryOptions, MainLooperHandler mainLooperHandler) {
            mainLooperHandler.getClass();
            this.j = sentryOptions;
            this.k = mainLooperHandler;
            this.n = new AtomicBoolean(true);
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            boolean z = this.n.get();
            SentryOptions sentryOptions = this.j;
            if (!z) {
                if (sentryOptions.getSessionReplay().m) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not capturing frames, recording is not running.", new Object[0]);
                    return;
                }
                return;
            }
            try {
                if (sentryOptions.getSessionReplay().m) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing a frame.", new Object[0]);
                }
                ScreenshotRecorder screenshotRecorder = this.l;
                if (screenshotRecorder != null) {
                    screenshotRecorder.b();
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to capture a frame", th);
            }
            int i2 = 1;
            if (sentryOptions.getSessionReplay().m) {
                ILogger logger = sentryOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.DEBUG;
                StringBuilder sb = new StringBuilder("Posting the capture runnable again, frame rate is ");
                ScreenshotRecorderConfig screenshotRecorderConfig = this.m;
                if (screenshotRecorderConfig != null) {
                    i = screenshotRecorderConfig.e;
                } else {
                    i = 1;
                }
                logger.c(sentryLevel, jb.i(sb, i, " fps."), new Object[0]);
            }
            ScreenshotRecorderConfig screenshotRecorderConfig2 = this.m;
            if (screenshotRecorderConfig2 != null) {
                i2 = screenshotRecorderConfig2.e;
            }
            if (!this.k.a.postDelayed(this, 1000 / i2)) {
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Failed to post the capture runnable, main looper is shutting down.", new Object[0]);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public WindowRecorder(SentryOptions sentryOptions, ReplayIntegration replayIntegration, ReplayIntegration replayIntegration2, MainLooperHandler mainLooperHandler, ReplayExecutorService replayExecutorService) {
        mainLooperHandler.getClass();
        replayExecutorService.getClass();
        this.j = sentryOptions;
        this.k = replayIntegration;
        this.l = replayIntegration2;
        this.m = mainLooperHandler;
        this.n = replayExecutorService;
        this.o = new AtomicBoolean(false);
        this.p = new ArrayList();
        this.q = new Point();
        this.r = new WeakHashMap();
        this.s = new ReentrantLock();
        this.t = new ReentrantLock();
        this.u = new ReentrantLock();
    }

    @Override // io.sentry.android.replay.OnRootViewsChangedListener
    public final void a(final View view, boolean z) {
        View view2;
        ScreenshotRecorder screenshotRecorder;
        ScreenshotRecorder screenshotRecorder2;
        ScreenshotRecorder screenshotRecorder3;
        view.getClass();
        ISentryLifecycleToken a = this.s.a();
        try {
            if (z) {
                if (WindowsKt.a(view) == null) {
                    this.j.getLogger().c(SentryLevel.WARNING, "Root view does not have a phone window, skipping.", new Object[0]);
                    AutoCloseableKt.a(a, null);
                    return;
                }
                this.p.add(new WeakReference(view));
                Capturer capturer = this.v;
                if (capturer != null && (screenshotRecorder3 = capturer.l) != null) {
                    screenshotRecorder3.a(view);
                }
                h(view);
                WeakHashMap weakHashMap = this.r;
                if (!weakHashMap.containsKey(view)) {
                    View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: io.sentry.android.replay.d
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                            View view4;
                            int i9 = i4 - i2;
                            int i10 = i8 - i6;
                            if (i3 - i != i7 - i5 || i9 != i10) {
                                WindowRecorder windowRecorder = WindowRecorder.this;
                                WeakReference weakReference = (WeakReference) CollectionsKt.A(windowRecorder.p);
                                if (weakReference != null) {
                                    view4 = (View) weakReference.get();
                                } else {
                                    view4 = null;
                                }
                                if (!Intrinsics.a(view3, view4)) {
                                    return;
                                }
                                view3.getClass();
                                windowRecorder.h(view3);
                            }
                        }
                    };
                    weakHashMap.put(view, onLayoutChangeListener);
                    view.addOnLayoutChangeListener(onLayoutChangeListener);
                }
            } else {
                View.OnLayoutChangeListener onLayoutChangeListener2 = (View.OnLayoutChangeListener) this.r.remove(view);
                if (onLayoutChangeListener2 != null) {
                    view.removeOnLayoutChangeListener(onLayoutChangeListener2);
                }
                Capturer capturer2 = this.v;
                if (capturer2 != null && (screenshotRecorder2 = capturer2.l) != null) {
                    screenshotRecorder2.c(view);
                }
                CollectionsKt.J(this.p, new Function1<WeakReference<View>, Boolean>() { // from class: io.sentry.android.replay.WindowRecorder$onRootViewsChanged$1$1
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
                WeakReference weakReference = (WeakReference) CollectionsKt.A(this.p);
                if (weakReference != null) {
                    view2 = (View) weakReference.get();
                } else {
                    view2 = null;
                }
                if (view2 != null && !view.equals(view2)) {
                    Capturer capturer3 = this.v;
                    if (capturer3 != null && (screenshotRecorder = capturer3.l) != null) {
                        screenshotRecorder.a(view2);
                    }
                    h(view2);
                    WeakHashMap weakHashMap2 = this.r;
                    if (!weakHashMap2.containsKey(view2)) {
                        View.OnLayoutChangeListener onLayoutChangeListener3 = new View.OnLayoutChangeListener() { // from class: io.sentry.android.replay.d
                            @Override // android.view.View.OnLayoutChangeListener
                            public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                                View view4;
                                int i9 = i4 - i2;
                                int i10 = i8 - i6;
                                if (i3 - i != i7 - i5 || i9 != i10) {
                                    WindowRecorder windowRecorder = WindowRecorder.this;
                                    WeakReference weakReference2 = (WeakReference) CollectionsKt.A(windowRecorder.p);
                                    if (weakReference2 != null) {
                                        view4 = (View) weakReference2.get();
                                    } else {
                                        view4 = null;
                                    }
                                    if (!Intrinsics.a(view3, view4)) {
                                        return;
                                    }
                                    view3.getClass();
                                    windowRecorder.h(view3);
                                }
                            }
                        };
                        weakHashMap2.put(view2, onLayoutChangeListener3);
                        view2.addOnLayoutChangeListener(onLayoutChangeListener3);
                    }
                }
            }
            AutoCloseableKt.a(a, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(a, th);
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        reset();
        MainLooperHandler mainLooperHandler = this.m;
        Capturer capturer = this.v;
        Handler handler = mainLooperHandler.a;
        if (capturer != null) {
            handler.removeCallbacks(capturer);
        }
        ISentryLifecycleToken a = this.u.a();
        try {
            Handler handler2 = this.x;
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            HandlerThread handlerThread = this.w;
            if (handlerThread != null) {
                handlerThread.quitSafely();
            }
            AutoCloseableKt.a(a, null);
            w();
        } finally {
        }
    }

    public final void h(final View view) {
        view.getClass();
        if (view.getWidth() > 0 && view.getHeight() > 0) {
            int width = view.getWidth();
            Point point = this.q;
            if (width != point.x || view.getHeight() != point.y) {
                point.set(view.getWidth(), view.getHeight());
                this.l.Z(view.getWidth(), view.getHeight());
                return;
            }
            return;
        }
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: io.sentry.android.replay.WindowRecorder$determineWindowSize$1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                View view2;
                WindowRecorder windowRecorder = WindowRecorder.this;
                Point point2 = windowRecorder.q;
                WeakReference weakReference = (WeakReference) CollectionsKt.A(windowRecorder.p);
                if (weakReference != null) {
                    view2 = (View) weakReference.get();
                } else {
                    view2 = null;
                }
                View view3 = view;
                if (!Intrinsics.a(view3, view2)) {
                    if (view3 != null && view3.getViewTreeObserver() != null && view3.getViewTreeObserver().isAlive()) {
                        try {
                            view3.getViewTreeObserver().removeOnPreDrawListener(this);
                            return true;
                        } catch (IllegalStateException unused) {
                        }
                    }
                } else {
                    view3.getClass();
                    if (view3.getWidth() > 0 && view3.getHeight() > 0) {
                        if (view3.getViewTreeObserver() != null && view3.getViewTreeObserver().isAlive()) {
                            try {
                                view3.getViewTreeObserver().removeOnPreDrawListener(this);
                            } catch (IllegalStateException unused2) {
                            }
                        }
                        if (view3.getWidth() != point2.x || view3.getHeight() != point2.y) {
                            point2.set(view3.getWidth(), view3.getHeight());
                            windowRecorder.l.Z(view3.getWidth(), view3.getHeight());
                        }
                    }
                }
                return true;
            }
        };
        if (view.getViewTreeObserver() != null && view.getViewTreeObserver().isAlive()) {
            try {
                view.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
            } catch (IllegalStateException unused) {
            }
        }
    }

    public final Handler n() {
        if (this.x == null) {
            ISentryLifecycleToken a = this.u.a();
            try {
                if (this.x == null) {
                    this.w = new HandlerThread("SentryReplayBackgroundProcessing");
                    HandlerThread handlerThread = this.w;
                    if (handlerThread != null) {
                        handlerThread.start();
                    }
                    HandlerThread handlerThread2 = this.w;
                    handlerThread2.getClass();
                    this.x = new Handler(handlerThread2.getLooper());
                }
                AutoCloseableKt.a(a, null);
            } finally {
            }
        }
        Handler handler = this.x;
        handler.getClass();
        return handler;
    }

    public final void q() {
        View view;
        Capturer capturer = this.v;
        if (capturer != null) {
            ScreenshotRecorder screenshotRecorder = capturer.l;
            if (screenshotRecorder != null) {
                screenshotRecorder.l.set(false);
                WeakReference weakReference = screenshotRecorder.k;
                if (weakReference != null) {
                    view = (View) weakReference.get();
                } else {
                    view = null;
                }
                screenshotRecorder.c(view);
            }
            capturer.n.getAndSet(false);
        }
    }

    public final void reset() {
        ScreenshotRecorder screenshotRecorder;
        this.q.set(0, 0);
        ISentryLifecycleToken a = this.s.a();
        try {
            Iterator it = this.p.iterator();
            while (it.hasNext()) {
                View view = (View) ((WeakReference) it.next()).get();
                if (view != null) {
                    View.OnLayoutChangeListener onLayoutChangeListener = (View.OnLayoutChangeListener) this.r.remove(view);
                    if (onLayoutChangeListener != null) {
                        view.removeOnLayoutChangeListener(onLayoutChangeListener);
                    }
                    Capturer capturer = this.v;
                    if (capturer != null && (screenshotRecorder = capturer.l) != null) {
                        screenshotRecorder.c(view);
                    }
                }
            }
            this.p.clear();
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    public final void v() {
        View view;
        Capturer capturer = this.v;
        if (capturer != null) {
            MainLooperHandler mainLooperHandler = capturer.k;
            SentryOptions sentryOptions = capturer.j;
            if (sentryOptions.getSessionReplay().m) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Resuming the capture runnable.", new Object[0]);
            }
            ScreenshotRecorder screenshotRecorder = capturer.l;
            if (screenshotRecorder != null) {
                WeakReference weakReference = screenshotRecorder.k;
                if (weakReference != null && (view = (View) weakReference.get()) != null && view.getViewTreeObserver() != null && view.getViewTreeObserver().isAlive()) {
                    try {
                        view.getViewTreeObserver().addOnDrawListener(screenshotRecorder);
                    } catch (IllegalStateException unused) {
                    }
                }
                screenshotRecorder.l.set(true);
            }
            capturer.n.getAndSet(true);
            mainLooperHandler.a.removeCallbacks(capturer);
            if (!mainLooperHandler.a.post(capturer)) {
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Failed to post the capture runnable, main looper is not ready.", new Object[0]);
            }
        }
    }

    public final void w() {
        View view;
        Capturer capturer = this.v;
        if (capturer != null) {
            ScreenshotRecorder screenshotRecorder = capturer.l;
            if (screenshotRecorder != null) {
                screenshotRecorder.l.set(false);
                WeakReference weakReference = screenshotRecorder.k;
                if (weakReference != null) {
                    view = (View) weakReference.get();
                } else {
                    view = null;
                }
                screenshotRecorder.c(view);
                WeakReference weakReference2 = screenshotRecorder.k;
                if (weakReference2 != null) {
                    weakReference2.clear();
                }
                screenshotRecorder.n.close();
            }
            capturer.l = null;
            capturer.n.getAndSet(false);
        }
        ISentryLifecycleToken a = this.t.a();
        try {
            this.v = null;
            AutoCloseableKt.a(a, null);
            this.o.set(false);
        } finally {
        }
    }
}
