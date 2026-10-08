package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import io.sentry.d;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutModifierNodeCoordinator extends NodeCoordinator {
    public static final AndroidPaint n0;
    public LayoutModifierNode l0;
    public LookaheadDelegate m0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class LookaheadDelegateForLayoutModifierNode extends LookaheadDelegate {
        public LookaheadDelegateForLayoutModifierNode() {
            super(LayoutModifierNodeCoordinator.this);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int V(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.l0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.E;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.b1();
            b1.getClass();
            return layoutModifierNode.c(this, b1, i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int b(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.l0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.E;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.b1();
            b1.getClass();
            return layoutModifierNode.e(this, b1, i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int m(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.l0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.E;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.b1();
            b1.getClass();
            return layoutModifierNode.a(this, b1, i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        public final int p(int i) {
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.l0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.E;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.b1();
            b1.getClass();
            return layoutModifierNode.d(this, b1, i);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public final int s0(AlignmentLine alignmentLine) {
            int a = LayoutModifierNodeCoordinatorKt.a(this, alignmentLine);
            this.I.g(a, alignmentLine);
            return a;
        }

        @Override // androidx.compose.ui.layout.Measurable
        public final Placeable w(long j) {
            k0(j);
            new Constraints(j);
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = LayoutModifierNodeCoordinator.this;
            LayoutModifierNode layoutModifierNode = layoutModifierNodeCoordinator.l0;
            NodeCoordinator nodeCoordinator = layoutModifierNodeCoordinator.E;
            nodeCoordinator.getClass();
            LookaheadDelegate b1 = nodeCoordinator.b1();
            b1.getClass();
            LookaheadDelegate.S0(this, layoutModifierNode.j(this, b1, j));
            return this;
        }
    }

    static {
        AndroidPaint a = AndroidPaint_androidKt.a();
        a.f(Color.f);
        a.l(1.0f);
        a.m(1);
        n0 = a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutModifierNodeCoordinator(LayoutNode layoutNode, LayoutModifierNode layoutModifierNode) {
        super(layoutNode);
        LookaheadDelegateForLayoutModifierNode lookaheadDelegateForLayoutModifierNode;
        this.l0 = layoutModifierNode;
        if (layoutNode.q != null) {
            lookaheadDelegateForLayoutModifierNode = new LookaheadDelegateForLayoutModifierNode();
        } else {
            lookaheadDelegateForLayoutModifierNode = null;
        }
        this.m0 = lookaheadDelegateForLayoutModifierNode;
        if ((((Modifier.Node) layoutModifierNode).j.l & 512) == 0) {
            return;
        }
        d.i();
        throw null;
    }

    public final void G1() {
        if (this.w) {
            return;
        }
        p1();
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        boolean z = nodeCoordinator.x;
        nodeCoordinator.x = this.x;
        K0().d();
        nodeCoordinator.x = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void H1(LayoutModifierNode layoutModifierNode) {
        if (!layoutModifierNode.equals(this.l0) && (((Modifier.Node) layoutModifierNode).j.l & 512) != 0) {
            d.i();
        } else {
            this.l0 = layoutModifierNode;
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int V(int i) {
        LayoutModifierNode layoutModifierNode = this.l0;
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        return layoutModifierNode.c(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void Y0() {
        if (this.m0 == null) {
            this.m0 = new LookaheadDelegateForLayoutModifierNode();
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int b(int i) {
        LayoutModifierNode layoutModifierNode = this.l0;
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        return layoutModifierNode.e(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.Placeable
    public final void b0(long j, float f, GraphicsLayer graphicsLayer) {
        u1(j, f, null, graphicsLayer);
        G1();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final LookaheadDelegate b1() {
        return this.m0;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
        u1(j, f, function1, null);
        G1();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final Modifier.Node d1() {
        return ((Modifier.Node) this.l0).j;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int m(int i) {
        LayoutModifierNode layoutModifierNode = this.l0;
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        return layoutModifierNode.a(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int p(int i) {
        LayoutModifierNode layoutModifierNode = this.l0;
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        return layoutModifierNode.d(this, nodeCoordinator, i);
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public final int s0(AlignmentLine alignmentLine) {
        LookaheadDelegate lookaheadDelegate = this.m0;
        if (lookaheadDelegate != null) {
            MutableObjectIntMap mutableObjectIntMap = lookaheadDelegate.I;
            int a = mutableObjectIntMap.a(alignmentLine);
            if (a >= 0) {
                return mutableObjectIntMap.c[a];
            }
            return Integer.MIN_VALUE;
        }
        return LayoutModifierNodeCoordinatorKt.a(this, alignmentLine);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public final void t1(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator;
        NodeCoordinator nodeCoordinator2 = this.E;
        nodeCoordinator2.getClass();
        nodeCoordinator2.W0(canvas, graphicsLayer);
        if (LayoutNodeKt.a(this.D).getShowLayoutBounds() && (nodeCoordinator = this.E) != null) {
            if (!IntSize.a(this.l, nodeCoordinator.l) || !IntOffset.a(nodeCoordinator.O, 0L)) {
                long j = this.l;
                canvas.e(0.5f, 0.5f, ((int) (j >> 32)) - 0.5f, ((int) (j & 4294967295L)) - 0.5f, n0);
            }
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable w(long j) {
        k0(j);
        LayoutModifierNode layoutModifierNode = this.l0;
        NodeCoordinator nodeCoordinator = this.E;
        nodeCoordinator.getClass();
        x1(layoutModifierNode.j(this, nodeCoordinator, j));
        o1();
        return this;
    }
}
