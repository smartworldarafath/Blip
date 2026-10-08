package androidx.compose.ui.geometry;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RoundRect {
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    static {
        RoundRectKt.a(0.0f, 0.0f, 0.0f, 0.0f, 0L);
    }

    public RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = j4;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RoundRect) {
                RoundRect roundRect = (RoundRect) obj;
                if (Float.compare(this.a, roundRect.a) != 0 || Float.compare(this.b, roundRect.b) != 0 || Float.compare(this.c, roundRect.c) != 0 || Float.compare(this.d, roundRect.d) != 0 || !CornerRadius.a(this.e, roundRect.e) || !CornerRadius.a(this.f, roundRect.f) || !CornerRadius.a(this.g, roundRect.g) || !CornerRadius.a(this.h, roundRect.h)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.h) + jb.a(jb.a(jb.a(q.a(this.d, q.a(this.c, q.a(this.b, Float.hashCode(this.a) * 31, 31), 31), 31), 31, this.e), 31, this.f), 31, this.g);
    }

    public final String toString() {
        String a = GeometryUtilsKt.a(this.a);
        String a2 = GeometryUtilsKt.a(this.b);
        String a3 = GeometryUtilsKt.a(this.c);
        String a4 = GeometryUtilsKt.a(this.d);
        StringBuilder sb = new StringBuilder();
        sb.append(a);
        sb.append(", ");
        sb.append(a2);
        sb.append(", ");
        sb.append(a3);
        String l = q.l(sb, ", ", a4);
        long j = this.e;
        long j2 = this.f;
        boolean a5 = CornerRadius.a(j, j2);
        long j3 = this.g;
        long j4 = this.h;
        if (a5 && CornerRadius.a(j2, j3) && CornerRadius.a(j3, j4)) {
            int i = (int) (j >> 32);
            int i2 = (int) (j & 4294967295L);
            if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
                return jb.h("RoundRect(rect=", l, ", radius=", GeometryUtilsKt.a(Float.intBitsToFloat(i)), ")");
            }
            String a6 = GeometryUtilsKt.a(Float.intBitsToFloat(i));
            return q.l(q.o("RoundRect(rect=", l, ", x=", a6, ", y="), GeometryUtilsKt.a(Float.intBitsToFloat(i2)), ")");
        }
        String b = CornerRadius.b(j);
        String b2 = CornerRadius.b(j2);
        String b3 = CornerRadius.b(j3);
        String b4 = CornerRadius.b(j4);
        StringBuilder o = q.o("RoundRect(rect=", l, ", topLeft=", b, ", topRight=");
        q.B(o, b2, ", bottomRight=", b3, ", bottomLeft=");
        return q.l(o, b4, ")");
    }
}
