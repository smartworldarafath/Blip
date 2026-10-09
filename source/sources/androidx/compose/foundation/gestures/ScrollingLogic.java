package androidx.compose.foundation.gestures;

import android.view.ViewTreeObserver;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Velocity;
import defpackage.ma;
import defpackage.u2;
import defpackage.we;
import java.lang.reflect.Method;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollingLogic {
    public ScrollableState a;
    public OverscrollEffect b;
    public FlingBehavior c;
    public Orientation d;
    public boolean e;
    public NestedScrollDispatcher f;
    public final ScrollableNode g;
    public final we h;
    public boolean i;
    public int j = 1;
    public ScrollScope k = ScrollableKt.a;
    public final ScrollingLogic$nestedScrollScope$1 l = new ScrollingLogic$nestedScrollScope$1(this);
    public final ma m = new ma(17, this);

    public ScrollingLogic(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher, ScrollableNode scrollableNode, we weVar) {
        this.a = scrollableState;
        this.b = overscrollEffect;
        this.c = flingBehavior;
        this.d = orientation;
        this.e = z;
        this.f = nestedScrollDispatcher;
        this.g = scrollableNode;
        this.h = weVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(long j, ContinuationImpl continuationImpl) {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        int i;
        ScrollingLogic scrollingLogic;
        Throwable th;
        Ref$LongRef ref$LongRef;
        if (continuationImpl instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) continuationImpl;
            int i2 = scrollingLogic$doFlingAnimation$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.p = i2 - Integer.MIN_VALUE;
                Object obj = scrollingLogic$doFlingAnimation$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = scrollingLogic$doFlingAnimation$1.p;
                if (i == 0) {
                    if (i == 1) {
                        ref$LongRef = scrollingLogic$doFlingAnimation$1.m;
                        try {
                            ResultKt.b(obj);
                            scrollingLogic = this;
                        } catch (Throwable th2) {
                            th = th2;
                            scrollingLogic = this;
                            scrollingLogic.i = false;
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    obj2.j = j;
                    this.i = true;
                    try {
                        MutatePriority mutatePriority = MutatePriority.j;
                        scrollingLogic = this;
                        try {
                            ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(scrollingLogic, obj2, j, null);
                            scrollingLogic$doFlingAnimation$1.m = obj2;
                            scrollingLogic$doFlingAnimation$1.p = 1;
                            if (scrollingLogic.g(mutatePriority, scrollingLogic$doFlingAnimation$2, scrollingLogic$doFlingAnimation$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            ref$LongRef = obj2;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            scrollingLogic.i = false;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        scrollingLogic = this;
                    }
                }
                scrollingLogic.i = false;
                return new Velocity(ref$LongRef.j);
            }
        }
        scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuationImpl);
        Object obj3 = scrollingLogic$doFlingAnimation$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = scrollingLogic$doFlingAnimation$1.p;
        if (i == 0) {
        }
        scrollingLogic.i = false;
        return new Velocity(ref$LongRef.j);
    }

    public final boolean b() {
        OverscrollEffect overscrollEffect;
        if (this.a.d() || this.a.b() || ((overscrollEffect = this.b) != null && ((AndroidEdgeEffectOverscrollEffect) overscrollEffect).f())) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        if ((r5 instanceof androidx.compose.foundation.gestures.ScrollableDefaultFlingBehavior) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(long j, boolean z, SuspendLambda suspendLambda) {
        int i;
        if (z) {
            FlingBehavior flingBehavior = this.c;
            ScrollableKt$NoOpScrollScope$1 scrollableKt$NoOpScrollScope$1 = ScrollableKt.a;
        }
        if (this.d == Orientation.k) {
            i = 1;
        } else {
            i = 2;
        }
        long a = Velocity.a(j, 0.0f, 0.0f, i);
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
        OverscrollEffect overscrollEffect = this.b;
        if (overscrollEffect != null && b()) {
            Object b = ((AndroidEdgeEffectOverscrollEffect) overscrollEffect).b(a, scrollingLogic$onScrollStopped$performFling$1, suspendLambda);
            if (b == CoroutineSingletons.j) {
                return b;
            }
        } else {
            Object n = scrollingLogic$onScrollStopped$performFling$1.n(new Velocity(a), suspendLambda);
            if (n == CoroutineSingletons.j) {
                return n;
            }
        }
        return Unit.a;
    }

    public final long d(ScrollScope scrollScope, long j, int i) {
        NestedScrollNode nestedScrollNode;
        long j2;
        long a;
        NestedScrollNode nestedScrollNode2 = this.f.a;
        NestedScrollNode nestedScrollNode3 = null;
        if (nestedScrollNode2 != null) {
            nestedScrollNode = nestedScrollNode2.Z0();
        } else {
            nestedScrollNode = null;
        }
        long j3 = 0;
        if (nestedScrollNode != null) {
            j2 = nestedScrollNode.Q(i, j);
        } else {
            j2 = 0;
        }
        long e = Offset.e(j, j2);
        if (this.d == Orientation.k) {
            a = Offset.a(e, 0.0f, 1);
        } else {
            a = Offset.a(e, 0.0f, 2);
        }
        long f = f(i(scrollScope.f(h(f(a)))));
        ScrollableNode scrollableNode = this.g;
        if (scrollableNode.w) {
            ViewTreeObserver viewTreeObserver = ((AndroidComposeView) DelegatableNodeKt.h(scrollableNode)).getViewTreeObserver();
            try {
                if (AndroidComposeView.W0 == null) {
                    Method declaredMethod = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                    declaredMethod.setAccessible(true);
                    AndroidComposeView.W0 = declaredMethod;
                }
                Method method = AndroidComposeView.W0;
                if (method != null) {
                    method.invoke(viewTreeObserver, null);
                }
            } catch (Exception unused) {
            }
        }
        long e2 = Offset.e(e, f);
        NestedScrollNode nestedScrollNode4 = this.f.a;
        if (nestedScrollNode4 != null) {
            nestedScrollNode3 = nestedScrollNode4.Z0();
        }
        NestedScrollNode nestedScrollNode5 = nestedScrollNode3;
        if (nestedScrollNode5 != null) {
            j3 = nestedScrollNode5.w0(i, f, e2);
        }
        return Offset.f(Offset.f(j2, f), j3);
    }

    public final float e(float f) {
        if (this.e) {
            return f * (-1.0f);
        }
        return f;
    }

    public final long f(long j) {
        if (this.e) {
            return Offset.g(j, -1.0f);
        }
        return j;
    }

    public final Object g(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object c = this.a.c(mutatePriority, new ScrollingLogic$scroll$2(this, null, function2), continuationImpl);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    public final float h(long j) {
        long j2;
        if (this.d == Orientation.k) {
            j2 = j >> 32;
        } else {
            j2 = j & 4294967295L;
        }
        return Float.intBitsToFloat((int) j2);
    }

    public final long i(float f) {
        if (f == 0.0f) {
            return 0L;
        }
        if (this.d == Orientation.k) {
            return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
        }
        return (Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
    }

    public final float j(long j) {
        int i = (int) (4294967295L & j);
        int i2 = (int) (j >> 32);
        double atan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i)), Math.abs(Float.intBitsToFloat(i2)));
        Orientation orientation = this.d;
        if (atan2 >= 0.7853981633974483d) {
            if (orientation != Orientation.j) {
                return 0.0f;
            }
            return Float.intBitsToFloat(i);
        }
        if (orientation != Orientation.k) {
            return 0.0f;
        }
        return Float.intBitsToFloat(i2);
    }
}
