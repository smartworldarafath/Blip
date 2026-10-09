package androidx.compose.foundation.gestures;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollableDefaults {
    public static DefaultFlingBehavior a(Composer composer) {
        DecayAnimationSpec a = SplineBasedFloatDecayAnimationSpec_androidKt.a(composer);
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(a);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new DefaultFlingBehavior(a);
            gapComposer.g0(K);
        }
        return (DefaultFlingBehavior) K;
    }
}
