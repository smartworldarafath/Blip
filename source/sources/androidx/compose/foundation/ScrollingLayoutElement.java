package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollingLayoutElement extends ModifierNodeElement<ScrollNode> {
    public final ScrollState b;

    public ScrollingLayoutElement(ScrollState scrollState) {
        this.b = scrollState;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ScrollingLayoutElement) {
            if (Intrinsics.a(this.b, ((ScrollingLayoutElement) obj).b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.ScrollNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = true;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + jb.b(this.b.hashCode() * 31, 31, false);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ScrollNode scrollNode = (ScrollNode) node;
        scrollNode.x = this.b;
        scrollNode.y = true;
    }
}
