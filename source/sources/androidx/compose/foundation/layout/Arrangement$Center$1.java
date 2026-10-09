package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Arrangement$Center$1 implements Arrangement.Horizontal, Arrangement.Vertical {
    @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
    public final float a() {
        return 0.0f;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.Vertical
    public final void b(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
        Arrangement.a(i, iArr, iArr2, false);
    }

    @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
    public final void c(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        if (layoutDirection == LayoutDirection.j) {
            Arrangement.a(i, iArr, iArr2, false);
        } else {
            Arrangement.a(i, iArr, iArr2, true);
        }
    }

    public final String toString() {
        return "Arrangement#Center";
    }
}
