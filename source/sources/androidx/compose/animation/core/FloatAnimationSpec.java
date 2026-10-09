package androidx.compose.animation.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface FloatAnimationSpec extends AnimationSpec<Float> {
    @Override // androidx.compose.animation.core.AnimationSpec
    default VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedFloatAnimationSpec(this);
    }

    float b(long j, float f, float f2, float f3);

    long c(float f, float f2, float f3);

    default float d(float f, float f2, float f3) {
        return b(c(f, f2, f3), f, f2, f3);
    }

    float e(long j, float f, float f2, float f3);
}
