package androidx.compose.foundation.selection;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ToggleableElement extends ModifierNodeElement<ToggleableNode> {
    public final boolean b;
    public final MutableInteractionSource c;
    public final Role d;
    public final Function1 e;

    public ToggleableElement(boolean z, MutableInteractionSource mutableInteractionSource, Role role, Function1 function1) {
        this.b = z;
        this.c = mutableInteractionSource;
        this.d = role;
        this.e = function1;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ToggleableElement.class == obj.getClass()) {
                ToggleableElement toggleableElement = (ToggleableElement) obj;
                if (this.b != toggleableElement.b || !Intrinsics.a(this.c, toggleableElement.c) || !this.d.equals(toggleableElement.d) || this.e != toggleableElement.e) {
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
        return new ToggleableNode(this.b, this.c, this.d, this.e);
    }

    public final int hashCode() {
        int i;
        int hashCode = Boolean.hashCode(this.b) * 31;
        MutableInteractionSource mutableInteractionSource = this.c;
        if (mutableInteractionSource != null) {
            i = mutableInteractionSource.hashCode();
        } else {
            i = 0;
        }
        return this.e.hashCode() + q.b(this.d.a, jb.b(jb.b((hashCode + i) * 961, 31, false), 31, true), 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ToggleableNode toggleableNode = (ToggleableNode) node;
        boolean z = toggleableNode.V;
        boolean z2 = this.b;
        if (z != z2) {
            toggleableNode.V = z2;
            SemanticsModifierNodeKt.b(toggleableNode);
        }
        toggleableNode.W = this.e;
        toggleableNode.o1(this.c, null, false, true, null, this.d, toggleableNode.X);
    }
}
