package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LookaheadDelegate extends LookaheadCapablePlaceable implements Measurable {
    public final NodeCoordinator D;
    public LinkedHashMap F;
    public MeasureResult H;
    public final MutableObjectIntMap I;
    public long E = 0;
    public final LookaheadLayoutCoordinates G = new LookaheadLayoutCoordinates(this);

    public LookaheadDelegate(NodeCoordinator nodeCoordinator) {
        this.D = nodeCoordinator;
        MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.a;
        this.I = new MutableObjectIntMap();
    }

    public static final void S0(LookaheadDelegate lookaheadDelegate, MeasureResult measureResult) {
        LinkedHashMap linkedHashMap;
        if (measureResult != null) {
            lookaheadDelegate.j0((measureResult.a() & 4294967295L) | (measureResult.b() << 32));
        } else {
            lookaheadDelegate.j0(0L);
        }
        if (!Intrinsics.a(lookaheadDelegate.H, measureResult) && measureResult != null && ((((linkedHashMap = lookaheadDelegate.F) != null && !linkedHashMap.isEmpty()) || !measureResult.c().isEmpty()) && !Intrinsics.a(measureResult.c(), lookaheadDelegate.F))) {
            LookaheadPassDelegate lookaheadPassDelegate = lookaheadDelegate.D.D.P.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.B.g();
            LinkedHashMap linkedHashMap2 = lookaheadDelegate.F;
            if (linkedHashMap2 == null) {
                linkedHashMap2 = new LinkedHashMap();
                lookaheadDelegate.F = linkedHashMap2;
            }
            linkedHashMap2.clear();
            linkedHashMap2.putAll(measureResult.c());
        }
        lookaheadDelegate.H = measureResult;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable E0() {
        NodeCoordinator nodeCoordinator = this.D.E;
        if (nodeCoordinator != null) {
            return nodeCoordinator.b1();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutCoordinates F0() {
        return this.G;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final boolean G0() {
        if (this.H != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LayoutNode J0() {
        return this.D.D;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final MeasureResult K0() {
        MeasureResult measureResult = this.H;
        if (measureResult != null) {
            return measureResult;
        }
        throw q.p("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final LookaheadCapablePlaceable L0() {
        NodeCoordinator nodeCoordinator = this.D.F;
        if (nodeCoordinator != null) {
            return nodeCoordinator.b1();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final long M0() {
        return this.E;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final void Q0() {
        c0(this.E, 0.0f, null);
    }

    public void T0() {
        K0().d();
    }

    public final void U0(long j) {
        if (!IntOffset.a(this.E, j)) {
            this.E = j;
            NodeCoordinator nodeCoordinator = this.D;
            LookaheadPassDelegate lookaheadPassDelegate = nodeCoordinator.D.P.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.A0();
            }
            LookaheadCapablePlaceable.O0(nodeCoordinator);
        }
        if (!this.x) {
            A0(K0());
        }
    }

    public final long V0(LookaheadDelegate lookaheadDelegate, boolean z) {
        long j = 0;
        while (!this.equals(lookaheadDelegate)) {
            if (!this.u || !z) {
                j = IntOffset.c(j, this.E);
            }
            NodeCoordinator nodeCoordinator = this.D.F;
            nodeCoordinator.getClass();
            this = nodeCoordinator.b1();
            this.getClass();
        }
        return j;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public final Object a() {
        return this.D.a();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
        U0(j);
        if (this.w) {
            return;
        }
        T0();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.D.e0();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean f0() {
        return true;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.D.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.D.D.I;
    }
}
