package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.gestures.ScrollScope;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DecayApproachAnimation implements ApproachAnimation<Float, AnimationVector1D> {
    public final DecayAnimationSpec a;

    public DecayApproachAnimation(DecayAnimationSpec decayAnimationSpec) {
        this.a = decayAnimationSpec;
    }

    @Override // androidx.compose.foundation.gestures.snapping.ApproachAnimation
    public final Object a(ScrollScope scrollScope, Float f, Float f2, Function1 function1, Continuation continuation) {
        Object a = SnapFlingBehaviorKt.a(scrollScope, f.floatValue(), AnimationStateKt.b(0.0f, f2.floatValue(), 28), this.a, function1, (ContinuationImpl) continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return (AnimationResult) a;
    }
}
