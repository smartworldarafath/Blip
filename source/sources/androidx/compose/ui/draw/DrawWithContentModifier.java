package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DrawWithContentModifier extends Modifier.Node implements DrawModifierNode {
    public Function1 x;

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        this.x.b(layoutNodeDrawScope);
    }
}
