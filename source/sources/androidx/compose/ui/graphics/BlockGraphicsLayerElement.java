package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BlockGraphicsLayerElement extends ModifierNodeElement<BlockGraphicsLayerModifier> {
    public final Function1 b;

    public BlockGraphicsLayerElement(Function1 function1) {
        this.b = function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlockGraphicsLayerElement)) {
            return false;
        }
        if (this.b == ((BlockGraphicsLayerElement) obj).b) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new BlockGraphicsLayerModifier(this.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        Function1 function1 = this.b;
        blockGraphicsLayerModifier.x = function1;
        if (blockGraphicsLayerModifier.j.w && (nodeCoordinator = DelegatableNodeKt.e(blockGraphicsLayerModifier, 2).E) != null) {
            nodeCoordinator.D1(function1, true);
        }
    }
}
