package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AnimationResult<T, V extends AnimationVector> {
    public final Float a;
    public final AnimationState b;

    public AnimationResult(Float f, AnimationState animationState) {
        this.a = f;
        this.b = animationState;
    }
}
