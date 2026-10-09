package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OverscrollModifierElement extends ModifierNodeElement<OverscrollModifierNode> {
    public final boolean equals(Object obj) {
        if (this != obj && !(obj instanceof OverscrollModifierElement)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.foundation.OverscrollModifierNode, androidx.compose.ui.node.DelegatingNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? delegatingNode = new DelegatingNode();
        delegatingNode.z = null;
        return delegatingNode;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        OverscrollModifierNode overscrollModifierNode = (OverscrollModifierNode) node;
        DelegatableNode delegatableNode = overscrollModifierNode.z;
        if (delegatableNode != null) {
            overscrollModifierNode.Z0(delegatableNode);
        }
        overscrollModifierNode.z = null;
        overscrollModifierNode.z = null;
    }
}
