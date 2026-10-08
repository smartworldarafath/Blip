package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NodeCoordinatorKt {
    public static final Modifier.Node a(DelegatableNode delegatableNode, int i) {
        Modifier.Node node = ((Modifier.Node) delegatableNode).j.o;
        if (node != null && (node.m & i) != 0) {
            while (node != null) {
                int i2 = node.l;
                if ((i2 & 2) == 0) {
                    if ((i2 & i) != 0) {
                        return node;
                    }
                    node = node.o;
                } else {
                    return null;
                }
            }
            return null;
        }
        return null;
    }
}
