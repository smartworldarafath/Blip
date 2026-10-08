package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorizedTweenSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public final int a;
    public final int b;
    public final VectorizedFloatAnimationSpec c;

    public VectorizedTweenSpec(int i, int i2, Easing easing) {
        this.a = i;
        this.b = i2;
        this.c = new VectorizedFloatAnimationSpec(new FloatTweenSpec(i, i2, easing));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.c.c(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int d() {
        return this.b;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.c.f(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int g() {
        return this.a;
    }
}
