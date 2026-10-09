package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusableElement extends ModifierNodeElement<FocusableNode> {
    public final MutableInteractionSource b;

    public FocusableElement(MutableInteractionSource mutableInteractionSource) {
        this.b = mutableInteractionSource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FocusableElement)) {
            return false;
        }
        if (Intrinsics.a(this.b, ((FocusableElement) obj).b)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new FocusableNode(this.b, 1, null);
    }

    public final int hashCode() {
        MutableInteractionSource mutableInteractionSource = this.b;
        if (mutableInteractionSource != null) {
            return mutableInteractionSource.hashCode();
        }
        return 0;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((FocusableNode) node).d1(this.b);
    }
}
