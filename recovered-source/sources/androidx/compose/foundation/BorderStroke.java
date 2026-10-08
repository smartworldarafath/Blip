package androidx.compose.foundation;

import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BorderStroke {
    public final float a;
    public final SolidColor b;

    public BorderStroke(float f, SolidColor solidColor) {
        this.a = f;
        this.b = solidColor;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BorderStroke) {
                BorderStroke borderStroke = (BorderStroke) obj;
                if (!Dp.b(this.a, borderStroke.a) || !this.b.equals(borderStroke.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "BorderStroke(width=" + Dp.c(this.a) + ", brush=" + this.b + ")";
    }
}
