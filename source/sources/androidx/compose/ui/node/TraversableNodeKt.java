package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TraversableNodeKt {
    public static final void a(DelegatableNode delegatableNode, Object obj, Function1 function1) {
        NodeChain nodeChain;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (!((Modifier.Node) delegatableNode).j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node = ((Modifier.Node) delegatableNode).j.n;
        LayoutNode g = DelegatableNodeKt.g(delegatableNode);
        while (g != null) {
            if ((g.O.f.m & 262144) != 0) {
                while (node != null) {
                    if ((node.l & 262144) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) node2;
                                if (obj.equals(traversableNode.p())) {
                                    z4 = ((Boolean) function1.b(traversableNode)).booleanValue();
                                } else {
                                    z4 = true;
                                }
                                if (z4) {
                                    z = false;
                                } else {
                                    return;
                                }
                            } else {
                                z = true;
                            }
                            if (z) {
                                if ((node2.l & 262144) != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                        if ((node3.l & 262144) != 0) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (z3) {
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
                            }
                            node2 = DelegatableNodeKt.b(mutableVector);
                        }
                    }
                    node = node.n;
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(TraversableNode traversableNode, Function1 function1) {
        NodeChain nodeChain;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = node.j.n;
        LayoutNode g = DelegatableNodeKt.g(traversableNode);
        while (g != null) {
            if ((g.O.f.m & 262144) != 0) {
                while (node2 != null) {
                    if ((node2.l & 262144) != 0) {
                        Modifier.Node node3 = node2;
                        MutableVector mutableVector = null;
                        while (node3 != null) {
                            if (node3 instanceof TraversableNode) {
                                TraversableNode traversableNode2 = (TraversableNode) node3;
                                if (Intrinsics.a(traversableNode.p(), traversableNode2.p()) && traversableNode.getClass() == traversableNode2.getClass()) {
                                    z4 = ((Boolean) function1.b(traversableNode2)).booleanValue();
                                } else {
                                    z4 = true;
                                }
                                if (z4) {
                                    z = false;
                                } else {
                                    return;
                                }
                            } else {
                                z = true;
                            }
                            if (z) {
                                if ((node3.l & 262144) != 0) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                        if ((node4.l & 262144) != 0) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        if (z3) {
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
                            }
                            node3 = DelegatableNodeKt.b(mutableVector);
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
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static final void c(Modifier.Node node, String str, Function1 function1) {
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction;
        if (!node.j.w) {
            InlineClassHelperKt.b("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node2 = node.j;
        Modifier.Node node3 = node2.o;
        if (node3 == null) {
            DelegatableNodeKt.a(mutableVector, node2);
        } else {
            mutableVector.b(node3);
        }
        while (true) {
            int i = mutableVector.l;
            if (i != 0) {
                Modifier.Node node4 = (Modifier.Node) mutableVector.k(i - 1);
                if ((node4.m & 262144) != 0) {
                    for (Modifier.Node node5 = node4; node5 != null && node5.w; node5 = node5.o) {
                        if ((node5.l & 262144) != 0) {
                            DelegatingNode delegatingNode = node5;
                            ?? r6 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof TraversableNode) {
                                    TraversableNode traversableNode = (TraversableNode) delegatingNode;
                                    if (str.equals(traversableNode.p())) {
                                        traversableNode$Companion$TraverseDescendantsAction = (TraversableNode$Companion$TraverseDescendantsAction) function1.b(traversableNode);
                                    } else {
                                        traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.j;
                                    }
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.l) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.k) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((delegatingNode.l & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node6 = delegatingNode.y;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r6 = r6;
                                    while (node6 != null) {
                                        if ((node6.l & 262144) != 0) {
                                            i2++;
                                            r6 = r6;
                                            if (i2 == 1) {
                                                delegatingNode = node6;
                                            } else {
                                                if (r6 == 0) {
                                                    r6 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r6.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r6.b(node6);
                                            }
                                        }
                                        node6 = node6.o;
                                        delegatingNode = delegatingNode;
                                        r6 = r6;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r6);
                            }
                        }
                    }
                }
                DelegatableNodeKt.a(mutableVector, node4);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.ui.node.TraversableNode, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static final void d(TraversableNode traversableNode, Function1 function1) {
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction;
        Modifier.Node node = (Modifier.Node) traversableNode;
        if (!node.j.w) {
            InlineClassHelperKt.b("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node2 = node.j;
        Modifier.Node node3 = node2.o;
        if (node3 == null) {
            DelegatableNodeKt.a(mutableVector, node2);
        } else {
            mutableVector.b(node3);
        }
        while (true) {
            int i = mutableVector.l;
            if (i != 0) {
                Modifier.Node node4 = (Modifier.Node) mutableVector.k(i - 1);
                if ((node4.m & 262144) != 0) {
                    for (Modifier.Node node5 = node4; node5 != null && node5.w; node5 = node5.o) {
                        if ((node5.l & 262144) != 0) {
                            DelegatingNode delegatingNode = node5;
                            ?? r7 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof TraversableNode) {
                                    TraversableNode traversableNode2 = (TraversableNode) delegatingNode;
                                    if (Intrinsics.a(traversableNode.p(), traversableNode2.p()) && traversableNode.getClass() == traversableNode2.getClass()) {
                                        traversableNode$Companion$TraverseDescendantsAction = (TraversableNode$Companion$TraverseDescendantsAction) function1.b(traversableNode2);
                                    } else {
                                        traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.j;
                                    }
                                    if (traversableNode$Companion$TraverseDescendantsAction != TraversableNode$Companion$TraverseDescendantsAction.l) {
                                        if (traversableNode$Companion$TraverseDescendantsAction == TraversableNode$Companion$TraverseDescendantsAction.k) {
                                            break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if ((delegatingNode.l & 262144) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node6 = delegatingNode.y;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r7 = r7;
                                    while (node6 != null) {
                                        if ((node6.l & 262144) != 0) {
                                            i2++;
                                            r7 = r7;
                                            if (i2 == 1) {
                                                delegatingNode = node6;
                                            } else {
                                                if (r7 == 0) {
                                                    r7 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r7.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r7.b(node6);
                                            }
                                        }
                                        node6 = node6.o;
                                        delegatingNode = delegatingNode;
                                        r7 = r7;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r7);
                            }
                        }
                    }
                }
                DelegatableNodeKt.a(mutableVector, node4);
            } else {
                return;
            }
        }
    }
}
