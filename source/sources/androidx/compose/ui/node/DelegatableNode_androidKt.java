package androidx.compose.ui.node;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DelegatableNode_androidKt {
    public static final View a(DelegatableNode delegatableNode) {
        if (!((Modifier.Node) delegatableNode).j.w) {
            InlineClassHelperKt.b("Cannot get View because the Modifier node is not currently attached.");
        }
        return (View) LayoutNodeKt.a(DelegatableNodeKt.g(delegatableNode));
    }
}
