package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.NodeCoordinator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NodeCoordinator$Companion$PointerInputSource$1 implements NodeCoordinator.HitTestSource {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean a(HitTestResult hitTestResult, LayoutNode layoutNode) {
        NodeCoordinator nodeCoordinator = layoutNode.O.d;
        nodeCoordinator.getClass();
        Modifier.Node g1 = nodeCoordinator.g1(NodeKindKt.g(16));
        if (g1 != null && g1.w) {
            if (!g1.j.w) {
                InlineClassHelperKt.b("visitLocalDescendants called on an unattached node");
            }
            Modifier.Node node = g1.j;
            if ((node.m & 16) != 0) {
                while (node != null) {
                    if ((node.l & 16) != 0) {
                        DelegatingNode delegatingNode = node;
                        ?? r3 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof PointerInputModifierNode) {
                                if (((PointerInputModifierNode) delegatingNode).C0()) {
                                    hitTestResult.l = hitTestResult.j.b - 1;
                                    return true;
                                }
                            } else if ((delegatingNode.l & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node2 = delegatingNode.y;
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r3 = r3;
                                while (node2 != null) {
                                    if ((node2.l & 16) != 0) {
                                        i++;
                                        r3 = r3;
                                        if (i == 1) {
                                            delegatingNode = node2;
                                        } else {
                                            if (r3 == 0) {
                                                r3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r3.b(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r3.b(node2);
                                        }
                                    }
                                    node2 = node2.o;
                                    delegatingNode = delegatingNode;
                                    r3 = r3;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.b(r3);
                        }
                    }
                    node = node.o;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final int b() {
        return 16;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final void c(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z) {
        layoutNode.E(j, hitTestResult, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean d(Modifier.Node node) {
        ?? r0 = 0;
        while (true) {
            int i = 0;
            if (node == 0) {
                return false;
            }
            if (node instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) node).S();
            } else if ((node.l & 16) != 0 && (node instanceof DelegatingNode)) {
                Modifier.Node node2 = node.y;
                r0 = r0;
                node = node;
                while (node2 != null) {
                    if ((node2.l & 16) != 0) {
                        i++;
                        r0 = r0;
                        if (i == 1) {
                            node = node2;
                        } else {
                            if (r0 == 0) {
                                r0 = new MutableVector(new Modifier.Node[16]);
                            }
                            if (node != 0) {
                                r0.b(node);
                                node = 0;
                            }
                            r0.b(node2);
                        }
                    }
                    node2 = node2.o;
                    r0 = r0;
                    node = node;
                }
                if (i == 1) {
                }
            }
            node = DelegatableNodeKt.b(r0);
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean e(LayoutNode layoutNode) {
        return true;
    }
}
