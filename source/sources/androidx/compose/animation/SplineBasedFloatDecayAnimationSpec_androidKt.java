package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SplineBasedFloatDecayAnimationSpec_androidKt {
    public static final float a = ViewConfiguration.getScrollFriction();

    public static final DecayAnimationSpec a(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
        boolean c = gapComposer.c(density.getDensity());
        Object K = gapComposer.K();
        if (c || K == Composer.Companion.a) {
            K = DecayAnimationSpecKt.b(new SplineBasedFloatDecayAnimationSpec(density));
            gapComposer.g0(K);
        }
        return (DecayAnimationSpec) K;
    }
}
