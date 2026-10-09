package androidx.core.view;

import android.graphics.Point;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RoundedCornerCompat {
    public final int a;
    public final int b;
    public final Point c;

    public RoundedCornerCompat(int i, int i2, Point point) {
        int i3 = point.x;
        int i4 = point.y;
        this.a = i;
        this.b = i2;
        this.c = new Point(i3, i4);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RoundedCornerCompat) {
            RoundedCornerCompat roundedCornerCompat = (RoundedCornerCompat) obj;
            if (this.a == roundedCornerCompat.a && this.b == roundedCornerCompat.b && this.c.equals(roundedCornerCompat.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + (((this.a * 31) + this.b) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("RoundedCornerCompat{position=");
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        str = "Invalid";
                    } else {
                        str = "BottomLeft";
                    }
                } else {
                    str = "BottomRight";
                }
            } else {
                str = "TopRight";
            }
        } else {
            str = "TopLeft";
        }
        sb.append(str);
        sb.append(", radius=");
        sb.append(this.b);
        sb.append(", center=");
        sb.append(this.c);
        sb.append('}');
        return sb.toString();
    }
}
