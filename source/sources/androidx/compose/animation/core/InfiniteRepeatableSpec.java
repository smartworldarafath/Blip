package androidx.compose.animation.core;

import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InfiniteRepeatableSpec<T> implements AnimationSpec<T> {
    public final DurationBasedAnimationSpec a;
    public final RepeatMode b;

    public InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode) {
        this.a = durationBasedAnimationSpec;
        this.b = repeatMode;
        if (durationBasedAnimationSpec instanceof TweenSpec) {
            TweenSpec tweenSpec = (TweenSpec) durationBasedAnimationSpec;
            if (tweenSpec.a == 0 && tweenSpec.b == 0) {
                u2.g("Animation to be infinitely repeated cannot have a 0-duration");
                throw null;
            }
        }
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedInfiniteRepeatableSpec(this.a.a(twoWayConverter), this.b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof InfiniteRepeatableSpec) {
            InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
            if (infiniteRepeatableSpec.a.equals(this.a) && infiniteRepeatableSpec.b == this.b) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(0L) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }
}
