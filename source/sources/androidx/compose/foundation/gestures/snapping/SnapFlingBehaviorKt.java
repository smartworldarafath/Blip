package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import defpackage.u2;
import defpackage.yf;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapFlingBehaviorKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ScrollScope scrollScope, float f, AnimationState animationState, DecayAnimationSpec decayAnimationSpec, Function1 function1, ContinuationImpl continuationImpl) {
        SnapFlingBehaviorKt$animateDecay$1 snapFlingBehaviorKt$animateDecay$1;
        int i;
        boolean z;
        float f2;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof SnapFlingBehaviorKt$animateDecay$1) {
            SnapFlingBehaviorKt$animateDecay$1 snapFlingBehaviorKt$animateDecay$12 = (SnapFlingBehaviorKt$animateDecay$1) continuationImpl;
            int i2 = snapFlingBehaviorKt$animateDecay$12.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehaviorKt$animateDecay$12.q = i2 - Integer.MIN_VALUE;
                snapFlingBehaviorKt$animateDecay$1 = snapFlingBehaviorKt$animateDecay$12;
                Object obj = snapFlingBehaviorKt$animateDecay$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = snapFlingBehaviorKt$animateDecay$1.q;
                if (i == 0) {
                    if (i == 1) {
                        f2 = snapFlingBehaviorKt$animateDecay$1.m;
                        ref$FloatRef = snapFlingBehaviorKt$animateDecay$1.o;
                        animationState = snapFlingBehaviorKt$animateDecay$1.n;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    if (((Number) animationState.b()).floatValue() == 0.0f) {
                        z = true;
                    } else {
                        z = false;
                    }
                    yf yfVar = new yf(f, obj2, scrollScope, function1, 0);
                    snapFlingBehaviorKt$animateDecay$1.n = animationState;
                    snapFlingBehaviorKt$animateDecay$1.o = obj2;
                    snapFlingBehaviorKt$animateDecay$1.m = f;
                    snapFlingBehaviorKt$animateDecay$1.q = 1;
                    if (SuspendAnimationKt.d(animationState, decayAnimationSpec, !z, yfVar, snapFlingBehaviorKt$animateDecay$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    f2 = f;
                    ref$FloatRef = obj2;
                }
                return new AnimationResult(new Float(f2 - ref$FloatRef.j), animationState);
            }
        }
        snapFlingBehaviorKt$animateDecay$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = snapFlingBehaviorKt$animateDecay$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = snapFlingBehaviorKt$animateDecay$1.q;
        if (i == 0) {
        }
        return new AnimationResult(new Float(f2 - ref$FloatRef.j), animationState);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(ScrollScope scrollScope, float f, float f2, AnimationState animationState, SpringSpec springSpec, Function1 function1, ContinuationImpl continuationImpl) {
        ContinuationImpl continuationImpl2;
        int i;
        float floatValue;
        boolean z;
        AnimationState animationState2;
        Ref$FloatRef ref$FloatRef;
        float f3 = f;
        if (continuationImpl instanceof SnapFlingBehaviorKt$animateWithTarget$1) {
            SnapFlingBehaviorKt$animateWithTarget$1 snapFlingBehaviorKt$animateWithTarget$1 = (SnapFlingBehaviorKt$animateWithTarget$1) continuationImpl;
            int i2 = snapFlingBehaviorKt$animateWithTarget$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                snapFlingBehaviorKt$animateWithTarget$1.r = i2 - Integer.MIN_VALUE;
                continuationImpl2 = snapFlingBehaviorKt$animateWithTarget$1;
                SnapFlingBehaviorKt$animateWithTarget$1 snapFlingBehaviorKt$animateWithTarget$12 = continuationImpl2;
                Object obj = snapFlingBehaviorKt$animateWithTarget$12.q;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = snapFlingBehaviorKt$animateWithTarget$12.r;
                if (i == 0) {
                    if (i == 1) {
                        float f4 = snapFlingBehaviorKt$animateWithTarget$12.n;
                        float f5 = snapFlingBehaviorKt$animateWithTarget$12.m;
                        ref$FloatRef = snapFlingBehaviorKt$animateWithTarget$12.p;
                        animationState2 = snapFlingBehaviorKt$animateWithTarget$12.o;
                        ResultKt.b(obj);
                        floatValue = f4;
                        f3 = f5;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    floatValue = ((Number) animationState.b()).floatValue();
                    Float f6 = new Float(f3);
                    if (((Number) animationState.b()).floatValue() == 0.0f) {
                        z = true;
                    } else {
                        z = false;
                    }
                    yf yfVar = new yf(f2, obj2, scrollScope, function1, 1);
                    snapFlingBehaviorKt$animateWithTarget$12.o = animationState;
                    snapFlingBehaviorKt$animateWithTarget$12.p = obj2;
                    snapFlingBehaviorKt$animateWithTarget$12.m = f3;
                    snapFlingBehaviorKt$animateWithTarget$12.n = floatValue;
                    snapFlingBehaviorKt$animateWithTarget$12.r = 1;
                    if (SuspendAnimationKt.e(animationState, f6, springSpec, !z, yfVar, snapFlingBehaviorKt$animateWithTarget$12) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    animationState2 = animationState;
                    ref$FloatRef = obj2;
                }
                return new AnimationResult(new Float(f3 - ref$FloatRef.j), AnimationStateKt.c(animationState2, 0.0f, d(((Number) animationState2.b()).floatValue(), floatValue), 29));
            }
        }
        continuationImpl2 = new ContinuationImpl(continuationImpl);
        SnapFlingBehaviorKt$animateWithTarget$1 snapFlingBehaviorKt$animateWithTarget$122 = continuationImpl2;
        Object obj3 = snapFlingBehaviorKt$animateWithTarget$122.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = snapFlingBehaviorKt$animateWithTarget$122.r;
        if (i == 0) {
        }
        return new AnimationResult(new Float(f3 - ref$FloatRef.j), AnimationStateKt.c(animationState2, 0.0f, d(((Number) animationState2.b()).floatValue(), floatValue), 29));
    }

    public static final void c(AnimationScope animationScope, ScrollScope scrollScope, Function1 function1, float f) {
        float f2;
        try {
            f2 = scrollScope.f(f);
        } catch (CancellationException unused) {
            animationScope.a();
            f2 = 0.0f;
        }
        function1.b(Float.valueOf(f2));
        if (Math.abs(f - f2) > 0.5f) {
            animationScope.a();
        }
    }

    public static final float d(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        if (f2 <= 0.0f ? f < f2 : f > f2) {
            return f2;
        }
        return f;
    }
}
