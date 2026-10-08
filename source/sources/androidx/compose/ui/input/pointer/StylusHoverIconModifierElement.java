package androidx.compose.ui.input.pointer;

import androidx.compose.foundation.text.TextPointerIcon_androidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StylusHoverIconModifierElement extends ModifierNodeElement<StylusHoverIconModifierNode> {
    public final DpTouchBoundsExpansion b;

    public StylusHoverIconModifierElement(DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.b = dpTouchBoundsExpansion;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof StylusHoverIconModifierElement) {
                StylusHoverIconModifierElement stylusHoverIconModifierElement = (StylusHoverIconModifierElement) obj;
                AndroidPointerIconType androidPointerIconType = TextPointerIcon_androidKt.a;
                if (!androidPointerIconType.equals(androidPointerIconType) || !Intrinsics.a(this.b, stylusHoverIconModifierElement.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new HoverIconModifierNode(TextPointerIcon_androidKt.a, this.b);
    }

    public final int hashCode() {
        int i = 0;
        int b = jb.b(31682, 31, false);
        DpTouchBoundsExpansion dpTouchBoundsExpansion = this.b;
        if (dpTouchBoundsExpansion != null) {
            i = dpTouchBoundsExpansion.hashCode();
        }
        return b + i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        StylusHoverIconModifierNode stylusHoverIconModifierNode = (StylusHoverIconModifierNode) node;
        AndroidPointerIconType androidPointerIconType = stylusHoverIconModifierNode.y;
        AndroidPointerIconType androidPointerIconType2 = TextPointerIcon_androidKt.a;
        if (!Intrinsics.a(androidPointerIconType, androidPointerIconType2)) {
            stylusHoverIconModifierNode.y = androidPointerIconType2;
            if (stylusHoverIconModifierNode.z) {
                stylusHoverIconModifierNode.a1();
            }
        }
        stylusHoverIconModifierNode.x = this.b;
    }

    public final String toString() {
        return "StylusHoverIconModifierElement(icon=" + TextPointerIcon_androidKt.a + ", overrideDescendants=false, touchBoundsExpansion=" + this.b + ")";
    }
}
