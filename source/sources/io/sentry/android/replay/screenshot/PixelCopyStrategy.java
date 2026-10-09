package io.sentry.android.replay.screenshot;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import defpackage.s3;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayOptions;
import io.sentry.android.replay.ExecutorProvider;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.replay.ScreenshotRecorderConfig;
import io.sentry.android.replay.WindowRecorder;
import io.sentry.android.replay.WindowsKt;
import io.sentry.android.replay.screenshot.PixelCopyStrategy;
import io.sentry.android.replay.util.DebugOverlayDrawable;
import io.sentry.android.replay.util.MainLooperHandler;
import io.sentry.android.replay.util.MaskRenderer;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.android.replay.util.ViewsKt;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseKtx"})
/* loaded from: classes.dex */
public final class PixelCopyStrategy implements ScreenshotStrategy {
    public final ReplayIntegration a;
    public final SentryOptions b;
    public final ScreenshotRecorderConfig c;
    public final Function0 d;
    public final ScheduledExecutorService e;
    public final MainLooperHandler f;
    public final Bitmap g;
    public final Lazy h;
    public final AtomicBoolean i;
    public final MaskRenderer j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public final Lazy m;
    public final Lazy n;
    public final Rect o;
    public final RectF p;
    public final int[] q;
    public final int[] r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SurfaceViewCapture {
        public final Bitmap a;
        public final int b;
        public final int c;

        public SurfaceViewCapture(Bitmap bitmap, int i, int i2) {
            bitmap.getClass();
            this.a = bitmap;
            this.b = i;
            this.c = i2;
        }
    }

    public PixelCopyStrategy(ExecutorProvider executorProvider, ReplayIntegration replayIntegration, SentryOptions sentryOptions, ScreenshotRecorderConfig screenshotRecorderConfig, DebugOverlayDrawable debugOverlayDrawable, Function0 function0) {
        executorProvider.getClass();
        this.a = replayIntegration;
        this.b = sentryOptions;
        this.c = screenshotRecorderConfig;
        this.d = function0;
        WindowRecorder windowRecorder = (WindowRecorder) executorProvider;
        this.e = windowRecorder.n;
        this.f = windowRecorder.m;
        Bitmap createBitmap = Bitmap.createBitmap(screenshotRecorderConfig.a, screenshotRecorderConfig.b, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        this.g = createBitmap;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        this.h = LazyKt.a(lazyThreadSafetyMode, new Function0<Matrix>() { // from class: io.sentry.android.replay.screenshot.PixelCopyStrategy$prescaledMatrix$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Matrix matrix = new Matrix();
                ScreenshotRecorderConfig screenshotRecorderConfig2 = PixelCopyStrategy.this.c;
                matrix.preScale(screenshotRecorderConfig2.c, screenshotRecorderConfig2.d);
                return matrix;
            }
        });
        this.i = new AtomicBoolean(false);
        this.j = new MaskRenderer();
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        this.m = LazyKt.a(lazyThreadSafetyMode, PixelCopyStrategy$dstOverPaint$2.k);
        this.n = LazyKt.a(lazyThreadSafetyMode, new Function0<Canvas>() { // from class: io.sentry.android.replay.screenshot.PixelCopyStrategy$screenshotCanvas$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                return new Canvas(PixelCopyStrategy.this.g);
            }
        });
        this.o = new Rect();
        this.p = new RectF();
        this.q = new int[2];
        this.r = new int[2];
    }

    public static final void e(AtomicInteger atomicInteger, final PixelCopyStrategy pixelCopyStrategy, final View view, final SurfaceViewCapture[] surfaceViewCaptureArr, final ViewHierarchyNode viewHierarchyNode, final int i, final int i2) {
        if (atomicInteger.decrementAndGet() == 0) {
            pixelCopyStrategy.e.submit(new ReplayRunnable(new Runnable() { // from class: io.sentry.android.replay.screenshot.c
                @Override // java.lang.Runnable
                public final void run() {
                    int i3;
                    PixelCopyStrategy pixelCopyStrategy2 = PixelCopyStrategy.this;
                    boolean z = pixelCopyStrategy2.l.get();
                    PixelCopyStrategy.SurfaceViewCapture[] surfaceViewCaptureArr2 = surfaceViewCaptureArr;
                    if (!z && !pixelCopyStrategy2.g.isRecycled()) {
                        int length = surfaceViewCaptureArr2.length;
                        int i4 = 0;
                        while (i4 < length) {
                            PixelCopyStrategy.SurfaceViewCapture surfaceViewCapture = surfaceViewCaptureArr2[i4];
                            if (surfaceViewCapture != null) {
                                Bitmap bitmap = surfaceViewCapture.a;
                                if (!bitmap.isRecycled()) {
                                    Canvas canvas = (Canvas) pixelCopyStrategy2.n.getValue();
                                    Paint paint = (Paint) pixelCopyStrategy2.m.getValue();
                                    Rect rect = pixelCopyStrategy2.o;
                                    RectF rectF = pixelCopyStrategy2.p;
                                    int i5 = surfaceViewCapture.b;
                                    int i6 = surfaceViewCapture.c;
                                    ScreenshotRecorderConfig screenshotRecorderConfig = pixelCopyStrategy2.c;
                                    float f = screenshotRecorderConfig.c;
                                    float f2 = screenshotRecorderConfig.d;
                                    canvas.getClass();
                                    paint.getClass();
                                    rect.getClass();
                                    rectF.getClass();
                                    float f3 = (i5 - i) * f;
                                    float f4 = (i6 - i2) * f2;
                                    i3 = length;
                                    rect.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
                                    rectF.set(f3, f4, (bitmap.getWidth() * f) + f3, (bitmap.getHeight() * f2) + f4);
                                    canvas.drawBitmap(bitmap, rect, rectF, paint);
                                    bitmap.recycle();
                                    i4++;
                                    length = i3;
                                }
                            }
                            i3 = length;
                            i4++;
                            length = i3;
                        }
                        pixelCopyStrategy2.d(view, viewHierarchyNode);
                        return;
                    }
                    pixelCopyStrategy2.b.getLogger().c(SentryLevel.DEBUG, "PixelCopyStrategy is closed, skipping compositing", new Object[0]);
                    for (PixelCopyStrategy.SurfaceViewCapture surfaceViewCapture2 : surfaceViewCaptureArr2) {
                        if (surfaceViewCapture2 != null) {
                            Bitmap bitmap2 = surfaceViewCapture2.a;
                            if (!bitmap2.isRecycled()) {
                                bitmap2.recycle();
                            }
                        }
                    }
                }
            }, "screenshot_recorder.composite"));
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final boolean a() {
        return this.i.get();
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void b(final View view) {
        Window a = WindowsKt.a(view);
        SentryOptions sentryOptions = this.b;
        if (a == null) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Window is invalid, not capturing screenshot", new Object[0]);
            return;
        }
        if (this.l.get()) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "PixelCopyStrategy is closed, not capturing screenshot", new Object[0]);
            return;
        }
        try {
            this.k.set(false);
            PixelCopy.request(a, this.g, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.replay.screenshot.d
                /* JADX WARN: Removed duplicated region for block: B:53:0x0139  */
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void onPixelCopyFinished(int i) {
                    ArrayList arrayList;
                    Surface surface;
                    PixelCopyStrategy.SurfaceViewCapture[] surfaceViewCaptureArr;
                    View view2;
                    PixelCopyStrategy pixelCopyStrategy;
                    final Bitmap bitmap;
                    final int i2;
                    final AtomicInteger atomicInteger;
                    final PixelCopyStrategy pixelCopyStrategy2;
                    final ViewHierarchyNode viewHierarchyNode;
                    final int i3;
                    final int i4;
                    SurfaceHolder holder;
                    PixelCopyStrategy pixelCopyStrategy3 = PixelCopyStrategy.this;
                    AtomicBoolean atomicBoolean = pixelCopyStrategy3.l;
                    AtomicBoolean atomicBoolean2 = pixelCopyStrategy3.i;
                    SentryOptions sentryOptions2 = pixelCopyStrategy3.b;
                    char c = 0;
                    if (atomicBoolean.get()) {
                        sentryOptions2.getLogger().c(SentryLevel.DEBUG, "PixelCopyStrategy is closed, ignoring capture result", new Object[0]);
                        return;
                    }
                    if (i != 0) {
                        sentryOptions2.getLogger().c(SentryLevel.INFO, "Failed to capture replay recording: %d", Integer.valueOf(i));
                        atomicBoolean2.set(false);
                        return;
                    }
                    if (pixelCopyStrategy3.k.get()) {
                        sentryOptions2.getLogger().c(SentryLevel.INFO, "Failed to determine view hierarchy, not capturing", new Object[0]);
                        atomicBoolean2.set(false);
                        return;
                    }
                    SentryReplayOptions sessionReplay = sentryOptions2.getSessionReplay();
                    sessionReplay.getClass();
                    View view3 = view;
                    ViewHierarchyNode a2 = ViewHierarchyNode.Companion.a(view3, null, sessionReplay);
                    if (sentryOptions2.getSessionReplay().o) {
                        arrayList = new ArrayList();
                    } else {
                        arrayList = null;
                    }
                    SentryReplayOptions sessionReplay2 = sentryOptions2.getSessionReplay();
                    sessionReplay2.getClass();
                    ILogger logger = sentryOptions2.getLogger();
                    logger.getClass();
                    ViewsKt.a(view3, a2, sessionReplay2, logger, arrayList);
                    if (arrayList != null && !arrayList.isEmpty()) {
                        pixelCopyStrategy3.d.a();
                        int[] iArr = pixelCopyStrategy3.r;
                        int[] iArr2 = pixelCopyStrategy3.q;
                        view3.getLocationOnScreen(iArr2);
                        int i5 = iArr2[0];
                        int i6 = iArr2[1];
                        PixelCopyStrategy.SurfaceViewCapture[] surfaceViewCaptureArr2 = new PixelCopyStrategy.SurfaceViewCapture[arrayList.size()];
                        AtomicInteger atomicInteger2 = new AtomicInteger(arrayList.size());
                        Iterator it = arrayList.iterator();
                        final View view4 = view3;
                        final PixelCopyStrategy.SurfaceViewCapture[] surfaceViewCaptureArr3 = surfaceViewCaptureArr2;
                        final int i7 = 0;
                        while (it.hasNext()) {
                            int i8 = i7 + 1;
                            SurfaceView surfaceView = (SurfaceView) ((ViewHierarchyNode.SurfaceViewHierarchyNode) it.next()).h.get();
                            if (surfaceView != null && (holder = surfaceView.getHolder()) != null) {
                                surface = holder.getSurface();
                            } else {
                                surface = null;
                            }
                            if (surfaceView == null || surface == null || !surface.isValid()) {
                                surfaceViewCaptureArr = surfaceViewCaptureArr3;
                                view2 = view4;
                                PixelCopyStrategy.e(atomicInteger2, pixelCopyStrategy3, view2, surfaceViewCaptureArr, a2, i5, i6);
                            } else {
                                try {
                                    bitmap = Bitmap.createBitmap(surfaceView.getWidth(), surfaceView.getHeight(), Bitmap.Config.ARGB_8888);
                                    try {
                                        surfaceView.getLocationOnScreen(iArr);
                                        i2 = i6;
                                        atomicInteger = atomicInteger2;
                                        pixelCopyStrategy2 = pixelCopyStrategy3;
                                        viewHierarchyNode = a2;
                                        try {
                                            i3 = iArr[c];
                                            i4 = i5;
                                        } catch (Throwable th) {
                                            th = th;
                                            pixelCopyStrategy = pixelCopyStrategy2;
                                            atomicInteger2 = atomicInteger;
                                            a2 = viewHierarchyNode;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        pixelCopyStrategy = pixelCopyStrategy3;
                                    }
                                    try {
                                        final int i9 = iArr[1];
                                        PixelCopy.OnPixelCopyFinishedListener onPixelCopyFinishedListener = new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.replay.screenshot.e
                                            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                                            public final void onPixelCopyFinished(int i10) {
                                                PixelCopyStrategy pixelCopyStrategy4 = PixelCopyStrategy.this;
                                                boolean z = pixelCopyStrategy4.l.get();
                                                Bitmap bitmap2 = bitmap;
                                                PixelCopyStrategy.SurfaceViewCapture[] surfaceViewCaptureArr4 = surfaceViewCaptureArr3;
                                                AtomicInteger atomicInteger3 = atomicInteger;
                                                View view5 = view4;
                                                ViewHierarchyNode viewHierarchyNode2 = viewHierarchyNode;
                                                int i11 = i4;
                                                int i12 = i2;
                                                if (z) {
                                                    bitmap2.recycle();
                                                    PixelCopyStrategy.e(atomicInteger3, pixelCopyStrategy4, view5, surfaceViewCaptureArr4, viewHierarchyNode2, i11, i12);
                                                    return;
                                                }
                                                if (i10 == 0) {
                                                    surfaceViewCaptureArr4[i7] = new PixelCopyStrategy.SurfaceViewCapture(bitmap2, i3, i9);
                                                } else {
                                                    bitmap2.recycle();
                                                    pixelCopyStrategy4.b.getLogger().c(SentryLevel.INFO, "Failed to capture SurfaceView: %d", Integer.valueOf(i10));
                                                }
                                                PixelCopyStrategy.e(atomicInteger3, pixelCopyStrategy4, view5, surfaceViewCaptureArr4, viewHierarchyNode2, i11, i12);
                                            }
                                        };
                                        pixelCopyStrategy = pixelCopyStrategy2;
                                        atomicInteger2 = atomicInteger;
                                        a2 = viewHierarchyNode;
                                        i5 = i4;
                                        i6 = i2;
                                        try {
                                            PixelCopy.request(surfaceView, bitmap, onPixelCopyFinishedListener, pixelCopyStrategy.f.a);
                                            pixelCopyStrategy3 = pixelCopyStrategy;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bitmap = bitmap;
                                            sentryOptions2.getLogger().b(SentryLevel.WARNING, "Failed to capture SurfaceView", th);
                                            if (bitmap != null) {
                                                bitmap.recycle();
                                            }
                                            pixelCopyStrategy3 = pixelCopyStrategy;
                                            surfaceViewCaptureArr = surfaceViewCaptureArr3;
                                            view2 = view4;
                                            PixelCopyStrategy.e(atomicInteger2, pixelCopyStrategy3, view2, surfaceViewCaptureArr, a2, i5, i6);
                                            view4 = view2;
                                            surfaceViewCaptureArr3 = surfaceViewCaptureArr;
                                            i7 = i8;
                                            c = 0;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        pixelCopyStrategy = pixelCopyStrategy2;
                                        atomicInteger2 = atomicInteger;
                                        a2 = viewHierarchyNode;
                                        i5 = i4;
                                        i6 = i2;
                                        bitmap = bitmap;
                                        sentryOptions2.getLogger().b(SentryLevel.WARNING, "Failed to capture SurfaceView", th);
                                        if (bitmap != null) {
                                        }
                                        pixelCopyStrategy3 = pixelCopyStrategy;
                                        surfaceViewCaptureArr = surfaceViewCaptureArr3;
                                        view2 = view4;
                                        PixelCopyStrategy.e(atomicInteger2, pixelCopyStrategy3, view2, surfaceViewCaptureArr, a2, i5, i6);
                                        view4 = view2;
                                        surfaceViewCaptureArr3 = surfaceViewCaptureArr;
                                        i7 = i8;
                                        c = 0;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    pixelCopyStrategy = pixelCopyStrategy3;
                                    bitmap = null;
                                }
                                i7 = i8;
                                c = 0;
                            }
                            view4 = view2;
                            surfaceViewCaptureArr3 = surfaceViewCaptureArr;
                            i7 = i8;
                            c = 0;
                        }
                        return;
                    }
                    pixelCopyStrategy3.e.submit(new ReplayRunnable(new s3(pixelCopyStrategy3, view3, a2, 9), "screenshot_recorder.mask"));
                }
            }, this.f.a);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.WARNING, "Failed to capture replay recording", th);
            this.i.set(false);
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void c() {
        if (this.i.get()) {
            Bitmap bitmap = this.g;
            if (!bitmap.isRecycled()) {
                this.a.X(bitmap);
            }
        }
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void close() {
        this.l.set(true);
        this.e.submit(new ReplayRunnable(new defpackage.e(23, this), "PixelCopyStrategy.close"));
    }

    public final void d(View view, ViewHierarchyNode viewHierarchyNode) {
        boolean z = this.l.get();
        SentryOptions sentryOptions = this.b;
        if (!z) {
            Bitmap bitmap = this.g;
            if (!bitmap.isRecycled()) {
                this.j.a(bitmap, viewHierarchyNode, (Matrix) this.h.getValue());
                sentryOptions.getReplayController().getClass();
                this.a.X(bitmap);
                this.i.set(true);
                this.k.set(false);
                return;
            }
        }
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "PixelCopyStrategy is closed, skipping masking", new Object[0]);
    }

    @Override // io.sentry.android.replay.screenshot.ScreenshotStrategy
    public final void onContentChanged() {
        this.k.set(true);
    }
}
