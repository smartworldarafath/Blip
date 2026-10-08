package androidx.compose.ui.focus;

import android.os.Trace;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.UnplacedAwareModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a7;
import defpackage.k8;
import defpackage.p0;
import defpackage.r0;
import defpackage.u2;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusTargetNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, FocusTargetModifierNode, ObserverModifierNode, ModifierLocalModifierNode, UnplacedAwareModifierNode {
    public boolean A;
    public final int B;
    public SaveableStateRegistry.Entry C;
    public final boolean x;
    public final Function2 y;
    public boolean z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FocusTargetElement extends ModifierNodeElement<FocusTargetNode> {
        public static final FocusTargetElement b = new Object();

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node g() {
            return new FocusTargetNode(0, null, 15);
        }

        public final int hashCode() {
            return 1739042953;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void i(Modifier.Node node) {
        }
    }

    public FocusTargetNode(int i, Function2 function2, int i2) {
        i = (i2 & 1) != 0 ? 1 : i;
        boolean z = (i2 & 2) == 0;
        function2 = (i2 & 4) != 0 ? null : function2;
        this.x = z;
        this.y = function2;
        this.B = i;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0059  */
    @Override // androidx.compose.ui.Modifier.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R0() {
        SaveableStateRegistry.Entry entry;
        int ordinal = d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return;
                    }
                }
            } else {
                FocusOwner focusOwner = DelegatableNodeKt.h(this).getFocusOwner();
                FocusTargetNode a = FocusTraversalKt.a(this);
                if (a != null && a.x) {
                    FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) focusOwner;
                    focusOwnerImpl.a.D();
                    focusOwnerImpl.d.a();
                }
            }
            entry = this.C;
            if (entry != null) {
                ((SaveableStateRegistryImpl$registerProvider$3) entry).a();
            }
            this.C = null;
        }
        FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) DelegatableNodeKt.h(this).getFocusOwner();
        focusOwnerImpl2.c(8, true, false);
        if (this.x) {
            focusOwnerImpl2.a.D();
        }
        focusOwnerImpl2.d.a();
        entry = this.C;
        if (entry != null) {
        }
        this.C = null;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        if (d1().b()) {
            ((FocusOwnerImpl) DelegatableNodeKt.h(this).getFocusOwner()).c(8, true, true);
        }
    }

    public final boolean Y0(int i) {
        int ordinal = FocusTransactionsKt.d(this, i).ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return true;
                }
                if (ordinal != 3) {
                    k8.e();
                    return false;
                }
                return false;
            }
            return false;
        }
        return FocusTransactionsKt.e(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.compose.runtime.collection.MutableVector] */
    public final void Z0(FocusStateImpl focusStateImpl, FocusStateImpl focusStateImpl2) {
        NodeChain nodeChain;
        Function2 function2;
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) DelegatableNodeKt.h(this).getFocusOwner();
        FocusTargetNode g = focusOwnerImpl.g();
        if (!focusStateImpl.equals(focusStateImpl2) && (function2 = this.y) != null) {
            function2.n(focusStateImpl, focusStateImpl2);
        }
        Modifier.Node node = this.j;
        if (!node.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.j;
        LayoutNode g2 = DelegatableNodeKt.g(this);
        while (g2 != null) {
            if ((g2.O.f.m & 5120) != 0) {
                while (node2 != null) {
                    int i = node2.l;
                    if ((i & 5120) != 0) {
                        if (node2 == node || (i & 1024) == 0) {
                            if ((i & 4096) != 0) {
                                DelegatingNode delegatingNode = node2;
                                ?? r5 = 0;
                                while (delegatingNode != 0) {
                                    if (delegatingNode instanceof FocusEventModifierNode) {
                                        FocusEventModifierNode focusEventModifierNode = (FocusEventModifierNode) delegatingNode;
                                        if (g == focusOwnerImpl.g()) {
                                            focusEventModifierNode.j0(focusStateImpl2);
                                        }
                                    } else if ((delegatingNode.l & 4096) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                        Modifier.Node node3 = delegatingNode.y;
                                        int i2 = 0;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                        while (node3 != null) {
                                            if ((node3.l & 4096) != 0) {
                                                i2++;
                                                r5 = r5;
                                                if (i2 == 1) {
                                                    delegatingNode = node3;
                                                } else {
                                                    if (r5 == 0) {
                                                        r5 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (delegatingNode != 0) {
                                                        r5.b(delegatingNode);
                                                        delegatingNode = 0;
                                                    }
                                                    r5.b(node3);
                                                }
                                            }
                                            node3 = node3.o;
                                            delegatingNode = delegatingNode;
                                            r5 = r5;
                                        }
                                        if (i2 == 1) {
                                        }
                                    }
                                    delegatingNode = DelegatableNodeKt.b(r5);
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    node2 = node2.n;
                }
            }
            g2 = g2.w();
            if (g2 != null && (nodeChain = g2.O) != null) {
                node2 = nodeChain.e;
            } else {
                node2 = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.focus.FocusPropertiesImpl, androidx.compose.ui.focus.FocusProperties, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.ui.focus.FocusPropertiesModifierNode] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [androidx.compose.runtime.collection.MutableVector] */
    public final FocusPropertiesImpl a1() {
        boolean z;
        boolean z2;
        NodeChain nodeChain;
        ?? obj = new Object();
        obj.a = true;
        FocusRequester focusRequester = FocusRequester.b;
        obj.b = focusRequester;
        obj.c = focusRequester;
        obj.d = focusRequester;
        obj.e = focusRequester;
        obj.f = focusRequester;
        obj.g = focusRequester;
        obj.h = focusRequester;
        obj.i = focusRequester;
        int i = 12;
        obj.j = new a7(i);
        obj.k = new a7(i);
        obj.l = FocusProperties.Companion.a;
        int i2 = this.B;
        if (i2 == 1) {
            z = true;
        } else if (i2 == 0) {
            if (((InputMode) ((SnapshotMutableStateImpl) ((InputModeManagerImpl) ((InputModeManager) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.m))).a).getValue()).a == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            z = !z2;
        } else if (i2 == 2) {
            z = false;
        } else {
            u2.l("Unknown Focusability");
            return null;
        }
        obj.a = z;
        Modifier.Node node = this.j;
        if (!node.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = this.j;
        LayoutNode g = DelegatableNodeKt.g(this);
        loop0: while (g != null) {
            if ((g.O.f.m & 3072) != 0) {
                while (node2 != null) {
                    int i3 = node2.l;
                    if ((i3 & 3072) != 0) {
                        if (node2 != node && (i3 & 1024) != 0) {
                            break loop0;
                        }
                        if ((i3 & 2048) != 0) {
                            ?? r7 = 0;
                            DelegatingNode delegatingNode = node2;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof FocusPropertiesModifierNode) {
                                    ((FocusPropertiesModifierNode) delegatingNode).F(obj);
                                } else if ((delegatingNode.l & 2048) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node3 = delegatingNode.y;
                                    int i4 = 0;
                                    delegatingNode = delegatingNode;
                                    r7 = r7;
                                    while (node3 != null) {
                                        if ((node3.l & 2048) != 0) {
                                            i4++;
                                            r7 = r7;
                                            if (i4 == 1) {
                                                delegatingNode = node3;
                                            } else {
                                                if (r7 == 0) {
                                                    r7 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r7.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r7.b(node3);
                                            }
                                        }
                                        node3 = node3.o;
                                        delegatingNode = delegatingNode;
                                        r7 = r7;
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r7);
                            }
                        }
                    }
                    node2 = node2.n;
                }
            }
            g = g.w();
            if (g != null && (nodeChain = g.O) != null) {
                node2 = nodeChain.e;
            } else {
                node2 = null;
            }
        }
        return obj;
    }

    public final Rect b1(LayoutCoordinates layoutCoordinates) {
        Rect rect = a1().l;
        if (rect != FocusProperties.Companion.a) {
            if (layoutCoordinates == null) {
                return rect;
            }
            return rect.i(layoutCoordinates.t(DelegatableNodeKt.f(this), 0L));
        }
        if (layoutCoordinates != null) {
            return layoutCoordinates.l(DelegatableNodeKt.f(this), false);
        }
        return RectKt.a(0L, IntSizeKt.a(DelegatableNodeKt.f(this).l));
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x009d, code lost:
    
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.ui.Modifier$Node] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final BeyondBoundsLayout c1() {
        NodeChain nodeChain;
        Object obj;
        if (!this.j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node = this.j.n;
        LayoutNode g = DelegatableNodeKt.g(this);
        while (true) {
            if (g == null) {
                break;
            }
            DelegatingNode delegatingNode = node;
            if ((g.O.f.m & 8388640) != 0) {
                while (delegatingNode != 0) {
                    int i = delegatingNode.l;
                    if ((i & 8388640) != 0) {
                        if ((8388608 & i) != 0) {
                            if (!(delegatingNode instanceof BeyondBoundsLayoutProviderModifierNode)) {
                                if (delegatingNode instanceof DelegatingNode) {
                                    Modifier.Node node2 = delegatingNode.y;
                                    delegatingNode = 0;
                                    while (node2 != null) {
                                        if (node2 instanceof BeyondBoundsLayoutProviderModifierNode) {
                                            delegatingNode = node2;
                                        }
                                        node2 = node2.o;
                                        delegatingNode = delegatingNode;
                                    }
                                } else {
                                    delegatingNode = 0;
                                }
                            }
                            BeyondBoundsLayoutProviderModifierNode beyondBoundsLayoutProviderModifierNode = (BeyondBoundsLayoutProviderModifierNode) delegatingNode;
                            if (beyondBoundsLayoutProviderModifierNode != null) {
                                return (LazyLayoutBeyondBoundsProviderModifierNode) beyondBoundsLayoutProviderModifierNode;
                            }
                        } else if ((i & 32) == 0) {
                            continue;
                        } else {
                            if (delegatingNode instanceof ModifierLocalModifierNode) {
                                obj = delegatingNode;
                            } else if (delegatingNode instanceof DelegatingNode) {
                                obj = null;
                                for (Modifier.Node node3 = delegatingNode.y; node3 != null; node3 = node3.o) {
                                    if (node3 instanceof ModifierLocalModifierNode) {
                                        obj = node3;
                                    }
                                }
                            } else {
                                obj = null;
                            }
                            ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) obj;
                            if (modifierLocalModifierNode != null && modifierLocalModifierNode.a0().a(androidx.compose.ui.layout.BeyondBoundsLayoutKt.a)) {
                                return (BeyondBoundsLayout) modifierLocalModifierNode.a0().b();
                            }
                        }
                    }
                    delegatingNode = delegatingNode.n;
                }
            }
            g = g.w();
            if (g != null && (nodeChain = g.O) != null) {
                node = nodeChain.e;
            } else {
                node = null;
            }
        }
    }

    public final FocusStateImpl d1() {
        NodeChain nodeChain;
        if (!this.w) {
            return FocusStateImpl.m;
        }
        FocusTargetNode g = ((FocusOwnerImpl) DelegatableNodeKt.h(this).getFocusOwner()).g();
        if (g == null) {
            return FocusStateImpl.m;
        }
        if (this == g) {
            return FocusStateImpl.j;
        }
        if (g.w) {
            if (!g.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node = g.j.n;
            LayoutNode g2 = DelegatableNodeKt.g(g);
            while (g2 != null) {
                if ((g2.O.f.m & 1024) != 0) {
                    while (node != null) {
                        if ((node.l & 1024) != 0) {
                            Modifier.Node node2 = node;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if (node2 instanceof FocusTargetNode) {
                                    if (this == ((FocusTargetNode) node2)) {
                                        return FocusStateImpl.k;
                                    }
                                } else if ((node2.l & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                        if ((node3.l & 1024) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node2 = node3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.b(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.b(node3);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        node = node.n;
                    }
                }
                g2 = g2.w();
                if (g2 != null && (nodeChain = g2.O) != null) {
                    node = nodeChain.e;
                } else {
                    node = null;
                }
            }
        }
        return FocusStateImpl.m;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void e1() {
        int ordinal = d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
        }
        ?? obj = new Object();
        ObserverModifierNodeKt.a(this, new p0(15, (Object) obj, this));
        Object obj2 = obj.j;
        if (obj2 != null) {
            if (!((FocusProperties) obj2).a()) {
                ((FocusOwnerImpl) DelegatableNodeKt.h(this).getFocusOwner()).c(8, true, true);
                return;
            }
            return;
        }
        Intrinsics.e("focusProperties");
        throw null;
    }

    public final boolean f1(int i) {
        Trace.beginSection("FocusTransactions:requestFocus");
        try {
            if (a1().a) {
                return Y0(i);
            }
            return TwoDimensionalFocusSearchKt.e(this, i, new r0(i, 4));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        e1();
    }

    @Override // androidx.compose.ui.node.UnplacedAwareModifierNode
    public final void L0() {
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
    }
}
