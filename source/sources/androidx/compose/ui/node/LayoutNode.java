package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.ui.CombinedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import defpackage.f7;
import defpackage.k8;
import defpackage.la;
import defpackage.m2;
import defpackage.ma;
import defpackage.n2;
import defpackage.p0;
import defpackage.q;
import defpackage.r1;
import defpackage.u2;
import defpackage.v1;
import defpackage.x9;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNode implements ComposeNodeLifecycleCallback, Remeasurement, OwnerScope, SemanticsInfo, ComposeUiNode, Owner.OnLayoutCompletedListener {
    public static final LayoutNode$Companion$ErrorMeasurePolicy$1 a0 = new NoIntrinsicsMeasurePolicy("Undefined intrinsics block and it is required");
    public static final x9 b0 = new x9(8);
    public static final LayoutNode$Companion$DummyViewConfiguration$1 c0 = new Object();
    public static final v1 d0 = new v1(5);
    public boolean A;
    public SemanticsConfiguration B;
    public boolean C;
    public final MutableVector D;
    public boolean E;
    public MeasurePolicy F;
    public IntrinsicsPolicy G;
    public Density H;
    public LayoutDirection I;
    public ViewConfiguration J;
    public CompositionLocalMap K;
    public UsageByParent L;
    public UsageByParent M;
    public boolean N;
    public final NodeChain O;
    public final LayoutNodeLayoutDelegate P;
    public LayoutNodeSubcompositionsState Q;
    public NodeCoordinator R;
    public boolean S;
    public Modifier T;
    public Modifier U;
    public n2 V;
    public m2 W;
    public boolean X;
    public int Y;
    public boolean Z;
    public final boolean j;
    public int k;
    public boolean l;
    public long m;
    public boolean n;
    public boolean o;
    public int p;
    public LayoutNode q;
    public int r;
    public final MutableVectorWithMutationTracking s;
    public MutableVector t;
    public boolean u;
    public LayoutNode v;
    public Owner w;
    public ViewFactoryHolder x;
    public int y;
    public boolean z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LayoutState {
        public static final LayoutState j;
        public static final LayoutState k;
        public static final LayoutState l;
        public static final LayoutState m;
        public static final LayoutState n;
        public static final /* synthetic */ LayoutState[] o;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.LayoutNode$LayoutState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.LayoutNode$LayoutState] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.node.LayoutNode$LayoutState] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.ui.node.LayoutNode$LayoutState] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.compose.ui.node.LayoutNode$LayoutState] */
        static {
            ?? r0 = new Enum("Measuring", 0);
            j = r0;
            ?? r1 = new Enum("LookaheadMeasuring", 1);
            k = r1;
            ?? r2 = new Enum("LayingOut", 2);
            l = r2;
            ?? r3 = new Enum("LookaheadLayingOut", 3);
            m = r3;
            ?? r4 = new Enum("Idle", 4);
            n = r4;
            LayoutState[] layoutStateArr = {r0, r1, r2, r3, r4};
            o = layoutStateArr;
            EnumEntriesKt.a(layoutStateArr);
        }

        public static LayoutState valueOf(String str) {
            return (LayoutState) Enum.valueOf(LayoutState.class, str);
        }

        public static LayoutState[] values() {
            return (LayoutState[]) o.clone();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {
        public final String a;

        public NoIntrinsicsMeasurePolicy(String str) {
            this.a = str;
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.a.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.a.toString());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UsageByParent {
        public static final UsageByParent j;
        public static final UsageByParent k;
        public static final UsageByParent l;
        public static final /* synthetic */ UsageByParent[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.node.LayoutNode$UsageByParent, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.node.LayoutNode$UsageByParent, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.node.LayoutNode$UsageByParent, java.lang.Enum] */
        static {
            ?? r0 = new Enum("InMeasureBlock", 0);
            j = r0;
            ?? r1 = new Enum("InLayoutBlock", 1);
            k = r1;
            ?? r2 = new Enum("NotUsed", 2);
            l = r2;
            UsageByParent[] usageByParentArr = {r0, r1, r2};
            m = usageByParentArr;
            EnumEntriesKt.a(usageByParentArr);
        }

        public static UsageByParent valueOf(String str) {
            return (UsageByParent) Enum.valueOf(UsageByParent.class, str);
        }

        public static UsageByParent[] values() {
            return (UsageByParent[]) m.clone();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LayoutState.values().length];
            try {
                LayoutState layoutState = LayoutState.j;
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public LayoutNode(int i, boolean z) {
        this.j = z;
        this.k = i;
        this.m = 9223372034707292159L;
        this.n = true;
        this.o = true;
        this.p = -4;
        this.s = new MutableVectorWithMutationTracking(new MutableVector(new LayoutNode[16]), new r1(25, this));
        this.D = new MutableVector(new LayoutNode[16]);
        this.E = true;
        this.F = a0;
        this.H = LayoutNodeKt.a;
        this.I = LayoutDirection.j;
        this.J = c0;
        CompositionLocalMap.a.getClass();
        this.K = CompositionLocalMap.Companion.b;
        UsageByParent usageByParent = UsageByParent.l;
        this.L = usageByParent;
        this.M = usageByParent;
        this.O = new NodeChain(this);
        this.P = new LayoutNodeLayoutDelegate(this);
        this.S = true;
        this.T = Modifier.Companion.b;
    }

    public static void X(LayoutNode layoutNode, boolean z, int i) {
        boolean z2;
        LayoutNode w;
        boolean z3 = false;
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = true;
        }
        if (layoutNode.q == null) {
            InlineClassHelperKt.b("Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope");
        }
        Owner owner = layoutNode.w;
        if (owner != null && !layoutNode.z && !layoutNode.j) {
            ((AndroidComposeView) owner).w(layoutNode, true, z, z2);
            if (z3) {
                LookaheadPassDelegate lookaheadPassDelegate = layoutNode.P.q;
                lookaheadPassDelegate.getClass();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.o;
                LayoutNode w2 = layoutNodeLayoutDelegate.a.w();
                UsageByParent usageByParent = layoutNodeLayoutDelegate.a.L;
                if (w2 != null && usageByParent != UsageByParent.l) {
                    while (w2.L == usageByParent && (w = w2.w()) != null) {
                        w2 = w;
                    }
                    int ordinal = usageByParent.ordinal();
                    if (ordinal != 0) {
                        if (ordinal == 1) {
                            if (w2.q != null) {
                                w2.W(z);
                                return;
                            } else {
                                w2.Y(z);
                                return;
                            }
                        }
                        u2.l("Intrinsics isn't used by the parent");
                        return;
                    }
                    if (w2.q != null) {
                        X(w2, z, 6);
                    } else {
                        Z(w2, z, 6);
                    }
                }
            }
        }
    }

    public static void Z(LayoutNode layoutNode, boolean z, int i) {
        boolean z2;
        boolean z3;
        Owner owner;
        LayoutNode w;
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!layoutNode.z && !layoutNode.j && (owner = layoutNode.w) != null) {
            ((AndroidComposeView) owner).w(layoutNode, false, z, z2);
            if (z3) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P.p.o;
                LayoutNode w2 = layoutNodeLayoutDelegate.a.w();
                UsageByParent usageByParent = layoutNodeLayoutDelegate.a.L;
                if (w2 != null && usageByParent != UsageByParent.l) {
                    while (w2.L == usageByParent && (w = w2.w()) != null) {
                        w2 = w;
                    }
                    int ordinal = usageByParent.ordinal();
                    if (ordinal != 0) {
                        if (ordinal == 1) {
                            w2.Y(z);
                            return;
                        } else {
                            u2.l("Intrinsics isn't used by the parent");
                            return;
                        }
                    }
                    Z(w2, z, 6);
                }
            }
        }
    }

    public static void a0(LayoutNode layoutNode) {
        int i = WhenMappings.a[layoutNode.P.d.ordinal()];
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
        if (i == 1) {
            if (layoutNodeLayoutDelegate.e) {
                X(layoutNode, true, 6);
                return;
            }
            if (layoutNodeLayoutDelegate.f) {
                layoutNode.W(true);
            }
            if (layoutNode.r()) {
                Z(layoutNode, true, 6);
                return;
            } else {
                if (layoutNode.q()) {
                    layoutNode.Y(true);
                    return;
                }
                return;
            }
        }
        k8.p(layoutNodeLayoutDelegate.d, "Unexpected state ");
    }

    private final String j(LayoutNode layoutNode) {
        String str;
        String g = g(0);
        LayoutNode layoutNode2 = layoutNode.v;
        if (layoutNode2 != null) {
            str = layoutNode2.g(0);
        } else {
            str = null;
        }
        return "Cannot insert " + layoutNode + " because it already has a parent or an owner. This tree: " + g + " Other tree: " + str;
    }

    public final int A() {
        return this.P.p.j;
    }

    public final float B() {
        return this.P.p.O;
    }

    public final MutableVector C() {
        boolean z = this.E;
        MutableVector mutableVector = this.D;
        if (z) {
            mutableVector.g();
            mutableVector.c(mutableVector.l, D());
            mutableVector.n(d0);
            this.E = false;
        }
        return mutableVector;
    }

    public final MutableVector D() {
        j0();
        if (this.r == 0) {
            return this.s.a;
        }
        MutableVector mutableVector = this.t;
        mutableVector.getClass();
        return mutableVector;
    }

    public final void E(long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeChain nodeChain = this.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        la laVar = NodeCoordinator.e0;
        nodeChain.d.j1(NodeCoordinator.j0, nodeCoordinator.a1(j), hitTestResult, i, z);
    }

    public final void F(int i, LayoutNode layoutNode) {
        if (layoutNode.v != null && layoutNode.w != null) {
            InlineClassHelperKt.b(j(layoutNode));
        }
        layoutNode.v = this;
        MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.s;
        mutableVectorWithMutationTracking.a.a(i, layoutNode);
        mutableVectorWithMutationTracking.b.a();
        S();
        if (layoutNode.j) {
            this.r++;
        }
        K();
        Owner owner = this.w;
        if (owner != null) {
            layoutNode.d(owner);
        }
        if (layoutNode.P.l > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
            layoutNodeLayoutDelegate.d(layoutNodeLayoutDelegate.l + 1);
        }
        if (layoutNode.Y > 0) {
            e0(this.Y + 1);
        }
    }

    public final void G() {
        OwnedLayer ownedLayer;
        if (this.S) {
            NodeChain nodeChain = this.O;
            NodeCoordinator nodeCoordinator = nodeChain.c;
            NodeCoordinator nodeCoordinator2 = nodeChain.d.F;
            this.R = null;
            while (true) {
                if (Intrinsics.a(nodeCoordinator, nodeCoordinator2)) {
                    break;
                }
                if (nodeCoordinator != null) {
                    ownedLayer = nodeCoordinator.c0;
                } else {
                    ownedLayer = null;
                }
                if (ownedLayer != null) {
                    this.R = nodeCoordinator;
                    break;
                } else if (nodeCoordinator != null) {
                    nodeCoordinator = nodeCoordinator.F;
                } else {
                    nodeCoordinator = null;
                }
            }
            this.S = false;
        }
        NodeCoordinator nodeCoordinator3 = this.R;
        if (nodeCoordinator3 != null && nodeCoordinator3.c0 == null) {
            throw q.p("layer was not set. This error is usually caused by operating off of the UI thread. Did you call invalidate() instead of postInvalidate()?");
        }
        if (nodeCoordinator3 != null) {
            nodeCoordinator3.l1();
            return;
        }
        LayoutNode w = w();
        if (w != null) {
            w.G();
            return;
        }
        Owner owner = this.w;
        if (owner != null) {
            ((AndroidComposeView) owner).invalidate();
        }
    }

    public final void H() {
        NodeChain nodeChain = this.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.c;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            OwnedLayer ownedLayer = layoutModifierNodeCoordinator.c0;
            if (ownedLayer != null) {
                ((GraphicsLayerOwnerLayer) ownedLayer).c();
            }
            nodeCoordinator = layoutModifierNodeCoordinator.E;
        }
        OwnedLayer ownedLayer2 = nodeChain.c.c0;
        if (ownedLayer2 != null) {
            ((GraphicsLayerOwnerLayer) ownedLayer2).c();
        }
    }

    public final void I() {
        if (this.j) {
            LayoutNode w = w();
            if (w != null) {
                w.I();
                return;
            }
            return;
        }
        if (this.q != null) {
            X(this, false, 7);
        } else {
            Z(this, false, 7);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void J() {
        if (this.C) {
            return;
        }
        if (this.O.b.o != null || this.U != null) {
            this.A = true;
            return;
        }
        SemanticsConfiguration semanticsConfiguration = this.B;
        this.C = true;
        ?? obj = new Object();
        obj.j = new SemanticsConfiguration();
        OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(this).getSnapshotObserver();
        p0 p0Var = new p0(21, this, (Object) obj);
        snapshotObserver.a.e(this, snapshotObserver.d, p0Var);
        this.C = false;
        this.B = (SemanticsConfiguration) obj.j;
        this.A = false;
        Owner a = LayoutNodeKt.a(this);
        a.getSemanticsOwner().b(this, semanticsConfiguration);
        ((AndroidComposeView) a).y();
    }

    public final void K() {
        LayoutNode layoutNode;
        if (this.r > 0) {
            this.u = true;
        }
        if (this.j && (layoutNode = this.v) != null) {
            layoutNode.K();
        }
    }

    public final boolean L() {
        if (this.w != null) {
            return true;
        }
        return false;
    }

    public final boolean M() {
        return this.P.p.C;
    }

    public final Boolean N() {
        boolean z;
        LookaheadPassDelegate lookaheadPassDelegate = this.P.q;
        if (lookaheadPassDelegate != null) {
            if (lookaheadPassDelegate.A != LookaheadPassDelegate.PlacedState.l) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        return null;
    }

    public final void O() {
        LayoutNode w;
        if (this.L == UsageByParent.l) {
            f();
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.P.q;
        lookaheadPassDelegate.getClass();
        boolean z = true;
        try {
            lookaheadPassDelegate.p = true;
            if (!lookaheadPassDelegate.u) {
                InlineClassHelperKt.b("replace() called on item that was not placed");
            }
            lookaheadPassDelegate.L = false;
            if (lookaheadPassDelegate.A == LookaheadPassDelegate.PlacedState.l) {
                z = false;
            }
            lookaheadPassDelegate.F0(lookaheadPassDelegate.x, lookaheadPassDelegate.y, lookaheadPassDelegate.z);
            if (z && !lookaheadPassDelegate.L && (w = lookaheadPassDelegate.o.a.w()) != null) {
                w.W(false);
            }
            lookaheadPassDelegate.p = false;
        } catch (Throwable th) {
            lookaheadPassDelegate.p = false;
            throw th;
        }
    }

    public final void P(int i, int i2, int i3) {
        int i4;
        if (i == i2) {
            return;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            if (i > i2) {
                i4 = i + i5;
            } else {
                i4 = i;
            }
            int i6 = i > i2 ? i2 + i5 : (i2 + i3) - 2;
            MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.s;
            MutableVector mutableVector = mutableVectorWithMutationTracking.a;
            r1 r1Var = mutableVectorWithMutationTracking.b;
            Object k = mutableVector.k(i4);
            r1Var.a();
            mutableVectorWithMutationTracking.a.a(i6, (LayoutNode) k);
            r1Var.a();
        }
        S();
        K();
        I();
    }

    public final void Q(LayoutNode layoutNode) {
        if (layoutNode.P.l > 0) {
            this.P.d(r0.l - 1);
        }
        if (this.w != null) {
            layoutNode.h();
        }
        layoutNode.v = null;
        if (layoutNode.Y > 0) {
            e0(this.Y - 1);
        }
        layoutNode.O.d.F = null;
        if (layoutNode.j) {
            this.r--;
            MutableVector mutableVector = layoutNode.s.a;
            Object[] objArr = mutableVector.j;
            int i = mutableVector.l;
            for (int i2 = 0; i2 < i; i2++) {
                ((LayoutNode) objArr[i2]).O.d.F = null;
            }
        }
        K();
        S();
    }

    public final void R(NodeCoordinator nodeCoordinator) {
        RectManager rectManager;
        boolean z;
        Owner owner = this.w;
        if (owner != null) {
            rectManager = owner.getRectManager();
        } else {
            rectManager = null;
        }
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
        if (layoutNodeLayoutDelegate.d == LayoutState.n && !r() && !q()) {
            z = false;
        } else {
            z = true;
        }
        if (this.p != -4 && rectManager != null) {
            if (nodeCoordinator == this.O.d) {
                this.o = true;
                if (!z) {
                    rectManager.h(this);
                }
            } else {
                this.n = true;
                MutableVector D = D();
                Object[] objArr = D.j;
                int i = D.l;
                for (int i2 = 0; i2 < i; i2++) {
                    LayoutNode layoutNode = (LayoutNode) objArr[i2];
                    layoutNode.o = true;
                    if (!z) {
                        rectManager.h(layoutNode);
                    }
                }
                if (this.p != -4) {
                    rectManager.f = true;
                    int e = rectManager.e(this);
                    long[] jArr = rectManager.c.a;
                    int i3 = e + 2;
                    long j = jArr[i3];
                    jArr[i3] = j | (((j >> 63) & 1) << 60);
                }
                rectManager.k();
            }
        }
        layoutNodeLayoutDelegate.p.J0();
    }

    public final void S() {
        if (this.j) {
            LayoutNode w = w();
            if (w != null) {
                w.S();
                return;
            }
            return;
        }
        this.E = true;
    }

    public final void T() {
        MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.s;
        int i = mutableVectorWithMutationTracking.a.l;
        while (true) {
            i--;
            MutableVector mutableVector = mutableVectorWithMutationTracking.a;
            if (-1 < i) {
                Q((LayoutNode) mutableVector.j[i]);
            } else {
                mutableVector.g();
                mutableVectorWithMutationTracking.b.a();
                return;
            }
        }
    }

    public final void U(int i, int i2) {
        if (i2 < 0) {
            InlineClassHelperKt.a("count (" + i2 + ") must be greater than 0");
        }
        int i3 = (i2 + i) - 1;
        if (i > i3) {
            return;
        }
        while (true) {
            MutableVectorWithMutationTracking mutableVectorWithMutationTracking = this.s;
            Q((LayoutNode) mutableVectorWithMutationTracking.a.j[i3]);
            Object k = mutableVectorWithMutationTracking.a.k(i3);
            mutableVectorWithMutationTracking.b.a();
            if (i3 != i) {
                i3--;
            } else {
                return;
            }
        }
    }

    public final void V() {
        LayoutNode w;
        if (this.L == UsageByParent.l) {
            f();
        }
        MeasurePassDelegate measurePassDelegate = this.P.p;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.o;
        try {
            measurePassDelegate.p = true;
            if (!measurePassDelegate.t) {
                InlineClassHelperKt.b("replace called on unplaced item");
            }
            boolean z = measurePassDelegate.C;
            measurePassDelegate.E0(measurePassDelegate.w, measurePassDelegate.z, measurePassDelegate.x, measurePassDelegate.y);
            if (z && !measurePassDelegate.P && (w = layoutNodeLayoutDelegate.a.w()) != null) {
                w.Y(false);
            }
        } finally {
        }
    }

    public final void W(boolean z) {
        Owner owner;
        if (!this.j && (owner = this.w) != null) {
            ((AndroidComposeView) owner).x(this, true, z);
        }
    }

    public final void Y(boolean z) {
        Owner owner;
        if (!this.j && (owner = this.w) != null) {
            ((AndroidComposeView) owner).x(this, false, z);
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        ViewFactoryHolder viewFactoryHolder = this.x;
        if (viewFactoryHolder != null) {
            viewFactoryHolder.a();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.Q;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.a();
        }
        NodeChain nodeChain = this.O;
        NodeCoordinator nodeCoordinator = nodeChain.c.E;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.a(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.E) {
            nodeCoordinator2.q1();
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void b() {
        AndroidAutofillManager autofillManager;
        ViewFactoryHolder viewFactoryHolder = this.x;
        if (viewFactoryHolder != null) {
            viewFactoryHolder.b();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.Q;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.i(true);
        }
        this.Z = true;
        Modifier.Node node = this.O.e;
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.n) {
            if (node2.w) {
                node2.T0();
            }
        }
        for (Modifier.Node node3 = node; node3 != null; node3 = node3.n) {
            if (node3.w) {
                node3.V0();
            }
        }
        while (node != null) {
            if (node.w) {
                node.P0();
            }
            node = node.n;
        }
        if (L()) {
            this.B = null;
            this.A = false;
        }
        Owner owner = this.w;
        if (owner != null && (autofillManager = ((AndroidComposeView) owner).getAutofillManager()) != null && autofillManager.q.f(this.k)) {
            autofillManager.j.b(autofillManager.l, this.k, false);
        }
    }

    public final void b0() {
        MutableVector D = D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            UsageByParent usageByParent = layoutNode.M;
            layoutNode.L = usageByParent;
            if (usageByParent != UsageByParent.l) {
                layoutNode.b0();
            }
        }
    }

    public final void c(Modifier modifier) {
        MutableObjectList mutableObjectList;
        int i;
        NodeChain nodeChain;
        boolean z;
        int i2;
        NodeChain nodeChain2;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$1;
        MutableObjectList mutableObjectList2;
        InnerNodeCoordinator innerNodeCoordinator;
        MutableObjectList mutableObjectList3;
        MutableObjectList mutableObjectList4;
        boolean z2;
        boolean z3;
        NodeChain nodeChain3;
        NodeChain nodeChain4 = this.O;
        boolean d = nodeChain4.d(16);
        Modifier.Node node = nodeChain4.e;
        boolean d2 = nodeChain4.d(1024);
        this.T = modifier;
        InnerNodeCoordinator innerNodeCoordinator2 = nodeChain4.c;
        LayoutNode layoutNode = nodeChain4.a;
        Modifier.Node node2 = nodeChain4.f;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$12 = nodeChain4.b;
        if (node2 == nodeChain$sentinelHead$12) {
            InlineClassHelperKt.b("padChain called on already padded chain");
        }
        Modifier.Node node3 = nodeChain4.f;
        node3.n = nodeChain$sentinelHead$12;
        nodeChain$sentinelHead$12.o = node3;
        MutableObjectList mutableObjectList5 = nodeChain4.g;
        int i3 = mutableObjectList5.b;
        LayoutNode layoutNode2 = layoutNode;
        for (LayoutNode w = layoutNode.w(); w != null; w = w.w()) {
            layoutNode2 = w;
        }
        NodeChain nodeChain5 = layoutNode2.O;
        MutableObjectList mutableObjectList6 = nodeChain5.h;
        if (mutableObjectList6 == null) {
            mutableObjectList6 = new MutableObjectList();
            nodeChain5.h = mutableObjectList6;
        }
        int i4 = mutableObjectList6.b - 1;
        if (i4 >= 0) {
            mutableObjectList = (MutableObjectList) mutableObjectList6.m(i4);
        } else {
            mutableObjectList = new MutableObjectList();
        }
        MutableObjectList mutableObjectList7 = nodeChain5.i;
        if (mutableObjectList7 == null) {
            mutableObjectList7 = new MutableObjectList();
        }
        boolean z4 = true;
        nodeChain5.i = null;
        mutableObjectList7.g(modifier);
        ma maVar = null;
        while (mutableObjectList7.e()) {
            Modifier modifier2 = (Modifier) mutableObjectList7.m(mutableObjectList7.b - 1);
            ma maVar2 = maVar;
            if (modifier2 instanceof CombinedModifier) {
                CombinedModifier combinedModifier = (CombinedModifier) modifier2;
                mutableObjectList7.g(combinedModifier.c);
                mutableObjectList7.g(combinedModifier.b);
            } else if (modifier2 instanceof Modifier.Element) {
                mutableObjectList.g(modifier2);
            } else {
                if (maVar2 == null) {
                    nodeChain3 = nodeChain4;
                    maVar = new ma(6, mutableObjectList);
                } else {
                    nodeChain3 = nodeChain4;
                    maVar = maVar2;
                }
                modifier2.f(maVar);
                nodeChain4 = nodeChain3;
            }
            maVar = maVar2;
            nodeChain3 = nodeChain4;
            nodeChain4 = nodeChain3;
        }
        NodeChain nodeChain6 = nodeChain4;
        int i5 = mutableObjectList.b;
        int i6 = 0;
        if (i5 == i3) {
            Modifier.Node node4 = nodeChain$sentinelHead$12.o;
            i = 0;
            while (node4 != null && i6 < i3) {
                Modifier.Element element = (Modifier.Element) mutableObjectList5.b(i6);
                Modifier.Element element2 = (Modifier.Element) mutableObjectList.b(i6);
                if (Intrinsics.a(element, element2)) {
                    mutableObjectList3 = mutableObjectList5;
                    mutableObjectList4 = mutableObjectList;
                    z3 = 2;
                } else {
                    mutableObjectList3 = mutableObjectList5;
                    mutableObjectList4 = mutableObjectList;
                    if (element.getClass() == element2.getClass()) {
                        z3 = z4;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    if (z3 == z4) {
                        NodeChain.h(element, element2, node4);
                    }
                    node4 = node4.o;
                    i6++;
                    mutableObjectList5 = mutableObjectList3;
                    mutableObjectList = mutableObjectList4;
                    z4 = true;
                } else {
                    node4 = node4.n;
                    break;
                }
            }
            mutableObjectList3 = mutableObjectList5;
            mutableObjectList4 = mutableObjectList;
            Modifier.Node node5 = node4;
            if (i6 < i3) {
                if (node5 != null) {
                    if (layoutNode.U != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    nodeChain2 = nodeChain6;
                    mutableObjectList5 = mutableObjectList3;
                    mutableObjectList2 = mutableObjectList4;
                    nodeChain2.f(i6, mutableObjectList5, mutableObjectList2, node5, !z2);
                    nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                    i2 = 1;
                } else {
                    throw q.p("structuralUpdate requires a non-null tail");
                }
            } else {
                nodeChain = nodeChain6;
                mutableObjectList5 = mutableObjectList3;
                mutableObjectList = mutableObjectList4;
                nodeChain2 = nodeChain;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableObjectList2 = mutableObjectList;
                i2 = i;
            }
        } else {
            i = 0;
            nodeChain = nodeChain6;
            Modifier modifier3 = layoutNode.U;
            if (modifier3 != null && i3 == 0) {
                Modifier.Node node6 = nodeChain$sentinelHead$12;
                for (int i7 = 0; i7 < mutableObjectList.b; i7++) {
                    node6 = NodeChain.b((Modifier.Element) mutableObjectList.b(i7), node6);
                }
                Modifier.Node node7 = node.n;
                while (node7 != null && node7 != nodeChain$sentinelHead$12) {
                    int i8 = i | node7.l;
                    node7.m = i8;
                    node7 = node7.n;
                    i = i8;
                }
                nodeChain2 = nodeChain;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableObjectList2 = mutableObjectList;
                i2 = 1;
            } else if (i5 == 0) {
                Modifier.Node node8 = nodeChain$sentinelHead$12.o;
                for (int i9 = 0; node8 != null && i9 < mutableObjectList5.b; i9++) {
                    node8 = NodeChain.c(node8).o;
                }
                LayoutNode w2 = layoutNode.w();
                if (w2 != null) {
                    innerNodeCoordinator = w2.O.c;
                } else {
                    innerNodeCoordinator = null;
                }
                innerNodeCoordinator2.F = innerNodeCoordinator;
                nodeChain.d = innerNodeCoordinator2;
                nodeChain2 = nodeChain;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableObjectList2 = mutableObjectList;
                i2 = i;
            } else {
                if (modifier3 != null) {
                    z = true;
                } else {
                    z = false;
                }
                i2 = 1;
                nodeChain2 = nodeChain;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableObjectList2 = mutableObjectList;
                nodeChain2.f(0, mutableObjectList5, mutableObjectList2, nodeChain$sentinelHead$1, !z);
            }
        }
        nodeChain2.g = mutableObjectList2;
        mutableObjectList5.k();
        mutableObjectList6.g(mutableObjectList5);
        mutableObjectList7.k();
        nodeChain5.i = mutableObjectList7;
        Modifier.Node node9 = nodeChain$sentinelHead$1.o;
        if (node9 != null) {
            node = node9;
        }
        node.n = null;
        nodeChain$sentinelHead$1.o = null;
        nodeChain$sentinelHead$1.m = -1;
        nodeChain$sentinelHead$1.q = null;
        if (node == nodeChain$sentinelHead$1) {
            InlineClassHelperKt.b("trimChain did not update the head");
        }
        nodeChain2.f = node;
        if (i2 != 0) {
            nodeChain2.g();
        }
        boolean d3 = nodeChain2.d(16);
        boolean d4 = nodeChain2.d(1024);
        this.P.j();
        if (this.q == null && nodeChain2.d(512)) {
            f0(this);
        }
        if (d != d3 || d2 != d4) {
            RectManager rectManager = LayoutNodeKt.a(this).getRectManager();
            rectManager.getClass();
            if (L() && this.p != -4) {
                RectList rectList = rectManager.c;
                int e = rectManager.e(this);
                long[] jArr = rectList.a;
                int i10 = e + 2;
                jArr[i10] = (jArr[i10] & (-6917529027641081857L)) | ((d4 ? 1L : 0L) * 2305843009213693952L) | ((d3 ? 1L : 0L) * 4611686018427387904L);
            }
        }
    }

    public final void c0(Throwable th) {
        CompositionLocalMap compositionLocalMap = this.K;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.a;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) compositionLocalMap;
        persistentCompositionLocalHashMap.getClass();
        CompositionErrorContext compositionErrorContext = (CompositionErrorContext) CompositionLocalMapKt.a(persistentCompositionLocalHashMap, staticProvidableCompositionLocal);
        if (compositionErrorContext != null) {
            ComposeStackTraceKt.a(th, new p0(9, (CompositionErrorContextImpl) compositionErrorContext, this));
            throw th;
        }
        throw th;
    }

    public final void d(Owner owner) {
        InnerNodeCoordinator innerNodeCoordinator;
        int i;
        LayoutNode layoutNode;
        SemanticsConfiguration y;
        Owner owner2;
        String str;
        if (this.w != null) {
            InlineClassHelperKt.b("Cannot attach " + this + " as it already is attached.  Tree: " + g(0));
        }
        LayoutNode layoutNode2 = this.v;
        if (layoutNode2 != null && !Intrinsics.a(layoutNode2.w, owner)) {
            LayoutNode w = w();
            if (w != null) {
                owner2 = w.w;
            } else {
                owner2 = null;
            }
            String g = g(0);
            LayoutNode layoutNode3 = this.v;
            if (layoutNode3 != null) {
                str = layoutNode3.g(0);
            } else {
                str = null;
            }
            InlineClassHelperKt.b("Attaching to a different owner(" + owner + ") than the parent's owner(" + owner2 + "). This tree: " + g + " Parent tree: " + str);
        }
        LayoutNode w2 = w();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
        if (w2 == null) {
            layoutNodeLayoutDelegate.p.C = true;
            owner.getRectManager().h(this);
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.A = LookaheadPassDelegate.PlacedState.j;
            }
        }
        NodeChain nodeChain = this.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        if (w2 != null) {
            innerNodeCoordinator = w2.O.c;
        } else {
            innerNodeCoordinator = null;
        }
        nodeCoordinator.F = innerNodeCoordinator;
        this.w = owner;
        if (w2 != null) {
            i = w2.y;
        } else {
            i = -1;
        }
        this.y = i + 1;
        Modifier modifier = this.U;
        if (modifier != null) {
            c(modifier);
        }
        this.U = null;
        ((AndroidComposeView) owner).getLayoutNodes().i(this.k, this);
        LayoutNode layoutNode4 = this.v;
        if (layoutNode4 == null || (layoutNode = layoutNode4.q) == null) {
            layoutNode = this.q;
        }
        f0(layoutNode);
        if (this.q == null && nodeChain.d(512)) {
            f0(this);
        }
        if (!this.Z) {
            for (Modifier.Node node = nodeChain.f; node != null; node = node.o) {
                node.O0();
            }
        }
        MutableVector mutableVector = this.s.a;
        Object[] objArr = mutableVector.j;
        int i2 = mutableVector.l;
        for (int i3 = 0; i3 < i2; i3++) {
            ((LayoutNode) objArr[i3]).d(owner);
        }
        if (!this.Z) {
            nodeChain.e();
        }
        I();
        if (w2 != null) {
            w2.I();
        }
        n2 n2Var = this.V;
        if (n2Var != null) {
            n2Var.b(owner);
        }
        layoutNodeLayoutDelegate.j();
        if (!this.Z && nodeChain.d(8)) {
            J();
        }
        AndroidAutofillManager autofillManager = ((AndroidComposeView) owner).getAutofillManager();
        if (autofillManager != null && (y = y()) != null && y.j.b(SemanticsProperties.r)) {
            autofillManager.q.b(this.k);
            autofillManager.j.b(autofillManager.l, this.k, true);
        }
    }

    public final void d0(Density density) {
        if (!Intrinsics.a(this.H, density)) {
            this.H = density;
            I();
            LayoutNode w = w();
            if (w != null) {
                w.G();
            } else {
                Owner owner = this.w;
                if (owner != null) {
                    ((AndroidComposeView) owner).invalidate();
                }
            }
            H();
            for (Modifier.Node node = this.O.f; node != null; node = node.o) {
                node.g();
            }
        }
    }

    public final void e() {
        this.M = this.L;
        this.L = UsageByParent.l;
        MutableVector D = D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            if (layoutNode.L != UsageByParent.l) {
                layoutNode.e();
            }
        }
    }

    public final void e0(int i) {
        LayoutNode w;
        LayoutNode w2;
        int i2 = this.Y;
        if (i2 != i) {
            if (i > 0 && i2 == 0 && (w2 = w()) != null) {
                w2.e0(w2.Y + 1);
            }
            if (i == 0 && this.Y > 0 && (w = w()) != null) {
                w.e0(w.Y - 1);
            }
            this.Y = i;
        }
    }

    public final void f() {
        this.M = this.L;
        this.L = UsageByParent.l;
        MutableVector D = D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            if (layoutNode.L == UsageByParent.k) {
                layoutNode.f();
            }
        }
    }

    public final void f0(LayoutNode layoutNode) {
        if (!Intrinsics.a(layoutNode, this.q)) {
            this.q = layoutNode;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
            if (layoutNode != null) {
                if (layoutNodeLayoutDelegate.q == null) {
                    layoutNodeLayoutDelegate.q = new LookaheadPassDelegate(layoutNodeLayoutDelegate);
                }
                NodeChain nodeChain = this.O;
                NodeCoordinator nodeCoordinator = nodeChain.c.E;
                for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.a(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.E) {
                    nodeCoordinator2.Y0();
                }
            } else {
                layoutNodeLayoutDelegate.q = null;
                layoutNodeLayoutDelegate.f = false;
                layoutNodeLayoutDelegate.e = false;
            }
            I();
        }
    }

    public final String g(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
        sb.append("|-");
        sb.append(toString());
        sb.append('\n');
        MutableVector D = D();
        Object[] objArr = D.j;
        int i3 = D.l;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(((LayoutNode) objArr[i4]).g(i + 1));
        }
        String sb2 = sb.toString();
        if (i == 0) {
            return sb2.substring(0, sb2.length() - 1);
        }
        return sb2;
    }

    public final void g0(MeasurePolicy measurePolicy) {
        if (!Intrinsics.a(this.F, measurePolicy)) {
            this.F = measurePolicy;
            IntrinsicsPolicy intrinsicsPolicy = this.G;
            if (intrinsicsPolicy != null) {
                ((SnapshotMutableStateImpl) intrinsicsPolicy.b).setValue(measurePolicy);
            }
            I();
        }
    }

    public final void h() {
        LookaheadAlignmentLines lookaheadAlignmentLines;
        Owner owner = this.w;
        String str = null;
        if (owner == null) {
            LayoutNode w = w();
            if (w != null) {
                str = w.g(0);
            }
            InlineClassHelperKt.c("Cannot detach node that is already detached!  Tree: " + str);
            f7.h();
            return;
        }
        LayoutNode w2 = w();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
        if (w2 != null) {
            w2.G();
            w2.I();
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
            UsageByParent usageByParent = UsageByParent.l;
            measurePassDelegate.u = usageByParent;
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.s = usageByParent;
            }
        }
        LayoutNodeAlignmentLines layoutNodeAlignmentLines = layoutNodeLayoutDelegate.p.H;
        layoutNodeAlignmentLines.b = true;
        layoutNodeAlignmentLines.c = false;
        layoutNodeAlignmentLines.e = false;
        layoutNodeAlignmentLines.d = false;
        layoutNodeAlignmentLines.f = false;
        layoutNodeAlignmentLines.g = false;
        layoutNodeAlignmentLines.h = null;
        LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.q;
        if (lookaheadPassDelegate2 != null && (lookaheadAlignmentLines = lookaheadPassDelegate2.B) != null) {
            lookaheadAlignmentLines.b = true;
            lookaheadAlignmentLines.c = false;
            lookaheadAlignmentLines.e = false;
            lookaheadAlignmentLines.d = false;
            lookaheadAlignmentLines.f = false;
            lookaheadAlignmentLines.g = false;
            lookaheadAlignmentLines.h = null;
        }
        NodeChain nodeChain = this.O;
        Modifier.Node node = nodeChain.e;
        NodeCoordinator nodeCoordinator = nodeChain.c.E;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.d; !Intrinsics.a(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.E) {
            nodeCoordinator2.w1();
            if (nodeCoordinator2.D.M()) {
                nodeCoordinator2.r1();
            }
        }
        m2 m2Var = this.W;
        if (m2Var != null) {
            m2Var.b(owner);
        }
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.n) {
            if (node2.w) {
                node2.V0();
            }
        }
        this.z = true;
        MutableVector mutableVector = this.s.a;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).h();
        }
        this.z = false;
        while (node != null) {
            if (node.w) {
                node.P0();
            }
            node = node.n;
        }
        AndroidComposeView androidComposeView = (AndroidComposeView) owner;
        androidComposeView.getLayoutNodes().g(this.k);
        MeasureAndLayoutDelegate measureAndLayoutDelegate = androidComposeView.c0;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.b;
        depthSortedSetsForDifferentPasses.a.b(this);
        depthSortedSetsForDifferentPasses.b.b(this);
        depthSortedSetsForDifferentPasses.c.b(this);
        measureAndLayoutDelegate.e.a.j(this);
        androidComposeView.T = true;
        AndroidAutofillManager autofillManager = androidComposeView.getAutofillManager();
        if (autofillManager != null && autofillManager.q.f(this.k)) {
            autofillManager.j.b(autofillManager.l, this.k, false);
        }
        owner.getRectManager().i(this);
        this.w = null;
        f0(null);
        this.y = 0;
        MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.p;
        measurePassDelegate2.r = Integer.MAX_VALUE;
        measurePassDelegate2.q = Integer.MAX_VALUE;
        measurePassDelegate2.C = false;
        LookaheadPassDelegate lookaheadPassDelegate3 = layoutNodeLayoutDelegate.q;
        if (lookaheadPassDelegate3 != null) {
            lookaheadPassDelegate3.r = Integer.MAX_VALUE;
            lookaheadPassDelegate3.q = Integer.MAX_VALUE;
            lookaheadPassDelegate3.A = LookaheadPassDelegate.PlacedState.l;
        }
        if (nodeChain.d(8)) {
            SemanticsConfiguration semanticsConfiguration = this.B;
            this.B = null;
            this.A = false;
            owner.getSemanticsOwner().b(this, semanticsConfiguration);
            androidComposeView.y();
        }
    }

    public final void h0(Modifier modifier) {
        if (this.j && this.T != Modifier.Companion.b) {
            InlineClassHelperKt.a("Modifiers are not supported on virtual LayoutNodes");
        }
        if (this.Z) {
            InlineClassHelperKt.a("modifier is updated when deactivated");
        }
        if (L()) {
            c(modifier);
            if (this.A) {
                J();
                return;
            }
            return;
        }
        this.U = modifier;
    }

    public final void i(Canvas canvas, GraphicsLayer graphicsLayer) {
        try {
            this.O.d.W0(canvas, graphicsLayer);
        } catch (Throwable th) {
            c0(th);
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final void i0(ViewConfiguration viewConfiguration) {
        if (!Intrinsics.a(this.J, viewConfiguration)) {
            this.J = viewConfiguration;
            Modifier.Node node = this.O.f;
            if ((node.m & 16) != 0) {
                while (node != null) {
                    if ((node.l & 16) != 0) {
                        DelegatingNode delegatingNode = node;
                        ?? r2 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof PointerInputModifierNode) {
                                ((PointerInputModifierNode) delegatingNode).G0();
                            } else if ((delegatingNode.l & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node2 = delegatingNode.y;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r2 = r2;
                                while (node2 != null) {
                                    if ((node2.l & 16) != 0) {
                                        i++;
                                        r2 = r2;
                                        if (i == 1) {
                                            delegatingNode = node2;
                                        } else {
                                            if (r2 == 0) {
                                                r2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r2.b(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r2.b(node2);
                                        }
                                    }
                                    node2 = node2.o;
                                    delegatingNode = delegatingNode;
                                    r2 = r2;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.b(r2);
                        }
                    }
                    if ((node.m & 16) != 0) {
                        node = node.o;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final void j0() {
        if (this.r > 0 && this.u) {
            this.u = false;
            MutableVector mutableVector = this.t;
            if (mutableVector == null) {
                mutableVector = new MutableVector(new LayoutNode[16]);
                this.t = mutableVector;
            }
            mutableVector.g();
            MutableVector mutableVector2 = this.s.a;
            Object[] objArr = mutableVector2.j;
            int i = mutableVector2.l;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i2];
                if (layoutNode.j) {
                    mutableVector.c(mutableVector.l, layoutNode.D());
                } else {
                    mutableVector.b(layoutNode);
                }
            }
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.P;
            layoutNodeLayoutDelegate.p.J = true;
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.D = true;
            }
        }
    }

    public final void k() {
        Constraints constraints;
        if (this.q != null) {
            X(this, false, 5);
        } else {
            Z(this, false, 5);
        }
        MeasurePassDelegate measurePassDelegate = this.P.p;
        if (measurePassDelegate.s) {
            constraints = new Constraints(measurePassDelegate.m);
        } else {
            constraints = null;
        }
        Owner owner = this.w;
        if (constraints != null) {
            if (owner != null) {
                ((AndroidComposeView) owner).s(this, constraints.a);
                return;
            }
            return;
        }
        if (owner != null) {
            ((AndroidComposeView) owner).r(true);
        }
    }

    public final List l() {
        LookaheadPassDelegate lookaheadPassDelegate = this.P.q;
        lookaheadPassDelegate.getClass();
        MutableVector mutableVector = lookaheadPassDelegate.C;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.o;
        layoutNodeLayoutDelegate.a.n();
        if (!lookaheadPassDelegate.D) {
            return mutableVector.f();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (mutableVector.l <= i2) {
                LookaheadPassDelegate lookaheadPassDelegate2 = layoutNode2.P.q;
                lookaheadPassDelegate2.getClass();
                mutableVector.b(lookaheadPassDelegate2);
            } else {
                LookaheadPassDelegate lookaheadPassDelegate3 = layoutNode2.P.q;
                lookaheadPassDelegate3.getClass();
                Object[] objArr2 = mutableVector.j;
                Object obj = objArr2[i2];
                objArr2[i2] = lookaheadPassDelegate3;
            }
        }
        mutableVector.l(layoutNode.n().size(), mutableVector.l);
        lookaheadPassDelegate.D = false;
        return mutableVector.f();
    }

    public final List m() {
        return this.P.p.n0();
    }

    public final List n() {
        return D().f();
    }

    public final List o() {
        return this.s.a.f();
    }

    public final int p() {
        return this.P.p.k;
    }

    public final boolean q() {
        return this.P.p.F;
    }

    public final boolean r() {
        return this.P.p.E;
    }

    public final UsageByParent s() {
        return this.P.p.u;
    }

    public final UsageByParent t() {
        UsageByParent usageByParent;
        LookaheadPassDelegate lookaheadPassDelegate = this.P.q;
        if (lookaheadPassDelegate != null && (usageByParent = lookaheadPassDelegate.s) != null) {
            return usageByParent;
        }
        return UsageByParent.l;
    }

    public final String toString() {
        return JvmActuals_jvmKt.a(this) + " children: " + n().size() + " measurePolicy: " + this.F + " deactivated: " + this.Z + " isVirtual: " + this.j + " isPlaced: " + M();
    }

    public final List u() {
        NodeChain nodeChain = this.O;
        MutableObjectList mutableObjectList = nodeChain.g;
        if (mutableObjectList.d()) {
            return EmptyList.j;
        }
        MutableObjectList mutableObjectList2 = new MutableObjectList(mutableObjectList.b);
        Modifier.Node node = nodeChain.f;
        int i = 0;
        while (node != null) {
            TailModifierNode tailModifierNode = nodeChain.e;
            if (node == tailModifierNode) {
                break;
            }
            NodeCoordinator nodeCoordinator = node.q;
            OwnedLayer ownedLayer = null;
            if (nodeCoordinator != null) {
                OwnedLayer ownedLayer2 = nodeCoordinator.c0;
                OwnedLayer ownedLayer3 = nodeChain.c.c0;
                Modifier.Node node2 = node.o;
                if (node2 == tailModifierNode && nodeCoordinator != node2.q) {
                    ownedLayer = ownedLayer3;
                }
                if (ownedLayer2 == null) {
                    ownedLayer2 = ownedLayer;
                }
                mutableObjectList2.g(new ModifierInfo((Modifier) mutableObjectList.b(i), nodeCoordinator, ownedLayer2));
                node = node.o;
                i++;
            } else {
                u2.g("getModifierInfo called on node with no coordinator");
                return null;
            }
        }
        return mutableObjectList2.j();
    }

    public final IntrinsicsPolicy v() {
        IntrinsicsPolicy intrinsicsPolicy = this.G;
        if (intrinsicsPolicy == null) {
            IntrinsicsPolicy intrinsicsPolicy2 = new IntrinsicsPolicy(this, this.F);
            this.G = intrinsicsPolicy2;
            return intrinsicsPolicy2;
        }
        return intrinsicsPolicy;
    }

    public final LayoutNode w() {
        LayoutNode layoutNode = this.v;
        while (layoutNode != null && layoutNode.j) {
            layoutNode = layoutNode.v;
        }
        return layoutNode;
    }

    public final int x() {
        return this.P.p.r;
    }

    public final SemanticsConfiguration y() {
        if (L() && !this.Z && this.O.d(8)) {
            return this.B;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return L();
    }

    public LayoutNode(int i) {
        this(SemanticsModifierKt.a.addAndGet(1), (i & 1) == 0);
    }
}
