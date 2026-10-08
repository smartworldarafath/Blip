package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.m2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BringIntoViewElement extends ModifierNodeElement<BringIntoViewNode> {
    public final m2 b;

    public BringIntoViewElement(m2 m2Var) {
        this.b = m2Var;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BringIntoViewElement) {
                if (this.b != ((BringIntoViewElement) obj).b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new BringIntoViewNode(this.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        BringIntoViewNode bringIntoViewNode = (BringIntoViewNode) node;
        m2 m2Var = this.b;
        bringIntoViewNode.x = m2Var;
        if (bringIntoViewNode.w) {
            m2Var.b(bringIntoViewNode.y);
        }
    }
}
