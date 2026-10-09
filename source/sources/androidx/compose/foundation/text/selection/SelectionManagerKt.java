package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionManagerKt {
    public static final Rect a(LayoutCoordinates layoutCoordinates) {
        Rect b = LayoutCoordinatesKt.b(layoutCoordinates, true);
        long C = layoutCoordinates.C(b.d());
        float f = b.c;
        float f2 = b.d;
        long C2 = layoutCoordinates.C((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
        return new Rect(Float.intBitsToFloat((int) (C >> 32)), Float.intBitsToFloat((int) (C & 4294967295L)), Float.intBitsToFloat((int) (C2 >> 32)), Float.intBitsToFloat((int) (C2 & 4294967295L)));
    }
}
