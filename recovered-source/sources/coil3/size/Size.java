package coil3.size;

import coil3.size.Dimension;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Size {
    public static final Size c;
    public final Dimension a;
    public final Dimension b;

    static {
        Dimension.Undefined undefined = Dimension.Undefined.a;
        c = new Size(undefined, undefined);
    }

    public Size(Dimension dimension, Dimension dimension2) {
        this.a = dimension;
        this.b = dimension2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Size) {
                Size size = (Size) obj;
                if (!this.a.equals(size.a) || !this.b.equals(size.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.a + ", height=" + this.b + ")";
    }
}
