package androidx.compose.foundation.layout;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsetsValues {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public InsetsValues(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsValues)) {
            return false;
        }
        InsetsValues insetsValues = (InsetsValues) obj;
        if (this.a == insetsValues.a && this.b == insetsValues.b && this.c == insetsValues.c && this.d == insetsValues.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder k = jb.k("InsetsValues(left=", this.a, ", top=", this.b, ", right=");
        k.append(this.c);
        k.append(", bottom=");
        k.append(this.d);
        k.append(")");
        return k.toString();
    }
}
