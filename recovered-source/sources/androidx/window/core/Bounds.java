package androidx.window.core;

import android.graphics.Rect;
import defpackage.fe;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Bounds {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    static {
        new Bounds(0, 0, 0, 0);
    }

    public Bounds(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        if (i <= i3) {
            if (i2 <= i4) {
                return;
            }
            fe.l(q.f(i2, i4, "top must be less than or equal to bottom, top: ", ", bottom: "));
            throw null;
        }
        fe.l(q.f(i, i3, "Left must be less than or equal to right, left: ", ", right: "));
        throw null;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Bounds.class.equals(cls)) {
            return false;
        }
        obj.getClass();
        Bounds bounds = (Bounds) obj;
        if (this.a == bounds.a && this.b == bounds.b && this.c == bounds.c && this.d == bounds.d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Bounds { [");
        sb.append(this.a);
        sb.append(',');
        sb.append(this.b);
        sb.append(',');
        sb.append(this.c);
        sb.append(',');
        return jb.i(sb, this.d, "] }");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Bounds(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        rect.getClass();
    }
}
