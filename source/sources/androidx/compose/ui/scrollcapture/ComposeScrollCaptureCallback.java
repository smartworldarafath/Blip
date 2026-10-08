package androidx.compose.ui.scrollcapture;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import android.view.Surface;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import defpackage.c;
import defpackage.fe;
import defpackage.h6;
import defpackage.k8;
import defpackage.la;
import defpackage.q;
import defpackage.u0;
import defpackage.u2;
import java.util.function.Consumer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {
    public final SemanticsNode a;
    public final IntRect b;
    public final ScrollCapture c;
    public final AndroidComposeView d;
    public final ContextScope e;
    public final RelativeScroller f;

    public ComposeScrollCaptureCallback(SemanticsNode semanticsNode, IntRect intRect, ContextScope contextScope, ScrollCapture scrollCapture, AndroidComposeView androidComposeView) {
        this.a = semanticsNode;
        this.b = intRect;
        this.c = scrollCapture;
        this.d = androidComposeView;
        this.e = new ContextScope(contextScope.j.A(DisableAnimationMotionDurationScale.j));
        this.f = new RelativeScroller(intRect.a(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0082, code lost:
    
        if (r4 == r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ComposeScrollCaptureCallback composeScrollCaptureCallback, ScrollCaptureSession scrollCaptureSession, IntRect intRect, ContinuationImpl continuationImpl) {
        ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2 composeScrollCaptureCallback$onScrollCaptureImageRequest$2;
        CoroutineSingletons coroutineSingletons;
        int i;
        int i2;
        int i3;
        la laVar;
        CoroutineContext coroutineContext;
        ScrollCaptureSession scrollCaptureSession2;
        IntRect intRect2;
        int i4;
        int i5;
        int d;
        int d2;
        Surface surface;
        Surface surface2;
        Surface surface3;
        if (continuationImpl instanceof ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2) {
            composeScrollCaptureCallback$onScrollCaptureImageRequest$2 = (ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2) continuationImpl;
            int i6 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s = i6 - Integer.MIN_VALUE;
                Object obj = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.q;
                coroutineSingletons = CoroutineSingletons.j;
                i = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            i5 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.p;
                            i4 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.o;
                            intRect2 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.n;
                            scrollCaptureSession2 = u0.g(composeScrollCaptureCallback$onScrollCaptureImageRequest$2.m);
                            ResultKt.b(obj);
                            RelativeScroller relativeScroller = composeScrollCaptureCallback.f;
                            d = RangesKt.d(i4 - MathKt.b(relativeScroller.c), 0, relativeScroller.a);
                            RelativeScroller relativeScroller2 = composeScrollCaptureCallback.f;
                            d2 = RangesKt.d(i5 - MathKt.b(relativeScroller2.c), 0, relativeScroller2.a);
                            int i7 = intRect2.a;
                            int i8 = intRect2.c;
                            if (d == d2) {
                                surface = scrollCaptureSession2.getSurface();
                                Canvas lockHardwareCanvas = surface.lockHardwareCanvas();
                                try {
                                    lockHardwareCanvas.save();
                                    lockHardwareCanvas.translate(-i7, -d);
                                    IntRect intRect3 = composeScrollCaptureCallback.b;
                                    lockHardwareCanvas.translate(-intRect3.a, -intRect3.b);
                                    composeScrollCaptureCallback.d.getRootView().draw(lockHardwareCanvas);
                                    surface3 = scrollCaptureSession2.getSurface();
                                    surface3.unlockCanvasAndPost(lockHardwareCanvas);
                                    int b = MathKt.b(composeScrollCaptureCallback.f.c);
                                    return new IntRect(i7, d + b, i8, d2 + b);
                                } catch (Throwable th) {
                                    surface2 = scrollCaptureSession2.getSurface();
                                    surface2.unlockCanvasAndPost(lockHardwareCanvas);
                                    throw th;
                                }
                            }
                            return IntRect.e;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    int i9 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.p;
                    int i10 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.o;
                    IntRect intRect4 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.n;
                    ScrollCaptureSession g = u0.g(composeScrollCaptureCallback$onScrollCaptureImageRequest$2.m);
                    ResultKt.b(obj);
                    i2 = i10;
                    intRect = intRect4;
                    i3 = i9;
                    scrollCaptureSession = g;
                } else {
                    ResultKt.b(obj);
                    i2 = intRect.b;
                    i3 = intRect.d;
                    RelativeScroller relativeScroller3 = composeScrollCaptureCallback.f;
                    composeScrollCaptureCallback$onScrollCaptureImageRequest$2.m = scrollCaptureSession;
                    composeScrollCaptureCallback$onScrollCaptureImageRequest$2.n = intRect;
                    composeScrollCaptureCallback$onScrollCaptureImageRequest$2.o = i2;
                    composeScrollCaptureCallback$onScrollCaptureImageRequest$2.p = i3;
                    composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s = 1;
                    if (i2 <= i3) {
                        int i11 = i3 - i2;
                        int i12 = relativeScroller3.a;
                        if (i11 <= i12) {
                            Object a = relativeScroller3.a((((i11 / 2) + i2) - (i12 / 2)) - relativeScroller3.c, composeScrollCaptureCallback$onScrollCaptureImageRequest$2);
                            Object obj2 = Unit.a;
                            if (a != coroutineSingletons) {
                                a = obj2;
                            }
                            if (a == coroutineSingletons) {
                                obj2 = a;
                            }
                        } else {
                            fe.l(q.f(i11, i12, "Expected range (", ") to be ≤ viewportSize="));
                            return null;
                        }
                    } else {
                        relativeScroller3.getClass();
                        k8.h(i2, i3, " ≤ max=", "Expected min=");
                        return null;
                    }
                }
                laVar = new la(5);
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.m = scrollCaptureSession;
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.n = intRect;
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.o = i2;
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.p = i3;
                composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s = 2;
                coroutineContext = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.k;
                coroutineContext.getClass();
                if (MonotonicFrameClockKt.a(coroutineContext).w(composeScrollCaptureCallback$onScrollCaptureImageRequest$2, laVar) != coroutineSingletons) {
                    scrollCaptureSession2 = scrollCaptureSession;
                    intRect2 = intRect;
                    i4 = i2;
                    i5 = i3;
                    RelativeScroller relativeScroller4 = composeScrollCaptureCallback.f;
                    d = RangesKt.d(i4 - MathKt.b(relativeScroller4.c), 0, relativeScroller4.a);
                    RelativeScroller relativeScroller22 = composeScrollCaptureCallback.f;
                    d2 = RangesKt.d(i5 - MathKt.b(relativeScroller22.c), 0, relativeScroller22.a);
                    int i72 = intRect2.a;
                    int i82 = intRect2.c;
                    if (d == d2) {
                    }
                }
                return coroutineSingletons;
            }
        }
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2 = new ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2(composeScrollCaptureCallback, continuationImpl);
        Object obj3 = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.q;
        coroutineSingletons = CoroutineSingletons.j;
        i = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s;
        if (i == 0) {
        }
        laVar = new la(5);
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2.m = scrollCaptureSession;
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2.n = intRect;
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2.o = i2;
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2.p = i3;
        composeScrollCaptureCallback$onScrollCaptureImageRequest$2.s = 2;
        coroutineContext = composeScrollCaptureCallback$onScrollCaptureImageRequest$2.k;
        coroutineContext.getClass();
        if (MonotonicFrameClockKt.a(coroutineContext).w(composeScrollCaptureCallback$onScrollCaptureImageRequest$2, laVar) != coroutineSingletons) {
        }
        return coroutineSingletons;
    }

    public final void onScrollCaptureEnd(Runnable runnable) {
        BuildersKt.c(this.e, NonCancellable.k, null, new ComposeScrollCaptureCallback$onScrollCaptureEnd$1(this, runnable, null), 2);
    }

    public final void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        Job c = BuildersKt.c(this.e, null, null, new ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1(this, scrollCaptureSession, rect, consumer, null), 3);
        ((JobSupport) c).v0(new c(11, cancellationSignal));
        cancellationSignal.setOnCancelListener(new h6(0, c));
    }

    public final void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.accept(RectHelper_androidKt.a(this.b));
    }

    public final void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.f.c = 0.0f;
        ((SnapshotMutableStateImpl) this.c.a).setValue(Boolean.TRUE);
        runnable.run();
    }
}
