package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Dp;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayerOutsets {
    public static final LayerOutsets a;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.graphics.LayerOutsets] */
    static {
        ?? obj = new Object();
        if (Dp.a(0.0f, 0.0f) < 0 || Dp.a(0.0f, 0.0f) < 0 || Dp.a(0.0f, 0.0f) < 0 || Dp.a(0.0f, 0.0f) < 0) {
            InlineClassHelperKt.a("Layer outsets must be non-negative");
        }
        a = obj;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LayerOutsets) || !Dp.b(0.0f, 0.0f) || !Dp.b(0.0f, 0.0f) || !Dp.b(0.0f, 0.0f) || !Dp.b(0.0f, 0.0f)) {
                return false;
            }
            return true;
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
        StringBuilder o = q.o("LayerOutsets(left=", c, ", top=", c2, ", right=");
        o.append(c3);
        o.append(", bottom=");
        o.append(c4);
        o.append(")");
        return o.toString();
    }
}
