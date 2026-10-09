package androidx.compose.material.ripple;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RippleAlpha {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public RippleAlpha(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleAlpha)) {
            return false;
        }
        RippleAlpha rippleAlpha = (RippleAlpha) obj;
        if (this.a == rippleAlpha.a && this.b == rippleAlpha.b && this.c == rippleAlpha.c && this.d == rippleAlpha.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + q.a(this.c, q.a(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder n = q.n("RippleAlpha(draggedAlpha=", this.a, ", focusedAlpha=", this.b, ", hoveredAlpha=");
        n.append(this.c);
        n.append(", pressedAlpha=");
        n.append(this.d);
        n.append(")");
        return n.toString();
    }
}
