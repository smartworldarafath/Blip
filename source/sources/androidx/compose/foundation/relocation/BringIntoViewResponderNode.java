package androidx.compose.foundation.relocation;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import defpackage.n1;
import defpackage.p0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode extends Modifier.Node implements BringIntoViewModifierNode, LayoutAwareModifierNode {
    public ContentInViewNode x;
    public boolean y;

    public static final Rect Y0(BringIntoViewResponderNode bringIntoViewResponderNode, NodeCoordinator nodeCoordinator, p0 p0Var) {
        Rect rect;
        if (bringIntoViewResponderNode.w && bringIntoViewResponderNode.y) {
            NodeCoordinator f = DelegatableNodeKt.f(bringIntoViewResponderNode);
            if (!nodeCoordinator.d1().w) {
                nodeCoordinator = null;
            }
            if (nodeCoordinator != null && (rect = (Rect) p0Var.a()) != null) {
                return rect.i(f.l(nodeCoordinator, false).d());
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void C(LayoutCoordinates layoutCoordinates) {
        this.y = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
    public final Object l(NodeCoordinator nodeCoordinator, p0 p0Var, ContinuationImpl continuationImpl) {
        Object c = CoroutineScopeKt.c(new BringIntoViewResponderNode$bringIntoView$2(this, nodeCoordinator, p0Var, new n1(this, nodeCoordinator, p0Var, 2), null), continuationImpl);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}
