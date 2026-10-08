package androidx.compose.ui.relocation;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.p0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BringIntoViewModifierNodeKt {
    public static final Object a(DelegatableNode delegatableNode, Function0 function0, ContinuationImpl continuationImpl) {
        Object obj;
        NodeCoordinator f;
        Object l;
        NodeChain nodeChain;
        if (((Modifier.Node) delegatableNode).j.w) {
            Modifier.Node node = (Modifier.Node) delegatableNode;
            if (!node.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node2 = node.j.n;
            LayoutNode g = DelegatableNodeKt.g(delegatableNode);
            loop0: while (true) {
                obj = null;
                if (g == null) {
                    break;
                }
                if ((g.O.f.m & 524288) != 0) {
                    while (node2 != null) {
                        if ((node2.l & 524288) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof BringIntoViewModifierNode) {
                                    obj = node3;
                                    break loop0;
                                }
                                if ((node3.l & 524288) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                        if ((node4.l & 524288) != 0) {
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
            BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
            if (bringIntoViewModifierNode != null && (l = bringIntoViewModifierNode.l((f = DelegatableNodeKt.f(delegatableNode)), new p0(6, function0, f), continuationImpl)) == CoroutineSingletons.j) {
                return l;
            }
        }
        return Unit.a;
    }
}
