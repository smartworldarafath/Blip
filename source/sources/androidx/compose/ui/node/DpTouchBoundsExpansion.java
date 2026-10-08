package androidx.compose.ui.node;

import androidx.compose.ui.unit.Dp;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DpTouchBoundsExpansion {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DpTouchBoundsExpansion) && Dp.b(10.0f, 10.0f) && Dp.b(40.0f, 40.0f) && Dp.b(10.0f, 10.0f) && Dp.b(40.0f, 40.0f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + q.a(40.0f, q.a(10.0f, q.a(40.0f, Float.hashCode(10.0f) * 31, 31), 31), 31);
    }

    public final String toString() {
        String c = Dp.c(10.0f);
        String c2 = Dp.c(40.0f);
        String c3 = Dp.c(10.0f);
        String c4 = Dp.c(40.0f);
        StringBuilder o = q.o("DpTouchBoundsExpansion(start=", c, ", top=", c2, ", end=");
        o.append(c3);
        o.append(", bottom=");
        o.append(c4);
        o.append(", isLayoutDirectionAware=true)");
        return o.toString();
    }
}
