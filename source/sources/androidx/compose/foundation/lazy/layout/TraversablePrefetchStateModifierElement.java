package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TraversablePrefetchStateModifierElement extends ModifierNodeElement<TraversablePrefetchStateNode> {
    public final LazyLayoutPrefetchState b;

    public TraversablePrefetchStateModifierElement(LazyLayoutPrefetchState lazyLayoutPrefetchState) {
        this.b = lazyLayoutPrefetchState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof TraversablePrefetchStateModifierElement) && Intrinsics.a(this.b, ((TraversablePrefetchStateModifierElement) obj).b)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode, androidx.compose.ui.Modifier$Node] */
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
        ((TraversablePrefetchStateNode) node).x = this.b;
    }

    public final String toString() {
        return "TraversablePrefetchStateModifierElement(prefetchState=" + this.b + ")";
    }
}
