package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ZIndexModifierElement extends ModifierNodeElement<ZIndexModifierNode> {
    public final float b;
    public final Object c;

    public ZIndexModifierElement(float f, Object obj) {
        this.b = f;
        this.c = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ZIndexModifierElement) {
            ZIndexModifierElement zIndexModifierElement = (ZIndexModifierElement) obj;
            if (zIndexModifierElement.b == this.b && Intrinsics.a(zIndexModifierElement.c, this.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.animation.ZIndexModifierNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        return node;
    }

    public final int hashCode() {
        int i;
        int hashCode = Float.hashCode(this.b) * 31;
        Object obj = this.c;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ZIndexModifierNode zIndexModifierNode = (ZIndexModifierNode) node;
        zIndexModifierNode.x = this.b;
        zIndexModifierNode.y = this.c;
    }
}
