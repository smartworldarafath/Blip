package androidx.compose.material;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ElevationKt {
    public static final TweenSpec a = new TweenSpec(120, EasingKt.a, 2);
    public static final TweenSpec b = new TweenSpec(150, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2);
    public static final TweenSpec c = new TweenSpec(120, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2);
}
