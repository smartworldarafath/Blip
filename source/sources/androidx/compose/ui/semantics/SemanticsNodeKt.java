package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SemanticsModifierNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsNodeKt {
    public static final SemanticsNode a(LayoutNode layoutNode, boolean z) {
        Modifier.Node node = layoutNode.O.f;
        Object obj = null;
        if ((node.m & 8) != 0) {
            loop0: while (true) {
                if (node == null) {
                    break;
                }
                if ((node.l & 8) != 0) {
                    Modifier.Node node2 = node;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        if (node2 instanceof SemanticsModifierNode) {
                            obj = node2;
                            break loop0;
                        }
                        if ((node2.l & 8) != 0 && (node2 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                if ((node3.l & 8) != 0) {
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
                if ((node.m & 8) == 0) {
                    break;
                }
                node = node.o;
            }
        }
        obj.getClass();
        Modifier.Node node4 = ((Modifier.Node) ((SemanticsModifierNode) obj)).j;
        SemanticsConfiguration y = layoutNode.y();
        if (y == null) {
            y = new SemanticsConfiguration();
        }
        return new SemanticsNode(node4, z, layoutNode, y);
    }
}
