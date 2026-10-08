package androidx.compose.ui.unit;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntRect {
    public static final IntRect e = new IntRect(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public IntRect(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final int a() {
        return this.d - this.b;
    }

    public final long b() {
        return (this.a << 32) | (this.b & 4294967295L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntRect)) {
            return false;
        }
        IntRect intRect = (IntRect) obj;
        if (this.a == intRect.a && this.b == intRect.b && this.c == intRect.c && this.d == intRect.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + q.b(this.c, q.b(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder k = jb.k("IntRect.fromLTRB(", this.a, ", ", this.b, ", ");
        k.append(this.c);
        k.append(", ");
        k.append(this.d);
        k.append(")");
        return k.toString();
    }
}
