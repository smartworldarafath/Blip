package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusRequesterElement extends ModifierNodeElement<FocusRequesterNode> {
    public final FocusRequester b;

    public FocusRequesterElement(FocusRequester focusRequester) {
        this.b = focusRequester;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FocusRequesterElement) && Intrinsics.a(this.b, ((FocusRequesterElement) obj).b)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.ui.focus.FocusRequesterNode] */
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
        FocusRequesterNode focusRequesterNode = (FocusRequesterNode) node;
        focusRequesterNode.x.a.j(focusRequesterNode);
        FocusRequester focusRequester = this.b;
        focusRequesterNode.x = focusRequester;
        focusRequester.a.b(focusRequesterNode);
    }

    public final String toString() {
        return "FocusRequesterElement(focusRequester=" + this.b + ")";
    }
}
