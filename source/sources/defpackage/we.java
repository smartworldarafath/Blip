package defpackage;

import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class we implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ScrollableNode k;

    public /* synthetic */ we(ScrollableNode scrollableNode, int i) {
        this.j = i;
        this.k = scrollableNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        ScrollableNode scrollableNode = this.k;
        switch (i) {
            case 0:
                return Boolean.valueOf(scrollableNode.w);
            default:
                DelegatableNode delegatableNode = scrollableNode.c0;
                if (!((Modifier.Node) delegatableNode).j.w) {
                    return null;
                }
                FocusStateImpl d1 = ((FocusTargetNode) delegatableNode).d1();
                if (!d1.a()) {
                    return null;
                }
                if (d1.b()) {
                    return ((FocusTargetNode) delegatableNode).b1(null);
                }
                FocusTargetNode g = ((FocusOwnerImpl) DelegatableNodeKt.h(delegatableNode).getFocusOwner()).g();
                if (g == null) {
                    return null;
                }
                return g.b1(DelegatableNodeKt.f(delegatableNode));
        }
    }
}
