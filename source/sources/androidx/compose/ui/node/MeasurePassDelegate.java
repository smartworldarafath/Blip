package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeAlignmentLines;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LayoutNodeLayoutDelegateKt;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.ab;
import defpackage.c;
import defpackage.k8;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MeasurePassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public Object B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean K;
    public final ab M;
    public final ab N;
    public float O;
    public boolean P;
    public Function1 Q;
    public GraphicsLayer R;
    public float T;
    public final ab U;
    public boolean V;
    public final LayoutNodeLayoutDelegate o;
    public boolean p;
    public boolean s;
    public boolean t;
    public boolean v;
    public Function1 x;
    public GraphicsLayer y;
    public float z;
    public int q = Integer.MAX_VALUE;
    public int r = Integer.MAX_VALUE;
    public LayoutNode.UsageByParent u = LayoutNode.UsageByParent.l;
    public long w = 0;
    public boolean A = true;
    public final LayoutNodeAlignmentLines H = new AlignmentLines(this);
    public final MutableVector I = new MutableVector(new MeasurePassDelegate[16]);
    public boolean J = true;
    public long L = ConstraintsKt.b(0, 0, 0, 0, 15);
    public long S = 0;

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.node.AlignmentLines, androidx.compose.ui.node.LayoutNodeAlignmentLines] */
    /* JADX WARN: Type inference failed for: r2v3, types: [ab] */
    /* JADX WARN: Type inference failed for: r2v4, types: [ab] */
    /* JADX WARN: Type inference failed for: r7v4, types: [ab] */
    public MeasurePassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.o = layoutNodeLayoutDelegate;
        final int i = 1;
        final int i2 = 0;
        this.M = new Function0(this) { // from class: ab
            public final /* synthetic */ MeasurePassDelegate k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Placeable.PlacementScope placementScope;
                int i3 = i2;
                Unit unit = Unit.a;
                MeasurePassDelegate measurePassDelegate = this.k;
                switch (i3) {
                    case 0:
                        measurePassDelegate.o.a().w(measurePassDelegate.L);
                        return unit;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.o;
                        layoutNodeLayoutDelegate2.i = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).P.p;
                            measurePassDelegate2.q = measurePassDelegate2.r;
                            measurePassDelegate2.r = Integer.MAX_VALUE;
                            measurePassDelegate2.D = false;
                            if (measurePassDelegate2.u == LayoutNode.UsageByParent.k) {
                                measurePassDelegate2.u = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).P.p.H.d = false;
                        }
                        if (measurePassDelegate.e().x) {
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                ((LayoutNode) n.get(i8)).O.d.x = true;
                            }
                        }
                        measurePassDelegate.e().K0().d();
                        if (measurePassDelegate.e().x) {
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            for (int i9 = 0; i9 < size2; i9++) {
                                ((LayoutNode) n2.get(i9)).O.d.x = false;
                            }
                        }
                        MutableVector D3 = layoutNode.D();
                        Object[] objArr3 = D3.j;
                        int i10 = D3.l;
                        for (int i11 = 0; i11 < i10; i11++) {
                            LayoutNode layoutNode2 = (LayoutNode) objArr3[i11];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode2.P;
                            if (layoutNodeLayoutDelegate3.p.q != layoutNode2.x()) {
                                layoutNode.S();
                                layoutNode.G();
                                if (layoutNode2.x() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.c || LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.q;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.s0(false);
                                    }
                                    layoutNodeLayoutDelegate3.p.w0();
                                }
                            }
                        }
                        MutableVector D4 = layoutNode.D();
                        Object[] objArr4 = D4.j;
                        int i12 = D4.l;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNodeAlignmentLines layoutNodeAlignmentLines = ((LayoutNode) objArr4[i13]).P.p.H;
                            layoutNodeAlignmentLines.e = layoutNodeAlignmentLines.d;
                        }
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.o;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.a().F;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.y) == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate4.a).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.Q;
                        GraphicsLayer graphicsLayer = measurePassDelegate.R;
                        if (graphicsLayer != null) {
                            NodeCoordinator a = layoutNodeLayoutDelegate4.a();
                            long j = measurePassDelegate.S;
                            float f = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a);
                            a.b0(IntOffset.c(j, a.n), f, graphicsLayer);
                        } else if (function1 == null) {
                            NodeCoordinator a2 = layoutNodeLayoutDelegate4.a();
                            long j2 = measurePassDelegate.S;
                            float f2 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a2);
                            a2.c0(IntOffset.c(j2, a2.n), f2, null);
                        } else {
                            NodeCoordinator a3 = layoutNodeLayoutDelegate4.a();
                            long j3 = measurePassDelegate.S;
                            float f3 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a3);
                            a3.c0(IntOffset.c(j3, a3.n), f3, function1);
                        }
                        return unit;
                }
            }
        };
        this.N = new Function0(this) { // from class: ab
            public final /* synthetic */ MeasurePassDelegate k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Placeable.PlacementScope placementScope;
                int i3 = i;
                Unit unit = Unit.a;
                MeasurePassDelegate measurePassDelegate = this.k;
                switch (i3) {
                    case 0:
                        measurePassDelegate.o.a().w(measurePassDelegate.L);
                        return unit;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.o;
                        layoutNodeLayoutDelegate2.i = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).P.p;
                            measurePassDelegate2.q = measurePassDelegate2.r;
                            measurePassDelegate2.r = Integer.MAX_VALUE;
                            measurePassDelegate2.D = false;
                            if (measurePassDelegate2.u == LayoutNode.UsageByParent.k) {
                                measurePassDelegate2.u = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).P.p.H.d = false;
                        }
                        if (measurePassDelegate.e().x) {
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                ((LayoutNode) n.get(i8)).O.d.x = true;
                            }
                        }
                        measurePassDelegate.e().K0().d();
                        if (measurePassDelegate.e().x) {
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            for (int i9 = 0; i9 < size2; i9++) {
                                ((LayoutNode) n2.get(i9)).O.d.x = false;
                            }
                        }
                        MutableVector D3 = layoutNode.D();
                        Object[] objArr3 = D3.j;
                        int i10 = D3.l;
                        for (int i11 = 0; i11 < i10; i11++) {
                            LayoutNode layoutNode2 = (LayoutNode) objArr3[i11];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode2.P;
                            if (layoutNodeLayoutDelegate3.p.q != layoutNode2.x()) {
                                layoutNode.S();
                                layoutNode.G();
                                if (layoutNode2.x() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.c || LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.q;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.s0(false);
                                    }
                                    layoutNodeLayoutDelegate3.p.w0();
                                }
                            }
                        }
                        MutableVector D4 = layoutNode.D();
                        Object[] objArr4 = D4.j;
                        int i12 = D4.l;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNodeAlignmentLines layoutNodeAlignmentLines = ((LayoutNode) objArr4[i13]).P.p.H;
                            layoutNodeAlignmentLines.e = layoutNodeAlignmentLines.d;
                        }
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.o;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.a().F;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.y) == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate4.a).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.Q;
                        GraphicsLayer graphicsLayer = measurePassDelegate.R;
                        if (graphicsLayer != null) {
                            NodeCoordinator a = layoutNodeLayoutDelegate4.a();
                            long j = measurePassDelegate.S;
                            float f = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a);
                            a.b0(IntOffset.c(j, a.n), f, graphicsLayer);
                        } else if (function1 == null) {
                            NodeCoordinator a2 = layoutNodeLayoutDelegate4.a();
                            long j2 = measurePassDelegate.S;
                            float f2 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a2);
                            a2.c0(IntOffset.c(j2, a2.n), f2, null);
                        } else {
                            NodeCoordinator a3 = layoutNodeLayoutDelegate4.a();
                            long j3 = measurePassDelegate.S;
                            float f3 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a3);
                            a3.c0(IntOffset.c(j3, a3.n), f3, function1);
                        }
                        return unit;
                }
            }
        };
        final int i3 = 2;
        this.U = new Function0(this) { // from class: ab
            public final /* synthetic */ MeasurePassDelegate k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                Placeable.PlacementScope placementScope;
                int i32 = i3;
                Unit unit = Unit.a;
                MeasurePassDelegate measurePassDelegate = this.k;
                switch (i32) {
                    case 0:
                        measurePassDelegate.o.a().w(measurePassDelegate.L);
                        return unit;
                    case 1:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = measurePassDelegate.o;
                        layoutNodeLayoutDelegate2.i = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            MeasurePassDelegate measurePassDelegate2 = ((LayoutNode) objArr[i5]).P.p;
                            measurePassDelegate2.q = measurePassDelegate2.r;
                            measurePassDelegate2.r = Integer.MAX_VALUE;
                            measurePassDelegate2.D = false;
                            if (measurePassDelegate2.u == LayoutNode.UsageByParent.k) {
                                measurePassDelegate2.u = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            ((LayoutNode) objArr2[i7]).P.p.H.d = false;
                        }
                        if (measurePassDelegate.e().x) {
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                ((LayoutNode) n.get(i8)).O.d.x = true;
                            }
                        }
                        measurePassDelegate.e().K0().d();
                        if (measurePassDelegate.e().x) {
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            for (int i9 = 0; i9 < size2; i9++) {
                                ((LayoutNode) n2.get(i9)).O.d.x = false;
                            }
                        }
                        MutableVector D3 = layoutNode.D();
                        Object[] objArr3 = D3.j;
                        int i10 = D3.l;
                        for (int i11 = 0; i11 < i10; i11++) {
                            LayoutNode layoutNode2 = (LayoutNode) objArr3[i11];
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = layoutNode2.P;
                            if (layoutNodeLayoutDelegate3.p.q != layoutNode2.x()) {
                                layoutNode.S();
                                layoutNode.G();
                                if (layoutNode2.x() == Integer.MAX_VALUE) {
                                    if (layoutNodeLayoutDelegate3.c || LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate3.q;
                                        lookaheadPassDelegate.getClass();
                                        lookaheadPassDelegate.s0(false);
                                    }
                                    layoutNodeLayoutDelegate3.p.w0();
                                }
                            }
                        }
                        MutableVector D4 = layoutNode.D();
                        Object[] objArr4 = D4.j;
                        int i12 = D4.l;
                        for (int i13 = 0; i13 < i12; i13++) {
                            LayoutNodeAlignmentLines layoutNodeAlignmentLines = ((LayoutNode) objArr4[i13]).P.p.H;
                            layoutNodeAlignmentLines.e = layoutNodeAlignmentLines.d;
                        }
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate4 = measurePassDelegate.o;
                        NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate4.a().F;
                        if (nodeCoordinator == null || (placementScope = nodeCoordinator.y) == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate4.a).getPlacementScope();
                        }
                        Function1 function1 = measurePassDelegate.Q;
                        GraphicsLayer graphicsLayer = measurePassDelegate.R;
                        if (graphicsLayer != null) {
                            NodeCoordinator a = layoutNodeLayoutDelegate4.a();
                            long j = measurePassDelegate.S;
                            float f = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a);
                            a.b0(IntOffset.c(j, a.n), f, graphicsLayer);
                        } else if (function1 == null) {
                            NodeCoordinator a2 = layoutNodeLayoutDelegate4.a();
                            long j2 = measurePassDelegate.S;
                            float f2 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a2);
                            a2.c0(IntOffset.c(j2, a2.n), f2, null);
                        } else {
                            NodeCoordinator a3 = layoutNodeLayoutDelegate4.a();
                            long j3 = measurePassDelegate.S;
                            float f3 = measurePassDelegate.T;
                            placementScope.getClass();
                            Placeable.PlacementScope.a(placementScope, a3);
                            a3.c0(IntOffset.c(j3, a3.n), f3, function1);
                        }
                        return unit;
                }
            }
        };
    }

    public final void A0() {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode.Z(layoutNodeLayoutDelegate.a, false, 7);
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode w = layoutNode.w();
        if (w != null && layoutNode.L == LayoutNode.UsageByParent.l) {
            int ordinal = w.P.d.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    usageByParent = w.L;
                } else {
                    usageByParent = LayoutNode.UsageByParent.k;
                }
            } else {
                usageByParent = LayoutNode.UsageByParent.j;
            }
            layoutNode.L = usageByParent;
        }
    }

    public final void C0() {
        this.P = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode w = layoutNodeLayoutDelegate.a.w();
        float f = e().P;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        NodeChain nodeChain = layoutNode.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.c;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            f += layoutModifierNodeCoordinator.P;
            nodeCoordinator = layoutModifierNodeCoordinator.E;
        }
        if (f != this.O) {
            this.O = f;
            if (w != null) {
                w.S();
            }
            if (w != null) {
                w.G();
            }
        }
        if (!e().x) {
            boolean z = this.C;
            if (!z || this.H.e()) {
                s0();
            }
            if (!z) {
                if (w != null) {
                    w.G();
                }
                if (this.p && w != null) {
                    w.Y(false);
                }
            } else {
                layoutNode.O.c.p1();
            }
        }
        if (w != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = w.P;
            if (!this.p && layoutNodeLayoutDelegate2.d == LayoutNode.LayoutState.l) {
                if (this.r != Integer.MAX_VALUE) {
                    InlineClassHelperKt.b("Place was called on a node which was placed already");
                }
                int i = layoutNodeLayoutDelegate2.i;
                this.r = i;
                layoutNodeLayoutDelegate2.i = i + 1;
            }
        } else {
            this.r = 0;
        }
        Q();
    }

    public final void E0(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        if (layoutNode.Z) {
            InlineClassHelperKt.a("place is called on a deactivated node");
        }
        layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.l;
        this.w = j;
        this.z = f;
        this.x = function1;
        this.y = graphicsLayer;
        this.P = false;
        Owner a = LayoutNodeKt.a(layoutNode2);
        if (!this.F && this.C) {
            NodeCoordinator a2 = layoutNodeLayoutDelegate.a();
            a2.u1(IntOffset.c(j, a2.n), f, function1, graphicsLayer);
            C0();
        } else {
            this.H.g = false;
            layoutNodeLayoutDelegate.f(false);
            this.Q = function1;
            this.S = j;
            this.T = f;
            this.R = graphicsLayer;
            OwnerSnapshotObserver snapshotObserver = a.getSnapshotObserver();
            snapshotObserver.a.e(layoutNode2, snapshotObserver.f, this.U);
        }
        layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.n;
        if (layoutNodeLayoutDelegate.a().x && (layoutNodeLayoutDelegate.k || layoutNodeLayoutDelegate.j)) {
            requestLayout();
        }
        this.t = true;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void F(c cVar) {
        MutableVector D = this.o.a.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            cVar.b(((LayoutNode) objArr[i2]).P.p);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002f, B:12:0x0033, B:14:0x003b, B:17:0x0044, B:18:0x0046, B:20:0x004a, B:22:0x0050, B:24:0x0058, B:26:0x0064, B:28:0x006f, B:29:0x0073, B:30:0x005c, B:31:0x0087, B:33:0x008b, B:35:0x008f, B:36:0x0094, B:40:0x001f, B:42:0x0023, B:44:0x0027, B:46:0x002b), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006f A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0007, B:5:0x0012, B:7:0x0016, B:10:0x002f, B:12:0x0033, B:14:0x003b, B:17:0x0044, B:18:0x0046, B:20:0x004a, B:22:0x0050, B:24:0x0058, B:26:0x0064, B:28:0x006f, B:29:0x0073, B:30:0x005c, B:31:0x0087, B:33:0x008b, B:35:0x008f, B:36:0x0094, B:40:0x001f, B:42:0x0023, B:44:0x0027, B:46:0x002b), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void F0(long j, float f, Function1 function1, GraphicsLayer graphicsLayer) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadPassDelegate lookaheadPassDelegate2;
        LookaheadPassDelegate lookaheadPassDelegate3;
        NodeCoordinator nodeCoordinator;
        LayoutNode w;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        try {
            this.D = true;
            if (IntOffset.a(j, this.w)) {
                if (function1 == this.x) {
                    if (this.V) {
                    }
                    lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                    if (lookaheadPassDelegate != null) {
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.o;
                        if (lookaheadPassDelegate.A == LookaheadPassDelegate.PlacedState.l && !LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate2.a)) {
                            layoutNodeLayoutDelegate2.c = true;
                        }
                    }
                    lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
                    if (lookaheadPassDelegate2 != null && lookaheadPassDelegate2.n0()) {
                        nodeCoordinator = layoutNodeLayoutDelegate.a().F;
                        if (nodeCoordinator != null || (r3 = nodeCoordinator.y) == null) {
                            Placeable.PlacementScope placementScope = LayoutNodeKt.a(layoutNode2).getPlacementScope();
                        }
                        LookaheadPassDelegate lookaheadPassDelegate4 = layoutNodeLayoutDelegate.q;
                        lookaheadPassDelegate4.getClass();
                        w = layoutNode2.w();
                        if (w != null) {
                            w.P.h = 0;
                        }
                        lookaheadPassDelegate4.r = Integer.MAX_VALUE;
                        Placeable.PlacementScope.g(placementScope, lookaheadPassDelegate4, (int) (j >> 32), (int) (4294967295L & j));
                    }
                    lookaheadPassDelegate3 = layoutNodeLayoutDelegate.q;
                    if (lookaheadPassDelegate3 != null && !lookaheadPassDelegate3.u) {
                        InlineClassHelperKt.b("Error: Placement happened before lookahead.");
                    }
                    E0(j, f, function1, graphicsLayer);
                }
            }
            if (layoutNodeLayoutDelegate.k || layoutNodeLayoutDelegate.j || this.V) {
                this.F = true;
                this.V = false;
            }
            lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
            }
            lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate2 != null) {
                nodeCoordinator = layoutNodeLayoutDelegate.a().F;
                if (nodeCoordinator != null) {
                }
                Placeable.PlacementScope placementScope2 = LayoutNodeKt.a(layoutNode2).getPlacementScope();
                LookaheadPassDelegate lookaheadPassDelegate42 = layoutNodeLayoutDelegate.q;
                lookaheadPassDelegate42.getClass();
                w = layoutNode2.w();
                if (w != null) {
                }
                lookaheadPassDelegate42.r = Integer.MAX_VALUE;
                Placeable.PlacementScope.g(placementScope2, lookaheadPassDelegate42, (int) (j >> 32), (int) (4294967295L & j));
            }
            lookaheadPassDelegate3 = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate3 != null) {
                InlineClassHelperKt.b("Error: Placement happened before lookahead.");
            }
            E0(j, f, function1, graphicsLayer);
        } catch (Throwable th) {
            layoutNode.c0(th);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[Catch: all -> 0x0010, LOOP:0: B:22:0x0052->B:23:0x0054, LOOP_END, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0097, B:31:0x009d, B:33:0x00a9, B:35:0x00b3, B:39:0x00bf, B:41:0x0075), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0097, B:31:0x009d, B:33:0x00a9, B:35:0x00b3, B:39:0x00bf, B:41:0x0075), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0075 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x0023, B:13:0x002b, B:15:0x0033, B:18:0x003c, B:21:0x0045, B:23:0x0054, B:25:0x0063, B:28:0x007a, B:30:0x0097, B:31:0x009d, B:33:0x00a9, B:35:0x00b3, B:39:0x00bf, B:41:0x0075), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean G0(long j) {
        boolean z;
        int i;
        int i2;
        long j2;
        LayoutNode.LayoutState layoutState;
        LayoutNode.LayoutState layoutState2;
        LayoutNode.LayoutState layoutState3;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        try {
            if (layoutNode.Z) {
                InlineClassHelperKt.a("measure is called on a deactivated node");
            }
            Owner a = LayoutNodeKt.a(layoutNode2);
            LayoutNode w = layoutNode2.w();
            boolean z2 = true;
            if (!layoutNode2.N && (w == null || !w.N)) {
                z = false;
                layoutNode2.N = z;
                if (!layoutNode2.r() && Constraints.b(this.m, j)) {
                    ((AndroidComposeView) a).g(layoutNode2, false);
                    layoutNode2.b0();
                    return false;
                }
                this.H.f = false;
                MutableVector D = layoutNode2.D();
                Object[] objArr = D.j;
                i = D.l;
                for (i2 = 0; i2 < i; i2++) {
                    ((LayoutNode) objArr[i2]).P.p.H.c = false;
                }
                this.s = true;
                j2 = layoutNodeLayoutDelegate.a().l;
                k0(j);
                layoutState = layoutNodeLayoutDelegate.d;
                layoutState2 = LayoutNode.LayoutState.n;
                if (layoutState == layoutState2) {
                    InlineClassHelperKt.b("layout state is not idle before measure starts");
                }
                this.L = j;
                layoutState3 = LayoutNode.LayoutState.j;
                layoutNodeLayoutDelegate.d = layoutState3;
                this.E = false;
                OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode2).getSnapshotObserver();
                snapshotObserver.a.e(layoutNode2, snapshotObserver.c, this.M);
                if (layoutNodeLayoutDelegate.d == layoutState3) {
                    this.F = true;
                    this.G = true;
                    layoutNodeLayoutDelegate.d = layoutState2;
                }
                if (IntSize.a(layoutNodeLayoutDelegate.a().l, j2) && layoutNodeLayoutDelegate.a().j == this.j && layoutNodeLayoutDelegate.a().k == this.k) {
                    z2 = false;
                }
                j0((layoutNodeLayoutDelegate.a().k & 4294967295L) | (layoutNodeLayoutDelegate.a().j << 32));
                return z2;
            }
            z = true;
            layoutNode2.N = z;
            if (!layoutNode2.r()) {
                ((AndroidComposeView) a).g(layoutNode2, false);
                layoutNode2.b0();
                return false;
            }
            this.H.f = false;
            MutableVector D2 = layoutNode2.D();
            Object[] objArr2 = D2.j;
            i = D2.l;
            while (i2 < i) {
            }
            this.s = true;
            j2 = layoutNodeLayoutDelegate.a().l;
            k0(j);
            layoutState = layoutNodeLayoutDelegate.d;
            layoutState2 = LayoutNode.LayoutState.n;
            if (layoutState == layoutState2) {
            }
            this.L = j;
            layoutState3 = LayoutNode.LayoutState.j;
            layoutNodeLayoutDelegate.d = layoutState3;
            this.E = false;
            OwnerSnapshotObserver snapshotObserver2 = LayoutNodeKt.a(layoutNode2).getSnapshotObserver();
            snapshotObserver2.a.e(layoutNode2, snapshotObserver2.c, this.M);
            if (layoutNodeLayoutDelegate.d == layoutState3) {
            }
            if (IntSize.a(layoutNodeLayoutDelegate.a().l, j2)) {
                z2 = false;
            }
            j0((layoutNodeLayoutDelegate.a().k & 4294967295L) | (layoutNodeLayoutDelegate.a().j << 32));
            return z2;
        } catch (Throwable th) {
            layoutNode.c0(th);
            throw null;
        }
    }

    public final void J0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        if (layoutNode.M() && layoutNodeLayoutDelegate.l > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.P;
            if ((layoutNodeLayoutDelegate2.j || layoutNodeLayoutDelegate2.k) && !layoutNodeLayoutDelegate2.p.F) {
                layoutNode2.Y(false);
            }
            MutableVector D = layoutNode2.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                ((LayoutNode) objArr[i2]).P.p.J0();
            }
        }
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int K(AlignmentLine alignmentLine) {
        LayoutNode.LayoutState layoutState;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode w = layoutNodeLayoutDelegate.a.w();
        LayoutNode.LayoutState layoutState2 = null;
        if (w != null) {
            layoutState = w.P.d;
        } else {
            layoutState = null;
        }
        LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.j;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = this.H;
        if (layoutState == layoutState3) {
            layoutNodeAlignmentLines.c = true;
        } else {
            LayoutNode w2 = layoutNodeLayoutDelegate.a.w();
            if (w2 != null) {
                layoutState2 = w2.P.d;
            }
            if (layoutState2 == LayoutNode.LayoutState.l) {
                layoutNodeAlignmentLines.d = true;
            }
        }
        this.v = true;
        int K = layoutNodeLayoutDelegate.a().K(alignmentLine);
        this.v = false;
        return K;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void M(boolean z) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (z != layoutNodeLayoutDelegate.a().u) {
            layoutNodeLayoutDelegate.a().u = z;
            this.V = true;
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void Q() {
        Constraints constraints;
        boolean z;
        this.K = true;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = this.H;
        layoutNodeAlignmentLines.i();
        boolean z2 = this.F;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (z2) {
            MutableVector D = layoutNodeLayoutDelegate.a.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i2];
                boolean r = layoutNode.r();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.P;
                if (r && layoutNode.s() == LayoutNode.UsageByParent.j) {
                    MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate2.p;
                    if (measurePassDelegate.s) {
                        constraints = new Constraints(measurePassDelegate.m);
                    } else {
                        constraints = null;
                    }
                    if (constraints != null) {
                        if (layoutNode.L == LayoutNode.UsageByParent.l) {
                            layoutNode.e();
                        }
                        z = layoutNodeLayoutDelegate2.p.G0(constraints.a);
                    } else {
                        z = false;
                    }
                    if (z) {
                        LayoutNode.Z(layoutNodeLayoutDelegate.a, false, 7);
                    }
                }
            }
        }
        if (this.G || (!this.v && !e().x && this.F)) {
            this.F = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.d;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.l;
            layoutNodeLayoutDelegate.g(false);
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode2).getSnapshotObserver();
            snapshotObserver.a.e(layoutNode2, snapshotObserver.e, this.N);
            layoutNodeLayoutDelegate.d = layoutState;
            this.G = false;
        }
        if (layoutNodeAlignmentLines.d) {
            layoutNodeAlignmentLines.e = true;
        }
        if (layoutNodeAlignmentLines.b && layoutNodeAlignmentLines.f()) {
            layoutNodeAlignmentLines.h();
        }
        this.K = false;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void T() {
        LayoutNode.Z(this.o.a, false, 7);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int V(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.a)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            return lookaheadPassDelegate.V(i);
        }
        A0();
        return layoutNodeLayoutDelegate.a().V(i);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int W() {
        return this.o.a().W();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int Z() {
        return this.o.a().Z();
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public final Object a() {
        return this.B;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int b(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.a)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            return lookaheadPassDelegate.b(i);
        }
        A0();
        return layoutNodeLayoutDelegate.a().b(i);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void b0(long j, float f, GraphicsLayer graphicsLayer) {
        F0(j, f, null, graphicsLayer);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLines c() {
        return this.H;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
        F0(j, f, function1, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final InnerNodeCoordinator e() {
        return this.o.a.O.c;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLinesOwner h() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        LayoutNode w = this.o.a.w();
        if (w != null && (layoutNodeLayoutDelegate = w.P) != null) {
            return layoutNodeLayoutDelegate.p;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int m(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.a)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            return lookaheadPassDelegate.m(i);
        }
        A0();
        return layoutNodeLayoutDelegate.a().m(i);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final int n() {
        return this.r;
    }

    public final List n0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        layoutNodeLayoutDelegate.a.j0();
        boolean z = this.J;
        MutableVector mutableVector = this.I;
        if (!z) {
            return mutableVector.f();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (mutableVector.l <= i2) {
                mutableVector.b(layoutNode2.P.p);
            } else {
                MeasurePassDelegate measurePassDelegate = layoutNode2.P.p;
                Object[] objArr2 = mutableVector.j;
                Object obj = objArr2[i2];
                objArr2[i2] = measurePassDelegate;
            }
        }
        mutableVector.l(layoutNode.n().size(), mutableVector.l);
        this.J = false;
        return mutableVector.f();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int p(int i) {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.a)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            return lookaheadPassDelegate.p(i);
        }
        A0();
        return layoutNodeLayoutDelegate.a().p(i);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        this.o.a.Y(false);
    }

    public final void s0() {
        boolean z = this.C;
        this.C = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        NodeChain nodeChain = layoutNode.O;
        if (!z) {
            nodeChain.c.p1();
            LayoutNodeKt.a(layoutNode).getRectManager().h(layoutNodeLayoutDelegate.a);
            if (layoutNode.r()) {
                LayoutNode.Z(layoutNode, true, 6);
            } else if (layoutNode.P.e) {
                LayoutNode.X(layoutNode, true, 6);
            }
        }
        NodeCoordinator nodeCoordinator = nodeChain.c.E;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.a(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.E) {
            if (nodeCoordinator2.b0) {
                nodeCoordinator2.l1();
            }
        }
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.x() != Integer.MAX_VALUE) {
                layoutNode2.P.p.s0();
                LayoutNode.a0(layoutNode2);
            }
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable w(long j) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        LayoutNode.UsageByParent usageByParent2 = layoutNode.L;
        LayoutNode.UsageByParent usageByParent3 = LayoutNode.UsageByParent.l;
        if (usageByParent2 == usageByParent3) {
            layoutNode.e();
        }
        if (LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.s = usageByParent3;
            lookaheadPassDelegate.w(j);
        }
        LayoutNode w = layoutNode2.w();
        if (w != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = w.P;
            if (this.u != usageByParent3 && !layoutNode2.N) {
                InlineClassHelperKt.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int ordinal = layoutNodeLayoutDelegate2.d.ordinal();
            if (ordinal != 0) {
                if (ordinal == 2) {
                    usageByParent = LayoutNode.UsageByParent.k;
                } else {
                    k8.p(layoutNodeLayoutDelegate2.d, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
            } else {
                usageByParent = LayoutNode.UsageByParent.j;
            }
            this.u = usageByParent;
        } else {
            this.u = usageByParent3;
        }
        G0(j);
        return this;
    }

    public final void w0() {
        if (this.C) {
            this.C = false;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
            LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
            LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
            LayoutNodeKt.a(layoutNode).getRectManager().i(layoutNode2);
            NodeChain nodeChain = layoutNode2.O;
            NodeCoordinator nodeCoordinator = nodeChain.c.E;
            for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.a(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.E) {
                nodeCoordinator2.r1();
                nodeCoordinator2.w1();
            }
            MutableVector D = layoutNode2.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                ((LayoutNode) objArr[i2]).P.p.w0();
            }
        }
    }
}
