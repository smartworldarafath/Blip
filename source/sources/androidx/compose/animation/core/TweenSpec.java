package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TweenSpec<T> implements DurationBasedAnimationSpec<T> {
    public final int a;
    public final int b;
    public final Easing c;

    public TweenSpec(int i, Easing easing, int i2) {
        this(i, 0, (i2 & 4) != 0 ? EasingKt.a : easing);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedTweenSpec(this.a, this.b, this.c);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TweenSpec) {
            TweenSpec tweenSpec = (TweenSpec) obj;
            if (tweenSpec.a == this.a && tweenSpec.b == this.b && Intrinsics.a(tweenSpec.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.c.hashCode() + (this.a * 31)) * 31) + this.b;
    }

    public TweenSpec(int i, int i2, Easing easing) {
        this.a = i;
        this.b = i2;
        this.c = easing;
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedTweenSpec(this.a, this.b, this.c);
    }
}
