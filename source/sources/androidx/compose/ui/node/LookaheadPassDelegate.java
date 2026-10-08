package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LayoutNodeLayoutDelegateKt;
import androidx.compose.ui.node.LookaheadAlignmentLines;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import defpackage.c;
import defpackage.k8;
import defpackage.ta;
import defpackage.u2;
import java.util.List;
import kotlin.Unit;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LookaheadPassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public boolean E;
    public final ta F;
    public Object H;
    public final ta J;
    public final ta K;
    public boolean L;
    public final LayoutNodeLayoutDelegate o;
    public boolean p;
    public boolean t;
    public boolean u;
    public boolean v;
    public Constraints w;
    public Function1 y;
    public GraphicsLayer z;
    public int q = Integer.MAX_VALUE;
    public int r = Integer.MAX_VALUE;
    public LayoutNode.UsageByParent s = LayoutNode.UsageByParent.l;
    public long x = 0;
    public PlacedState A = PlacedState.l;
    public final LookaheadAlignmentLines B = new AlignmentLines(this);
    public final MutableVector C = new MutableVector(new LookaheadPassDelegate[16]);
    public boolean D = true;
    public boolean G = true;
    public long I = ConstraintsKt.b(0, 0, 0, 0, 15);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PlacedState {
        public static final PlacedState j;
        public static final PlacedState k;
        public static final PlacedState l;
        public static final /* synthetic */ PlacedState[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.LookaheadPassDelegate$PlacedState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.LookaheadPassDelegate$PlacedState] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.node.LookaheadPassDelegate$PlacedState] */
        static {
            ?? r0 = new Enum("IsPlacedInLookahead", 0);
            j = r0;
            ?? r1 = new Enum("IsPlacedInApproach", 1);
            k = r1;
            ?? r2 = new Enum("IsNotPlaced", 2);
            l = r2;
            PlacedState[] placedStateArr = {r0, r1, r2};
            m = placedStateArr;
            EnumEntriesKt.a(placedStateArr);
        }

        public static PlacedState valueOf(String str) {
            return (PlacedState) Enum.valueOf(PlacedState.class, str);
        }

        public static PlacedState[] values() {
            return (PlacedState[]) m.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.compose.ui.node.AlignmentLines, androidx.compose.ui.node.LookaheadAlignmentLines] */
    /* JADX WARN: Type inference failed for: r1v2, types: [ta] */
    /* JADX WARN: Type inference failed for: r4v4, types: [ta] */
    /* JADX WARN: Type inference failed for: r4v5, types: [ta] */
    public LookaheadPassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.o = layoutNodeLayoutDelegate;
        final int i = 1;
        final int i2 = 0;
        this.F = new Function0(this) { // from class: ta
            public final /* synthetic */ LookaheadPassDelegate k;

            {
                this.k = this;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                LookaheadDelegate b1;
                int i3 = i2;
                Placeable.PlacementScope placementScope = null;
                Unit unit = Unit.a;
                LookaheadPassDelegate lookaheadPassDelegate = this.k;
                switch (i3) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.o;
                        layoutNodeLayoutDelegate2.h = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i5]).P.q;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.q = lookaheadPassDelegate2.r;
                            lookaheadPassDelegate2.r = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.s == LayoutNode.UsageByParent.k) {
                                lookaheadPassDelegate2.s = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i7]).P.q;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.B.d = false;
                        }
                        LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.e().m0;
                        if (lookaheadDelegate != null) {
                            ?? obj = new Object();
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                LayoutNode layoutNode2 = (LayoutNode) n.get(i8);
                                LookaheadDelegate b12 = layoutNode2.O.d.b1();
                                if (b12 != null) {
                                    if (b12.x) {
                                        MutableObjectList mutableObjectList = (MutableObjectList) obj.j;
                                        if (mutableObjectList == null) {
                                            mutableObjectList = new MutableObjectList();
                                            obj.j = mutableObjectList;
                                        }
                                        obj.j = mutableObjectList;
                                        mutableObjectList.g(layoutNode2);
                                    }
                                    b12.x = lookaheadDelegate.x;
                                }
                            }
                            lookaheadDelegate.K0().d();
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            int i9 = 0;
                            while (true) {
                                boolean z = true;
                                if (i9 < size2) {
                                    LayoutNode layoutNode3 = (LayoutNode) n2.get(i9);
                                    MutableObjectList mutableObjectList2 = (MutableObjectList) obj.j;
                                    if (mutableObjectList2 == null || mutableObjectList2.c(layoutNode3) < 0) {
                                        z = false;
                                    }
                                    LookaheadDelegate b13 = layoutNode3.O.d.b1();
                                    if (b13 != null) {
                                        b13.x = z;
                                    }
                                    i9++;
                                } else {
                                    MutableVector D3 = layoutNode.D();
                                    Object[] objArr3 = D3.j;
                                    int i10 = D3.l;
                                    for (int i11 = 0; i11 < i10; i11++) {
                                        LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i11]).P.q;
                                        lookaheadPassDelegate4.getClass();
                                        int i12 = lookaheadPassDelegate4.q;
                                        int i13 = lookaheadPassDelegate4.r;
                                        if (i12 != i13 && i13 == Integer.MAX_VALUE) {
                                            lookaheadPassDelegate4.s0(true);
                                        }
                                    }
                                    MutableVector D4 = layoutNode.D();
                                    Object[] objArr4 = D4.j;
                                    int i14 = D4.l;
                                    for (int i15 = 0; i15 < i14; i15++) {
                                        LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i15]).P.q;
                                        lookaheadPassDelegate5.getClass();
                                        LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.B;
                                        lookaheadAlignmentLines.e = lookaheadAlignmentLines.d;
                                    }
                                    return unit;
                                }
                            }
                        } else {
                            u2.l("Expected lookahead delegate");
                            return null;
                        }
                        break;
                    case 1:
                        LookaheadDelegate b14 = lookaheadPassDelegate.o.a().b1();
                        b14.getClass();
                        b14.w(lookaheadPassDelegate.I);
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.o;
                        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate3.a) && !layoutNodeLayoutDelegate3.c) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator != null && (b1 = nodeCoordinator.b1()) != null) {
                                placementScope = b1.y;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator2 != null) {
                                placementScope = nodeCoordinator2.y;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate3.a).getPlacementScope();
                        }
                        LookaheadDelegate b15 = layoutNodeLayoutDelegate3.a().b1();
                        b15.getClass();
                        Placeable.PlacementScope.h(placementScope, b15, lookaheadPassDelegate.x);
                        return unit;
                }
            }
        };
        this.H = layoutNodeLayoutDelegate.p.B;
        this.J = new Function0(this) { // from class: ta
            public final /* synthetic */ LookaheadPassDelegate k;

            {
                this.k = this;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                LookaheadDelegate b1;
                int i3 = i;
                Placeable.PlacementScope placementScope = null;
                Unit unit = Unit.a;
                LookaheadPassDelegate lookaheadPassDelegate = this.k;
                switch (i3) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.o;
                        layoutNodeLayoutDelegate2.h = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i5]).P.q;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.q = lookaheadPassDelegate2.r;
                            lookaheadPassDelegate2.r = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.s == LayoutNode.UsageByParent.k) {
                                lookaheadPassDelegate2.s = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i7]).P.q;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.B.d = false;
                        }
                        LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.e().m0;
                        if (lookaheadDelegate != null) {
                            ?? obj = new Object();
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                LayoutNode layoutNode2 = (LayoutNode) n.get(i8);
                                LookaheadDelegate b12 = layoutNode2.O.d.b1();
                                if (b12 != null) {
                                    if (b12.x) {
                                        MutableObjectList mutableObjectList = (MutableObjectList) obj.j;
                                        if (mutableObjectList == null) {
                                            mutableObjectList = new MutableObjectList();
                                            obj.j = mutableObjectList;
                                        }
                                        obj.j = mutableObjectList;
                                        mutableObjectList.g(layoutNode2);
                                    }
                                    b12.x = lookaheadDelegate.x;
                                }
                            }
                            lookaheadDelegate.K0().d();
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            int i9 = 0;
                            while (true) {
                                boolean z = true;
                                if (i9 < size2) {
                                    LayoutNode layoutNode3 = (LayoutNode) n2.get(i9);
                                    MutableObjectList mutableObjectList2 = (MutableObjectList) obj.j;
                                    if (mutableObjectList2 == null || mutableObjectList2.c(layoutNode3) < 0) {
                                        z = false;
                                    }
                                    LookaheadDelegate b13 = layoutNode3.O.d.b1();
                                    if (b13 != null) {
                                        b13.x = z;
                                    }
                                    i9++;
                                } else {
                                    MutableVector D3 = layoutNode.D();
                                    Object[] objArr3 = D3.j;
                                    int i10 = D3.l;
                                    for (int i11 = 0; i11 < i10; i11++) {
                                        LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i11]).P.q;
                                        lookaheadPassDelegate4.getClass();
                                        int i12 = lookaheadPassDelegate4.q;
                                        int i13 = lookaheadPassDelegate4.r;
                                        if (i12 != i13 && i13 == Integer.MAX_VALUE) {
                                            lookaheadPassDelegate4.s0(true);
                                        }
                                    }
                                    MutableVector D4 = layoutNode.D();
                                    Object[] objArr4 = D4.j;
                                    int i14 = D4.l;
                                    for (int i15 = 0; i15 < i14; i15++) {
                                        LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i15]).P.q;
                                        lookaheadPassDelegate5.getClass();
                                        LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.B;
                                        lookaheadAlignmentLines.e = lookaheadAlignmentLines.d;
                                    }
                                    return unit;
                                }
                            }
                        } else {
                            u2.l("Expected lookahead delegate");
                            return null;
                        }
                        break;
                    case 1:
                        LookaheadDelegate b14 = lookaheadPassDelegate.o.a().b1();
                        b14.getClass();
                        b14.w(lookaheadPassDelegate.I);
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.o;
                        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate3.a) && !layoutNodeLayoutDelegate3.c) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator != null && (b1 = nodeCoordinator.b1()) != null) {
                                placementScope = b1.y;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator2 != null) {
                                placementScope = nodeCoordinator2.y;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate3.a).getPlacementScope();
                        }
                        LookaheadDelegate b15 = layoutNodeLayoutDelegate3.a().b1();
                        b15.getClass();
                        Placeable.PlacementScope.h(placementScope, b15, lookaheadPassDelegate.x);
                        return unit;
                }
            }
        };
        final int i3 = 2;
        this.K = new Function0(this) { // from class: ta
            public final /* synthetic */ LookaheadPassDelegate k;

            {
                this.k = this;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                LookaheadDelegate b1;
                int i32 = i3;
                Placeable.PlacementScope placementScope = null;
                Unit unit = Unit.a;
                LookaheadPassDelegate lookaheadPassDelegate = this.k;
                switch (i32) {
                    case 0:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.o;
                        layoutNodeLayoutDelegate2.h = 0;
                        LayoutNode layoutNode = layoutNodeLayoutDelegate2.a;
                        MutableVector D = layoutNode.D();
                        Object[] objArr = D.j;
                        int i4 = D.l;
                        for (int i5 = 0; i5 < i4; i5++) {
                            LookaheadPassDelegate lookaheadPassDelegate2 = ((LayoutNode) objArr[i5]).P.q;
                            lookaheadPassDelegate2.getClass();
                            lookaheadPassDelegate2.q = lookaheadPassDelegate2.r;
                            lookaheadPassDelegate2.r = Integer.MAX_VALUE;
                            if (lookaheadPassDelegate2.s == LayoutNode.UsageByParent.k) {
                                lookaheadPassDelegate2.s = LayoutNode.UsageByParent.l;
                            }
                        }
                        MutableVector D2 = layoutNode.D();
                        Object[] objArr2 = D2.j;
                        int i6 = D2.l;
                        for (int i7 = 0; i7 < i6; i7++) {
                            LookaheadPassDelegate lookaheadPassDelegate3 = ((LayoutNode) objArr2[i7]).P.q;
                            lookaheadPassDelegate3.getClass();
                            lookaheadPassDelegate3.B.d = false;
                        }
                        LookaheadDelegate lookaheadDelegate = lookaheadPassDelegate.e().m0;
                        if (lookaheadDelegate != null) {
                            ?? obj = new Object();
                            List n = layoutNode.n();
                            int size = n.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                LayoutNode layoutNode2 = (LayoutNode) n.get(i8);
                                LookaheadDelegate b12 = layoutNode2.O.d.b1();
                                if (b12 != null) {
                                    if (b12.x) {
                                        MutableObjectList mutableObjectList = (MutableObjectList) obj.j;
                                        if (mutableObjectList == null) {
                                            mutableObjectList = new MutableObjectList();
                                            obj.j = mutableObjectList;
                                        }
                                        obj.j = mutableObjectList;
                                        mutableObjectList.g(layoutNode2);
                                    }
                                    b12.x = lookaheadDelegate.x;
                                }
                            }
                            lookaheadDelegate.K0().d();
                            List n2 = layoutNode.n();
                            int size2 = n2.size();
                            int i9 = 0;
                            while (true) {
                                boolean z = true;
                                if (i9 < size2) {
                                    LayoutNode layoutNode3 = (LayoutNode) n2.get(i9);
                                    MutableObjectList mutableObjectList2 = (MutableObjectList) obj.j;
                                    if (mutableObjectList2 == null || mutableObjectList2.c(layoutNode3) < 0) {
                                        z = false;
                                    }
                                    LookaheadDelegate b13 = layoutNode3.O.d.b1();
                                    if (b13 != null) {
                                        b13.x = z;
                                    }
                                    i9++;
                                } else {
                                    MutableVector D3 = layoutNode.D();
                                    Object[] objArr3 = D3.j;
                                    int i10 = D3.l;
                                    for (int i11 = 0; i11 < i10; i11++) {
                                        LookaheadPassDelegate lookaheadPassDelegate4 = ((LayoutNode) objArr3[i11]).P.q;
                                        lookaheadPassDelegate4.getClass();
                                        int i12 = lookaheadPassDelegate4.q;
                                        int i13 = lookaheadPassDelegate4.r;
                                        if (i12 != i13 && i13 == Integer.MAX_VALUE) {
                                            lookaheadPassDelegate4.s0(true);
                                        }
                                    }
                                    MutableVector D4 = layoutNode.D();
                                    Object[] objArr4 = D4.j;
                                    int i14 = D4.l;
                                    for (int i15 = 0; i15 < i14; i15++) {
                                        LookaheadPassDelegate lookaheadPassDelegate5 = ((LayoutNode) objArr4[i15]).P.q;
                                        lookaheadPassDelegate5.getClass();
                                        LookaheadAlignmentLines lookaheadAlignmentLines = lookaheadPassDelegate5.B;
                                        lookaheadAlignmentLines.e = lookaheadAlignmentLines.d;
                                    }
                                    return unit;
                                }
                            }
                        } else {
                            u2.l("Expected lookahead delegate");
                            return null;
                        }
                        break;
                    case 1:
                        LookaheadDelegate b14 = lookaheadPassDelegate.o.a().b1();
                        b14.getClass();
                        b14.w(lookaheadPassDelegate.I);
                        return unit;
                    default:
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate3 = lookaheadPassDelegate.o;
                        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate3.a) && !layoutNodeLayoutDelegate3.c) {
                            NodeCoordinator nodeCoordinator = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator != null && (b1 = nodeCoordinator.b1()) != null) {
                                placementScope = b1.y;
                            }
                        } else {
                            NodeCoordinator nodeCoordinator2 = layoutNodeLayoutDelegate3.a().F;
                            if (nodeCoordinator2 != null) {
                                placementScope = nodeCoordinator2.y;
                            }
                        }
                        if (placementScope == null) {
                            placementScope = LayoutNodeKt.a(layoutNodeLayoutDelegate3.a).getPlacementScope();
                        }
                        LookaheadDelegate b15 = layoutNodeLayoutDelegate3.a().b1();
                        b15.getClass();
                        Placeable.PlacementScope.h(placementScope, b15, lookaheadPassDelegate.x);
                        return unit;
                }
            }
        };
    }

    public final void A0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (layoutNodeLayoutDelegate.o > 0) {
            MutableVector D = layoutNodeLayoutDelegate.a.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode = (LayoutNode) objArr[i2];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode.P;
                if ((layoutNodeLayoutDelegate2.m || layoutNodeLayoutDelegate2.n) && !layoutNodeLayoutDelegate2.f) {
                    layoutNode.W(false);
                }
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.A0();
                }
            }
        }
    }

    public final void C0() {
        LayoutNode.UsageByParent usageByParent;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode.X(layoutNodeLayoutDelegate.a, false, 7);
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

    public final void E0() {
        LayoutNode.LayoutState layoutState;
        this.L = true;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode w = layoutNodeLayoutDelegate.a.w();
        PlacedState placedState = this.A;
        if ((placedState != PlacedState.j && !layoutNodeLayoutDelegate.c) || (placedState != PlacedState.k && layoutNodeLayoutDelegate.c)) {
            w0();
            if (this.p && w != null) {
                w.W(false);
            }
        }
        if (w != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = w.P;
            if (!this.p && ((layoutState = layoutNodeLayoutDelegate2.d) == LayoutNode.LayoutState.l || layoutState == LayoutNode.LayoutState.m)) {
                if (this.r != Integer.MAX_VALUE) {
                    InlineClassHelperKt.b("Place was called on a node which was placed already");
                }
                int i = layoutNodeLayoutDelegate2.h;
                this.r = i;
                layoutNodeLayoutDelegate2.h = i + 1;
            }
        } else {
            this.r = 0;
        }
        Q();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void F(c cVar) {
        MutableVector D = this.o.a.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).P.q;
            lookaheadPassDelegate.getClass();
            cVar.b(lookaheadPassDelegate);
        }
    }

    public final void F0(long j, Function1 function1, GraphicsLayer graphicsLayer) {
        LayoutNode.LayoutState layoutState;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        try {
            LayoutNode w = layoutNode.w();
            if (w != null) {
                layoutState = w.P.d;
            } else {
                layoutState = null;
            }
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.m;
            if (layoutState == layoutState2) {
                layoutNodeLayoutDelegate.c = false;
            }
            if (layoutNode2.Z) {
                InlineClassHelperKt.a("place is called on a deactivated node");
            }
            layoutNodeLayoutDelegate.d = layoutState2;
            boolean z = true;
            this.u = true;
            this.L = false;
            if (!IntOffset.a(j, this.x)) {
                if (layoutNodeLayoutDelegate.n || layoutNodeLayoutDelegate.m) {
                    layoutNodeLayoutDelegate.f = true;
                }
                A0();
            }
            Owner a = LayoutNodeKt.a(layoutNode2);
            this.x = j;
            if (!layoutNodeLayoutDelegate.f) {
                if (this.A == PlacedState.l) {
                    z = false;
                }
                if (z) {
                    LookaheadDelegate b1 = layoutNodeLayoutDelegate.a().b1();
                    b1.getClass();
                    b1.U0(IntOffset.c(j, b1.n));
                    E0();
                    this.y = function1;
                    this.z = graphicsLayer;
                    layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.n;
                }
            }
            layoutNodeLayoutDelegate.h(false);
            this.B.g = false;
            OwnerSnapshotObserver snapshotObserver = a.getSnapshotObserver();
            snapshotObserver.a.e(layoutNode2, snapshotObserver.g, this.K);
            this.y = function1;
            this.z = graphicsLayer;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.n;
        } catch (Throwable th) {
            layoutNode.c0(th);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:38:0x0093, B:39:0x0098, B:41:0x00b5), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064 A[Catch: all -> 0x0010, LOOP:0: B:28:0x0062->B:29:0x0064, LOOP_END, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:38:0x0093, B:39:0x0098, B:41:0x00b5), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:38:0x0093, B:39:0x0098, B:41:0x00b5), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0093 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:3:0x0006, B:5:0x000a, B:6:0x0013, B:9:0x001f, B:13:0x0027, B:15:0x002f, B:20:0x003e, B:22:0x0042, B:23:0x0047, B:26:0x0035, B:27:0x004b, B:29:0x0064, B:31:0x0076, B:33:0x007a, B:34:0x0082, B:38:0x0093, B:39:0x0098, B:41:0x00b5), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean G0(long j) {
        boolean z;
        int i;
        int i2;
        long j2;
        LookaheadDelegate b1;
        boolean z2;
        boolean b;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        try {
            if (layoutNode.Z) {
                InlineClassHelperKt.a("measure is called on a deactivated node");
            }
            LayoutNode w = layoutNode2.w();
            if (!layoutNode2.N && (w == null || !w.N)) {
                z = false;
                layoutNode2.N = z;
                if (!layoutNode2.P.e) {
                    Constraints constraints = this.w;
                    if (constraints == null) {
                        b = false;
                    } else {
                        b = Constraints.b(constraints.a, j);
                    }
                    if (b) {
                        Owner owner = layoutNode2.w;
                        if (owner != null) {
                            ((AndroidComposeView) owner).g(layoutNode2, true);
                        }
                        layoutNode2.b0();
                        return false;
                    }
                }
                this.w = new Constraints(j);
                k0(j);
                this.B.f = false;
                MutableVector D = layoutNode2.D();
                Object[] objArr = D.j;
                i = D.l;
                for (i2 = 0; i2 < i; i2++) {
                    LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).P.q;
                    lookaheadPassDelegate.getClass();
                    lookaheadPassDelegate.B.c = false;
                }
                if (!this.v) {
                    j2 = this.l;
                } else {
                    j2 = -9223372034707292160L;
                }
                this.v = true;
                b1 = layoutNodeLayoutDelegate.a().b1();
                if (b1 == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    InlineClassHelperKt.b("Lookahead result from lookaheadRemeasure cannot be null");
                }
                layoutNodeLayoutDelegate.c(j);
                j0((b1.j << 32) | (b1.k & 4294967295L));
                if (((int) (j2 >> 32)) == b1.j || ((int) (j2 & 4294967295L)) != b1.k) {
                    return true;
                }
                return false;
            }
            z = true;
            layoutNode2.N = z;
            if (!layoutNode2.P.e) {
            }
            this.w = new Constraints(j);
            k0(j);
            this.B.f = false;
            MutableVector D2 = layoutNode2.D();
            Object[] objArr2 = D2.j;
            i = D2.l;
            while (i2 < i) {
            }
            if (!this.v) {
            }
            this.v = true;
            b1 = layoutNodeLayoutDelegate.a().b1();
            if (b1 == null) {
            }
            if (!z2) {
            }
            layoutNodeLayoutDelegate.c(j);
            j0((b1.j << 32) | (b1.k & 4294967295L));
            if (((int) (j2 >> 32)) == b1.j) {
            }
            return true;
        } catch (Throwable th) {
            layoutNode.c0(th);
            throw null;
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
        LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.k;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.B;
        if (layoutState == layoutState3) {
            lookaheadAlignmentLines.c = true;
        } else {
            LayoutNode w2 = layoutNodeLayoutDelegate.a.w();
            if (w2 != null) {
                layoutState2 = w2.P.d;
            }
            if (layoutState2 == LayoutNode.LayoutState.m) {
                lookaheadAlignmentLines.d = true;
            }
        }
        this.t = true;
        LookaheadDelegate b1 = layoutNodeLayoutDelegate.a().b1();
        b1.getClass();
        int K = b1.K(alignmentLine);
        this.t = false;
        return K;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void M(boolean z) {
        Boolean bool;
        LookaheadDelegate b1;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LookaheadDelegate b12 = layoutNodeLayoutDelegate.a().b1();
        if (b12 != null) {
            bool = Boolean.valueOf(b12.u);
        } else {
            bool = null;
        }
        if (!Boolean.valueOf(z).equals(bool) && (b1 = layoutNodeLayoutDelegate.a().b1()) != null) {
            b1.u = z;
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void Q() {
        Constraints constraints;
        this.E = true;
        LookaheadAlignmentLines lookaheadAlignmentLines = this.B;
        lookaheadAlignmentLines.i();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        boolean z = layoutNodeLayoutDelegate.f;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        if (z) {
            MutableVector D = layoutNode.D();
            Object[] objArr = D.j;
            int i = D.l;
            for (int i2 = 0; i2 < i; i2++) {
                LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNode2.P;
                if (layoutNodeLayoutDelegate2.e && layoutNode2.t() == LayoutNode.UsageByParent.j) {
                    LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate2.q;
                    lookaheadPassDelegate.getClass();
                    LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate2.q;
                    if (lookaheadPassDelegate2 != null) {
                        constraints = lookaheadPassDelegate2.w;
                    } else {
                        constraints = null;
                    }
                    constraints.getClass();
                    if (lookaheadPassDelegate.G0(constraints.a)) {
                        LayoutNode.X(layoutNode, false, 7);
                    }
                }
            }
        }
        LookaheadDelegate lookaheadDelegate = e().m0;
        lookaheadDelegate.getClass();
        if (layoutNodeLayoutDelegate.g || (!this.t && !lookaheadDelegate.x && layoutNodeLayoutDelegate.f)) {
            layoutNodeLayoutDelegate.f = false;
            LayoutNode.LayoutState layoutState = layoutNodeLayoutDelegate.d;
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.m;
            layoutNodeLayoutDelegate.i(false);
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode).getSnapshotObserver();
            snapshotObserver.a.e(layoutNode, snapshotObserver.h, this.F);
            layoutNodeLayoutDelegate.d = layoutState;
            if (layoutNodeLayoutDelegate.m && lookaheadDelegate.x) {
                requestLayout();
            }
            layoutNodeLayoutDelegate.g = false;
        }
        if (lookaheadAlignmentLines.d) {
            lookaheadAlignmentLines.e = true;
        }
        if (lookaheadAlignmentLines.b && lookaheadAlignmentLines.f()) {
            lookaheadAlignmentLines.h();
        }
        this.E = false;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void T() {
        LayoutNode.X(this.o.a, false, 7);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int V(int i) {
        C0();
        LookaheadDelegate b1 = this.o.a().b1();
        b1.getClass();
        return b1.V(i);
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public final Object a() {
        return this.H;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int b(int i) {
        C0();
        LookaheadDelegate b1 = this.o.a().b1();
        b1.getClass();
        return b1.b(i);
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void b0(long j, float f, GraphicsLayer graphicsLayer) {
        F0(j, null, graphicsLayer);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final AlignmentLines c() {
        return this.B;
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final void c0(long j, float f, Function1 function1) {
        F0(j, function1, null);
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
            return layoutNodeLayoutDelegate.q;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int m(int i) {
        C0();
        LookaheadDelegate b1 = this.o.a().b1();
        b1.getClass();
        return b1.m(i);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final int n() {
        return this.r;
    }

    public final boolean n0() {
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        if (!LayoutNodeLayoutDelegateKt.a(layoutNodeLayoutDelegate.a) && !layoutNodeLayoutDelegate.c) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int p(int i) {
        C0();
        LookaheadDelegate b1 = this.o.a().b1();
        b1.getClass();
        return b1.p(i);
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public final void requestLayout() {
        this.o.a.W(false);
    }

    public final void s0(boolean z) {
        if (!z || !n0()) {
            if (z || n0()) {
                this.A = PlacedState.l;
                MutableVector D = this.o.a.D();
                Object[] objArr = D.j;
                int i = D.l;
                for (int i2 = 0; i2 < i; i2++) {
                    LookaheadPassDelegate lookaheadPassDelegate = ((LayoutNode) objArr[i2]).P.q;
                    lookaheadPassDelegate.getClass();
                    lookaheadPassDelegate.s0(true);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
    
        if (r1 == androidx.compose.ui.node.LayoutNode.LayoutState.m) goto L14;
     */
    @Override // androidx.compose.ui.layout.Measurable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Placeable w(long j) {
        LayoutNode.LayoutState layoutState;
        LayoutNode.UsageByParent usageByParent;
        LayoutNode.LayoutState layoutState2;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        LayoutNode layoutNode2 = layoutNodeLayoutDelegate.a;
        LayoutNode w = layoutNode.w();
        if (w != null) {
            layoutState = w.P.d;
        } else {
            layoutState = null;
        }
        if (layoutState != LayoutNode.LayoutState.k) {
            LayoutNode w2 = layoutNode2.w();
            if (w2 != null) {
                layoutState2 = w2.P.d;
            } else {
                layoutState2 = null;
            }
        }
        layoutNodeLayoutDelegate.b = false;
        LayoutNode w3 = layoutNode2.w();
        if (w3 != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = w3.P;
            if (this.s != LayoutNode.UsageByParent.l && !layoutNode2.N) {
                InlineClassHelperKt.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int ordinal = layoutNodeLayoutDelegate2.d.ordinal();
            if (ordinal != 0 && ordinal != 1) {
                if (ordinal != 2 && ordinal != 3) {
                    k8.p(layoutNodeLayoutDelegate2.d, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                usageByParent = LayoutNode.UsageByParent.k;
            } else {
                usageByParent = LayoutNode.UsageByParent.j;
            }
            this.s = usageByParent;
        } else {
            this.s = LayoutNode.UsageByParent.l;
        }
        if (layoutNode2.L == LayoutNode.UsageByParent.l) {
            layoutNode2.e();
        }
        G0(j);
        return this;
    }

    public final void w0() {
        PlacedState placedState = this.A;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.o;
        boolean z = layoutNodeLayoutDelegate.c;
        LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
        if (z) {
            this.A = PlacedState.k;
        } else {
            this.A = PlacedState.j;
        }
        if (placedState != PlacedState.j && layoutNodeLayoutDelegate.e) {
            LayoutNode.X(layoutNode, true, 6);
        }
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            LookaheadPassDelegate lookaheadPassDelegate = layoutNode2.P.q;
            if (lookaheadPassDelegate != null) {
                if (lookaheadPassDelegate.r != Integer.MAX_VALUE) {
                    lookaheadPassDelegate.w0();
                    LayoutNode.a0(layoutNode2);
                }
            } else {
                u2.g("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                return;
            }
        }
    }
}
