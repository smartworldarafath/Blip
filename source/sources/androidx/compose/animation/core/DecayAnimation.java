package androidx.compose.animation.core;

import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DecayAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public final VectorizedDecayAnimationSpec a;
    public final TwoWayConverter b;
    public final Object c;
    public final AnimationVector d;
    public final AnimationVector e;
    public final AnimationVector f;
    public final Object g;
    public final long h;

    public DecayAnimation(DecayAnimationSpec decayAnimationSpec, TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector) {
        VectorizedFloatDecaySpec vectorizedFloatDecaySpec = new VectorizedFloatDecaySpec(((DecayAnimationSpecImpl) decayAnimationSpec).a);
        this.a = vectorizedFloatDecaySpec;
        this.b = twoWayConverter;
        this.c = obj;
        TwoWayConverterImpl twoWayConverterImpl = (TwoWayConverterImpl) twoWayConverter;
        AnimationVector animationVector2 = (AnimationVector) twoWayConverterImpl.a.b(obj);
        this.d = animationVector2;
        this.e = AnimationVectorsKt.a(animationVector);
        this.g = twoWayConverterImpl.b.b(vectorizedFloatDecaySpec.a(animationVector2, animationVector));
        if (vectorizedFloatDecaySpec.c == null) {
            vectorizedFloatDecaySpec.c = animationVector2.c();
        }
        AnimationVector animationVector3 = vectorizedFloatDecaySpec.c;
        if (animationVector3 != null) {
            int b = animationVector3.b();
            long j = 0;
            for (int i = 0; i < b; i++) {
                animationVector2.getClass();
                j = Math.max(j, ((long) (Math.exp(vectorizedFloatDecaySpec.a.a.b(animationVector.a(i)) / (FlingCalculatorKt.a - 1.0d)) * 1000.0d)) * 1000000);
            }
            this.h = j;
            AnimationVector a = AnimationVectorsKt.a(((VectorizedFloatDecaySpec) this.a).b(j, this.d, animationVector));
            this.f = a;
            int b2 = a.b();
            for (int i2 = 0; i2 < b2; i2++) {
                AnimationVector animationVector4 = this.f;
                float a2 = animationVector4.a(i2);
                this.a.getClass();
                this.a.getClass();
                animationVector4.e(i2, RangesKt.c(a2, -0.0f, 0.0f));
            }
            return;
        }
        Intrinsics.e("velocityVector");
        throw null;
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean a() {
        return false;
    }

    @Override // androidx.compose.animation.core.Animation
    public final long b() {
        return this.h;
    }

    @Override // androidx.compose.animation.core.Animation
    public final TwoWayConverter c() {
        return this.b;
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector d(long j) {
        if (!e(j)) {
            return ((VectorizedFloatDecaySpec) this.a).b(j, this.d, this.e);
        }
        return this.f;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object f(long j) {
        float f;
        if (!e(j)) {
            Function1 function1 = ((TwoWayConverterImpl) this.b).b;
            VectorizedFloatDecaySpec vectorizedFloatDecaySpec = (VectorizedFloatDecaySpec) this.a;
            AnimationVector animationVector = vectorizedFloatDecaySpec.b;
            AnimationVector animationVector2 = this.d;
            if (animationVector == null) {
                vectorizedFloatDecaySpec.b = animationVector2.c();
            }
            AnimationVector animationVector3 = vectorizedFloatDecaySpec.b;
            if (animationVector3 != null) {
                int b = animationVector3.b();
                int i = 0;
                while (true) {
                    AnimationVector animationVector4 = vectorizedFloatDecaySpec.b;
                    if (i < b) {
                        if (animationVector4 != null) {
                            SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec = vectorizedFloatDecaySpec.a;
                            float a = animationVector2.a(i);
                            long j2 = j / 1000000;
                            FlingCalculator.FlingInfo a2 = splineBasedFloatDecayAnimationSpec.a.a(this.e.a(i));
                            long j3 = a2.c;
                            if (j3 > 0) {
                                f = ((float) j2) / ((float) j3);
                            } else {
                                f = 1.0f;
                            }
                            animationVector4.e(i, (Math.signum(a2.a) * a2.b * AndroidFlingSpline.a(f).a) + a);
                            i++;
                        } else {
                            Intrinsics.e("valueVector");
                            throw null;
                        }
                    } else {
                        if (animationVector4 != null) {
                            return function1.b(animationVector4);
                        }
                        Intrinsics.e("valueVector");
                        throw null;
                    }
                }
            } else {
                Intrinsics.e("valueVector");
                throw null;
            }
        } else {
            return this.g;
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object g() {
        return this.g;
    }
}
