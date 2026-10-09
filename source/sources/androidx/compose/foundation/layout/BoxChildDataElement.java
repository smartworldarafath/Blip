package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BoxChildDataElement extends ModifierNodeElement<BoxChildDataNode> {
    public final BiasAlignment b;
    public final boolean c;

    public BoxChildDataElement(BiasAlignment biasAlignment, boolean z) {
        this.b = biasAlignment;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        BoxChildDataElement boxChildDataElement;
        if (this != obj) {
            if (obj instanceof BoxChildDataElement) {
                boxChildDataElement = (BoxChildDataElement) obj;
            } else {
                boxChildDataElement = null;
            }
            if (boxChildDataElement != null && this.b.equals(boxChildDataElement.b) && this.c == boxChildDataElement.c) {
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.BoxChildDataNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + (this.b.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        BoxChildDataNode boxChildDataNode = (BoxChildDataNode) node;
        boxChildDataNode.x = this.b;
        boxChildDataNode.y = this.c;
    }
}
