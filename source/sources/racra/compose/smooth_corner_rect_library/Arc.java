package racra.compose.smooth_corner_rect_library;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Arc {
    public final float a;
    public final float b;
    public final float c;

    public Arc(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Arc)) {
            return false;
        }
        Arc arc = (Arc) obj;
        if (Float.valueOf(this.a).equals(Float.valueOf(arc.a)) && Float.valueOf(this.b).equals(Float.valueOf(arc.b)) && Float.valueOf(this.c).equals(Float.valueOf(arc.c))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + q.a(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "Arc(radius=" + this.a + ", arcStartAngle=" + this.b + ", arcSweepAngle=" + this.c + ')';
    }
}
