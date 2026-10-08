package androidx.compose.ui.node;

import android.graphics.Rect;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DelegatableNodeKt {
    public static final void a(MutableVector mutableVector, Modifier.Node node) {
        MutableVector D = g(node).D();
        int i = D.l - 1;
        Object[] objArr = D.j;
        if (i < objArr.length) {
            while (i >= 0) {
                mutableVector.b(((LayoutNode) objArr[i]).O.f);
                i--;
            }
        }
    }

    public static final Modifier.Node b(MutableVector mutableVector) {
        int i;
        if (mutableVector != null && (i = mutableVector.l) != 0) {
            return (Modifier.Node) mutableVector.k(i - 1);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final LayoutModifierNode c(Modifier.Node node) {
        if ((node.l & 2) != 0) {
            if (node instanceof LayoutModifierNode) {
                return (LayoutModifierNode) node;
            }
            if (node instanceof DelegatingNode) {
                Modifier.Node node2 = ((DelegatingNode) node).y;
                while (node2 != 0) {
                    if (node2 instanceof LayoutModifierNode) {
                        return (LayoutModifierNode) node2;
                    }
                    if ((node2 instanceof DelegatingNode) && (node2.l & 2) != 0) {
                        node2 = ((DelegatingNode) node2).y;
                    } else {
                        node2 = node2.o;
                    }
                }
            }
        }
        return null;
    }

    public static final void d(DelegatableNode delegatableNode) {
        AndroidAutofillManager autofillManager;
        LayoutNode g = g(delegatableNode);
        if (!g.C && (autofillManager = ((AndroidComposeView) LayoutNodeKt.a(g)).getAutofillManager()) != null) {
            Rect rect = autofillManager.o;
            RectManager rectManager = autofillManager.m;
            LayoutNode layoutNode = (LayoutNode) rectManager.a.b(g.k);
            if (layoutNode != null && layoutNode.p != -4) {
                RectList rectList = rectManager.c;
                int e = rectManager.e(layoutNode);
                long[] jArr = rectList.a;
                long j = jArr[e];
                long j2 = jArr[e + 1];
                rect.set((int) (j >> 32), (int) j, (int) (j2 >> 32), (int) j2);
                autofillManager.j.a().requestAutofill(autofillManager.l, g.k, rect);
            }
        }
    }

    public static final NodeCoordinator e(DelegatableNode delegatableNode, int i) {
        NodeCoordinator nodeCoordinator = ((Modifier.Node) delegatableNode).j.q;
        nodeCoordinator.getClass();
        if (nodeCoordinator.d1() == delegatableNode && NodeKindKt.g(i)) {
            NodeCoordinator nodeCoordinator2 = nodeCoordinator.E;
            nodeCoordinator2.getClass();
            return nodeCoordinator2;
        }
        return nodeCoordinator;
    }

    public static final NodeCoordinator f(DelegatableNode delegatableNode) {
        if (!((Modifier.Node) delegatableNode).j.w) {
            InlineClassHelperKt.b("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        NodeCoordinator e = e(delegatableNode, 2);
        if (!e.d1().w) {
            InlineClassHelperKt.b("LayoutCoordinates is not attached.");
        }
        return e;
    }

    public static final LayoutNode g(DelegatableNode delegatableNode) {
        NodeCoordinator nodeCoordinator = ((Modifier.Node) delegatableNode).j.q;
        if (nodeCoordinator != null) {
            return nodeCoordinator.D;
        }
        throw q.p("Cannot obtain node coordinator. Is the Modifier.Node attached?");
    }

    public static final Owner h(DelegatableNode delegatableNode) {
        Owner owner = g(delegatableNode).w;
        if (owner != null) {
            return owner;
        }
        throw q.p("This node does not have an owner.");
    }
}
