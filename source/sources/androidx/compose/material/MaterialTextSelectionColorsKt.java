package androidx.compose.material;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialTextSelectionColorsKt {
    public static final float a(float f, long j, long j2, long j3) {
        long d = ColorKt.d(Color.b(j, f), j3);
        float e = ColorKt.e(ColorKt.d(j2, d)) + 0.05f;
        float e2 = ColorKt.e(d) + 0.05f;
        return Math.max(e, e2) / Math.min(e, e2);
    }
}
