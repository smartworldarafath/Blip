package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class UnspecifiedConstraintsElement extends ModifierNodeElement<UnspecifiedConstraintsNode> {
    public final float b;
    public final float c;

    public UnspecifiedConstraintsElement(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UnspecifiedConstraintsElement) {
            UnspecifiedConstraintsElement unspecifiedConstraintsElement = (UnspecifiedConstraintsElement) obj;
            if (Dp.b(this.b, unspecifiedConstraintsElement.b) && Dp.b(this.c, unspecifiedConstraintsElement.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.foundation.layout.UnspecifiedConstraintsNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        return node;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + (Float.hashCode(this.b) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        UnspecifiedConstraintsNode unspecifiedConstraintsNode = (UnspecifiedConstraintsNode) node;
        unspecifiedConstraintsNode.x = this.b;
        unspecifiedConstraintsNode.y = this.c;
    }
}
