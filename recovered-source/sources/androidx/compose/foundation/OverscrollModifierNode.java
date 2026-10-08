package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OverscrollModifierNode extends DelegatingNode {
    public DelegatableNode z;

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        DelegatableNode delegatableNode = this.z;
        if (delegatableNode != null && !((Modifier.Node) delegatableNode).j.w) {
            Y0(delegatableNode);
        } else {
            delegatableNode = null;
        }
        this.z = delegatableNode;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        DelegatableNode delegatableNode = this.z;
        if (delegatableNode != null) {
            Z0(delegatableNode);
        }
    }
}
