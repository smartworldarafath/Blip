package androidx.compose.ui.graphics;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BlurEffect extends RenderEffect {
    public final float b;
    public final float c;
    public final int d;

    public BlurEffect(float f, float f2, int i) {
        this.b = f;
        this.c = f2;
        this.d = i;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BlurEffect) {
                BlurEffect blurEffect = (BlurEffect) obj;
                if (this.b == blurEffect.b && this.c == blurEffect.c && this.d == blurEffect.d) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + q.a(this.c, Float.hashCode(this.b) * 31, 31);
    }

    public final String toString() {
        String str;
        int i = this.d;
        if (i == 0) {
            str = "Clamp";
        } else if (i == 1) {
            str = "Repeated";
        } else if (i == 2) {
            str = "Mirror";
        } else if (i == 3) {
            str = "Decal";
        } else {
            str = "Unknown";
        }
        return q.l(q.n("BlurEffect(renderEffect=null, radiusX=", this.b, ", radiusY=", this.c, ", edgeTreatment="), str, ")");
    }
}
