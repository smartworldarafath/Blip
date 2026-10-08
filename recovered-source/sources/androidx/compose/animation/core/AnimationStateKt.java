package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimationStateKt {
    public static AnimationState a() {
        Float valueOf = Float.valueOf(0.0f);
        TwoWayConverter twoWayConverter = VectorConvertersKt.a;
        return new AnimationState(twoWayConverter, valueOf, (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(valueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static AnimationState b(float f, float f2, int i) {
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return new AnimationState(VectorConvertersKt.a, Float.valueOf(f), new AnimationVector1D(f2), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static AnimationState c(AnimationState animationState, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = ((Number) ((SnapshotMutableStateImpl) animationState.k).getValue()).floatValue();
        }
        if ((i & 2) != 0) {
            f2 = ((AnimationVector1D) animationState.l).a;
        }
        return new AnimationState(animationState.j, Float.valueOf(f), new AnimationVector1D(f2), animationState.m, animationState.n, animationState.o);
    }
}
