package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class IntrinsicWidthElement extends ModifierNodeElement<IntrinsicWidthNode> {
    public final boolean equals(Object obj) {
        IntrinsicWidthElement intrinsicWidthElement;
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntrinsicWidthElement) {
            intrinsicWidthElement = (IntrinsicWidthElement) obj;
        } else {
            intrinsicWidthElement = null;
        }
        if (intrinsicWidthElement == null) {
            return false;
        }
        IntrinsicSize intrinsicSize = IntrinsicSize.j;
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.foundation.layout.IntrinsicWidthNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        IntrinsicSize intrinsicSize = IntrinsicSize.k;
        ?? node = new Modifier.Node();
        node.x = intrinsicSize;
        node.y = true;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (IntrinsicSize.k.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        IntrinsicWidthNode intrinsicWidthNode = (IntrinsicWidthNode) node;
        intrinsicWidthNode.x = IntrinsicSize.k;
        intrinsicWidthNode.y = true;
    }
}
