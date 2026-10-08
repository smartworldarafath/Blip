package androidx.compose.ui.semantics;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.ma;
import defpackage.q7;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsNode {
    public final Modifier.Node a;
    public final boolean b;
    public final LayoutNode c;
    public final SemanticsConfiguration d;
    public SemanticsNode e;
    public final int f;

    public SemanticsNode(Modifier.Node node, boolean z, LayoutNode layoutNode, SemanticsConfiguration semanticsConfiguration) {
        this.a = node;
        this.b = z;
        this.c = layoutNode;
        this.d = semanticsConfiguration;
        this.f = layoutNode.k;
    }

    public static /* synthetic */ List j(int i, SemanticsNode semanticsNode) {
        boolean z;
        boolean z2 = false;
        if ((i & 1) != 0) {
            z = !semanticsNode.b;
        } else {
            z = false;
        }
        if ((i & 2) == 0) {
            z2 = true;
        }
        return semanticsNode.i(z, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final Rect a(NodeCoordinator nodeCoordinator) {
        DelegatingNode delegatingNode;
        SemanticsNode l = l();
        if (l == null) {
            return Rect.e;
        }
        Modifier.Node node = l.c.O.f;
        NodeCoordinator nodeCoordinator2 = null;
        if ((node.m & 8) != 0) {
            loop0: while (node != null) {
                if ((node.l & 8) != 0) {
                    delegatingNode = node;
                    ?? r5 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof SemanticsModifierNode) {
                            if (delegatingNode.n()) {
                                break loop0;
                            }
                        } else if ((delegatingNode.l & 8) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node2 = delegatingNode.y;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r5 = r5;
                            while (node2 != null) {
                                if ((node2.l & 8) != 0) {
                                    i++;
                                    r5 = r5;
                                    if (i == 1) {
                                        delegatingNode = node2;
                                    } else {
                                        if (r5 == 0) {
                                            r5 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r5.b(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r5.b(node2);
                                    }
                                }
                                node2 = node2.o;
                                delegatingNode = delegatingNode;
                                r5 = r5;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = DelegatableNodeKt.b(r5);
                    }
                }
                if ((node.m & 8) == 0) {
                    break;
                }
                node = node.o;
            }
        }
        delegatingNode = 0;
        SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) delegatingNode;
        if (semanticsModifierNode != null) {
            nodeCoordinator2 = DelegatableNodeKt.e(semanticsModifierNode, 8);
        }
        if (nodeCoordinator2 == null) {
            return l.a(nodeCoordinator);
        }
        return nodeCoordinator2.l(nodeCoordinator, true);
    }

    public final SemanticsNode b(Role role, Function1 function1) {
        int i;
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.l = false;
        semanticsConfiguration.m = false;
        function1.b(semanticsConfiguration);
        SemanticsNode$fakeSemanticsNode$fakeNode$1 semanticsNode$fakeSemanticsNode$fakeNode$1 = new SemanticsNode$fakeSemanticsNode$fakeNode$1(function1);
        int i2 = this.f;
        if (role != null) {
            i = 1000000000;
        } else {
            i = 2000000000;
        }
        SemanticsNode semanticsNode = new SemanticsNode(semanticsNode$fakeSemanticsNode$fakeNode$1, false, new LayoutNode(i2 + i, true), semanticsConfiguration);
        semanticsNode.e = this;
        return semanticsNode;
    }

    public final void c(LayoutNode layoutNode, ArrayList arrayList) {
        MutableVector C = layoutNode.C();
        Object[] objArr = C.j;
        int i = C.l;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (layoutNode2.L() && !layoutNode2.Z) {
                if (layoutNode2.O.d(8)) {
                    arrayList.add(SemanticsNodeKt.a(layoutNode2, this.b));
                } else {
                    c(layoutNode2, arrayList);
                }
            }
        }
    }

    public final NodeCoordinator d() {
        if (o()) {
            SemanticsNode l = l();
            if (l != null) {
                return l.d();
            }
            return null;
        }
        SemanticsModifierNode f = f();
        if (f != null) {
            return DelegatableNodeKt.e(f, 8);
        }
        return this.c.O.c;
    }

    public final void e(ArrayList arrayList, ArrayList arrayList2) {
        r(arrayList, false);
        int size = arrayList.size();
        for (int size2 = arrayList.size(); size2 < size; size2++) {
            SemanticsNode semanticsNode = (SemanticsNode) arrayList.get(size2);
            if (semanticsNode.p()) {
                arrayList2.add(semanticsNode);
            } else if (!semanticsNode.d.m) {
                semanticsNode.e(arrayList, arrayList2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SemanticsModifierNode f() {
        Modifier.Node node;
        boolean z;
        boolean z2 = this.d.l;
        Object obj = null;
        LayoutNode layoutNode = this.c;
        if (z2) {
            Modifier.Node node2 = layoutNode.O.f;
            if ((node2.m & 8) != 0) {
                node = null;
                while (node2 != null) {
                    if ((node2.l & 8) != 0) {
                        Modifier.Node node3 = node2;
                        MutableVector mutableVector = null;
                        while (node3 != null) {
                            if (node3 instanceof SemanticsModifierNode) {
                                SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) node3;
                                if (semanticsModifierNode.n()) {
                                    if (semanticsModifierNode.J0()) {
                                        return semanticsModifierNode;
                                    }
                                    if (node == null) {
                                        node = semanticsModifierNode;
                                    }
                                }
                                z = false;
                            } else {
                                z = true;
                            }
                            if (z && (node3.l & 8) != 0 && (node3 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                    if ((node4.l & 8) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector.b(node3);
                                                node3 = null;
                                            }
                                            mutableVector.b(node4);
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node3 = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    if ((node2.m & 8) == 0) {
                        break;
                    }
                    node2 = node2.o;
                }
                obj = node;
            }
            return (SemanticsModifierNode) obj;
        }
        Modifier.Node node5 = layoutNode.O.f;
        if ((node5.m & 8) != 0) {
            loop3: while (node5 != null) {
                if ((node5.l & 8) != 0) {
                    node = node5;
                    MutableVector mutableVector2 = null;
                    while (node != null) {
                        if (node instanceof SemanticsModifierNode) {
                            if (((SemanticsModifierNode) node).n()) {
                                obj = node;
                            }
                        } else if ((node.l & 8) != 0 && (node instanceof DelegatingNode)) {
                            int i2 = 0;
                            for (Modifier.Node node6 = ((DelegatingNode) node).y; node6 != null; node6 = node6.o) {
                                if ((node6.l & 8) != 0) {
                                    i2++;
                                    if (i2 == 1) {
                                        node = node6;
                                    } else {
                                        if (mutableVector2 == null) {
                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node != null) {
                                            mutableVector2.b(node);
                                            node = null;
                                        }
                                        mutableVector2.b(node6);
                                    }
                                }
                            }
                            if (i2 == 1) {
                            }
                        }
                        node = DelegatableNodeKt.b(mutableVector2);
                    }
                }
                if ((node5.m & 8) == 0) {
                    break;
                }
                node5 = node5.o;
            }
        }
        return (SemanticsModifierNode) obj;
    }

    public final Rect g() {
        NodeCoordinator d = d();
        if (d != null) {
            if (!d.d1().w) {
                d = null;
            }
            if (d != null) {
                return LayoutCoordinatesKt.c(d).l(d, true);
            }
        }
        return Rect.e;
    }

    public final Rect h() {
        NodeCoordinator d = d();
        if (d != null) {
            if (!d.d1().w) {
                d = null;
            }
            if (d != null) {
                return LayoutCoordinatesKt.b(d, true);
            }
        }
        return Rect.e;
    }

    public final List i(boolean z, boolean z2) {
        if (!z && this.d.m) {
            return EmptyList.j;
        }
        ArrayList arrayList = new ArrayList();
        if (p()) {
            ArrayList arrayList2 = new ArrayList();
            e(arrayList, arrayList2);
            return arrayList2;
        }
        return r(arrayList, z2);
    }

    public final SemanticsConfiguration k() {
        boolean p = p();
        SemanticsConfiguration semanticsConfiguration = this.d;
        if (p) {
            SemanticsConfiguration semanticsConfiguration2 = new SemanticsConfiguration();
            semanticsConfiguration2.l = semanticsConfiguration.l;
            semanticsConfiguration2.m = semanticsConfiguration.m;
            semanticsConfiguration2.j.l(semanticsConfiguration.j);
            q(new ArrayList(), semanticsConfiguration2);
            return semanticsConfiguration2;
        }
        return semanticsConfiguration;
    }

    public final SemanticsNode l() {
        LayoutNode layoutNode;
        SemanticsNode semanticsNode = this.e;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        LayoutNode layoutNode2 = this.c;
        boolean z = this.b;
        if (z) {
            layoutNode = layoutNode2.w();
            while (layoutNode != null) {
                SemanticsConfiguration y = layoutNode.y();
                if (y != null && y.l) {
                    break;
                }
                layoutNode = layoutNode.w();
            }
        }
        layoutNode = null;
        if (layoutNode == null) {
            LayoutNode w = layoutNode2.w();
            while (true) {
                if (w != null) {
                    if (w.O.d(8)) {
                        layoutNode = w;
                        break;
                    }
                    w = w.w();
                } else {
                    layoutNode = null;
                    break;
                }
            }
        }
        if (layoutNode == null) {
            return null;
        }
        return SemanticsNodeKt.a(layoutNode, z);
    }

    public final Rect m() {
        boolean z;
        Object f = f();
        if (f == null) {
            return this.c.O.c.A1();
        }
        Modifier.Node node = ((Modifier.Node) f).j;
        Object e = this.d.j.e(SemanticsActions.b);
        if (e == null) {
            e = null;
        }
        if (e != null) {
            z = true;
        } else {
            z = false;
        }
        return SemanticsModifierNodeKt.a(node, z, true);
    }

    public final SemanticsConfiguration n() {
        return this.d;
    }

    public final boolean o() {
        if (this.e != null) {
            return true;
        }
        return false;
    }

    public final boolean p() {
        if (this.b && this.d.l) {
            return true;
        }
        return false;
    }

    public final void q(ArrayList arrayList, SemanticsConfiguration semanticsConfiguration) {
        if (!this.d.m) {
            r(arrayList, false);
            int size = arrayList.size();
            for (int size2 = arrayList.size(); size2 < size; size2++) {
                SemanticsNode semanticsNode = (SemanticsNode) arrayList.get(size2);
                if (!semanticsNode.p()) {
                    semanticsConfiguration.d(semanticsNode.d);
                    semanticsNode.q(arrayList, semanticsConfiguration);
                }
            }
        }
    }

    public final List r(ArrayList arrayList, boolean z) {
        String str;
        if (o()) {
            return EmptyList.j;
        }
        c(this.c, arrayList);
        if (z) {
            SemanticsConfiguration semanticsConfiguration = this.d;
            MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
            Object e = mutableScatterMap.e(SemanticsProperties.z);
            if (e == null) {
                e = null;
            }
            Role role = (Role) e;
            if (role != null && semanticsConfiguration.l && !arrayList.isEmpty()) {
                arrayList.add(b(role, new ma(20, role)));
            }
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.a;
            if (mutableScatterMap.c(semanticsPropertyKey) && !arrayList.isEmpty() && semanticsConfiguration.l) {
                Object e2 = mutableScatterMap.e(semanticsPropertyKey);
                if (e2 == null) {
                    e2 = null;
                }
                List list = (List) e2;
                if (list != null) {
                    str = (String) CollectionsKt.t(list);
                } else {
                    str = null;
                }
                if (str != null) {
                    arrayList.add(0, b(null, new q7(str, 5)));
                }
            }
        }
        return arrayList;
    }
}
