package io.sentry.android.replay.screenshot;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.view.PixelCopy;
import android.view.Surface;
import defpackage.q;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.WindowRecorder;
import kotlin.jdk7.AutoCloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ CanvasStrategy k;

    public /* synthetic */ a(CanvasStrategy canvasStrategy, int i) {
        this.j = i;
        this.k = canvasStrategy;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        final CanvasStrategy canvasStrategy = this.k;
        switch (i) {
            case 0:
                if (canvasStrategy.k.get()) {
                    canvasStrategy.c.getLogger().c(SentryLevel.DEBUG, "Canvas Strategy already closed, skipping picture render", new Object[0]);
                    return;
                }
                Picture picture = (Picture) canvasStrategy.f.getAndSet(null);
                if (picture != null) {
                    try {
                        Canvas lockHardwareCanvas = canvasStrategy.m.lockHardwareCanvas();
                        try {
                            lockHardwareCanvas.drawColor(-16777216, PorterDuff.Mode.CLEAR);
                            picture.draw(lockHardwareCanvas);
                            canvasStrategy.m.unlockCanvasAndPost(lockHardwareCanvas);
                            if (canvasStrategy.e == null) {
                                ISentryLifecycleToken a = canvasStrategy.g.a();
                                try {
                                    if (canvasStrategy.e == null) {
                                        ScreenshotRecorderConfig screenshotRecorderConfig = canvasStrategy.d;
                                        canvasStrategy.e = Bitmap.createBitmap(screenshotRecorderConfig.a, screenshotRecorderConfig.b, Bitmap.Config.ARGB_8888);
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
                            if (canvasStrategy.k.get()) {
                                canvasStrategy.c.getLogger().c(SentryLevel.DEBUG, "Canvas Strategy already closed, skipping pixel copy request", new Object[0]);
                                return;
                            }
                            Surface surface = canvasStrategy.m;
                            Bitmap bitmap = canvasStrategy.e;
                            bitmap.getClass();
                            PixelCopy.request(surface, bitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.replay.screenshot.b
                                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                                public final void onPixelCopyFinished(int i2) {
                                    CanvasStrategy canvasStrategy2 = CanvasStrategy.this;
                                    if (canvasStrategy2.k.get()) {
                                        canvasStrategy2.c.getLogger().c(SentryLevel.DEBUG, "CanvasStrategy is closed, ignoring capture result", new Object[0]);
                                        return;
                                    }
                                    if (i2 == 0) {
                                        canvasStrategy2.i.set(true);
                                        Bitmap bitmap2 = canvasStrategy2.e;
                                        if (bitmap2 != null && !bitmap2.isRecycled()) {
                                            canvasStrategy2.b.X(bitmap2);
                                            return;
                                        }
                                        return;
                                    }
                                    canvasStrategy2.c.getLogger().c(SentryLevel.ERROR, q.g(i2, "Canvas Strategy: PixelCopy failed with code "), new Object[0]);
                                    canvasStrategy2.i.set(false);
                                }
                            }, ((WindowRecorder) canvasStrategy.a).n());
                            return;
                        } catch (Throwable th3) {
                            canvasStrategy.m.unlockCanvasAndPost(lockHardwareCanvas);
                            throw th3;
                        }
                    } catch (Throwable th4) {
                        canvasStrategy.c.getLogger().b(SentryLevel.ERROR, "Canvas Strategy: picture render failed", th4);
                        canvasStrategy.i.set(false);
                        return;
                    }
                }
                return;
            default:
                Bitmap bitmap2 = canvasStrategy.e;
                if (bitmap2 != null) {
                    synchronized (bitmap2) {
                        if (!bitmap2.isRecycled()) {
                            bitmap2.recycle();
                        }
                    }
                }
                canvasStrategy.m.release();
                canvasStrategy.l.release();
                return;
        }
    }
}
