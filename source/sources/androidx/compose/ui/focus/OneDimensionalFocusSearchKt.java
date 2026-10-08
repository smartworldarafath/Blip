package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import defpackage.k8;
import defpackage.p2;
import defpackage.rc;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OneDimensionalFocusSearchKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean a(FocusTargetNode focusTargetNode, p2 p2Var) {
        boolean z;
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        if (!d(focusTargetNode, p2Var)) {
                            if (focusTargetNode.a1().a) {
                                z = ((Boolean) p2Var.b(focusTargetNode)).booleanValue();
                            } else {
                                z = false;
                            }
                            if (!z) {
                                return false;
                            }
                        }
                        return true;
                    }
                    k8.e();
                    return false;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    int ordinal2 = c.d1().ordinal();
                    if (ordinal2 != 0) {
                        if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                if (ordinal2 != 3) {
                                    k8.e();
                                    return false;
                                }
                                u2.l("ActiveParent must have a focusedChild");
                                return false;
                            }
                        } else if (a(c, p2Var) || c(focusTargetNode, c, 2, p2Var) || (c.a1().a && ((Boolean) p2Var.b(c)).booleanValue())) {
                            return true;
                        }
                    }
                    return c(focusTargetNode, c, 2, p2Var);
                }
                u2.l("ActiveParent must have a focusedChild");
                return false;
            }
        }
        return d(focusTargetNode, p2Var);
    }

    public static final boolean b(FocusTargetNode focusTargetNode, p2 p2Var) {
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        if (focusTargetNode.a1().a) {
                            return ((Boolean) p2Var.b(focusTargetNode)).booleanValue();
                        }
                        return e(focusTargetNode, p2Var);
                    }
                    k8.e();
                    return false;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    if (!b(c, p2Var) && !c(focusTargetNode, c, 1, p2Var)) {
                        return false;
                    }
                    return true;
                }
                u2.l("ActiveParent must have a focusedChild");
                return false;
            }
        }
        return e(focusTargetNode, p2Var);
    }

    public static final boolean c(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, p2 p2Var) {
        if (f(focusTargetNode, focusTargetNode2, i, p2Var)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusTargetNode, i, new rc(((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).g(), focusTargetNode, focusTargetNode2, i, p2Var, 0));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean d(FocusTargetNode focusTargetNode, p2 p2Var) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.j;
        Modifier.Node node2 = node.o;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i = mutableVector2.l;
            if (i == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i - 1);
            if ((node3.m & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.l & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                mutableVector.b((FocusTargetNode) node3);
                            } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                    if ((node4.l & 1024) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector3.b(node3);
                                                node3 = null;
                                            }
                                            mutableVector3.b(node4);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node3 = DelegatableNodeKt.b(mutableVector3);
                        }
                    } else {
                        node3 = node3.o;
                    }
                }
            }
        }
        mutableVector.n(FocusableChildrenComparator.j);
        int i3 = mutableVector.l - 1;
        Object[] objArr = mutableVector.j;
        if (i3 < objArr.length) {
            while (i3 >= 0) {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i3];
                if (FocusTraversalKt.d(focusTargetNode2) && a(focusTargetNode2, p2Var)) {
                    return true;
                }
                i3--;
            }
        }
        return false;
    }

    public static final boolean e(FocusTargetNode focusTargetNode, p2 p2Var) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.j;
        Modifier.Node node2 = node.o;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i = mutableVector2.l;
            if (i == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i - 1);
            if ((node3.m & 1024) == 0) {
                DelegatableNodeKt.a(mutableVector2, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.l & 1024) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                mutableVector.b((FocusTargetNode) node3);
                            } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                    if ((node4.l & 1024) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector3.b(node3);
                                                node3 = null;
                                            }
                                            mutableVector3.b(node4);
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node3 = DelegatableNodeKt.b(mutableVector3);
                        }
                    } else {
                        node3 = node3.o;
                    }
                }
            }
        }
        mutableVector.n(FocusableChildrenComparator.j);
        Object[] objArr = mutableVector.j;
        int i3 = mutableVector.l;
        for (int i4 = 0; i4 < i3; i4++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i4];
            if (FocusTraversalKt.d(focusTargetNode2) && b(focusTargetNode2, p2Var)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0194 A[EDGE_INSN: B:148:0x0194->B:129:0x0194 BREAK  A[LOOP:5: B:88:0x0129->B:143:0x0129], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean f(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, p2 p2Var) {
        Modifier.Node node;
        LayoutNode g;
        NodeChain nodeChain;
        if (focusTargetNode.d1() == FocusStateImpl.k) {
            MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
            if (!focusTargetNode.j.w) {
                InlineClassHelperKt.b("visitChildren called on an unattached node");
            }
            MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
            Modifier.Node node2 = focusTargetNode.j;
            Modifier.Node node3 = node2.o;
            if (node3 == null) {
                DelegatableNodeKt.a(mutableVector2, node2);
            } else {
                mutableVector2.b(node3);
            }
            while (true) {
                int i2 = mutableVector2.l;
                node = null;
                if (i2 == 0) {
                    break;
                }
                Modifier.Node node4 = (Modifier.Node) mutableVector2.k(i2 - 1);
                if ((node4.m & 1024) == 0) {
                    DelegatableNodeKt.a(mutableVector2, node4);
                } else {
                    while (true) {
                        if (node4 == null) {
                            break;
                        }
                        if ((node4.l & 1024) != 0) {
                            MutableVector mutableVector3 = null;
                            while (node4 != null) {
                                if (node4 instanceof FocusTargetNode) {
                                    mutableVector.b((FocusTargetNode) node4);
                                } else if ((node4.l & 1024) != 0 && (node4 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node5 = ((DelegatingNode) node4).y; node5 != null; node5 = node5.o) {
                                        if ((node5.l & 1024) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                node4 = node5;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node4 != null) {
                                                    mutableVector3.b(node4);
                                                    node4 = null;
                                                }
                                                mutableVector3.b(node5);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                node4 = DelegatableNodeKt.b(mutableVector3);
                            }
                        } else {
                            node4 = node4.o;
                        }
                    }
                }
            }
            mutableVector.n(FocusableChildrenComparator.j);
            if (i == 1) {
                IntRange j = RangesKt.j(0, mutableVector.l);
                int i4 = j.j;
                int i5 = j.k;
                if (i4 <= i5) {
                    boolean z = false;
                    while (true) {
                        if (z) {
                            FocusTargetNode focusTargetNode3 = (FocusTargetNode) mutableVector.j[i4];
                            if (FocusTraversalKt.d(focusTargetNode3) && b(focusTargetNode3, p2Var)) {
                                break;
                            }
                        }
                        if (Intrinsics.a(mutableVector.j[i4], focusTargetNode2)) {
                            z = true;
                        }
                        if (i4 == i5) {
                            break;
                        }
                        i4++;
                    }
                    return true;
                }
                if (i != 1 && focusTargetNode.a1().a) {
                    if (!focusTargetNode.j.w) {
                        InlineClassHelperKt.b("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node6 = focusTargetNode.j.n;
                    g = DelegatableNodeKt.g(focusTargetNode);
                    loop5: while (true) {
                        if (g == null) {
                            break;
                        }
                        if ((g.O.f.m & 1024) != 0) {
                            while (node6 != null) {
                                if ((node6.l & 1024) != 0) {
                                    Modifier.Node node7 = node6;
                                    MutableVector mutableVector4 = null;
                                    while (node7 != null) {
                                        if (node7 instanceof FocusTargetNode) {
                                            node = node7;
                                            break loop5;
                                        }
                                        if ((node7.l & 1024) != 0 && (node7 instanceof DelegatingNode)) {
                                            int i6 = 0;
                                            for (Modifier.Node node8 = ((DelegatingNode) node7).y; node8 != null; node8 = node8.o) {
                                                if ((node8.l & 1024) != 0) {
                                                    i6++;
                                                    if (i6 == 1) {
                                                        node7 = node8;
                                                    } else {
                                                        if (mutableVector4 == null) {
                                                            mutableVector4 = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node7 != null) {
                                                            mutableVector4.b(node7);
                                                            node7 = null;
                                                        }
                                                        mutableVector4.b(node8);
                                                    }
                                                }
                                            }
                                            if (i6 == 1) {
                                            }
                                        }
                                        node7 = DelegatableNodeKt.b(mutableVector4);
                                    }
                                }
                                node6 = node6.n;
                            }
                        }
                        g = g.w();
                        if (g != null && (nodeChain = g.O) != null) {
                            node6 = nodeChain.e;
                        } else {
                            node6 = null;
                        }
                    }
                    if (node != null) {
                        return ((Boolean) p2Var.b(focusTargetNode)).booleanValue();
                    }
                }
                return false;
            }
            if (i == 2) {
                IntRange j2 = RangesKt.j(0, mutableVector.l);
                int i7 = j2.j;
                int i8 = j2.k;
                if (i7 <= i8) {
                    boolean z2 = false;
                    while (true) {
                        if (z2) {
                            FocusTargetNode focusTargetNode4 = (FocusTargetNode) mutableVector.j[i8];
                            if (FocusTraversalKt.d(focusTargetNode4) && a(focusTargetNode4, p2Var)) {
                                break;
                            }
                        }
                        if (Intrinsics.a(mutableVector.j[i8], focusTargetNode2)) {
                            z2 = true;
                        }
                        if (i8 == i7) {
                            break;
                        }
                        i8--;
                    }
                    return true;
                }
                if (i != 1) {
                    if (!focusTargetNode.j.w) {
                    }
                    Modifier.Node node62 = focusTargetNode.j.n;
                    g = DelegatableNodeKt.g(focusTargetNode);
                    loop5: while (true) {
                        if (g == null) {
                        }
                    }
                    if (node != null) {
                    }
                }
                return false;
            }
            u2.l("This function should only be used for 1-D focus search");
            return false;
        }
        u2.l("This function should only be used within a parent that has focus.");
        return false;
    }
}
