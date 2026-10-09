package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.SiblingsAlignedNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WithAlignmentLineElement extends ModifierNodeElement<SiblingsAlignedNode.WithAlignmentLineNode> {
    public final AlignmentLine b;

    public WithAlignmentLineElement(AlignmentLine alignmentLine) {
        this.b = alignmentLine;
    }

    public final boolean equals(Object obj) {
        WithAlignmentLineElement withAlignmentLineElement;
        if (this == obj) {
            return true;
        }
        if (obj instanceof WithAlignmentLineElement) {
            withAlignmentLineElement = (WithAlignmentLineElement) obj;
        } else {
            withAlignmentLineElement = null;
        }
        if (withAlignmentLineElement == null) {
            return false;
        }
        return Intrinsics.a(this.b, withAlignmentLineElement.b);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.SiblingsAlignedNode$WithAlignmentLineNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        return node;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((SiblingsAlignedNode.WithAlignmentLineNode) node).x = this.b;
    }
}
