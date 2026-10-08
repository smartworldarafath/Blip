package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.k8;
import defpackage.r1;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusTransactionsKt {
    public static final boolean a(FocusTargetNode focusTargetNode) {
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    k8.e();
                    return false;
                }
            } else {
                ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).getClass();
                focusTargetNode.Z0(FocusStateImpl.l, FocusStateImpl.j);
                return true;
            }
        }
        return false;
    }

    public static final CustomDestinationResult b(FocusTargetNode focusTargetNode, int i) {
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            CustomDestinationResult customDestinationResult = null;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return null;
                    }
                } else {
                    return CustomDestinationResult.k;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    CustomDestinationResult b = b(c, i);
                    CustomDestinationResult customDestinationResult2 = CustomDestinationResult.j;
                    if (b != customDestinationResult2) {
                        customDestinationResult = b;
                    }
                    if (customDestinationResult == null) {
                        if (!focusTargetNode.z) {
                            focusTargetNode.z = true;
                            try {
                                FocusPropertiesImpl a1 = focusTargetNode.a1();
                                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i);
                                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner();
                                FocusTargetNode g = focusOwnerImpl.g();
                                a1.k.b(cancelIndicatingFocusBoundaryScope);
                                FocusTargetNode g2 = focusOwnerImpl.g();
                                if (cancelIndicatingFocusBoundaryScope.b) {
                                    FocusRequester focusRequester = FocusRequester.b;
                                    return CustomDestinationResult.k;
                                }
                                if (g != g2 && g2 != null) {
                                    if (FocusRequester.d == FocusRequester.c) {
                                        return CustomDestinationResult.k;
                                    }
                                    return CustomDestinationResult.l;
                                }
                                return customDestinationResult2;
                            } finally {
                                focusTargetNode.z = false;
                            }
                        }
                        return customDestinationResult2;
                    }
                    return customDestinationResult;
                }
                u2.g("ActiveParent with no focused child");
                return null;
            }
        }
        return CustomDestinationResult.j;
    }

    public static final CustomDestinationResult c(FocusTargetNode focusTargetNode, int i) {
        if (!focusTargetNode.A) {
            focusTargetNode.A = true;
            try {
                FocusPropertiesImpl a1 = focusTargetNode.a1();
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i);
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner();
                FocusTargetNode g = focusOwnerImpl.g();
                a1.j.b(cancelIndicatingFocusBoundaryScope);
                FocusTargetNode g2 = focusOwnerImpl.g();
                if (cancelIndicatingFocusBoundaryScope.b) {
                    FocusRequester focusRequester = FocusRequester.b;
                    return CustomDestinationResult.k;
                }
                if (g != g2 && g2 != null) {
                    if (FocusRequester.d == FocusRequester.c) {
                        return CustomDestinationResult.k;
                    }
                    return CustomDestinationResult.l;
                }
            } finally {
                focusTargetNode.A = false;
            }
        }
        return CustomDestinationResult.j;
    }

    public static final CustomDestinationResult d(FocusTargetNode focusTargetNode, int i) {
        Modifier.Node node;
        NodeChain nodeChain;
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            CustomDestinationResult customDestinationResult = null;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        if (!focusTargetNode.j.w) {
                            InlineClassHelperKt.b("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node2 = focusTargetNode.j.n;
                        LayoutNode g = DelegatableNodeKt.g(focusTargetNode);
                        loop0: while (true) {
                            if (g != null) {
                                if ((g.O.f.m & 1024) != 0) {
                                    while (node2 != null) {
                                        if ((node2.l & 1024) != 0) {
                                            node = node2;
                                            MutableVector mutableVector = null;
                                            while (node != null) {
                                                if (node instanceof FocusTargetNode) {
                                                    break loop0;
                                                }
                                                if ((node.l & 1024) != 0 && (node instanceof DelegatingNode)) {
                                                    int i2 = 0;
                                                    for (Modifier.Node node3 = ((DelegatingNode) node).y; node3 != null; node3 = node3.o) {
                                                        if ((node3.l & 1024) != 0) {
                                                            i2++;
                                                            if (i2 == 1) {
                                                                node = node3;
                                                            } else {
                                                                if (mutableVector == null) {
                                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                                }
                                                                if (node != null) {
                                                                    mutableVector.b(node);
                                                                    node = null;
                                                                }
                                                                mutableVector.b(node3);
                                                            }
                                                        }
                                                    }
                                                    if (i2 == 1) {
                                                    }
                                                }
                                                node = DelegatableNodeKt.b(mutableVector);
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
                            } else {
                                node = null;
                                break;
                            }
                        }
                        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
                        if (focusTargetNode2 == null) {
                            return CustomDestinationResult.j;
                        }
                        int ordinal2 = focusTargetNode2.d1().ordinal();
                        if (ordinal2 != 0) {
                            if (ordinal2 != 1) {
                                if (ordinal2 != 2) {
                                    if (ordinal2 == 3) {
                                        CustomDestinationResult d = d(focusTargetNode2, i);
                                        if (d != CustomDestinationResult.j) {
                                            customDestinationResult = d;
                                        }
                                        if (customDestinationResult == null) {
                                            return c(focusTargetNode2, i);
                                        }
                                        return customDestinationResult;
                                    }
                                    k8.e();
                                    return null;
                                }
                                return CustomDestinationResult.k;
                            }
                            return d(focusTargetNode2, i);
                        }
                        return c(focusTargetNode2, i);
                    }
                    k8.e();
                    return null;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    return b(c, i);
                }
                u2.g("ActiveParent with no focused child");
                return null;
            }
        }
        return CustomDestinationResult.j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [androidx.compose.runtime.collection.MutableVector] */
    public static final boolean e(FocusTargetNode focusTargetNode) {
        MutableVector mutableVector;
        FocusStateImpl focusStateImpl;
        NodeChain nodeChain;
        int i;
        char c;
        Boolean bool;
        NodeChain nodeChain2;
        FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner();
        FocusTargetNode g = focusOwnerImpl.g();
        FocusStateImpl d1 = focusTargetNode.d1();
        int i2 = 1;
        if (g == focusTargetNode) {
            focusTargetNode.Z0(d1, d1);
            return true;
        }
        if ((g == null || g.x) && !focusTargetNode.x && !((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).a.D()) {
            return false;
        }
        char c2 = 16;
        if (g != null) {
            mutableVector = new MutableVector(new FocusTargetNode[16]);
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
                            MutableVector mutableVector2 = null;
                            while (node2 != null) {
                                if (node2 instanceof FocusTargetNode) {
                                    mutableVector.b((FocusTargetNode) node2);
                                } else if ((node2.l & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                        if ((node3.l & 1024) != 0) {
                                            i3++;
                                            if (i3 == 1) {
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
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.b(mutableVector2);
                            }
                        }
                        node = node.n;
                    }
                }
                g2 = g2.w();
                if (g2 != null && (nodeChain2 = g2.O) != null) {
                    node = nodeChain2.e;
                } else {
                    node = null;
                }
            }
        } else {
            mutableVector = null;
        }
        MutableVector mutableVector3 = new MutableVector(new FocusTargetNode[16]);
        MutableVector mutableVector4 = new MutableVector(new FocusTargetNode[16]);
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node4 = focusTargetNode.j.n;
        LayoutNode g3 = DelegatableNodeKt.g(focusTargetNode);
        boolean z = true;
        while (g3 != null) {
            if ((g3.O.f.m & 1024) != 0) {
                while (node4 != null) {
                    if ((node4.l & 1024) != 0) {
                        FocusTargetNode focusTargetNode2 = node4;
                        ?? r14 = 0;
                        while (focusTargetNode2 != 0) {
                            if (focusTargetNode2 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode3 = focusTargetNode2;
                                if (mutableVector != null) {
                                    bool = Boolean.valueOf(mutableVector.j(focusTargetNode3));
                                } else {
                                    bool = null;
                                }
                                if (Intrinsics.a(bool, Boolean.TRUE)) {
                                    mutableVector3.b(focusTargetNode3);
                                } else {
                                    mutableVector4.b(focusTargetNode3);
                                }
                                if (focusTargetNode3 == g) {
                                    z = false;
                                }
                                i = 0;
                            } else {
                                i = i2;
                            }
                            if (i != 0 && (focusTargetNode2.l & 1024) != 0 && (focusTargetNode2 instanceof DelegatingNode)) {
                                Modifier.Node node5 = focusTargetNode2.y;
                                int i4 = 0;
                                focusTargetNode2 = focusTargetNode2;
                                r14 = r14;
                                while (node5 != null) {
                                    focusTargetNode2 = focusTargetNode2;
                                    if ((node5.l & 1024) != 0) {
                                        i4++;
                                        if (i4 == i2) {
                                            focusTargetNode2 = node5;
                                        } else {
                                            r14 = r14 == 0 ? new MutableVector(new Modifier.Node[16]) : r14;
                                            if (focusTargetNode2 != 0) {
                                                r14.b(focusTargetNode2);
                                                focusTargetNode2 = 0;
                                            }
                                            r14.b(node5);
                                            node5 = node5.o;
                                            i2 = 1;
                                            focusTargetNode2 = focusTargetNode2;
                                            r14 = r14;
                                        }
                                    }
                                    node5 = node5.o;
                                    i2 = 1;
                                    focusTargetNode2 = focusTargetNode2;
                                    r14 = r14;
                                }
                                c = 16;
                                if (i4 == i2) {
                                    c2 = 16;
                                }
                            } else {
                                c = 16;
                            }
                            focusTargetNode2 = DelegatableNodeKt.b(r14);
                            c2 = c;
                            i2 = 1;
                        }
                    }
                    node4 = node4.n;
                    c2 = c2;
                    i2 = 1;
                }
            }
            char c3 = c2;
            g3 = g3.w();
            if (g3 != null && (nodeChain = g3.O) != null) {
                node4 = nodeChain.e;
            } else {
                node4 = null;
            }
            c2 = c3;
            i2 = 1;
        }
        if (z && g != null && !f(g, false)) {
            return false;
        }
        ObserverModifierNodeKt.a(focusTargetNode, new r1(18, focusTargetNode));
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return false;
                    }
                }
            }
            ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).j(focusTargetNode);
        }
        if (z && g != null) {
            g.Z0(FocusStateImpl.j, FocusStateImpl.m);
        }
        if (mutableVector != null) {
            int i5 = mutableVector.l - 1;
            Object[] objArr = mutableVector.j;
            if (i5 < objArr.length) {
                while (i5 >= 0) {
                    FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr[i5];
                    if (focusOwnerImpl.g() != focusTargetNode) {
                        return false;
                    }
                    focusTargetNode4.Z0(FocusStateImpl.k, FocusStateImpl.m);
                    i5--;
                }
            }
        }
        int i6 = mutableVector4.l - 1;
        Object[] objArr2 = mutableVector4.j;
        if (i6 < objArr2.length) {
            while (i6 >= 0) {
                FocusTargetNode focusTargetNode5 = (FocusTargetNode) objArr2[i6];
                if (focusOwnerImpl.g() != focusTargetNode) {
                    return false;
                }
                if (focusTargetNode5 == g) {
                    focusStateImpl = FocusStateImpl.j;
                } else {
                    focusStateImpl = FocusStateImpl.m;
                }
                focusTargetNode5.Z0(focusStateImpl, FocusStateImpl.k);
                i6--;
            }
        }
        if (focusOwnerImpl.g() != focusTargetNode) {
            return false;
        }
        focusTargetNode.Z0(d1, FocusStateImpl.j);
        if (focusOwnerImpl.g() != focusTargetNode) {
            return false;
        }
        return true;
    }

    public static final boolean f(FocusTargetNode focusTargetNode, boolean z) {
        boolean z2;
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return false;
                    }
                } else {
                    return z;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    z2 = f(c, z);
                } else {
                    z2 = true;
                }
                if (!z2) {
                    return false;
                }
                focusTargetNode.Z0(FocusStateImpl.k, FocusStateImpl.m);
                return true;
            }
        }
        return true;
    }
}
