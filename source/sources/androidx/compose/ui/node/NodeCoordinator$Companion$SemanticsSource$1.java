package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import defpackage.la;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NodeCoordinator$Companion$SemanticsSource$1 implements NodeCoordinator.HitTestSource {
    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean a(HitTestResult hitTestResult, LayoutNode layoutNode) {
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final int b() {
        return 8;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final void c(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeChain nodeChain = layoutNode.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        la laVar = NodeCoordinator.e0;
        nodeChain.d.j1(NodeCoordinator.k0, nodeCoordinator.a1(j), hitTestResult, 1, z);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean d(Modifier.Node node) {
        return false;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean e(LayoutNode layoutNode) {
        SemanticsConfiguration y = layoutNode.y();
        boolean z = false;
        if (y != null && y.m) {
            z = true;
        }
        return !z;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
    public final boolean f(Modifier.Node node) {
        return SemanticsOwnerKt.f(SemanticsNodeKt.a(DelegatableNodeKt.g(node), false));
    }
}
