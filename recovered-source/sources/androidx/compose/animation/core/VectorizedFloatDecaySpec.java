package androidx.compose.animation.core;

import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VectorizedFloatDecaySpec<V extends AnimationVector> implements VectorizedDecayAnimationSpec<V> {
    public final SplineBasedFloatDecayAnimationSpec a;
    public AnimationVector b;
    public AnimationVector c;
    public AnimationVector d;

    public VectorizedFloatDecaySpec(SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec) {
        this.a = splineBasedFloatDecayAnimationSpec;
    }

    public final AnimationVector a(AnimationVector animationVector, AnimationVector animationVector2) {
        VectorizedFloatDecaySpec<V> vectorizedFloatDecaySpec = this;
        if (vectorizedFloatDecaySpec.d == null) {
            vectorizedFloatDecaySpec.d = animationVector.c();
        }
        AnimationVector animationVector3 = vectorizedFloatDecaySpec.d;
        if (animationVector3 != null) {
            int b = animationVector3.b();
            int i = 0;
            while (true) {
                AnimationVector animationVector4 = vectorizedFloatDecaySpec.d;
                if (i < b) {
                    if (animationVector4 != null) {
                        float a = animationVector.a(i);
                        float a2 = animationVector2.a(i);
                        FlingCalculator flingCalculator = vectorizedFloatDecaySpec.a.a;
                        double b2 = flingCalculator.b(a2);
                        double d = FlingCalculatorKt.a;
                        float f = flingCalculator.a * flingCalculator.b;
                        animationVector4.e(i, (Math.signum(a2) * ((float) (Math.exp((d / (d - 1.0d)) * b2) * f))) + a);
                        i++;
                        vectorizedFloatDecaySpec = this;
                        b = b;
                    } else {
                        Intrinsics.e("targetVector");
                        throw null;
                    }
                } else {
                    if (animationVector4 != null) {
                        return animationVector4;
                    }
                    Intrinsics.e("targetVector");
                    throw null;
                }
            }
        } else {
            Intrinsics.e("targetVector");
            throw null;
        }
    }

    public final AnimationVector b(long j, AnimationVector animationVector, AnimationVector animationVector2) {
        float f;
        if (this.c == null) {
            this.c = animationVector.c();
        }
        AnimationVector animationVector3 = this.c;
        if (animationVector3 != null) {
            int b = animationVector3.b();
            int i = 0;
            while (true) {
                AnimationVector animationVector4 = this.c;
                if (i < b) {
                    if (animationVector4 != null) {
                        animationVector.getClass();
                        long j2 = j / 1000000;
                        FlingCalculator.FlingInfo a = this.a.a.a(animationVector2.a(i));
                        long j3 = a.c;
                        if (j3 > 0) {
                            f = ((float) j2) / ((float) j3);
                        } else {
                            f = 1.0f;
                        }
                        animationVector4.e(i, (((Math.signum(a.a) * AndroidFlingSpline.a(f).b) * a.b) / ((float) j3)) * 1000.0f);
                        i++;
                    } else {
                        Intrinsics.e("velocityVector");
                        throw null;
                    }
                } else {
                    if (animationVector4 != null) {
                        return animationVector4;
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
}
