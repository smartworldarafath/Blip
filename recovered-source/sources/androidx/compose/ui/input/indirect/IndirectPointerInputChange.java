package androidx.compose.ui.input.indirect;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndirectPointerInputChange {
    public final long a;
    public final long b;
    public final long c;
    public final boolean d;
    public final float e;
    public final long f;
    public final long g;
    public final boolean h;
    public boolean i;

    public IndirectPointerInputChange(long j, long j2, long j3, boolean z, float f, long j4, long j5, boolean z2) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = z;
        this.e = f;
        this.f = j4;
        this.g = j5;
        this.h = z2;
    }

    public final String toString() {
        return "IndirectPointerInputChange(id=" + PointerId.b(this.a) + ", uptimeMillis=" + this.b + ", position=" + Offset.h(this.c) + ", pressed=" + this.d + ", pressure=" + this.e + ", previousUptimeMillis=" + this.f + ", previousPosition=" + Offset.h(this.g) + ", previousPressed=" + this.h + ", isConsumed=" + this.i + ")";
    }
}
