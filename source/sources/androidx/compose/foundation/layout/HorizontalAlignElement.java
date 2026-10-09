package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HorizontalAlignElement extends ModifierNodeElement<HorizontalAlignNode> {
    public final BiasAlignment.Horizontal b;

    public HorizontalAlignElement(BiasAlignment.Horizontal horizontal) {
        this.b = horizontal;
    }

    public final boolean equals(Object obj) {
        HorizontalAlignElement horizontalAlignElement;
        if (this == obj) {
            return true;
        }
        if (obj instanceof HorizontalAlignElement) {
            horizontalAlignElement = (HorizontalAlignElement) obj;
        } else {
            horizontalAlignElement = null;
        }
        if (horizontalAlignElement == null) {
            return false;
        }
        return this.b.equals(horizontalAlignElement.b);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.foundation.layout.HorizontalAlignNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        return node;
    }

    public final int hashCode() {
        return Float.hashCode(this.b.a);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((HorizontalAlignNode) node).x = this.b;
    }
}
