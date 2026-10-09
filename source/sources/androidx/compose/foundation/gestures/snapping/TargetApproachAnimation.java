package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollScope;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TargetApproachAnimation implements ApproachAnimation<Float, AnimationVector1D> {
    public final SpringSpec a;

    public TargetApproachAnimation(SpringSpec springSpec) {
        this.a = springSpec;
    }

    @Override // androidx.compose.foundation.gestures.snapping.ApproachAnimation
    public final Object a(ScrollScope scrollScope, Float f, Float f2, Function1 function1, Continuation continuation) {
        float floatValue = f.floatValue();
        float floatValue2 = f2.floatValue();
        Object b = SnapFlingBehaviorKt.b(scrollScope, Math.signum(floatValue2) * Math.abs(floatValue), floatValue, AnimationStateKt.b(0.0f, floatValue2, 28), this.a, function1, (ContinuationImpl) continuation);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return (AnimationResult) b;
    }
}
