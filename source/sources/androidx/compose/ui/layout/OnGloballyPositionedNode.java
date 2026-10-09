package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OnGloballyPositionedNode extends Modifier.Node implements GlobalPositionAwareModifierNode {
    public Function1 x;

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        this.x.b(nodeCoordinator);
    }
}
