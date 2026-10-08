package androidx.compose.animation.core;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DecayAnimationSpecKt {
    public static final float a(DecayAnimationSpec decayAnimationSpec, float f) {
        return ((AnimationVector1D) new VectorizedFloatDecaySpec(((DecayAnimationSpecImpl) decayAnimationSpec).a).a(new AnimationVector1D(0.0f), new AnimationVector1D(f))).a;
    }

    public static final DecayAnimationSpec b(SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec) {
        return new DecayAnimationSpecImpl(splineBasedFloatDecayAnimationSpec);
    }
}
