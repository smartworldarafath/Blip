package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StartDelayAnimationSpec<T> implements AnimationSpec<T> {
    public final AnimationSpec a;
    public final long b;

    public StartDelayAnimationSpec(FiniteAnimationSpec finiteAnimationSpec, long j) {
        this.a = finiteAnimationSpec;
        this.b = j;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new StartDelayVectorizedAnimationSpec(this.a.a(twoWayConverter), this.b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartDelayAnimationSpec)) {
            return false;
        }
        StartDelayAnimationSpec startDelayAnimationSpec = (StartDelayAnimationSpec) obj;
        if (startDelayAnimationSpec.b != this.b || !Intrinsics.a(startDelayAnimationSpec.a, this.a)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }
}
