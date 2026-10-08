package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.kb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NestedScrollElement extends ModifierNodeElement<NestedScrollNode> {
    public final NestedScrollConnection b;
    public final NestedScrollDispatcher c;

    public NestedScrollElement(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.b = nestedScrollConnection;
        this.c = nestedScrollDispatcher;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NestedScrollElement)) {
            return false;
        }
        NestedScrollElement nestedScrollElement = (NestedScrollElement) obj;
        if (!Intrinsics.a(nestedScrollElement.b, this.b) || !Intrinsics.a(nestedScrollElement.c, this.c)) {
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new NestedScrollNode(this.b, this.c);
    }

    public final int hashCode() {
        int i;
        int hashCode = this.b.hashCode() * 31;
        NestedScrollDispatcher nestedScrollDispatcher = this.c;
        if (nestedScrollDispatcher != null) {
            i = nestedScrollDispatcher.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        NestedScrollNode nestedScrollNode = (NestedScrollNode) node;
        nestedScrollNode.x = this.b;
        NestedScrollDispatcher nestedScrollDispatcher = nestedScrollNode.y;
        if (nestedScrollDispatcher.a == nestedScrollNode) {
            nestedScrollDispatcher.a = null;
            nestedScrollDispatcher.d = null;
            nestedScrollDispatcher.c = NestedScrollNodeKt.a;
        }
        NestedScrollDispatcher nestedScrollDispatcher2 = this.c;
        if (nestedScrollDispatcher2 == null) {
            nestedScrollNode.y = new NestedScrollDispatcher();
        } else if (nestedScrollDispatcher2 != nestedScrollDispatcher) {
            nestedScrollNode.y = nestedScrollDispatcher2;
        }
        if (nestedScrollNode.w) {
            NestedScrollDispatcher nestedScrollDispatcher3 = nestedScrollNode.y;
            nestedScrollDispatcher3.a = nestedScrollNode;
            nestedScrollDispatcher3.b = null;
            nestedScrollNode.z = null;
            nestedScrollDispatcher3.c = new kb(3, nestedScrollNode);
            nestedScrollDispatcher3.d = nestedScrollNode.M0();
        }
    }
}
