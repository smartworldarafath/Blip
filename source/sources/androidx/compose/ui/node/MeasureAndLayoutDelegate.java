package androidx.compose.ui.node;

import android.os.Trace;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import defpackage.k8;
import defpackage.la;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MeasureAndLayoutDelegate {
    public final LayoutNode a;
    public boolean c;
    public boolean d;
    public Constraints i;
    public final DepthSortedSetsForDifferentPasses b = new DepthSortedSetsForDifferentPasses();
    public final OnPositionedDispatcher e = new OnPositionedDispatcher();
    public final MutableVector f = new MutableVector(new Owner.OnLayoutCompletedListener[16]);
    public final long g = 1;
    public final MutableVector h = new MutableVector(new PostponedRequest[16]);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PostponedRequest {
        public final LayoutNode a;
        public final boolean b;
        public final boolean c;

        public PostponedRequest(LayoutNode layoutNode, boolean z, boolean z2) {
            this.a = layoutNode;
            this.b = z;
            this.c = z2;
        }
    }

    public MeasureAndLayoutDelegate(LayoutNode layoutNode) {
        this.a = layoutNode;
    }

    public static final boolean a(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        boolean z2;
        Placeable.PlacementScope placementScope;
        InnerNodeCoordinator innerNodeCoordinator;
        LayoutNode w;
        LayoutNode layoutNode2 = measureAndLayoutDelegate.a;
        boolean z3 = layoutNode.Z;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
        boolean z4 = false;
        if (!z3 && k(layoutNode)) {
            if (layoutNode == layoutNode2) {
                constraints = measureAndLayoutDelegate.i;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                if (layoutNodeLayoutDelegate.e) {
                    z4 = c(layoutNode, constraints);
                }
                if ((z4 || layoutNodeLayoutDelegate.f) && Intrinsics.a(layoutNode.N(), Boolean.TRUE)) {
                    layoutNode.O();
                }
            } else {
                if (layoutNode.r()) {
                    z2 = d(layoutNode, constraints);
                } else {
                    z2 = false;
                }
                if (layoutNode.q() && (layoutNode == layoutNode2 || ((w = layoutNode.w()) != null && w.M() && layoutNodeLayoutDelegate.p.D))) {
                    if (layoutNode == layoutNode2) {
                        if (layoutNode.L == LayoutNode.UsageByParent.l) {
                            layoutNode.f();
                        }
                        LayoutNode w2 = layoutNode.w();
                        if (w2 == null || (innerNodeCoordinator = w2.O.c) == null || (placementScope = innerNodeCoordinator.y) == null) {
                            placementScope = LayoutNodeKt.a(layoutNode).getPlacementScope();
                        }
                        Placeable.PlacementScope.j(placementScope, layoutNodeLayoutDelegate.p, 0, 0);
                    } else {
                        layoutNode.V();
                    }
                    OnPositionedDispatcher onPositionedDispatcher = measureAndLayoutDelegate.e;
                    onPositionedDispatcher.getClass();
                    if (layoutNode.Y > 0) {
                        onPositionedDispatcher.a.b(layoutNode);
                        layoutNode.X = true;
                    }
                }
                z4 = z2;
            }
            measureAndLayoutDelegate.e();
        }
        return z4;
    }

    public static boolean c(LayoutNode layoutNode, Constraints constraints) {
        Constraints constraints2;
        boolean G0;
        LayoutNode layoutNode2 = layoutNode.q;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
        if (layoutNode2 == null) {
            return false;
        }
        if (constraints != null) {
            if (layoutNode2 != null) {
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                lookaheadPassDelegate.getClass();
                G0 = lookaheadPassDelegate.G0(constraints.a);
            }
            G0 = false;
        } else {
            LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate2 != null) {
                constraints2 = lookaheadPassDelegate2.w;
            } else {
                constraints2 = null;
            }
            if (constraints2 != null && layoutNode2 != null) {
                lookaheadPassDelegate2.getClass();
                G0 = lookaheadPassDelegate2.G0(constraints2.a);
            }
            G0 = false;
        }
        LayoutNode w = layoutNode.w();
        if (G0 && w != null) {
            if (w.q == null) {
                LayoutNode.Z(w, false, 3);
                return G0;
            }
            if (layoutNode.t() == LayoutNode.UsageByParent.j) {
                LayoutNode.X(w, false, 3);
                return G0;
            }
            if (layoutNode.t() == LayoutNode.UsageByParent.k) {
                w.W(false);
            }
        }
        return G0;
    }

    public static boolean d(LayoutNode layoutNode, Constraints constraints) {
        Constraints constraints2;
        boolean z;
        if (constraints != null) {
            if (layoutNode.L == LayoutNode.UsageByParent.l) {
                layoutNode.e();
            }
            z = layoutNode.P.p.G0(constraints.a);
        } else {
            MeasurePassDelegate measurePassDelegate = layoutNode.P.p;
            if (measurePassDelegate.s) {
                constraints2 = new Constraints(measurePassDelegate.m);
            } else {
                constraints2 = null;
            }
            if (constraints2 != null) {
                if (layoutNode.L == LayoutNode.UsageByParent.l) {
                    layoutNode.e();
                }
                z = layoutNode.P.p.G0(constraints2.a);
            } else {
                layoutNode.getClass();
                z = false;
            }
        }
        LayoutNode w = layoutNode.w();
        if (z && w != null) {
            if (layoutNode.s() == LayoutNode.UsageByParent.j) {
                LayoutNode.Z(w, false, 3);
                return z;
            }
            if (layoutNode.s() == LayoutNode.UsageByParent.k) {
                w.Y(false);
            }
        }
        return z;
    }

    public static boolean i(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        if (layoutNode.P.e) {
            if (layoutNode.t() != LayoutNode.UsageByParent.l || ((lookaheadPassDelegate = layoutNode.P.q) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.B) != null && lookaheadAlignmentLines.f())) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean j(LayoutNode layoutNode) {
        LayoutNode.LayoutState layoutState;
        if (!layoutNode.r()) {
            return false;
        }
        do {
            if (layoutNode.s() == LayoutNode.UsageByParent.l && !layoutNode.P.p.H.f()) {
                LayoutNode w = layoutNode.w();
                if (w != null) {
                    layoutState = w.P.d;
                } else {
                    layoutState = null;
                }
                if (layoutState != LayoutNode.LayoutState.j) {
                    return false;
                }
            }
            layoutNode = layoutNode.w();
            if (layoutNode == null) {
                return false;
            }
        } while (!layoutNode.M());
        return true;
    }

    public static boolean k(LayoutNode layoutNode) {
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
        if (layoutNode.M() || layoutNodeLayoutDelegate.p.D || j(layoutNode) || Intrinsics.a(layoutNode.N(), Boolean.TRUE) || i(layoutNode) || layoutNodeLayoutDelegate.p.H.f() || ((lookaheadPassDelegate = layoutNodeLayoutDelegate.q) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.B) != null && lookaheadAlignmentLines.f())) {
            return true;
        }
        return false;
    }

    public final void b(boolean z) {
        OnPositionedDispatcher onPositionedDispatcher = this.e;
        if (z) {
            MutableVector mutableVector = onPositionedDispatcher.a;
            LayoutNode layoutNode = this.a;
            if (layoutNode.Y > 0) {
                mutableVector.g();
                mutableVector.b(layoutNode);
                layoutNode.X = true;
            }
        }
        if (onPositionedDispatcher.a.l != 0) {
            Trace.beginSection("Compose:onPositionedCallbacks");
            try {
                onPositionedDispatcher.a();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void e() {
        MutableVector mutableVector = this.h;
        int i = mutableVector.l;
        if (i != 0) {
            Object[] objArr = mutableVector.j;
            for (int i2 = 0; i2 < i; i2++) {
                PostponedRequest postponedRequest = (PostponedRequest) objArr[i2];
                if (postponedRequest.a.L()) {
                    boolean z = postponedRequest.b;
                    LayoutNode layoutNode = postponedRequest.a;
                    boolean z2 = postponedRequest.c;
                    if (!z) {
                        LayoutNode.Z(layoutNode, z2, 2);
                    } else {
                        LayoutNode.X(layoutNode, z2, 2);
                    }
                }
            }
            mutableVector.g();
        }
    }

    public final void f(LayoutNode layoutNode) {
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (Intrinsics.a(layoutNode2.N(), Boolean.TRUE) && !layoutNode2.Z) {
                if (this.b.b(layoutNode2)) {
                    layoutNode2.O();
                }
                f(layoutNode2);
            }
        }
    }

    public final void g(LayoutNode layoutNode, boolean z) {
        boolean r;
        if (!this.c) {
            InlineClassHelperKt.b("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (z) {
            r = layoutNode.P.e;
        } else {
            r = layoutNode.r();
        }
        if (r) {
            InlineClassHelperKt.a("node not yet measured");
        }
        h(layoutNode, z);
    }

    public final void h(LayoutNode layoutNode, boolean z) {
        boolean r;
        LookaheadPassDelegate lookaheadPassDelegate;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        boolean r2;
        boolean r3;
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if ((!z && (layoutNode2.s() == LayoutNode.UsageByParent.j || layoutNode2.P.p.H.f())) || (z && (layoutNode2.t() == LayoutNode.UsageByParent.j || ((lookaheadPassDelegate = layoutNode2.P.q) != null && (lookaheadAlignmentLines = lookaheadPassDelegate.B) != null && lookaheadAlignmentLines.f())))) {
                boolean a = LayoutNodeLayoutDelegateKt.a(layoutNode2);
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.P;
                if (a && !z) {
                    if (layoutNodeLayoutDelegate.e && this.b.b(layoutNode2)) {
                        o(layoutNode2, true);
                    } else {
                        g(layoutNode2, true);
                    }
                }
                if (z) {
                    r2 = layoutNodeLayoutDelegate.e;
                } else {
                    r2 = layoutNode2.r();
                }
                if (r2) {
                    o(layoutNode2, z);
                }
                if (z) {
                    r3 = layoutNodeLayoutDelegate.e;
                } else {
                    r3 = layoutNode2.r();
                }
                if (!r3) {
                    h(layoutNode2, z);
                }
            }
        }
        if (z) {
            r = layoutNode.P.e;
        } else {
            r = layoutNode.r();
        }
        if (r) {
            o(layoutNode, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [int] */
    /* JADX WARN: Type inference failed for: r15v4 */
    public final boolean l(Function0 function0) {
        boolean z;
        Modifier.Node node;
        Modifier.Node node2;
        boolean z2;
        LayoutNode layoutNode;
        boolean z3;
        boolean o;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.b;
        LayoutNode layoutNode2 = this.a;
        if (!layoutNode2.L()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.M()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.c) {
            InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
        }
        boolean z4 = false;
        if (this.i != null) {
            this.c = true;
            this.d = true;
            try {
                boolean c = depthSortedSetsForDifferentPasses.c();
                DepthSortedSet depthSortedSet = depthSortedSetsForDifferentPasses.a;
                if (c) {
                    z = false;
                    while (true) {
                        DepthSortedSet depthSortedSet2 = depthSortedSetsForDifferentPasses.c;
                        DepthSortedSet depthSortedSet3 = depthSortedSetsForDifferentPasses.b;
                        if (!depthSortedSet.a.isEmpty()) {
                            layoutNode = (LayoutNode) depthSortedSet.a.first();
                            depthSortedSet.b(layoutNode);
                            if (layoutNode.q != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            z2 = false;
                        } else if (!depthSortedSet3.a.isEmpty()) {
                            layoutNode = (LayoutNode) depthSortedSet3.a.first();
                            depthSortedSet3.b(layoutNode);
                            if (layoutNode.q != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            z2 = true;
                        } else {
                            if (depthSortedSet2.a.isEmpty()) {
                                break;
                            }
                            LayoutNode layoutNode3 = (LayoutNode) depthSortedSet2.a.first();
                            depthSortedSet2.b(layoutNode3);
                            z2 = true;
                            layoutNode = layoutNode3;
                            z3 = false;
                        }
                        if (z2) {
                            o = a(this, layoutNode, z3);
                        } else {
                            o = o(layoutNode, z3);
                            if (layoutNode.P.f) {
                                depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.k);
                            }
                            if (layoutNode.q()) {
                                depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.m);
                            }
                        }
                        if (layoutNode == layoutNode2 && o) {
                            z = true;
                        }
                    }
                    if (function0 != null) {
                        function0.a();
                    }
                } else {
                    z = false;
                }
            } finally {
            }
        } else {
            z = false;
        }
        MutableVector mutableVector = this.f;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        int i2 = 0;
        while (i2 < i) {
            NodeChain nodeChain = ((LayoutNode) ((Owner.OnLayoutCompletedListener) objArr[i2])).O;
            InnerNodeCoordinator innerNodeCoordinator = nodeChain.c;
            boolean g = NodeKindKt.g(4194304);
            if (g) {
                node = innerNodeCoordinator.l0;
            } else {
                node = innerNodeCoordinator.l0.n;
                if (node == null) {
                    i2++;
                    z4 = false;
                }
            }
            la laVar = NodeCoordinator.e0;
            Modifier.Node g1 = innerNodeCoordinator.g1(g);
            while (g1 != null && (g1.m & 4194304) != 0) {
                if ((g1.l & 4194304) != 0) {
                    DelegatingNode delegatingNode = g1;
                    MutableVector mutableVector2 = null;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof LayoutAwareModifierNode) {
                            ((LayoutAwareModifierNode) delegatingNode).C(nodeChain.c);
                        } else if ((delegatingNode.l & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node3 = delegatingNode.y;
                            ?? r15 = z4;
                            node2 = delegatingNode;
                            mutableVector2 = mutableVector2;
                            while (node3 != null) {
                                if ((node3.l & 4194304) != 0) {
                                    r15++;
                                    mutableVector2 = mutableVector2;
                                    if (r15 == 1) {
                                        node2 = node3;
                                    } else {
                                        if (mutableVector2 == null) {
                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node2 != null) {
                                            mutableVector2.b(node2);
                                            node2 = null;
                                        }
                                        mutableVector2.b(node3);
                                    }
                                }
                                node3 = node3.o;
                                node2 = node2;
                                mutableVector2 = mutableVector2;
                                r15 = r15;
                            }
                            if (r15 == 1) {
                                z4 = false;
                                delegatingNode = node2;
                                mutableVector2 = mutableVector2;
                            }
                        }
                        node2 = DelegatableNodeKt.b(mutableVector2);
                        z4 = false;
                        delegatingNode = node2;
                        mutableVector2 = mutableVector2;
                    }
                }
                if (g1 != node) {
                    g1 = g1.o;
                    z4 = false;
                }
            }
            i2++;
            z4 = false;
        }
        mutableVector.g();
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void m(LayoutNode layoutNode, long j) {
        Modifier.Node node;
        if (layoutNode.Z) {
            return;
        }
        LayoutNode layoutNode2 = this.a;
        if (layoutNode == layoutNode2) {
            InlineClassHelperKt.a("measureAndLayout called on root");
        }
        if (!layoutNode2.L()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
        }
        if (!layoutNode2.M()) {
            InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
        }
        if (this.c) {
            InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
        }
        if (this.i != null) {
            this.c = true;
            this.d = false;
            try {
                DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.b;
                depthSortedSetsForDifferentPasses.a.b(layoutNode);
                depthSortedSetsForDifferentPasses.b.b(layoutNode);
                depthSortedSetsForDifferentPasses.c.b(layoutNode);
                if ((c(layoutNode, new Constraints(j)) || layoutNode.P.f) && Intrinsics.a(layoutNode.N(), Boolean.TRUE)) {
                    layoutNode.O();
                }
                f(layoutNode);
                d(layoutNode, new Constraints(j));
                if (layoutNode.q() && layoutNode.M()) {
                    layoutNode.V();
                    OnPositionedDispatcher onPositionedDispatcher = this.e;
                    onPositionedDispatcher.getClass();
                    if (layoutNode.Y > 0) {
                        onPositionedDispatcher.a.b(layoutNode);
                        layoutNode.X = true;
                    }
                }
                e();
            } finally {
            }
        }
        MutableVector mutableVector = this.f;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            NodeChain nodeChain = ((LayoutNode) ((Owner.OnLayoutCompletedListener) objArr[i2])).O;
            InnerNodeCoordinator innerNodeCoordinator = nodeChain.c;
            boolean g = NodeKindKt.g(4194304);
            if (g) {
                node = innerNodeCoordinator.l0;
            } else {
                node = innerNodeCoordinator.l0.n;
                if (node == null) {
                }
            }
            la laVar = NodeCoordinator.e0;
            for (Modifier.Node g1 = innerNodeCoordinator.g1(g); g1 != null && (g1.m & 4194304) != 0; g1 = g1.o) {
                if ((g1.l & 4194304) != 0) {
                    DelegatingNode delegatingNode = g1;
                    ?? r8 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof LayoutAwareModifierNode) {
                            ((LayoutAwareModifierNode) delegatingNode).C(nodeChain.c);
                        } else if ((delegatingNode.l & 4194304) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node2 = delegatingNode.y;
                            int i3 = 0;
                            delegatingNode = delegatingNode;
                            r8 = r8;
                            while (node2 != null) {
                                if ((node2.l & 4194304) != 0) {
                                    i3++;
                                    r8 = r8;
                                    if (i3 == 1) {
                                        delegatingNode = node2;
                                    } else {
                                        if (r8 == 0) {
                                            r8 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r8.b(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r8.b(node2);
                                    }
                                }
                                node2 = node2.o;
                                delegatingNode = delegatingNode;
                                r8 = r8;
                            }
                            if (i3 == 1) {
                            }
                        }
                        delegatingNode = DelegatableNodeKt.b(r8);
                    }
                }
                if (g1 != node) {
                }
            }
        }
        mutableVector.g();
    }

    public final void n() {
        boolean z;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.b;
        if (depthSortedSetsForDifferentPasses.c()) {
            LayoutNode layoutNode = this.a;
            if (!layoutNode.L()) {
                InlineClassHelperKt.a("performMeasureAndLayout called with unattached root");
            }
            if (!layoutNode.M()) {
                InlineClassHelperKt.a("performMeasureAndLayout called with unplaced root");
            }
            if (this.c) {
                InlineClassHelperKt.a("performMeasureAndLayout called during measure layout");
            }
            if (this.i != null) {
                this.c = true;
                this.d = false;
                try {
                    if (!depthSortedSetsForDifferentPasses.c.a.isEmpty() && !depthSortedSetsForDifferentPasses.a.a.isEmpty()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        if (layoutNode.q != null) {
                            q(layoutNode, true);
                        } else {
                            p(layoutNode);
                        }
                    }
                    q(layoutNode, false);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                        this.c = false;
                        this.d = false;
                    }
                }
            }
        }
    }

    public final boolean o(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        boolean z2 = false;
        if (!layoutNode.Z && k(layoutNode)) {
            if (layoutNode == this.a) {
                constraints = this.i;
                constraints.getClass();
            } else {
                constraints = null;
            }
            if (z) {
                if (layoutNode.P.e) {
                    z2 = c(layoutNode, constraints);
                }
            } else if (layoutNode.r()) {
                z2 = d(layoutNode, constraints);
            }
            e();
        }
        return z2;
    }

    public final void p(LayoutNode layoutNode) {
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.s() == LayoutNode.UsageByParent.j || layoutNode2.P.p.H.f()) {
                if (LayoutNodeLayoutDelegateKt.a(layoutNode2)) {
                    q(layoutNode2, true);
                } else {
                    p(layoutNode2);
                }
            }
        }
    }

    public final void q(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        if (layoutNode.Z) {
            return;
        }
        if (layoutNode == this.a) {
            constraints = this.i;
            constraints.getClass();
        } else {
            constraints = null;
        }
        if (z) {
            c(layoutNode, constraints);
        } else {
            d(layoutNode, constraints);
        }
    }

    public final boolean r(LayoutNode layoutNode, boolean z) {
        int ordinal = layoutNode.P.d.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal != 2 && ordinal != 3) {
                if (ordinal == 4) {
                    if (!layoutNode.r() || z) {
                        layoutNode.P.p.E = true;
                        if (!layoutNode.Z && (layoutNode.M() || j(layoutNode))) {
                            LayoutNode w = layoutNode.w();
                            if (w == null || !w.r()) {
                                this.b.a(layoutNode, Invalidation.l);
                            }
                            if (!this.d) {
                                return true;
                            }
                        }
                    }
                } else {
                    k8.e();
                    return false;
                }
            } else {
                this.h.b(new PostponedRequest(layoutNode, false, z));
            }
        }
        return false;
    }

    public final void s(long j) {
        boolean b;
        Invalidation invalidation;
        Constraints constraints = this.i;
        if (constraints == null) {
            b = false;
        } else {
            b = Constraints.b(constraints.a, j);
        }
        if (!b) {
            if (this.c) {
                InlineClassHelperKt.a("updateRootConstraints called while measuring");
            }
            this.i = new Constraints(j);
            LayoutNode layoutNode = this.a;
            boolean L = layoutNode.L();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
            if (L) {
                LayoutNode layoutNode2 = layoutNode.q;
                if (layoutNode2 != null) {
                    layoutNodeLayoutDelegate.e = true;
                }
                layoutNodeLayoutDelegate.p.E = true;
                if (layoutNode2 != null) {
                    invalidation = Invalidation.j;
                } else {
                    invalidation = Invalidation.l;
                }
                this.b.a(layoutNode, invalidation);
            }
        }
    }
}
