package androidx.compose.ui.layout;

import android.view.ViewGroup;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PausableComposition;
import androidx.compose.runtime.PausedCompositionImpl;
import androidx.compose.runtime.PausedCompositionState;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.ReusableComposition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import defpackage.k8;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNodeSubcompositionsState implements ComposeNodeLifecycleCallback {
    public final LayoutNode j;
    public CompositionContext k;
    public SubcomposeSlotReusePolicy l;
    public int m;
    public int n;
    public final MutableScatterMap o;
    public final MutableScatterMap p;
    public final Scope q;
    public final ApproachMeasureScopeImpl r;
    public final MutableScatterMap s;
    public final SubcomposeSlotReusePolicy.SlotIdsSet t;
    public final MutableScatterMap u;
    public final MutableVector v;
    public int w;
    public int x;
    public final String y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ApproachMeasureScopeImpl implements SubcomposeMeasureScope, MeasureScope {
        public final /* synthetic */ Scope j;

        public ApproachMeasureScopeImpl() {
            this.j = LayoutNodeSubcompositionsState.this.q;
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult B(int i, int i2, Map map, Function1 function1) {
            return this.j.v0(i, i2, map, null, function1);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long D0(long j) {
            return this.j.D0(j);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float E(long j) {
            return this.j.E(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float I0(long j) {
            return this.j.I0(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long N(int i) {
            return this.j.N(i);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long P(float f) {
            return this.j.P(f);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float U(int i) {
            return this.j.U(i);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float X(float f) {
            return f / this.j.getDensity();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float e0() {
            return this.j.l;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final boolean f0() {
            return this.j.f0();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return this.j.k;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final LayoutDirection getLayoutDirection() {
            return this.j.j;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float i0(float f) {
            return this.j.getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        public final int q0(long j) {
            return this.j.q0(j);
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public final List r(Object obj, Function2 function2) {
            NodeState nodeState;
            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            LayoutNode layoutNode = layoutNodeSubcompositionsState.j;
            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState.p;
            LayoutNode layoutNode2 = (LayoutNode) mutableScatterMap.e(obj);
            if (layoutNode2 != null && layoutNode.o().indexOf(layoutNode2) < layoutNodeSubcompositionsState.m) {
                return layoutNode2.m();
            }
            MutableScatterMap mutableScatterMap2 = layoutNodeSubcompositionsState.u;
            MutableScatterMap mutableScatterMap3 = layoutNodeSubcompositionsState.s;
            MutableVector mutableVector = layoutNodeSubcompositionsState.v;
            if (mutableVector.l < layoutNodeSubcompositionsState.n) {
                InlineClassHelperKt.a("Error: currentApproachIndex cannot be greater than the size of theapproachComposedSlotIds list.");
            }
            LayoutNode layoutNode3 = (LayoutNode) mutableScatterMap.e(obj);
            int i = mutableVector.l;
            int i2 = layoutNodeSubcompositionsState.n;
            if (i == i2) {
                mutableVector.b(obj);
            } else {
                Object[] objArr = mutableVector.j;
                Object obj2 = objArr[i2];
                objArr[i2] = obj;
            }
            layoutNodeSubcompositionsState.n++;
            boolean b = mutableScatterMap3.b(obj);
            if (!b && layoutNode3 == null) {
                layoutNodeSubcompositionsState.k(obj, function2, false);
                mutableScatterMap2.o(obj, layoutNodeSubcompositionsState.f(obj));
            } else {
                if (!b && layoutNode3 != null) {
                    layoutNodeSubcompositionsState.j(layoutNode.o().indexOf(layoutNode3), layoutNode.o().size());
                    layoutNodeSubcompositionsState.x++;
                    mutableScatterMap.m(obj);
                    mutableScatterMap3.o(obj, layoutNode3);
                    mutableScatterMap2.o(obj, layoutNodeSubcompositionsState.f(obj));
                    if (layoutNode.L()) {
                        layoutNodeSubcompositionsState.h();
                    }
                }
                LayoutNode layoutNode4 = (LayoutNode) mutableScatterMap3.e(obj);
                PausedCompositionImpl pausedCompositionImpl = null;
                if (layoutNode4 != null) {
                    nodeState = (NodeState) layoutNodeSubcompositionsState.o.e(layoutNode4);
                } else {
                    nodeState = null;
                }
                if (nodeState != null && nodeState.d) {
                    layoutNodeSubcompositionsState.m(layoutNode4, obj, false, function2);
                }
                if (nodeState != null) {
                    pausedCompositionImpl = nodeState.f;
                }
                if (pausedCompositionImpl != null) {
                    layoutNodeSubcompositionsState.d(nodeState, true);
                }
            }
            LayoutNode layoutNode5 = (LayoutNode) mutableScatterMap3.e(obj);
            if (layoutNode5 != null) {
                List n0 = layoutNode5.P.p.n0();
                int size = n0.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((MeasurePassDelegate) n0.get(i3)).o.b = true;
                }
                return n0;
            }
            return EmptyList.j;
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult v0(int i, int i2, Map map, Function1 function1, Function1 function12) {
            return this.j.v0(i, i2, map, function1, function12);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final long x(float f) {
            return this.j.x(f);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long y(long j) {
            return this.j.y(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final int y0(float f) {
            return this.j.y0(f);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NodeState {
        public Object a;
        public Function2 b;
        public ReusableComposition c;
        public boolean d;
        public boolean e;
        public PausedCompositionImpl f;
        public MutableState g;
        public boolean h;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Scope implements SubcomposeMeasureScope {
        public LayoutDirection j = LayoutDirection.k;
        public float k;
        public float l;

        public Scope() {
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float e0() {
            return this.l;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final boolean f0() {
            LayoutNode.LayoutState layoutState = LayoutNodeSubcompositionsState.this.j.P.d;
            if (layoutState != LayoutNode.LayoutState.m && layoutState != LayoutNode.LayoutState.k) {
                return false;
            }
            return true;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return this.k;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public final LayoutDirection getLayoutDirection() {
            return this.j;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public final List r(Object obj, Function2 function2) {
            Object obj2;
            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            layoutNodeSubcompositionsState.h();
            LayoutNode layoutNode = layoutNodeSubcompositionsState.j;
            LayoutNode.LayoutState layoutState = layoutNode.P.d;
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.j;
            if (layoutState != layoutState2 && layoutState != LayoutNode.LayoutState.l && layoutState != LayoutNode.LayoutState.k && layoutState != LayoutNode.LayoutState.m) {
                InlineClassHelperKt.b("subcompose can only be used inside the measure or layout blocks");
            }
            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState.p;
            Object e = mutableScatterMap.e(obj);
            if (e == null) {
                e = (LayoutNode) layoutNodeSubcompositionsState.s.m(obj);
                if (e != null) {
                    if (layoutNodeSubcompositionsState.x <= 0) {
                        InlineClassHelperKt.b("Check failed.");
                    }
                    layoutNodeSubcompositionsState.x--;
                } else {
                    e = layoutNodeSubcompositionsState.n(obj);
                    if (e == null) {
                        int i = layoutNodeSubcompositionsState.m;
                        LayoutNode layoutNode2 = new LayoutNode(2);
                        layoutNode.z = true;
                        layoutNode.F(i, layoutNode2);
                        layoutNode.z = false;
                        e = layoutNode2;
                    }
                }
                mutableScatterMap.o(obj, e);
            }
            LayoutNode layoutNode3 = (LayoutNode) e;
            List o = layoutNode.o();
            int i2 = layoutNodeSubcompositionsState.m;
            if (i2 >= 0 && i2 < o.size()) {
                obj2 = o.get(i2);
            } else {
                obj2 = null;
            }
            if (obj2 != layoutNode3) {
                int indexOf = layoutNode.o().indexOf(layoutNode3);
                if (indexOf < layoutNodeSubcompositionsState.m) {
                    InlineClassHelperKt.a("Key \"" + obj + "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
                }
                int i3 = layoutNodeSubcompositionsState.m;
                if (i3 != indexOf) {
                    layoutNodeSubcompositionsState.j(indexOf, i3);
                }
            }
            layoutNodeSubcompositionsState.m++;
            layoutNodeSubcompositionsState.m(layoutNode3, obj, false, function2);
            if (layoutState != layoutState2 && layoutState != LayoutNode.LayoutState.l) {
                return layoutNode3.l();
            }
            return layoutNode3.m();
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public final MeasureResult v0(final int i, final int i2, final Map map, final Function1 function1, final Function1 function12) {
            if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
                InlineClassHelperKt.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
            }
            final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
            return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$Scope$layout$1
                @Override // androidx.compose.ui.layout.MeasureResult
                public final int a() {
                    return i2;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public final int b() {
                    return i;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public final Map c() {
                    return map;
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public final void d() {
                    LookaheadDelegate lookaheadDelegate;
                    LayoutNode layoutNode = layoutNodeSubcompositionsState.j;
                    boolean f0 = this.f0();
                    Function1 function13 = function12;
                    if (f0 && (lookaheadDelegate = layoutNode.O.c.m0) != null) {
                        function13.b(lookaheadDelegate.y);
                    } else {
                        function13.b(layoutNode.O.c.y);
                    }
                }

                @Override // androidx.compose.ui.layout.MeasureResult
                public final Function1 g() {
                    return function1;
                }
            };
        }
    }

    public LayoutNodeSubcompositionsState(LayoutNode layoutNode, SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.j = layoutNode;
        this.l = subcomposeSlotReusePolicy;
        long[] jArr = ScatterMapKt.a;
        this.o = new MutableScatterMap();
        this.p = new MutableScatterMap();
        this.q = new Scope();
        this.r = new ApproachMeasureScopeImpl();
        this.s = new MutableScatterMap();
        this.t = new SubcomposeSlotReusePolicy.SlotIdsSet();
        this.u = new MutableScatterMap();
        this.v = new MutableVector(new Object[16]);
        this.y = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    public static final void c(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, Object obj) {
        LayoutNode layoutNode = layoutNodeSubcompositionsState.j;
        layoutNodeSubcompositionsState.h();
        LayoutNode layoutNode2 = (LayoutNode) layoutNodeSubcompositionsState.s.m(obj);
        if (layoutNode2 != null) {
            if (layoutNodeSubcompositionsState.x <= 0) {
                InlineClassHelperKt.b("No pre-composed items to dispose");
            }
            int indexOf = layoutNode.o().indexOf(layoutNode2);
            if (indexOf < layoutNode.o().size() - layoutNodeSubcompositionsState.x) {
                InlineClassHelperKt.b("Item is not in pre-composed item range");
            }
            layoutNodeSubcompositionsState.w++;
            layoutNodeSubcompositionsState.x--;
            NodeState nodeState = (NodeState) layoutNodeSubcompositionsState.o.e(layoutNode2);
            if (nodeState != null) {
                e(nodeState);
            }
            int size = (layoutNode.o().size() - layoutNodeSubcompositionsState.x) - layoutNodeSubcompositionsState.w;
            layoutNodeSubcompositionsState.j(indexOf, size);
            layoutNodeSubcompositionsState.g(size);
        }
        if (layoutNodeSubcompositionsState.v.h(obj)) {
            LayoutNode.Z(layoutNode, true, 6);
        }
    }

    public static void e(NodeState nodeState) {
        MutableScatterSet mutableScatterSet;
        PausedCompositionImpl pausedCompositionImpl = nodeState.f;
        if (pausedCompositionImpl != null) {
            pausedCompositionImpl.h.set(PausedCompositionState.k);
            RememberEventDispatcher rememberEventDispatcher = pausedCompositionImpl.k;
            if (rememberEventDispatcher.d.c()) {
                mutableScatterSet = rememberEventDispatcher.d;
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                rememberEventDispatcher.d = new MutableScatterSet();
                rememberEventDispatcher.c.g();
            } else {
                mutableScatterSet = null;
            }
            rememberEventDispatcher.b();
            CompositionImpl compositionImpl = pausedCompositionImpl.a;
            compositionImpl.z = null;
            if (mutableScatterSet != null) {
                compositionImpl.D.k = mutableScatterSet;
                compositionImpl.F = 2;
            }
            nodeState.f = null;
            ReusableComposition reusableComposition = nodeState.c;
            if (reusableComposition != null) {
                ((CompositionImpl) reusableComposition).a();
            }
            nodeState.c = null;
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void a() {
        ReusableComposition reusableComposition;
        LayoutNode layoutNode = this.j;
        layoutNode.z = true;
        MutableScatterMap mutableScatterMap = this.o;
        Object[] objArr = mutableScatterMap.c;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && (reusableComposition = ((NodeState) objArr[(i << 3) + i3]).c) != null) {
                            ((CompositionImpl) reusableComposition).a();
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                } else {
                    i++;
                }
            }
        }
        layoutNode.T();
        layoutNode.z = false;
        mutableScatterMap.h();
        this.p.h();
        this.x = 0;
        this.w = 0;
        this.s.h();
        h();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void b() {
        i(true);
    }

    public final void d(NodeState nodeState, boolean z) {
        Function1 function1;
        PausedCompositionImpl pausedCompositionImpl = nodeState.f;
        if (pausedCompositionImpl != null) {
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                LayoutNode layoutNode = this.j;
                layoutNode.z = true;
                if (z) {
                    while (!pausedCompositionImpl.c()) {
                        try {
                            pausedCompositionImpl.e(new k8(13));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                pausedCompositionImpl.a();
                nodeState.f = null;
                layoutNode.z = false;
            } finally {
                Snapshot.Companion.e(a, b, function1);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.layout.SubcomposeLayoutState$PrecomposedSlotHandle, java.lang.Object] */
    public final SubcomposeLayoutState.PrecomposedSlotHandle f(final Object obj) {
        if (!this.j.L()) {
            return new Object();
        }
        return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createPrecomposedSlotHandle$2
            public final MutableIntSet a;

            {
                int[] iArr = IntSetKt.a;
                this.a = new MutableIntSet();
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void a() {
                LayoutNodeSubcompositionsState.c(LayoutNodeSubcompositionsState.this, obj);
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final long b(int i) {
                LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.s.e(obj);
                if (layoutNode != null && layoutNode.L()) {
                    int size = layoutNode.n().size();
                    if (i < 0 || i >= size) {
                        InlineClassHelperKt.d("Index (" + i + ") is out of bound of [0, " + size + ")");
                    }
                    if (this.a.a(i)) {
                        int A = ((LayoutNode) layoutNode.n().get(i)).A();
                        return (((LayoutNode) layoutNode.n().get(i)).p() & 4294967295L) | (A << 32);
                    }
                    return 0L;
                }
                return 0L;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final int c() {
                LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.s.e(obj);
                if (layoutNode != null) {
                    return layoutNode.n().size();
                }
                return 0;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void d(androidx.compose.foundation.lazy.layout.b bVar) {
                Modifier.Node node;
                NodeChain nodeChain;
                LayoutNode layoutNode = (LayoutNode) LayoutNodeSubcompositionsState.this.s.e(obj);
                if (layoutNode != null && (nodeChain = layoutNode.O) != null) {
                    node = nodeChain.f;
                } else {
                    node = null;
                }
                if (node != null && node.w) {
                    TraversableNodeKt.c(node, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", bVar);
                }
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public final void e(int i, long j) {
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                LayoutNode layoutNode = (LayoutNode) layoutNodeSubcompositionsState.s.e(obj);
                if (layoutNode != null && layoutNode.L()) {
                    int size = layoutNode.n().size();
                    if (i < 0 || i >= size) {
                        InlineClassHelperKt.d("Index (" + i + ") is out of bound of [0, " + size + ")");
                    }
                    if (layoutNode.M()) {
                        InlineClassHelperKt.a("Pre-measure called on node that is not placed");
                    }
                    LayoutNode layoutNode2 = layoutNodeSubcompositionsState.j;
                    layoutNode2.z = true;
                    ((AndroidComposeView) LayoutNodeKt.a(layoutNode)).s((LayoutNode) layoutNode.n().get(i), j);
                    layoutNode2.z = false;
                    this.a.b(i);
                }
            }
        };
    }

    public final void g(int i) {
        Function1 function1;
        boolean z;
        boolean z2;
        boolean z3 = false;
        this.w = 0;
        LayoutNode layoutNode = this.j;
        List o = layoutNode.o();
        boolean z4 = true;
        int size = (o.size() - this.x) - 1;
        if (i <= size) {
            SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet = this.t;
            slotIdsSet.clear();
            MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.j;
            MutableScatterMap mutableScatterMap = this.o;
            if (i <= size) {
                int i2 = i;
                while (true) {
                    Object e = mutableScatterMap.e((LayoutNode) o.get(i2));
                    e.getClass();
                    mutableOrderedScatterSet.b(((NodeState) e).a);
                    if (i2 == size) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.l.a(slotIdsSet);
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            boolean z5 = false;
            while (size >= i) {
                try {
                    LayoutNode layoutNode2 = (LayoutNode) o.get(size);
                    Object e2 = mutableScatterMap.e(layoutNode2);
                    e2.getClass();
                    NodeState nodeState = (NodeState) e2;
                    Object obj = nodeState.a;
                    if (mutableOrderedScatterSet.a(obj)) {
                        boolean z6 = z4;
                        this.w++;
                        if (((Boolean) ((SnapshotMutableStateImpl) nodeState.g).getValue()).booleanValue()) {
                            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode2.P;
                            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
                            LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.l;
                            measurePassDelegate.u = usageByParent;
                            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                            if (lookaheadPassDelegate != null) {
                                lookaheadPassDelegate.s = usageByParent;
                            }
                            l(nodeState, false);
                            if (nodeState.h) {
                                z = z6;
                                z5 = z;
                            } else {
                                z = z6;
                            }
                            z2 = false;
                        } else {
                            z2 = z3;
                            z = z6;
                        }
                    } else {
                        layoutNode.z = z4;
                        mutableScatterMap.m(layoutNode2);
                        ReusableComposition reusableComposition = nodeState.c;
                        if (reusableComposition != null) {
                            ((CompositionImpl) reusableComposition).a();
                        }
                        z = true;
                        layoutNode.U(size, 1);
                        z2 = false;
                        layoutNode.z = false;
                    }
                    this.p.m(obj);
                    size--;
                    boolean z7 = z2;
                    z4 = z;
                    z3 = z7;
                } catch (Throwable th) {
                    Snapshot.Companion.e(a, b, function1);
                    throw th;
                }
            }
            Snapshot.Companion.e(a, b, function1);
            z3 = z5;
        }
        if (z3) {
            Snapshot.Companion.f();
        }
        h();
    }

    public final void h() {
        int size = this.j.o().size();
        int i = this.o.e;
        if (i != size) {
            InlineClassHelperKt.a("Inconsistency between the count of nodes tracked by the state (" + i + ") and the children count on the SubcomposeLayout (" + size + "). Are you trying to use the state of the disposed SubcomposeLayout?");
        }
        int i2 = this.w;
        int i3 = this.x;
        if ((size - i2) - i3 < 0) {
            StringBuilder k = jb.k("Incorrect state. Total children ", size, ". Reusable children ", i2, ". Precomposed children ");
            k.append(i3);
            InlineClassHelperKt.a(k.toString());
        }
        int i4 = this.s.e;
        int i5 = this.x;
        if (i4 == i5) {
            return;
        }
        InlineClassHelperKt.a("Incorrect state. Precomposed children " + i5 + ". Map size " + i4);
    }

    public final void i(boolean z) {
        Function1 function1;
        this.x = 0;
        this.s.h();
        List o = this.j.o();
        int size = o.size();
        if (this.w != size) {
            this.w = size;
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            for (int i = 0; i < size; i++) {
                try {
                    LayoutNode layoutNode = (LayoutNode) o.get(i);
                    NodeState nodeState = (NodeState) this.o.e(layoutNode);
                    if (nodeState != null && ((Boolean) ((SnapshotMutableStateImpl) nodeState.g).getValue()).booleanValue()) {
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
                        MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
                        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.l;
                        measurePassDelegate.u = usageByParent;
                        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                        if (lookaheadPassDelegate != null) {
                            lookaheadPassDelegate.s = usageByParent;
                        }
                        l(nodeState, z);
                        nodeState.a = SubcomposeLayoutKt.a;
                    }
                } catch (Throwable th) {
                    Snapshot.Companion.e(a, b, function1);
                    throw th;
                }
            }
            Snapshot.Companion.e(a, b, function1);
            this.p.h();
        }
        h();
    }

    public final void j(int i, int i2) {
        LayoutNode layoutNode = this.j;
        layoutNode.z = true;
        layoutNode.P(i, i2, 1);
        layoutNode.z = false;
    }

    public final void k(Object obj, Function2 function2, boolean z) {
        LayoutNode layoutNode = this.j;
        if (layoutNode.L()) {
            h();
            if (!this.p.c(obj)) {
                this.u.m(obj);
                MutableScatterMap mutableScatterMap = this.s;
                Object e = mutableScatterMap.e(obj);
                if (e == null) {
                    e = n(obj);
                    if (e != null) {
                        j(layoutNode.o().indexOf(e), layoutNode.o().size());
                        this.x++;
                    } else {
                        int size = layoutNode.o().size();
                        LayoutNode layoutNode2 = new LayoutNode(2);
                        layoutNode.z = true;
                        layoutNode.F(size, layoutNode2);
                        layoutNode.z = false;
                        this.x++;
                        e = layoutNode2;
                    }
                    mutableScatterMap.o(obj, e);
                }
                m((LayoutNode) e, obj, z, function2);
            }
        }
    }

    public final void l(NodeState nodeState, boolean z) {
        ReusableComposition reusableComposition;
        if (!z && nodeState.h) {
            ((SnapshotMutableStateImpl) nodeState.g).setValue(Boolean.FALSE);
        } else {
            nodeState.g = SnapshotStateKt.g(Boolean.FALSE);
        }
        if (nodeState.f != null) {
            e(nodeState);
            return;
        }
        if (z) {
            ReusableComposition reusableComposition2 = nodeState.c;
            if (reusableComposition2 != null) {
                ((CompositionImpl) reusableComposition2).p();
                return;
            }
            return;
        }
        OutOfFrameExecutor outOfFrameExecutor = LayoutNodeKt.a(this.j).getOutOfFrameExecutor();
        if (outOfFrameExecutor != null) {
            ((AndroidComposeView) outOfFrameExecutor).E(new a(0, nodeState));
        } else if (!nodeState.h && (reusableComposition = nodeState.c) != null) {
            ((CompositionImpl) reusableComposition).p();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x008f, code lost:
    
        if (r7 != false) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, androidx.compose.ui.layout.LayoutNodeSubcompositionsState$NodeState] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.runtime.AbstractApplier, androidx.compose.ui.node.UiApplier] */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.runtime.AbstractApplier, androidx.compose.ui.node.UiApplier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(LayoutNode layoutNode, Object obj, boolean z, Function2 function2) {
        boolean z2;
        boolean z3;
        CompositionImpl compositionImpl;
        boolean z4;
        MutableScatterMap mutableScatterMap = this.o;
        Object e = mutableScatterMap.e(layoutNode);
        Function1 function1 = null;
        Object obj2 = e;
        if (e == null) {
            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SubcomposeLayoutKt.a;
            ?? obj3 = new Object();
            obj3.a = obj;
            obj3.b = composableLambdaImpl;
            obj3.c = null;
            obj3.g = SnapshotStateKt.g(Boolean.TRUE);
            mutableScatterMap.o(layoutNode, obj3);
            obj2 = obj3;
        }
        final NodeState nodeState = (NodeState) obj2;
        if (nodeState.b != function2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (nodeState.f != null) {
            if (z2) {
                e(nodeState);
            } else if (!z) {
                d(nodeState, true);
            } else {
                return;
            }
        }
        ReusableComposition reusableComposition = nodeState.c;
        if (reusableComposition != null) {
            CompositionImpl compositionImpl2 = (CompositionImpl) reusableComposition;
            synchronized (compositionImpl2.m) {
                if (compositionImpl2.w.e > 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            }
        } else {
            z3 = true;
        }
        if (!z2 && !z3 && !nodeState.d) {
            return;
        }
        nodeState.b = function2;
        if (nodeState.f != null) {
            InlineClassHelperKt.a("new subcompose call while paused composition is still active");
        }
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            LayoutNode layoutNode2 = this.j;
            layoutNode2.z = true;
            ReusableComposition reusableComposition2 = nodeState.c;
            CompositionContext compositionContext = this.k;
            if (compositionContext != null) {
                if (reusableComposition2 != null) {
                    if (((CompositionImpl) reusableComposition2).F == 3) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                if (z) {
                    ViewGroup.LayoutParams layoutParams = Wrapper_androidKt.a;
                    compositionImpl = new CompositionImpl(compositionContext, new AbstractApplier(layoutNode));
                } else {
                    ViewGroup.LayoutParams layoutParams2 = Wrapper_androidKt.a;
                    compositionImpl = new CompositionImpl(compositionContext, new AbstractApplier(layoutNode));
                }
                reusableComposition2 = compositionImpl;
                nodeState.c = reusableComposition2;
                final Function2 function22 = nodeState.b;
                if (LayoutNodeKt.a(this.j).getOutOfFrameExecutor() != null) {
                    nodeState.h = false;
                } else {
                    nodeState.h = true;
                    function22 = new ComposableLambdaImpl(1524156494, true, new Function2() { // from class: androidx.compose.ui.layout.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj4, Object obj5) {
                            boolean z5;
                            Composer composer = (Composer) obj4;
                            int intValue = ((Integer) obj5).intValue();
                            if ((intValue & 3) != 2) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            GapComposer gapComposer = (GapComposer) composer;
                            if (gapComposer.N(intValue & 1, z5)) {
                                Boolean bool = (Boolean) ((SnapshotMutableStateImpl) LayoutNodeSubcompositionsState.NodeState.this.g).getValue();
                                boolean booleanValue = bool.booleanValue();
                                gapComposer.Y(bool);
                                boolean g = gapComposer.g(booleanValue);
                                if (booleanValue) {
                                    function22.n(gapComposer, 0);
                                } else {
                                    if (gapComposer.l != 0) {
                                        ComposerKt.a("No nodes can be emitted before calling deactivateToEndGroup");
                                    }
                                    if (!gapComposer.S) {
                                        if (!g) {
                                            gapComposer.P();
                                        } else {
                                            SlotReader slotReader = gapComposer.G;
                                            int i = slotReader.g;
                                            int i2 = slotReader.h;
                                            ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
                                            composerChangeListWriter.getClass();
                                            composerChangeListWriter.d(false);
                                            composerChangeListWriter.b.a.d(Operation.DeactivateCurrentGroup.c);
                                            GapComposerKt.a(i, i2, gapComposer.s);
                                            gapComposer.G.t();
                                        }
                                    }
                                }
                                if (gapComposer.y && gapComposer.G.i == gapComposer.z) {
                                    gapComposer.z = -1;
                                    gapComposer.y = false;
                                }
                                gapComposer.p(false);
                            } else {
                                gapComposer.Q();
                            }
                            return Unit.a;
                        }
                    });
                }
                if (z) {
                    if (nodeState.e) {
                        CompositionImpl compositionImpl3 = (CompositionImpl) ((PausableComposition) reusableComposition2);
                        compositionImpl3.m();
                        compositionImpl3.t();
                        nodeState.f = compositionImpl3.o(true, function22);
                    } else {
                        CompositionImpl compositionImpl4 = (CompositionImpl) ((PausableComposition) reusableComposition2);
                        nodeState.f = compositionImpl4.o(compositionImpl4.m(), function22);
                    }
                } else if (nodeState.e) {
                    CompositionImpl compositionImpl5 = (CompositionImpl) reusableComposition2;
                    compositionImpl5.m();
                    compositionImpl5.t();
                    GapComposer gapComposer = compositionImpl5.E;
                    gapComposer.z = 0;
                    gapComposer.y = true;
                    compositionImpl5.j.a(compositionImpl5, function22);
                    if (gapComposer.F || gapComposer.z != 0) {
                        PreconditionsKt.a("Cannot disable reuse from root if it was caused by other groups");
                    }
                    gapComposer.z = -1;
                    gapComposer.y = false;
                } else {
                    ((CompositionImpl) reusableComposition2).B(function22);
                }
                nodeState.e = false;
                layoutNode2.z = false;
                Snapshot.Companion.e(a, b, function1);
                nodeState.d = false;
                return;
            }
            InlineClassHelperKt.c("parent composition reference not set");
            throw new RuntimeException();
        } catch (Throwable th) {
            Snapshot.Companion.e(a, b, function1);
            throw th;
        }
    }

    public final LayoutNode n(Object obj) {
        MutableScatterMap mutableScatterMap;
        int i;
        if (this.w != 0) {
            List o = this.j.o();
            int size = o.size() - this.x;
            int i2 = size - this.w;
            int i3 = size - 1;
            int i4 = i3;
            while (true) {
                mutableScatterMap = this.o;
                if (i4 >= i2) {
                    Object e = mutableScatterMap.e((LayoutNode) o.get(i4));
                    e.getClass();
                    if (Intrinsics.a(((NodeState) e).a, obj)) {
                        i = i4;
                        break;
                    }
                    i4--;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                while (i3 >= i2) {
                    Object e2 = mutableScatterMap.e((LayoutNode) o.get(i3));
                    e2.getClass();
                    NodeState nodeState = (NodeState) e2;
                    Object obj2 = nodeState.a;
                    if (obj2 != SubcomposeLayoutKt.a && !this.l.b(obj, obj2)) {
                        i3--;
                    } else {
                        nodeState.a = obj;
                        i4 = i3;
                        i = i4;
                        break;
                    }
                }
                i4 = i3;
            }
            if (i == -1) {
                return null;
            }
            if (i4 != i2) {
                j(i4, i2);
            }
            this.w--;
            LayoutNode layoutNode = (LayoutNode) o.get(i2);
            Object e3 = mutableScatterMap.e(layoutNode);
            e3.getClass();
            NodeState nodeState2 = (NodeState) e3;
            nodeState2.g = SnapshotStateKt.g(Boolean.TRUE);
            nodeState2.e = true;
            nodeState2.d = true;
            return layoutNode;
        }
        return null;
    }
}
