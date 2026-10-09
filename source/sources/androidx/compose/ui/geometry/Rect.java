package androidx.compose.ui.geometry;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Rect {
    public static final Rect e = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public Rect(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final boolean a(long j) {
        boolean z;
        boolean z2;
        boolean z3;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        boolean z4 = false;
        if (intBitsToFloat >= this.a) {
            z = true;
        } else {
            z = false;
        }
        if (intBitsToFloat < this.c) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z5 = z & z2;
        if (intBitsToFloat2 >= this.b) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z6 = z5 & z3;
        if (intBitsToFloat2 < this.d) {
            z4 = true;
        }
        return z6 & z4;
    }

    public final long b() {
        float f = this.c;
        float f2 = this.a;
        float f3 = ((f - f2) / 2.0f) + f2;
        float f4 = this.d;
        float f5 = this.b;
        return (Float.floatToRawIntBits(((f4 - f5) / 2.0f) + f5) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32);
    }

    public final long c() {
        float f = this.c - this.a;
        float f2 = this.d - this.b;
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public final long d() {
        return (Float.floatToRawIntBits(this.a) << 32) | (Float.floatToRawIntBits(this.b) & 4294967295L);
    }

    public final Rect e(Rect rect) {
        return new Rect(Math.max(this.a, rect.a), Math.max(this.b, rect.b), Math.min(this.c, rect.c), Math.min(this.d, rect.d));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        if (Float.compare(this.a, rect.a) == 0 && Float.compare(this.b, rect.b) == 0 && Float.compare(this.c, rect.c) == 0 && Float.compare(this.d, rect.d) == 0) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        boolean z;
        boolean z2 = false;
        if (this.a >= this.c) {
            z = true;
        } else {
            z = false;
        }
        if (this.b >= this.d) {
            z2 = true;
        }
        return z | z2;
    }

    public final boolean g(Rect rect) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (this.a < rect.c) {
            z = true;
        } else {
            z = false;
        }
        if (rect.a < this.c) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z5 = z & z2;
        if (this.b < rect.d) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z6 = z5 & z3;
        if (rect.b < this.d) {
            z4 = true;
        }
        return z6 & z4;
    }

    public final Rect h(float f, float f2) {
        return new Rect(this.a + f, this.b + f2, this.c + f, this.d + f2);
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + q.a(this.c, q.a(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final Rect i(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i) + this.a, Float.intBitsToFloat(i2) + this.b, Float.intBitsToFloat(i) + this.c, Float.intBitsToFloat(i2) + this.d);
    }

    public final String toString() {
        String a = GeometryUtilsKt.a(this.a);
        String a2 = GeometryUtilsKt.a(this.b);
        String a3 = GeometryUtilsKt.a(this.c);
        String a4 = GeometryUtilsKt.a(this.d);
        StringBuilder o = q.o("Rect.fromLTRB(", a, ", ", a2, ", ");
        o.append(a3);
        o.append(", ");
        o.append(a4);
        o.append(")");
        return o.toString();
    }
}
