package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollableElement extends ModifierNodeElement<ScrollableNode> {
    public final ScrollableState b;
    public final Orientation c;
    public final boolean d;
    public final boolean e;
    public final MutableInteractionSource f;

    public ScrollableElement(ScrollableState scrollableState, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource) {
        this.b = scrollableState;
        this.c = orientation;
        this.d = z;
        this.e = z2;
        this.f = mutableInteractionSource;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ScrollableElement) {
                ScrollableElement scrollableElement = (ScrollableElement) obj;
                if (!Intrinsics.a(this.b, scrollableElement.b) || this.c != scrollableElement.c || this.d != scrollableElement.d || this.e != scrollableElement.e || !Intrinsics.a(this.f, scrollableElement.f)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new ScrollableNode(null, null, null, this.c, this.b, this.f, this.d, this.e);
    }

    public final int hashCode() {
        int i;
        int b = jb.b(jb.b((this.c.hashCode() + (this.b.hashCode() * 31)) * 961, 31, this.d), 961, this.e);
        MutableInteractionSource mutableInteractionSource = this.f;
        if (mutableInteractionSource != null) {
            i = mutableInteractionSource.hashCode();
        } else {
            i = 0;
        }
        return (b + i) * 31;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((ScrollableNode) node).t1(null, null, null, this.c, this.b, this.f, this.d, this.e);
    }
}
