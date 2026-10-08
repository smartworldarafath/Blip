package androidx.compose.foundation;

import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.TraversableNodeKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GestureNodeKt {
    public static final DelegatableNode a(GestureConnection gestureConnection) {
        return new GestureNode(gestureConnection);
    }

    public static final void b(DelegatingNode delegatingNode, Function1 function1) {
        TraversableNodeKt.a(delegatingNode, GestureNode.y, new b(1, function1));
    }
}
