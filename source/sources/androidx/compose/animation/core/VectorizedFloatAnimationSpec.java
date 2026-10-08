package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorizedFloatAnimationSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public final Animations a;
    public AnimationVector b;
    public AnimationVector c;
    public AnimationVector d;

    public VectorizedFloatAnimationSpec(final FloatAnimationSpec floatAnimationSpec) {
        this(new Animations() { // from class: androidx.compose.animation.core.VectorizedFloatAnimationSpec.1
            @Override // androidx.compose.animation.core.Animations
            public final FloatAnimationSpec get(int i) {
                return FloatAnimationSpec.this;
            }
        });
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int b = animationVector.b();
        long j = 0;
        for (int i = 0; i < b; i++) {
            j = Math.max(j, this.a.get(i).c(animationVector.a(i), animationVector2.a(i), animationVector3.a(i)));
        }
        return j;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.c == null) {
            this.c = animationVector3.c();
        }
        AnimationVector animationVector4 = this.c;
        if (animationVector4 != null) {
            int b = animationVector4.b();
            int i = 0;
            while (true) {
                AnimationVector animationVector5 = this.c;
                if (i < b) {
                    if (animationVector5 != null) {
                        animationVector5.e(i, this.a.get(i).b(j, animationVector.a(i), animationVector2.a(i), animationVector3.a(i)));
                        i++;
                    } else {
                        Intrinsics.e("velocityVector");
                        throw null;
                    }
                } else {
                    if (animationVector5 != null) {
                        return animationVector5;
                    }
                    Intrinsics.e("velocityVector");
                    throw null;
                }
            }
        } else {
            Intrinsics.e("velocityVector");
            throw null;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.d == null) {
            this.d = animationVector3.c();
        }
        AnimationVector animationVector4 = this.d;
        if (animationVector4 != null) {
            int b = animationVector4.b();
            int i = 0;
            while (true) {
                AnimationVector animationVector5 = this.d;
                if (i < b) {
                    if (animationVector5 != null) {
                        animationVector5.e(i, this.a.get(i).d(animationVector.a(i), animationVector2.a(i), animationVector3.a(i)));
                        i++;
                    } else {
                        Intrinsics.e("endVelocityVector");
                        throw null;
                    }
                } else {
                    if (animationVector5 != null) {
                        return animationVector5;
                    }
                    Intrinsics.e("endVelocityVector");
                    throw null;
                }
            }
        } else {
            Intrinsics.e("endVelocityVector");
            throw null;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.b == null) {
            this.b = animationVector.c();
        }
        AnimationVector animationVector4 = this.b;
        if (animationVector4 != null) {
            int b = animationVector4.b();
            int i = 0;
            while (true) {
                AnimationVector animationVector5 = this.b;
                if (i < b) {
                    if (animationVector5 != null) {
                        animationVector5.e(i, this.a.get(i).e(j, animationVector.a(i), animationVector2.a(i), animationVector3.a(i)));
                        i++;
                    } else {
                        Intrinsics.e("valueVector");
                        throw null;
                    }
                } else {
                    if (animationVector5 != null) {
                        return animationVector5;
                    }
                    Intrinsics.e("valueVector");
                    throw null;
                }
            }
        } else {
            Intrinsics.e("valueVector");
            throw null;
        }
    }

    public VectorizedFloatAnimationSpec(Animations animations) {
        this.a = animations;
    }
}
