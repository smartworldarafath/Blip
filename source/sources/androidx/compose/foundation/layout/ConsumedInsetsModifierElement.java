package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ConsumedInsetsModifierElement extends ModifierNodeElement<ConsumedInsetsModifierNode> {
    public final Function1 b;

    public ConsumedInsetsModifierElement(Function1 function1) {
        this.b = function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ConsumedInsetsModifierElement) && ((ConsumedInsetsModifierElement) obj).b == this.b) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.ConsumedInsetsModifierNode, androidx.compose.ui.Modifier$Node, androidx.compose.foundation.layout.InsetsConsumingModifierNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? insetsConsumingModifierNode = new InsetsConsumingModifierNode();
        insetsConsumingModifierNode.z = this.b;
        return insetsConsumingModifierNode;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ConsumedInsetsModifierNode consumedInsetsModifierNode = (ConsumedInsetsModifierNode) node;
        Function1 function1 = consumedInsetsModifierNode.z;
        Function1 function12 = this.b;
        if (function12 != function1) {
            consumedInsetsModifierNode.z = function12;
            consumedInsetsModifierNode.Z0();
        }
    }
}
