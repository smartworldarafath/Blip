package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import defpackage.q;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorPath extends VectorNode {
    public final String j;
    public final List k;
    public final int l;
    public final Brush m;
    public final float n;
    public final Brush o;
    public final float p;
    public final float q;
    public final int r;
    public final int s;
    public final float t;
    public final float u;
    public final float v;
    public final float w;

    public VectorPath(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2, int i3, Brush brush, Brush brush2, String str, List list) {
        this.j = str;
        this.k = list;
        this.l = i;
        this.m = brush;
        this.n = f;
        this.o = brush2;
        this.p = f2;
        this.q = f3;
        this.r = i2;
        this.s = i3;
        this.t = f4;
        this.u = f5;
        this.v = f6;
        this.w = f7;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && VectorPath.class == obj.getClass()) {
                VectorPath vectorPath = (VectorPath) obj;
                if (this.j.equals(vectorPath.j) && Intrinsics.a(this.m, vectorPath.m) && this.n == vectorPath.n && Intrinsics.a(this.o, vectorPath.o) && this.p == vectorPath.p && this.q == vectorPath.q && this.r == vectorPath.r && this.s == vectorPath.s && this.t == vectorPath.t && this.u == vectorPath.u && this.v == vectorPath.v && this.w == vectorPath.w && this.l == vectorPath.l && Intrinsics.a(this.k, vectorPath.k)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.k.hashCode() + (this.j.hashCode() * 31)) * 31;
        int i2 = 0;
        Brush brush = this.m;
        if (brush != null) {
            i = brush.hashCode();
        } else {
            i = 0;
        }
        int a = q.a(this.n, (hashCode + i) * 31, 31);
        Brush brush2 = this.o;
        if (brush2 != null) {
            i2 = brush2.hashCode();
        }
        return Integer.hashCode(this.l) + q.a(this.w, q.a(this.v, q.a(this.u, q.a(this.t, q.b(this.s, q.b(this.r, q.a(this.q, q.a(this.p, (a + i2) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }
}
