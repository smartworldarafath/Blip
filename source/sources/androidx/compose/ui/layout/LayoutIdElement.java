package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LayoutIdElement extends ModifierNodeElement<LayoutIdModifier> {
    public final String b;

    public LayoutIdElement(String str) {
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LayoutIdElement) || !this.b.equals(((LayoutIdElement) obj).b)) {
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.layout.LayoutIdModifier, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        return node;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((LayoutIdModifier) node).x = this.b;
    }

    public final String toString() {
        return "LayoutIdElement(layoutId=" + ((Object) this.b) + ")";
    }
}
