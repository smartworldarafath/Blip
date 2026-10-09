package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OffsetElement extends ModifierNodeElement<OffsetNode> {
    public final float b;
    public final float c;

    public OffsetElement(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    public final boolean equals(Object obj) {
        OffsetElement offsetElement;
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetElement) {
            offsetElement = (OffsetElement) obj;
        } else {
            offsetElement = null;
        }
        if (offsetElement != null && Dp.b(this.b, offsetElement.b) && Dp.b(this.c, offsetElement.c)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.OffsetNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = true;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + q.a(this.c, Float.hashCode(this.b) * 31, 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        OffsetNode offsetNode = (OffsetNode) node;
        float f = offsetNode.x;
        float f2 = this.b;
        boolean b = Dp.b(f, f2);
        float f3 = this.c;
        if (!b || !Dp.b(offsetNode.y, f3) || !offsetNode.z) {
            DelegatableNodeKt.g(offsetNode).Y(false);
        }
        offsetNode.x = f2;
        offsetNode.y = f3;
        offsetNode.z = true;
    }

    public final String toString() {
        return jb.h("OffsetModifierElement(x=", Dp.c(this.b), ", y=", Dp.c(this.c), ", rtlAware=true)");
    }
}
