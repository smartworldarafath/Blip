package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface VectorizedAnimationSpec<V extends AnimationVector> {
    boolean a();

    long b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    default AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return c(b(animationVector, animationVector2, animationVector3), animationVector, animationVector2, animationVector3);
    }

    AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);
}
