package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInputChange {
    public final long a;
    public final long b;
    public final long c;
    public final boolean d;
    public final float e;
    public final long f;
    public final long g;
    public final boolean h;
    public final int i;
    public final long j;
    public final float k;
    public final long l;
    public final ArrayList m;
    public final long n;
    public boolean o;
    public boolean p;
    public PointerInputChange q;

    public PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, boolean z3, int i, long j6, float f2, long j7) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = z;
        this.e = f;
        this.f = j4;
        this.g = j5;
        this.h = z2;
        this.i = i;
        this.j = j6;
        this.k = f2;
        this.l = j7;
        this.n = 0L;
        this.o = z3;
        this.p = z3;
    }

    public final void a() {
        PointerInputChange pointerInputChange = this.q;
        if (pointerInputChange == null) {
            this.o = true;
            this.p = true;
        } else if (pointerInputChange != null) {
            pointerInputChange.a();
        }
    }

    public final List b() {
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return EmptyList.j;
        }
        return arrayList;
    }

    public final boolean c() {
        PointerInputChange pointerInputChange = this.q;
        if (pointerInputChange != null) {
            return pointerInputChange.c();
        }
        if (!this.o && !this.p) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return "PointerInputChange(id=" + PointerId.b(this.a) + ", uptimeMillis=" + this.b + ", position=" + Offset.h(this.c) + ", pressed=" + this.d + ", pressure=" + this.e + ", previousUptimeMillis=" + this.f + ", previousPosition=" + Offset.h(this.g) + ", previousPressed=" + this.h + ", isConsumed=" + c() + ", type=" + PointerType.a(this.i) + ", historical=" + b() + ", scrollDelta=" + Offset.h(this.j) + ", scaleFactor=" + this.k + ", panOffset=" + Offset.h(this.l) + ")";
    }

    public PointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2, int i, ArrayList arrayList, long j6, float f2, long j7, long j8) {
        this(j, j2, j3, z, f, j4, j5, z2, false, i, j6, f2, j7);
        this.m = arrayList;
        this.n = j8;
    }
}
