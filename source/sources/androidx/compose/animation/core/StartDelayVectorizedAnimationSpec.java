package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StartDelayVectorizedAnimationSpec<V extends AnimationVector> implements VectorizedAnimationSpec<V> {
    public final VectorizedAnimationSpec a;
    public final long b;

    public StartDelayVectorizedAnimationSpec(VectorizedAnimationSpec vectorizedAnimationSpec, long j) {
        this.a = vectorizedAnimationSpec;
        this.b = j;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean a() {
        return this.a.a();
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.a.b(animationVector, animationVector2, animationVector3) + this.b;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j2 = this.b;
        if (j < j2) {
            return animationVector3;
        }
        return this.a.c(j - j2, animationVector, animationVector2, animationVector3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartDelayVectorizedAnimationSpec)) {
            return false;
        }
        StartDelayVectorizedAnimationSpec startDelayVectorizedAnimationSpec = (StartDelayVectorizedAnimationSpec) obj;
        if (startDelayVectorizedAnimationSpec.b != this.b || !Intrinsics.a(startDelayVectorizedAnimationSpec.a, this.a)) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j2 = this.b;
        if (j < j2) {
            return animationVector;
        }
        return this.a.f(j - j2, animationVector, animationVector2, animationVector3);
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }
}
