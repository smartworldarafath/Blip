package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusTraversalKt {
    public static final FocusTargetNode a(FocusTargetNode focusTargetNode) {
        FocusTargetNode g = ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).g();
        if (g != null && g.w) {
            return g;
        }
        return null;
    }

    public static final Rect b(FocusTargetNode focusTargetNode) {
        NodeCoordinator nodeCoordinator;
        if (focusTargetNode.w && (nodeCoordinator = focusTargetNode.q) != null) {
            LayoutCoordinates c = LayoutCoordinatesKt.c(nodeCoordinator);
            if (!c.o()) {
                c = null;
            }
            if (c != null) {
                return focusTargetNode.b1(c);
            }
        }
        return Rect.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0026, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final FocusTargetNode c(FocusTargetNode focusTargetNode) {
        boolean z = focusTargetNode.j.w;
        if (z) {
            if (!z) {
                InlineClassHelperKt.b("visitChildren called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
            Modifier.Node node = focusTargetNode.j;
            Modifier.Node node2 = node.o;
            if (node2 == null) {
                DelegatableNodeKt.a(mutableVector, node);
            } else {
                mutableVector.b(node2);
            }
            loop0: while (true) {
                int i = mutableVector.l;
                if (i == 0) {
                    break;
                }
                Modifier.Node node3 = (Modifier.Node) mutableVector.k(i - 1);
                if ((node3.m & 1024) == 0) {
                    DelegatableNodeKt.a(mutableVector, node3);
                } else {
                    while (true) {
                        if (node3 == null) {
                            break;
                        }
                        if ((node3.l & 1024) != 0) {
                            MutableVector mutableVector2 = null;
                            while (node3 != null) {
                                if (node3 instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                    if (focusTargetNode2.j.w) {
                                        int ordinal = focusTargetNode2.d1().ordinal();
                                        if (ordinal == 0 || ordinal == 1 || ordinal == 2) {
                                            break loop0;
                                        }
                                        if (ordinal != 3) {
                                            k8.e();
                                            return null;
                                        }
                                    }
                                } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                        if ((node4.l & 1024) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector2.b(node3);
                                                    node3 = null;
                                                }
                                                mutableVector2.b(node4);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node3 = DelegatableNodeKt.b(mutableVector2);
                            }
                        } else {
                            node3 = node3.o;
                        }
                    }
                }
            }
        }
        return null;
    }

    public static final boolean d(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNode;
        NodeCoordinator nodeCoordinator;
        LayoutNode layoutNode2;
        NodeCoordinator nodeCoordinator2 = focusTargetNode.q;
        if (nodeCoordinator2 != null && (layoutNode = nodeCoordinator2.D) != null && layoutNode.M() && (nodeCoordinator = focusTargetNode.q) != null && (layoutNode2 = nodeCoordinator.D) != null && layoutNode2.L()) {
            return true;
        }
        return false;
    }
}
