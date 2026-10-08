package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class IndicationModifierElement extends ModifierNodeElement<IndicationModifierNode> {
    public final InteractionSource b;
    public final IndicationNodeFactory c;

    public IndicationModifierElement(InteractionSource interactionSource, IndicationNodeFactory indicationNodeFactory) {
        this.b = interactionSource;
        this.c = indicationNodeFactory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndicationModifierElement)) {
            return false;
        }
        IndicationModifierElement indicationModifierElement = (IndicationModifierElement) obj;
        if (Intrinsics.a(this.b, indicationModifierElement.b) && Intrinsics.a(this.c, indicationModifierElement.c)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.node.DelegatingNode, androidx.compose.ui.Modifier$Node, androidx.compose.foundation.IndicationModifierNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        DelegatableNode a = this.c.a(this.b);
        ?? delegatingNode = new DelegatingNode();
        delegatingNode.z = a;
        delegatingNode.Y0(a);
        return delegatingNode;
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        IndicationModifierNode indicationModifierNode = (IndicationModifierNode) node;
        DelegatableNode a = this.c.a(this.b);
        indicationModifierNode.Z0(indicationModifierNode.z);
        indicationModifierNode.z = a;
        indicationModifierNode.Y0(a);
    }
}
