package defpackage;

import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.input.pointer.HoverIconModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z7 implements Function1 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Ref$BooleanRef k;

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Ref$BooleanRef ref$BooleanRef = this.k;
        switch (i) {
            case 0:
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.w) {
                    return TraversableNode$Companion$TraverseDescendantsAction.k;
                }
                if (dragAndDropNode.z != null) {
                    InlineClassHelperKt.b("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                }
                dragAndDropNode.z = null;
                ref$BooleanRef.j = ref$BooleanRef.j;
                return TraversableNode$Companion$TraverseDescendantsAction.j;
            default:
                if (((HoverIconModifierNode) obj).z) {
                    ref$BooleanRef.j = false;
                    return TraversableNode$Companion$TraverseDescendantsAction.l;
                }
                return TraversableNode$Companion$TraverseDescendantsAction.j;
        }
    }

    public /* synthetic */ z7(Ref$BooleanRef ref$BooleanRef) {
        this.k = ref$BooleanRef;
    }
}
