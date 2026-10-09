package androidx.compose.animation;

import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SplineBasedFloatDecayAnimationSpec {
    public final FlingCalculator a;

    public SplineBasedFloatDecayAnimationSpec(Density density) {
        this.a = new FlingCalculator(SplineBasedFloatDecayAnimationSpec_androidKt.a, density);
    }
}
