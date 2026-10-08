package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InnerNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint n0;
    public final TailModifierNode l0;
    public LookaheadDelegate m0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class LookaheadDelegateImpl extends LookaheadDelegate {
        @Override // androidx.compose.ui.node.LookaheadDelegate
        public final void T0() {
            LookaheadPassDelegate lookaheadPassDelegate = this.D.D.P.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.E0();
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int V(int i) {
            IntrinsicsPolicy v = this.D.D.v();
            MeasurePolicy a = v.a();
            LayoutNode layoutNode = v.a;
            return a.e(layoutNode.O.d, layoutNode.l(), i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int b(int i) {
            IntrinsicsPolicy v = this.D.D.v();
            MeasurePolicy a = v.a();
            LayoutNode layoutNode = v.a;
            return a.i(layoutNode.O.d, layoutNode.l(), i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int m(int i) {
            IntrinsicsPolicy v = this.D.D.v();
            MeasurePolicy a = v.a();
            LayoutNode layoutNode = v.a;
            return a.g(layoutNode.O.d, layoutNode.l(), i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int p(int i) {
            IntrinsicsPolicy v = this.D.D.v();
            MeasurePolicy a = v.a();
            LayoutNode layoutNode = v.a;
            return a.b(layoutNode.O.d, layoutNode.l(), i);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int s0(AlignmentLine alignmentLine) {
            Boolean bool;
            int i;
            boolean z;
            LookaheadPassDelegate lookaheadPassDelegate = this.D.D.P.q;
            lookaheadPassDelegate.getClass();
            LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate.B;
            if (!lookaheadPassDelegate.t) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.o;
                if (layoutNodeLayoutDelegate.d == LayoutNode.LayoutState.k) {
                    lookaheadAlignmentLines.f = true;
                    if (lookaheadAlignmentLines.b) {
                        layoutNodeLayoutDelegate.f = true;
                        layoutNodeLayoutDelegate.g = true;
                    }
                } else {
                    lookaheadAlignmentLines.g = true;
                }
            }
            LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.e().m0;
            if (lookaheadDelegate != null) {
                bool = Boolean.valueOf(lookaheadDelegate.x);
            } else {
                bool = null;
            }
            LookaheadDelegate lookaheadDelegate2 = lookaheadPassDelegate.e().m0;
            if (lookaheadDelegate2 != null) {
                lookaheadDelegate2.x = true;
            }
            lookaheadPassDelegate.Q();
            LookaheadDelegate lookaheadDelegate3 = lookaheadPassDelegate.e().m0;
            if (lookaheadDelegate3 != null) {
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    z = false;
                }
                lookaheadDelegate3.x = z;
            }
            Integer num = (Integer) lookaheadAlignmentLines.i.get(alignmentLine);
            if (num != null) {
                i = num.intValue();
            } else {
                i = Integer.MIN_VALUE;
            }
            this.I.g(i, alignmentLine);
            return i;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final Placeable w(long j) {
            k0(j);
            NodeCoordinator nodeCoordinator = this.D;
            MutableVector D = nodeCoordinator.D.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).P.q;
                lookaheadPassDelegate.getClass();
                lookaheadPassDelegate.s = LayoutNode.UsageByParent.l;
            }
            LayoutNode layoutNode = nodeCoordinator.D;
            LookaheadDelegate.S0(this, layoutNode.F.a(this, layoutNode.l(), j));
            return this;
        }
    }

    static {
        AndroidPaint a = AndroidPaint_androidKt.a();
        a.f(Color.e);
        a.l(1.0f);
        a.m(1);
        n0 = a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.node.TailModifierNode, androidx.compose.ui.Modifier$Node] */
    public InnerNodeCoordinator(LayoutNode layoutNode) {
        super(layoutNode);
        LookaheadDelegate lookaheadDelegate;
        ?? node = new Modifier.Node();
        node.m = 0;
        this.l0 = node;
        node.q = this;
        if (layoutNode.q != null) {
            lookaheadDelegate = new LookaheadDelegate(this);
        } else {
            lookaheadDelegate = null;
        }
        this.m0 = lookaheadDelegate;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int V(int i) {
        IntrinsicsPolicy v = this.D.v();
        MeasurePolicy a = v.a();
        LayoutNode layoutNode = v.a;
        return a.e(layoutNode.O.d, layoutNode.m(), i);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void Y0() {
        if (this.m0 == null) {
            this.m0 = new LookaheadDelegate(this);
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int b(int i) {
        IntrinsicsPolicy v = this.D.v();
        MeasurePolicy a = v.a();
        LayoutNode layoutNode = v.a;
        return a.i(layoutNode.O.d, layoutNode.m(), i);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void b0(long j, float f, GraphicsLayer graphicsLayer) {
        u1(j, f, null, graphicsLayer);
        if (this.w) {
            return;
        }
        this.D.P.p.C0();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final LookaheadDelegate b1() {
        return this.m0;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
        u1(j, f, function1, null);
        if (this.w) {
            return;
        }
        this.D.P.p.C0();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node d1() {
        return this.l0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    @Override // androidx.compose.ui.node.NodeCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k1(NodeCoordinator.HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        int i2;
        boolean z2;
        LayoutNode layoutNode = this.D;
        boolean z3 = false;
        if (hitTestSource.e(layoutNode)) {
            if (F1(j)) {
                i2 = i;
                z2 = z;
            } else {
                i2 = i;
                if (i2 == 1 && (Float.floatToRawIntBits(V0(j, c1())) & Integer.MAX_VALUE) < 2139095040) {
                    z2 = false;
                }
            }
            z3 = true;
            if (!z3) {
                int i3 = hitTestResult.l;
                MutableVector C = layoutNode.C();
                Object[] objArr = C.j;
                int i4 = C.l - 1;
                while (i4 >= 0) {
                    LayoutNode layoutNode2 = (LayoutNode) objArr[i4];
                    if (layoutNode2.M()) {
                        hitTestSource.c(layoutNode2, j, hitTestResult, i2, z2);
                        long b = hitTestResult.b();
                        if (DistanceAndFlags.b(b) < 0.0f && DistanceAndFlags.d(b) && !DistanceAndFlags.c(b) && !hitTestSource.a(hitTestResult, layoutNode2)) {
                            break;
                        }
                    }
                    i4--;
                    i2 = i;
                }
                hitTestResult.l = i3;
                return;
            }
            return;
        }
        i2 = i;
        z2 = z;
        if (!z3) {
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int m(int i) {
        IntrinsicsPolicy v = this.D.v();
        MeasurePolicy a = v.a();
        LayoutNode layoutNode = v.a;
        return a.g(layoutNode.O.d, layoutNode.m(), i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int p(int i) {
        IntrinsicsPolicy v = this.D.v();
        MeasurePolicy a = v.a();
        LayoutNode layoutNode = v.a;
        return a.b(layoutNode.O.d, layoutNode.m(), i);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int s0(AlignmentLine alignmentLine) {
        LookaheadDelegate lookaheadDelegate = this.m0;
        if (lookaheadDelegate != null) {
            return lookaheadDelegate.s0(alignmentLine);
        }
        MeasurePassDelegate measurePassDelegate = this.D.P.p;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = measurePassDelegate.H;
        if (!measurePassDelegate.v) {
            if (measurePassDelegate.o.d == LayoutNode.LayoutState.j) {
                layoutNodeAlignmentLines.f = true;
                if (layoutNodeAlignmentLines.b) {
                    measurePassDelegate.F = true;
                    measurePassDelegate.G = true;
                }
            } else {
                layoutNodeAlignmentLines.g = true;
            }
        }
        InnerNodeCoordinator e = measurePassDelegate.e();
        boolean z = e.x;
        e.x = true;
        measurePassDelegate.Q();
        e.x = z;
        Integer num = (Integer) layoutNodeAlignmentLines.i.get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void t1(Canvas canvas, GraphicsLayer graphicsLayer) {
        LayoutNode layoutNode = this.D;
        Owner a = LayoutNodeKt.a(layoutNode);
        MutableVector C = layoutNode.C();
        Object[] objArr = C.j;
        int i = C.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.M()) {
                layoutNode2.i(canvas, graphicsLayer);
            }
        }
        if (a.getShowLayoutBounds()) {
            long j = this.l;
            canvas.e(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, n0);
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable w(long j) {
        k0(j);
        LayoutNode layoutNode = this.D;
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).P.p.u = LayoutNode.UsageByParent.l;
        }
        x1(layoutNode.F.a(this, layoutNode.m(), j));
        o1();
        return this;
    }
}
