package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BringIntoViewRequesterElement extends ModifierNodeElement<BringIntoViewRequesterNode> {
    public final BringIntoViewRequester b;

    public BringIntoViewRequesterElement(BringIntoViewRequester bringIntoViewRequester) {
        this.b = bringIntoViewRequester;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BringIntoViewRequesterElement) {
                if (!Intrinsics.a(this.b, ((BringIntoViewRequesterElement) obj).b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.relocation.BringIntoViewRequesterNode, androidx.compose.ui.Modifier$Node] */
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
        BringIntoViewRequesterNode bringIntoViewRequesterNode = (BringIntoViewRequesterNode) node;
        BringIntoViewRequester bringIntoViewRequester = bringIntoViewRequesterNode.x;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).a.j(bringIntoViewRequesterNode);
        }
        BringIntoViewRequester bringIntoViewRequester2 = this.b;
        if (bringIntoViewRequester2 instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester2).a.b(bringIntoViewRequesterNode);
        }
        bringIntoViewRequesterNode.x = bringIntoViewRequester2;
    }
}
