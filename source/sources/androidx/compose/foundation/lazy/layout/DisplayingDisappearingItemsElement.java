package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DisplayingDisappearingItemsElement extends ModifierNodeElement<DisplayingDisappearingItemsNode> {
    public final LazyLayoutItemAnimator b;

    public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
        this.b = lazyLayoutItemAnimator;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DisplayingDisappearingItemsElement) && Intrinsics.a(this.b, ((DisplayingDisappearingItemsElement) obj).b)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.foundation.lazy.layout.DisplayingDisappearingItemsNode] */
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
        DisplayingDisappearingItemsNode displayingDisappearingItemsNode = (DisplayingDisappearingItemsNode) node;
        LazyLayoutItemAnimator lazyLayoutItemAnimator = displayingDisappearingItemsNode.x;
        LazyLayoutItemAnimator lazyLayoutItemAnimator2 = this.b;
        if (!Intrinsics.a(lazyLayoutItemAnimator, lazyLayoutItemAnimator2) && displayingDisappearingItemsNode.j.w) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator3 = displayingDisappearingItemsNode.x;
            lazyLayoutItemAnimator3.e();
            lazyLayoutItemAnimator3.b = null;
            lazyLayoutItemAnimator3.c = -1;
            lazyLayoutItemAnimator2.j = displayingDisappearingItemsNode;
            displayingDisappearingItemsNode.x = lazyLayoutItemAnimator2;
        }
    }

    public final String toString() {
        return "DisplayingDisappearingItemsElement(animator=" + this.b + ")";
    }
}
