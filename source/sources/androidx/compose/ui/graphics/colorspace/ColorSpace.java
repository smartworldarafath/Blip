package androidx.compose.ui.graphics.colorspace;

import defpackage.jb;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorSpace {
    public final String a;
    public final long b;
    public final int c;

    public ColorSpace(int i, long j, String str) {
        this.a = str;
        this.b = j;
        this.c = i;
        if (str.length() != 0) {
            if (i >= -1 && i <= 63) {
                return;
            }
            u2.g("The id must be between -1 and 63");
            throw null;
        }
        u2.g("The name of a color space cannot be null and must contain at least 1 character");
        throw null;
    }

    public abstract float a(int i);

    public abstract float b(int i);

    public boolean c() {
        return false;
    }

    public abstract long d(float f, float f2, float f3);

    public abstract float e(float f, float f2, float f3);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ColorSpace colorSpace = (ColorSpace) obj;
            if (this.c == colorSpace.c && this.a.equals(colorSpace.a)) {
                return ColorModel.a(this.b, colorSpace.b);
            }
            return false;
        }
        return false;
    }

    public abstract long f(float f, float f2, float f3, float f4, ColorSpace colorSpace);

    public int hashCode() {
        return jb.a(this.a.hashCode() * 31, 31, this.b) + this.c;
    }

    public final String toString() {
        return this.a + " (id=" + this.c + ", model=" + ColorModel.b(this.b) + ")";
    }
}
