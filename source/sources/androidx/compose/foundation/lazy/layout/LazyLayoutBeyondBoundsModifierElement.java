package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LazyLayoutBeyondBoundsModifierElement extends ModifierNodeElement<LazyLayoutBeyondBoundsProviderModifierNode> {
    public final LazyLayoutBeyondBoundsState b;
    public final LazyLayoutBeyondBoundsInfo c;
    public final Orientation d;

    public LazyLayoutBeyondBoundsModifierElement(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, Orientation orientation) {
        this.b = lazyLayoutBeyondBoundsState;
        this.c = lazyLayoutBeyondBoundsInfo;
        this.d = orientation;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof LazyLayoutBeyondBoundsModifierElement) {
                LazyLayoutBeyondBoundsModifierElement lazyLayoutBeyondBoundsModifierElement = (LazyLayoutBeyondBoundsModifierElement) obj;
                if (!Intrinsics.a(this.b, lazyLayoutBeyondBoundsModifierElement.b) || !Intrinsics.a(this.c, lazyLayoutBeyondBoundsModifierElement.c) || this.d != lazyLayoutBeyondBoundsModifierElement.d) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        return node;
    }

    public final int hashCode() {
        return this.d.hashCode() + jb.b((this.c.hashCode() + (this.b.hashCode() * 31)) * 31, 31, false);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) node;
        lazyLayoutBeyondBoundsProviderModifierNode.x = this.b;
        lazyLayoutBeyondBoundsProviderModifierNode.y = this.c;
        lazyLayoutBeyondBoundsProviderModifierNode.z = this.d;
    }
}
