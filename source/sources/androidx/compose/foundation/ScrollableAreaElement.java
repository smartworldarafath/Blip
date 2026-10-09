package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ScrollableAreaElement extends ModifierNodeElement<ScrollableAreaNode> {
    public final ScrollableState b;
    public final Orientation c;
    public final boolean d;
    public final FlingBehavior e;
    public final MutableInteractionSource f;
    public final BringIntoViewSpec g;
    public final boolean h;
    public final OverscrollEffect i;

    public ScrollableAreaElement(OverscrollEffect overscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        this.b = scrollableState;
        this.c = orientation;
        this.d = z;
        this.e = flingBehavior;
        this.f = mutableInteractionSource;
        this.g = bringIntoViewSpec;
        this.h = z2;
        this.i = overscrollEffect;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ScrollableAreaElement.class == obj.getClass()) {
                ScrollableAreaElement scrollableAreaElement = (ScrollableAreaElement) obj;
                if (Intrinsics.a(this.b, scrollableAreaElement.b) && this.c == scrollableAreaElement.c && this.d == scrollableAreaElement.d && Intrinsics.a(this.e, scrollableAreaElement.e) && Intrinsics.a(this.f, scrollableAreaElement.f) && Intrinsics.a(this.g, scrollableAreaElement.g) && this.h == scrollableAreaElement.h && Intrinsics.a(this.i, scrollableAreaElement.i)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.ScrollableAreaNode, androidx.compose.ui.node.DelegatingNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? delegatingNode = new DelegatingNode();
        delegatingNode.z = this.b;
        delegatingNode.A = this.c;
        delegatingNode.B = this.d;
        delegatingNode.C = this.e;
        delegatingNode.D = this.f;
        delegatingNode.E = this.g;
        delegatingNode.F = this.h;
        delegatingNode.G = this.i;
        return delegatingNode;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int b = jb.b(jb.b((this.c.hashCode() + (this.b.hashCode() * 31)) * 31, 31, this.d), 31, false);
        FlingBehavior flingBehavior = this.e;
        if (flingBehavior != null) {
            i = flingBehavior.hashCode();
        } else {
            i = 0;
        }
        int i5 = (b + i) * 31;
        MutableInteractionSource mutableInteractionSource = this.f;
        if (mutableInteractionSource != null) {
            i2 = mutableInteractionSource.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        BringIntoViewSpec bringIntoViewSpec = this.g;
        if (bringIntoViewSpec != null) {
            i3 = bringIntoViewSpec.hashCode();
        } else {
            i3 = 0;
        }
        int b2 = jb.b((i6 + i3) * 31, 31, this.h);
        OverscrollEffect overscrollEffect = this.i;
        if (overscrollEffect != null) {
            i4 = overscrollEffect.hashCode();
        }
        return b2 + i4;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        MutableInteractionSource mutableInteractionSource = this.f;
        ((ScrollableAreaNode) node).d1(this.i, this.g, this.e, this.c, this.b, mutableInteractionSource, this.h, this.d);
    }
}
