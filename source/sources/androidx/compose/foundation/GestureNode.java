package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class GestureNode extends Modifier.Node implements TraversableNode, DelegatableNode {
    public static final TraverseKey y = new Object();
    public final GestureConnection x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TraverseKey {
    }

    public GestureNode(GestureConnection gestureConnection) {
        this.x = gestureConnection;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object p() {
        return y;
    }
}
