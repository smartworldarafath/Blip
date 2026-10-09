package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class HoverableElement extends ModifierNodeElement<HoverableNode> {
    public final MutableInteractionSource b;

    public HoverableElement(MutableInteractionSource mutableInteractionSource) {
        this.b = mutableInteractionSource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof HoverableElement) && Intrinsics.a(((HoverableElement) obj).b, this.b)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.HoverableNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        return node;
    }

    public final int hashCode() {
        return this.b.hashCode() * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        HoverableNode hoverableNode = (HoverableNode) node;
        MutableInteractionSource mutableInteractionSource = hoverableNode.x;
        MutableInteractionSource mutableInteractionSource2 = this.b;
        if (!Intrinsics.a(mutableInteractionSource, mutableInteractionSource2)) {
            hoverableNode.a1();
            hoverableNode.x = mutableInteractionSource2;
        }
    }
}
