package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorizedSpringSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public final /* synthetic */ VectorizedFloatAnimationSpec a;

    public VectorizedSpringSpec(final float f, final float f2, final AnimationVector animationVector) {
        Animations animations;
        int[] iArr = VectorizedAnimationSpecKt.a;
        if (animationVector == null && f == 1.0f && f2 == 1500.0f) {
            animations = DefaultSpringAnimations.a;
        } else if (animationVector != null) {
            animations = new Animations(f, f2, animationVector) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$1
                public final FloatSpringSpec[] a;

                {
                    int b = animationVector.b();
                    FloatSpringSpec[] floatSpringSpecArr = new FloatSpringSpec[b];
                    for (int i = 0; i < b; i++) {
                        floatSpringSpecArr[i] = new FloatSpringSpec(f, f2, animationVector.a(i));
                    }
                    this.a = floatSpringSpecArr;
                }

                @Override // androidx.compose.animation.core.Animations
                public final FloatAnimationSpec get(int i) {
                    return this.a[i];
                }
            };
        } else {
            animations = new Animations(f, f2) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$2
                public final FloatSpringSpec a;

                {
                    this.a = new FloatSpringSpec(f, f2);
                }

                @Override // androidx.compose.animation.core.Animations
                public final FloatAnimationSpec get(int i) {
                    return this.a;
                }
            };
        }
        this.a = new VectorizedFloatAnimationSpec(animations);
    }

    @Override // androidx.compose.animation.core.VectorizedFiniteAnimationSpec, androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean a() {
        this.a.getClass();
        return false;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.a.b(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.a.c(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.a.e(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.a.f(j, animationVector, animationVector2, animationVector3);
    }
}
