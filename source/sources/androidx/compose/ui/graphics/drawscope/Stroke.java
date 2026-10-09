package androidx.compose.ui.graphics.drawscope;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Stroke extends DrawStyle {
    public final float a;
    public final float b;
    public final int c;
    public final int d;

    public Stroke(float f, float f2, int i, int i2, int i3) {
        f2 = (i3 & 2) != 0 ? 4.0f : f2;
        i = (i3 & 4) != 0 ? 0 : i;
        i2 = (i3 & 8) != 0 ? 0 : i2;
        this.a = f;
        this.b = f2;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        if (this.a == stroke.a && this.b == stroke.b && this.c == stroke.c && this.d == stroke.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return q.b(this.d, q.b(this.c, q.a(this.b, Float.hashCode(this.a) * 31, 31), 31), 31);
    }

    public final String toString() {
        String str;
        String str2 = "Unknown";
        int i = this.c;
        if (i == 0) {
            str = "Butt";
        } else if (i == 1) {
            str = "Round";
        } else if (i != 2) {
            str = "Unknown";
        } else {
            str = "Square";
        }
        int i2 = this.d;
        if (i2 == 0) {
            str2 = "Miter";
        } else if (i2 == 1) {
            str2 = "Round";
        } else if (i2 == 2) {
            str2 = "Bevel";
        }
        StringBuilder n = q.n("Stroke(width=", this.a, ", miter=", this.b, ", cap=");
        n.append(str);
        n.append(", join=");
        n.append(str2);
        n.append(", pathEffect=null)");
        return n.toString();
    }
}
