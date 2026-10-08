package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class WrapContentElement extends ModifierNodeElement<WrapContentNode> {
    public final Direction b;
    public final Function2 c;
    public final Object d;

    public WrapContentElement(Direction direction, Function2 function2, Object obj) {
        this.b = direction;
        this.c = function2;
        this.d = obj;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && WrapContentElement.class == obj.getClass()) {
                WrapContentElement wrapContentElement = (WrapContentElement) obj;
                if (this.b != wrapContentElement.b || !this.d.equals(wrapContentElement.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.WrapContentNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        return node;
    }

    public final int hashCode() {
        return this.d.hashCode() + jb.b(this.b.hashCode() * 31, 31, false);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        WrapContentNode wrapContentNode = (WrapContentNode) node;
        wrapContentNode.x = this.b;
        wrapContentNode.y = this.c;
    }
}
