package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.jb;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LazyLayoutSemanticsModifier extends ModifierNodeElement<LazyLayoutSemanticsModifierNode> {
    public final Function0 b;
    public final LazyLayoutSemanticState c;
    public final Orientation d;
    public final boolean e;

    public LazyLayoutSemanticsModifier(Function0 function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        this.b = function0;
        this.c = lazyLayoutSemanticState;
        this.d = orientation;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LazyLayoutSemanticsModifier) {
            LazyLayoutSemanticsModifier lazyLayoutSemanticsModifier = (LazyLayoutSemanticsModifier) obj;
            if (this.b == lazyLayoutSemanticsModifier.b && Intrinsics.a(this.c, lazyLayoutSemanticsModifier.c) && this.d == lazyLayoutSemanticsModifier.d && this.e == lazyLayoutSemanticsModifier.e) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new LazyLayoutSemanticsModifierNode(this.b, this.c, this.d, this.e);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + jb.b((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31, 31, this.e);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = (LazyLayoutSemanticsModifierNode) node;
        lazyLayoutSemanticsModifierNode.x = this.b;
        lazyLayoutSemanticsModifierNode.y = this.c;
        Orientation orientation = lazyLayoutSemanticsModifierNode.z;
        Orientation orientation2 = this.d;
        if (orientation != orientation2) {
            lazyLayoutSemanticsModifierNode.z = orientation2;
            SemanticsModifierNodeKt.b(lazyLayoutSemanticsModifierNode);
        }
        boolean z = lazyLayoutSemanticsModifierNode.A;
        boolean z2 = this.e;
        if (z == z2) {
            return;
        }
        lazyLayoutSemanticsModifierNode.A = z2;
        lazyLayoutSemanticsModifierNode.Y0();
        SemanticsModifierNodeKt.b(lazyLayoutSemanticsModifierNode);
    }
}
