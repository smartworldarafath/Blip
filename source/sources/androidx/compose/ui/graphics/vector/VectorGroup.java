package androidx.compose.ui.graphics.vector;

import defpackage.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorGroup extends VectorNode implements Iterable<VectorNode>, KMappedMarker {
    public final String j;
    public final float k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final float q;
    public final List r;
    public final List s;

    public VectorGroup(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list, ArrayList arrayList) {
        this.j = str;
        this.k = f;
        this.l = f2;
        this.m = f3;
        this.n = f4;
        this.o = f5;
        this.p = f6;
        this.q = f7;
        this.r = list;
        this.s = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof VectorGroup)) {
            VectorGroup vectorGroup = (VectorGroup) obj;
            if (Intrinsics.a(this.j, vectorGroup.j) && this.k == vectorGroup.k && this.l == vectorGroup.l && this.m == vectorGroup.m && this.n == vectorGroup.n && this.o == vectorGroup.o && this.p == vectorGroup.p && this.q == vectorGroup.q && Intrinsics.a(this.r, vectorGroup.r) && Intrinsics.a(this.s, vectorGroup.s)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.s.hashCode() + ((this.r.hashCode() + q.a(this.q, q.a(this.p, q.a(this.o, q.a(this.n, q.a(this.m, q.a(this.l, q.a(this.k, this.j.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator<VectorNode> iterator() {
        return new VectorGroup$iterator$1(this);
    }
}
