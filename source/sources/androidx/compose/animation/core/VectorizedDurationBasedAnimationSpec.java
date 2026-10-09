package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface VectorizedDurationBasedAnimationSpec<V extends AnimationVector> extends VectorizedFiniteAnimationSpec<V> {
    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    default long b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return (g() + d()) * 1000000;
    }

    int d();

    int g();
}
