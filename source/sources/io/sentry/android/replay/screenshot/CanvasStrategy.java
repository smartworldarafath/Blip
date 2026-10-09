package io.sentry.android.replay.screenshot;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import android.view.View;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.ExecutorProvider;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.WindowRecorder;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"NewApi", "UseKtx"})
/* loaded from: classes.dex */
public final class CanvasStrategy implements ScreenshotStrategy {
    public final ExecutorProvider a;
    public final ReplayIntegration b;
    public final SentryOptions c;
    public final ScreenshotRecorderConfig d;
    public volatile Bitmap e;
    public final AtomicReference f;
    public final AutoClosableReentrantLock g;
    public final Lazy h;
    public final AtomicBoolean i;
    public final TextIgnoringDelegateCanvas j;
    public final AtomicBoolean k;
    public final SurfaceTexture l;
    public final Surface m;
    public final a n;

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public CanvasStrategy(SentryOptions sentryOptions, ExecutorProvider executorProvider, ReplayIntegration replayIntegration, ScreenshotRecorderConfig screenshotRecorderConfig) {
        executorProvider.getClass();
        this.a = executorProvider;
        this.b = replayIntegration;
        this.c = sentryOptions;
        this.d = screenshotRecorderConfig;
        this.f = new AtomicReference(null);
        this.g = new ReentrantLock();
        this.h = LazyKt.a(LazyThreadSafetyMode.k, new Function0<Matrix>() { // from class: io.sentry.android.replay.screenshot.CanvasStrategy$prescaledMatrix$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Matrix matrix = new Matrix();
                ScreenshotRecorderConfig screenshotRecorderConfig2 = CanvasStrategy.this.d;
                matrix.preScale(screenshotRecorderConfig2.c, screenshotRecorderConfig2.d);
                return matrix;
            }
        });
        this.i = new AtomicBoolean(false);
        this.j = new TextIgnoringDelegateCanvas();
        this.k = new AtomicBoolean(false);
        SurfaceTexture surfaceTexture = new SurfaceTexture(false);
        surfaceTexture.setDefaultBufferSize(screenshotRecorderConfig.a, screenshotRecorderConfig.b);
        this.l = surfaceTexture;
        this.m = new Surface(surfaceTexture);
        IntegrationUtils.a("ReplayCanvasStrategy");
        this.n = new a(this, 0);
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final boolean a() {
        return this.i.get();
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void b(View view) {
        AtomicBoolean atomicBoolean = this.k;
        if (!atomicBoolean.get()) {
            Picture picture = new Picture();
            ScreenshotRecorderConfig screenshotRecorderConfig = this.d;
            Canvas beginRecording = picture.beginRecording(screenshotRecorderConfig.a, screenshotRecorderConfig.b);
            beginRecording.getClass();
            TextIgnoringDelegateCanvas textIgnoringDelegateCanvas = this.j;
            textIgnoringDelegateCanvas.getClass();
            textIgnoringDelegateCanvas.a = beginRecording;
            textIgnoringDelegateCanvas.setMatrix((Matrix) this.h.getValue());
            view.draw(textIgnoringDelegateCanvas);
            picture.endRecording();
            if (!atomicBoolean.get()) {
                this.f.set(picture);
                d(((WindowRecorder) this.a).n(), new ReplayRunnable(this.n, "screenshot_recorder.canvas"));
            }
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void c() {
        Bitmap bitmap;
        if (this.i.get() && (bitmap = this.e) != null && !bitmap.isRecycled()) {
            this.b.X(bitmap);
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void close() {
        this.k.set(true);
        d(((WindowRecorder) this.a).n(), new ReplayRunnable(new a(this, 1), "CanvasStrategy.close"));
        this.f.getAndSet(null);
    }

    public final void d(Handler handler, ReplayRunnable replayRunnable) {
        try {
            handler.post(replayRunnable);
        } catch (Throwable th) {
            this.c.getLogger().b(SentryLevel.ERROR, "Canvas Strategy: failed to post runnable ".concat(replayRunnable.j), th);
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void onContentChanged() {
    }
}
