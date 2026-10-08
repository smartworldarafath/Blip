package androidx.compose.ui.draganddrop;

import android.view.DragEvent;
import android.view.View;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.c;
import defpackage.z7;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidDragAndDropManager implements View.OnDragListener, DragAndDropManager {
    public final DragAndDropNode a = new DragAndDropNode();
    public final ArraySet b = new ArraySet(0);
    public final AndroidDragAndDropManager$modifier$1 c = new ModifierNodeElement<DragAndDropNode>() { // from class: androidx.compose.ui.draganddrop.AndroidDragAndDropManager$modifier$1
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node g() {
            return AndroidDragAndDropManager.this.a;
        }

        public final int hashCode() {
            return AndroidDragAndDropManager.this.a.hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void i(Modifier.Node node) {
        }
    };

    /* JADX WARN: Type inference failed for: r6v2, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        DragAndDropEvent dragAndDropEvent = new DragAndDropEvent(dragEvent);
        int action = dragEvent.getAction();
        ArraySet arraySet = this.b;
        DragAndDropNode dragAndDropNode = this.a;
        switch (action) {
            case 1:
                ?? obj = new Object();
                z7 z7Var = new z7(dragAndDropEvent, dragAndDropNode, obj);
                if (z7Var.b(dragAndDropNode) == TraversableNode$Companion$TraverseDescendantsAction.j) {
                    TraversableNodeKt.d(dragAndDropNode, z7Var);
                }
                boolean z = obj.j;
                Iterator it = arraySet.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                    if (indexBasedArrayIterator.hasNext()) {
                        ((DragAndDropNode) ((DragAndDropTarget) indexBasedArrayIterator.next())).c1(dragAndDropEvent);
                    } else {
                        return z;
                    }
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                dragAndDropNode.b1(dragAndDropEvent);
                return false;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return dragAndDropNode.Y0(dragAndDropEvent);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                c cVar = new c(16, dragAndDropEvent);
                if (cVar.b(dragAndDropNode) == TraversableNode$Companion$TraverseDescendantsAction.j) {
                    TraversableNodeKt.d(dragAndDropNode, cVar);
                }
                arraySet.clear();
                return false;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                dragAndDropNode.Z0(dragAndDropEvent);
                return false;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                dragAndDropNode.a1(dragAndDropEvent);
                return false;
            default:
                return false;
        }
    }
}
