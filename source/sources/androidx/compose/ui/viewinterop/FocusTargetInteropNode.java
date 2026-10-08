package androidx.compose.ui.viewinterop;

import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.jvm.internal.FunctionReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusTargetInteropNode extends DelegatingNode implements ObserverModifierNode, CompositionLocalConsumerModifierNode {
    public PinnableContainer.PinnedHandle A;
    public final FocusTargetNode z;

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.FunctionReference] */
    public FocusTargetInteropNode() {
        FocusTargetNode focusTargetNode = new FocusTargetNode(0, new FunctionReference(2, this, FocusTargetInteropNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0), 9);
        Y0(focusTargetNode);
        this.z = focusTargetNode;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        PinnableContainer.PinnedHandle pinnedHandle;
        ?? obj = new Object();
        ObserverModifierNodeKt.a(this, new b(obj, this));
        PinnableContainer pinnableContainer = (PinnableContainer) obj.j;
        if (this.z.d1().b()) {
            PinnableContainer.PinnedHandle pinnedHandle2 = this.A;
            if (pinnedHandle2 != null) {
                pinnedHandle2.a();
            }
            if (pinnableContainer != null) {
                pinnedHandle = pinnableContainer.b();
            } else {
                pinnedHandle = null;
            }
            this.A = pinnedHandle;
        }
    }
}
