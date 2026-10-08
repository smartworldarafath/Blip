package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RulerKt {
    public static final float a(Placeable.PlacementScope placementScope, boolean z, Ruler[] rulerArr, float f) {
        boolean z2;
        float f2 = Float.NaN;
        for (Ruler ruler : rulerArr) {
            float b = placementScope.b(ruler);
            if (!Float.isNaN(f2)) {
                if (b > f2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z != z2) {
                }
            }
            f2 = b;
        }
        if (Float.isNaN(f2)) {
            return f;
        }
        return f2;
    }
}
