package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LookaheadLayoutCoordinates implements LayoutCoordinates {
    public final LookaheadDelegate j;

    public LookaheadLayoutCoordinates(LookaheadDelegate lookaheadDelegate) {
        this.j = lookaheadDelegate;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long C(long j) {
        return Offset.f(this.j.D.C(j), a());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void I(LayoutCoordinates layoutCoordinates, float[] fArr) {
        this.j.D.I(layoutCoordinates, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates L() {
        LookaheadDelegate b1;
        if (!o()) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinator = this.j.D.D.O.d.F;
        if (nodeCoordinator != null && (b1 = nodeCoordinator.b1()) != null) {
            return b1.G;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long R(long j) {
        return Offset.f(this.j.D.R(j), a());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long S(long j) {
        return this.j.D.S(Offset.f(j, a()));
    }

    public final long a() {
        LookaheadDelegate lookaheadDelegate = this.j;
        LookaheadDelegate a = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
        return Offset.e(t(a.G, 0L), lookaheadDelegate.D.t(a.D, 0L));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long d(long j) {
        return this.j.D.d(Offset.f(j, a()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long f() {
        LookaheadDelegate lookaheadDelegate = this.j;
        return (lookaheadDelegate.j << 32) | (lookaheadDelegate.k & 4294967295L);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long g(LayoutCoordinates layoutCoordinates, long j) {
        return t(layoutCoordinates, j);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final void j(float[] fArr) {
        this.j.D.j(fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final Rect l(LayoutCoordinates layoutCoordinates, boolean z) {
        return this.j.D.l(layoutCoordinates, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean o() {
        return this.j.D.d1().w;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long t(LayoutCoordinates layoutCoordinates, long j) {
        boolean z = layoutCoordinates instanceof LookaheadLayoutCoordinates;
        LookaheadDelegate lookaheadDelegate = this.j;
        if (z) {
            LookaheadDelegate lookaheadDelegate2 = ((LookaheadLayoutCoordinates) layoutCoordinates).j;
            NodeCoordinator nodeCoordinator = lookaheadDelegate2.D;
            nodeCoordinator.n1();
            LookaheadDelegate b1 = lookaheadDelegate.D.Z0(nodeCoordinator).b1();
            if (b1 != null) {
                long b = IntOffset.b(IntOffset.c(lookaheadDelegate2.V0(b1, false), IntOffsetKt.b(j)), lookaheadDelegate.V0(b1, false));
                return (Float.floatToRawIntBits((int) (b >> 32)) << 32) | (Float.floatToRawIntBits((int) (b & 4294967295L)) & 4294967295L);
            }
            LookaheadDelegate a = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate2);
            long c = IntOffset.c(IntOffset.c(lookaheadDelegate2.V0(a, false), a.E), IntOffsetKt.b(j));
            LookaheadDelegate a2 = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
            long b2 = IntOffset.b(c, IntOffset.c(lookaheadDelegate.V0(a2, false), a2.E));
            long floatToRawIntBits = Float.floatToRawIntBits((int) (b2 >> 32));
            long floatToRawIntBits2 = Float.floatToRawIntBits((int) (b2 & 4294967295L)) & 4294967295L;
            NodeCoordinator nodeCoordinator2 = a2.D.F;
            nodeCoordinator2.getClass();
            NodeCoordinator nodeCoordinator3 = a.D.F;
            nodeCoordinator3.getClass();
            return nodeCoordinator2.t(nodeCoordinator3, floatToRawIntBits2 | (floatToRawIntBits << 32));
        }
        LookaheadDelegate a3 = LookaheadLayoutCoordinatesKt.a(lookaheadDelegate);
        NodeCoordinator nodeCoordinator4 = a3.D;
        long t = t(a3.G, j);
        float f = (int) (a3.E & 4294967295L);
        long e = Offset.e(t, (4294967295L & Float.floatToRawIntBits(f)) | (Float.floatToRawIntBits((int) (r5 >> 32)) << 32));
        if (!nodeCoordinator4.d1().w) {
            InlineClassHelperKt.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        nodeCoordinator4.n1();
        NodeCoordinator nodeCoordinator5 = nodeCoordinator4.F;
        if (nodeCoordinator5 != null) {
            nodeCoordinator4 = nodeCoordinator5;
        }
        return Offset.f(e, nodeCoordinator4.t(layoutCoordinates, 0L));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long u(long j) {
        return this.j.D.u(Offset.f(j, a()));
    }
}
