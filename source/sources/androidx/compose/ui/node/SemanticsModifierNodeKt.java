package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsModifierNodeKt {
    public static final Rect a(Modifier.Node node, boolean z, boolean z2) {
        if (!node.j.w) {
            return Rect.e;
        }
        if (!z) {
            NodeCoordinator e = DelegatableNodeKt.e(node, 8);
            return LayoutCoordinatesKt.c(e).l(e, z2);
        }
        return DelegatableNodeKt.e(node, 8).A1();
    }

    public static final void b(SemanticsModifierNode semanticsModifierNode) {
        DelegatableNodeKt.g(semanticsModifierNode).J();
    }
}
