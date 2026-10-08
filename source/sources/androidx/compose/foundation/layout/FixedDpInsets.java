package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FixedDpInsets implements WindowInsets {
    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return density.y0(0.0f);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return density.y0(0.0f);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return density.y0(0.0f);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return density.y0(0.0f);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if ((obj instanceof FixedDpInsets) && Dp.b(0.0f, 0.0f) && Dp.b(0.0f, 0.0f) && Dp.b(0.0f, 0.0f) && Dp.b(0.0f, 0.0f)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Float.hashCode(0.0f) + q.a(0.0f, q.a(0.0f, Float.hashCode(0.0f) * 31, 31), 31);
    }

    public final String toString() {
        String c = Dp.c(0.0f);
        String c2 = Dp.c(0.0f);
        String c3 = Dp.c(0.0f);
        String c4 = Dp.c(0.0f);
        StringBuilder o = q.o("Insets(left=", c, ", top=", c2, ", right=");
        o.append(c3);
        o.append(", bottom=");
        o.append(c4);
        o.append(")");
        return o.toString();
    }
}
