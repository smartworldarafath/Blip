package androidx.compose.ui.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DragAndDropNode extends Modifier.Node implements TraversableNode, DelegatableNode, DragAndDropTarget, LayoutAwareModifierNode {
    public DragAndDropNode y;
    public DragAndDropTarget z;
    public final Object x = DragAndDropNode$Companion$DragAndDropTraversableKey.a;
    public long A = 0;

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.z = null;
        this.y = null;
    }

    public final boolean Y0(DragAndDropEvent dragAndDropEvent) {
        DragAndDropNode dragAndDropNode = this.y;
        if (dragAndDropNode == null) {
            DragAndDropTarget dragAndDropTarget = this.z;
            if (dragAndDropTarget != null) {
                return ((DragAndDropNode) dragAndDropTarget).Y0(dragAndDropEvent);
            }
            return false;
        }
        return dragAndDropNode.Y0(dragAndDropEvent);
    }

    public final void Z0(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.z;
        if (dragAndDropTarget == null) {
            DragAndDropNode dragAndDropNode = this.y;
            if (dragAndDropNode != null) {
                dragAndDropNode.Z0(dragAndDropEvent);
                return;
            }
            return;
        }
        ((DragAndDropNode) dragAndDropTarget).Z0(dragAndDropEvent);
    }

    public final void a1(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.z;
        if (dragAndDropTarget != null) {
            ((DragAndDropNode) dragAndDropTarget).a1(dragAndDropEvent);
        }
        DragAndDropNode dragAndDropNode = this.y;
        if (dragAndDropNode != null) {
            dragAndDropNode.a1(dragAndDropEvent);
        }
        this.y = null;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void b(long j) {
        this.A = j;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void b1(final DragAndDropEvent dragAndDropEvent) {
        TraversableNode traversableNode;
        DragAndDropNode dragAndDropNode;
        DragAndDropNode dragAndDropNode2 = this.y;
        if (dragAndDropNode2 != null && DragAndDropNodeKt.a(dragAndDropNode2, DragAndDrop_androidKt.a(dragAndDropEvent))) {
            dragAndDropNode = dragAndDropNode2;
        } else {
            if (!this.j.w) {
                traversableNode = null;
            } else {
                final ?? obj = new Object();
                TraversableNodeKt.d(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj2) {
                        TraversableNode traversableNode2 = (TraversableNode) obj2;
                        DragAndDropNode dragAndDropNode3 = (DragAndDropNode) traversableNode2;
                        if (((AndroidDragAndDropManager) DelegatableNodeKt.h(this).getDragAndDropManager()).b.contains(dragAndDropNode3) && DragAndDropNodeKt.a(dragAndDropNode3, DragAndDrop_androidKt.a(dragAndDropEvent))) {
                            Ref$ObjectRef.this.j = traversableNode2;
                            return TraversableNode$Companion$TraverseDescendantsAction.l;
                        }
                        return TraversableNode$Companion$TraverseDescendantsAction.j;
                    }
                });
                traversableNode = (TraversableNode) obj.j;
            }
            dragAndDropNode = (DragAndDropNode) traversableNode;
        }
        if (dragAndDropNode != null && dragAndDropNode2 == null) {
            dragAndDropNode.Z0(dragAndDropEvent);
            dragAndDropNode.b1(dragAndDropEvent);
            DragAndDropTarget dragAndDropTarget = this.z;
            if (dragAndDropTarget != null) {
                ((DragAndDropNode) dragAndDropTarget).a1(dragAndDropEvent);
            }
        } else if (dragAndDropNode == null && dragAndDropNode2 != null) {
            DragAndDropTarget dragAndDropTarget2 = this.z;
            if (dragAndDropTarget2 != null) {
                DragAndDropNode dragAndDropNode3 = (DragAndDropNode) dragAndDropTarget2;
                dragAndDropNode3.Z0(dragAndDropEvent);
                dragAndDropNode3.b1(dragAndDropEvent);
            }
            dragAndDropNode2.a1(dragAndDropEvent);
        } else if (!Intrinsics.a(dragAndDropNode, dragAndDropNode2)) {
            if (dragAndDropNode != null) {
                dragAndDropNode.Z0(dragAndDropEvent);
                dragAndDropNode.b1(dragAndDropEvent);
            }
            if (dragAndDropNode2 != null) {
                dragAndDropNode2.a1(dragAndDropEvent);
            }
        } else if (dragAndDropNode != null) {
            dragAndDropNode.b1(dragAndDropEvent);
        } else {
            DragAndDropTarget dragAndDropTarget3 = this.z;
            if (dragAndDropTarget3 != null) {
                ((DragAndDropNode) dragAndDropTarget3).b1(dragAndDropEvent);
            }
        }
        this.y = dragAndDropNode;
    }

    public final void c1(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.z;
        if (dragAndDropTarget == null) {
            DragAndDropNode dragAndDropNode = this.y;
            if (dragAndDropNode != null) {
                dragAndDropNode.c1(dragAndDropEvent);
                return;
            }
            return;
        }
        ((DragAndDropNode) dragAndDropTarget).c1(dragAndDropEvent);
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object p() {
        return this.x;
    }
}
