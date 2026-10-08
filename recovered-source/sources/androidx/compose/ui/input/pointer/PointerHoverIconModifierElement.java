package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerHoverIconModifierElement extends ModifierNodeElement<PointerHoverIconModifierNode> {
    public final AndroidPointerIconType b;

    public PointerHoverIconModifierElement(AndroidPointerIconType androidPointerIconType) {
        this.b = androidPointerIconType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PointerHoverIconModifierElement) && this.b.equals(((PointerHoverIconModifierElement) obj).b)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new HoverIconModifierNode(this.b, null);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (this.b.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        PointerHoverIconModifierNode pointerHoverIconModifierNode = (PointerHoverIconModifierNode) node;
        AndroidPointerIconType androidPointerIconType = pointerHoverIconModifierNode.y;
        AndroidPointerIconType androidPointerIconType2 = this.b;
        if (!Intrinsics.a(androidPointerIconType, androidPointerIconType2)) {
            pointerHoverIconModifierNode.y = androidPointerIconType2;
            if (pointerHoverIconModifierNode.z) {
                pointerHoverIconModifierNode.a1();
            }
        }
    }

    public final String toString() {
        return "PointerHoverIconModifierElement(icon=" + this.b + ", overrideDescendants=false)";
    }
}
