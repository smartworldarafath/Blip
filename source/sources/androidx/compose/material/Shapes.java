package androidx.compose.material;

import androidx.compose.foundation.shape.RoundedCornerShape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Shapes {
    public final RoundedCornerShape a;
    public final RoundedCornerShape b;
    public final RoundedCornerShape c;

    public Shapes(RoundedCornerShape roundedCornerShape, RoundedCornerShape roundedCornerShape2, RoundedCornerShape roundedCornerShape3) {
        this.a = roundedCornerShape;
        this.b = roundedCornerShape2;
        this.c = roundedCornerShape3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Shapes) {
                Shapes shapes = (Shapes) obj;
                if (!this.a.equals(shapes.a) || !this.b.equals(shapes.b) || !this.c.equals(shapes.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "Shapes(small=" + this.a + ", medium=" + this.b + ", large=" + this.c + ")";
    }
}
