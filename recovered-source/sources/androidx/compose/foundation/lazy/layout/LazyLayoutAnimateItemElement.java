package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutAnimateItemElement extends ModifierNodeElement<LazyLayoutAnimationSpecsNode> {
    public final SpringSpec b;

    public LazyLayoutAnimateItemElement(SpringSpec springSpec) {
        this.b = springSpec;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LazyLayoutAnimateItemElement) || !this.b.equals(((LazyLayoutAnimateItemElement) obj).b)) {
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.lazy.layout.LazyLayoutAnimationSpecsNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        return node;
    }

    public final int hashCode() {
        return this.b.hashCode() * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode = (LazyLayoutAnimationSpecsNode) node;
        lazyLayoutAnimationSpecsNode.getClass();
        lazyLayoutAnimationSpecsNode.x = this.b;
    }

    public final String toString() {
        return "LazyLayoutAnimateItemElement(fadeInSpec=null, placementSpec=" + this.b + ", fadeOutSpec=null)";
    }
}
