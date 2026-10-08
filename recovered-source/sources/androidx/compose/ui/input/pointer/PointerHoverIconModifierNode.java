package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1;
import androidx.compose.ui.platform.CompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerHoverIconModifierNode extends HoverIconModifierNode {
    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final void Z0(PointerIcon pointerIcon) {
        PointerIconService pointerIconService = (PointerIconService) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.w);
        if (pointerIconService != null) {
            ((AndroidComposeView$pointerIconService$1) pointerIconService).a(pointerIcon);
        }
    }

    @Override // androidx.compose.ui.input.pointer.HoverIconModifierNode
    public final boolean b1(int i) {
        if (i == 3 || i == 4) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final /* bridge */ /* synthetic */ Object p() {
        return "androidx.compose.ui.input.pointer.PointerHoverIcon";
    }
}
