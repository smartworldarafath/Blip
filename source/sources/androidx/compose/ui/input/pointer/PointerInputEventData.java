package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInputEventData {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final boolean e;
    public final float f;
    public final int g;
    public final boolean h;
    public final ArrayList i;
    public final long j;
    public final float k;
    public final long l;
    public final long m;

    public PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, ArrayList arrayList, long j5, float f2, long j6, long j7) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = z;
        this.f = f;
        this.g = i;
        this.h = z2;
        this.i = arrayList;
        this.j = j5;
        this.k = f2;
        this.l = j6;
        this.m = j7;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PointerInputEventData) {
                PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
                if (PointerId.a(this.a, pointerInputEventData.a) && this.b == pointerInputEventData.b && Offset.c(this.c, pointerInputEventData.c) && Offset.c(this.d, pointerInputEventData.d) && this.e == pointerInputEventData.e && Float.compare(this.f, pointerInputEventData.f) == 0 && this.g == pointerInputEventData.g && this.h == pointerInputEventData.h && this.i.equals(pointerInputEventData.i) && Offset.c(this.j, pointerInputEventData.j) && Float.compare(this.k, pointerInputEventData.k) == 0 && Offset.c(this.l, pointerInputEventData.l) && Offset.c(this.m, pointerInputEventData.m)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.m) + jb.a(q.a(this.k, jb.a((this.i.hashCode() + jb.b(q.b(this.g, q.a(this.f, jb.b(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31), 31), 31, this.h)) * 31, 31, this.j), 31), 31, this.l);
    }

    public final String toString() {
        String b = PointerId.b(this.a);
        String h = Offset.h(this.c);
        String h2 = Offset.h(this.d);
        String a = PointerType.a(this.g);
        String h3 = Offset.h(this.j);
        String h4 = Offset.h(this.l);
        String h5 = Offset.h(this.m);
        StringBuilder sb = new StringBuilder("PointerInputEventData(id=");
        sb.append(b);
        sb.append(", uptime=");
        sb.append(this.b);
        q.B(sb, ", positionOnScreen=", h, ", position=", h2);
        sb.append(", down=");
        sb.append(this.e);
        sb.append(", pressure=");
        sb.append(this.f);
        sb.append(", type=");
        sb.append(a);
        sb.append(", activeHover=");
        sb.append(this.h);
        sb.append(", historical=");
        sb.append(this.i);
        sb.append(", scrollDelta=");
        sb.append(h3);
        sb.append(", scaleGestureFactor=");
        sb.append(this.k);
        sb.append(", panGestureOffset=");
        sb.append(h4);
        sb.append(", originalEventPosition=");
        sb.append(h5);
        sb.append(")");
        return sb.toString();
    }
}
