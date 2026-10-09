package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.input.pointer.util.VelocityTracker1D;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Lsq2VelocityTracker {
    public final VelocityTracker1D a;
    public final VelocityTracker1D b;
    public long c;

    public Lsq2VelocityTracker() {
        VelocityTracker1D.Strategy strategy = VelocityTracker1D.Strategy.j;
        this.a = new VelocityTracker1D();
        this.b = new VelocityTracker1D();
    }

    public final void a(long j, long j2) {
        this.a.a(j, Float.intBitsToFloat((int) (j2 >> 32)));
        this.b.a(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
    }
}
