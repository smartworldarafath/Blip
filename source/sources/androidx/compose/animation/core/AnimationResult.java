package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimationResult<T, V extends AnimationVector> {
    public final AnimationState a;
    public final AnimationEndReason b;

    public AnimationResult(AnimationState animationState, AnimationEndReason animationEndReason) {
        this.a = animationState;
        this.b = animationEndReason;
    }

    public final String toString() {
        return "AnimationResult(endReason=" + this.b + ", endState=" + this.a + ")";
    }
}
