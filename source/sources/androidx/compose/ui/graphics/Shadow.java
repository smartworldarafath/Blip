package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Shadow {
    public static final Shadow d = new Shadow(ColorKt.c(4278190080L), 0, 0.0f);
    public final long a;
    public final long b;
    public final float c;

    public Shadow(long j, long j2, float f) {
        this.a = j;
        this.b = j2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Shadow) {
                Shadow shadow = (Shadow) obj;
                if (Color.c(this.a, shadow.a) && Offset.c(this.b, shadow.b) && this.c == shadow.c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = Color.i;
        return Float.hashCode(this.c) + jb.a(Long.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder o = q.o("Shadow(color=", Color.i(this.a), ", offset=", Offset.h(this.b), ", blurRadius=");
        o.append(this.c);
        o.append(")");
        return o.toString();
    }
}
