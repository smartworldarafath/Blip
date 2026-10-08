package io.sentry.android.replay;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.k8;
import io.sentry.ScreenshotStrategyType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.screenshot.CanvasStrategy;
import io.sentry.android.replay.screenshot.PixelCopyStrategy;
import io.sentry.android.replay.screenshot.ScreenshotStrategy;
import io.sentry.android.replay.util.DebugOverlayDrawable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseKtx", "UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public final class ScreenshotRecorder implements ViewTreeObserver.OnDrawListener {
    public final SentryOptions j;
    public WeakReference k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final ScreenshotStrategy n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ScreenshotStrategyType.values().length];
            try {
                iArr[ScreenshotStrategyType.CANVAS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScreenshotStrategyType.PIXEL_COPY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public ScreenshotRecorder(SentryOptions sentryOptions, ExecutorProvider executorProvider, ReplayIntegration replayIntegration, ScreenshotRecorderConfig screenshotRecorderConfig) {
        ScreenshotStrategy canvasStrategy;
        executorProvider.getClass();
        this.j = sentryOptions;
        this.l = new AtomicBoolean(true);
        DebugOverlayDrawable debugOverlayDrawable = new DebugOverlayDrawable();
        this.m = new AtomicBoolean(false);
        int i = WhenMappings.a[sentryOptions.getSessionReplay().n.ordinal()];
        if (i != 1) {
            if (i == 2) {
                canvasStrategy = new PixelCopyStrategy(executorProvider, replayIntegration, sentryOptions, screenshotRecorderConfig, debugOverlayDrawable, new Function0<Unit>() { // from class: io.sentry.android.replay.ScreenshotRecorder$screenshotStrategy$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        ScreenshotRecorder.this.m.set(true);
                        return Unit.a;
                    }
                });
            } else {
                k8.e();
                throw null;
            }
        } else {
            canvasStrategy = new CanvasStrategy(sentryOptions, executorProvider, replayIntegration, screenshotRecorderConfig);
        }
        this.n = canvasStrategy;
    }

    public final void a(View view) {
        View view2;
        view.getClass();
        WeakReference weakReference = this.k;
        if (weakReference != null) {
            view2 = (View) weakReference.get();
        } else {
            view2 = null;
        }
        c(view2);
        WeakReference weakReference2 = this.k;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        this.k = new WeakReference(view);
        if (view.getViewTreeObserver() != null && view.getViewTreeObserver().isAlive()) {
            try {
                view.getViewTreeObserver().addOnDrawListener(this);
            } catch (IllegalStateException unused) {
            }
        }
        this.m.set(true);
        this.n.onContentChanged();
    }

    public final void b() {
        View view;
        SentryOptions sentryOptions = this.j;
        boolean z = sentryOptions.getSessionReplay().m;
        AtomicBoolean atomicBoolean = this.l;
        if (z) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing screenshot, isCapturing: %s", Boolean.valueOf(atomicBoolean.get()));
        }
        if (!atomicBoolean.get()) {
            if (sentryOptions.getSessionReplay().m) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "ScreenshotRecorder is paused, not capturing screenshot", new Object[0]);
                return;
            }
            return;
        }
        boolean z2 = sentryOptions.getSessionReplay().m;
        ScreenshotStrategy screenshotStrategy = this.n;
        AtomicBoolean atomicBoolean2 = this.m;
        if (z2) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing screenshot, contentChanged: %s, lastCaptureSuccessful: %s", Boolean.valueOf(atomicBoolean2.get()), Boolean.valueOf(screenshotStrategy.a()));
        }
        if (!atomicBoolean2.get()) {
            screenshotStrategy.c();
            return;
        }
        WeakReference weakReference = this.k;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view != null && view.getWidth() > 0 && view.getHeight() > 0 && view.isShown()) {
            if (WindowsKt.a(view) == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Window is invalid, not capturing screenshot", new Object[0]);
                return;
            }
            try {
                atomicBoolean2.set(false);
                screenshotStrategy.b(view);
                return;
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.WARNING, "Failed to capture replay recording", th);
                return;
            }
        }
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Root view is invalid, not capturing screenshot", new Object[0]);
    }

    public final void c(View view) {
        this.j.getReplayController().getClass();
        if (view != null && view.getViewTreeObserver() != null && view.getViewTreeObserver().isAlive()) {
            try {
                view.getViewTreeObserver().removeOnDrawListener(this);
            } catch (IllegalStateException unused) {
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        View view;
        if (!this.l.get()) {
            return;
        }
        WeakReference weakReference = this.k;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view != null && view.getWidth() > 0 && view.getHeight() > 0 && view.isShown()) {
            this.m.set(true);
            this.n.onContentChanged();
        } else {
            this.j.getLogger().c(SentryLevel.DEBUG, "Root view is invalid, not capturing screenshot", new Object[0]);
        }
    }
}
