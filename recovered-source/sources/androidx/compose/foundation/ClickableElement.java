package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.Role;
import defpackage.jb;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClickableElement extends ModifierNodeElement<ClickableNode> {
    public final MutableInteractionSource b;
    public final IndicationNodeFactory c;
    public final boolean d;
    public final boolean e;
    public final String f;
    public final Role g;
    public final Function0 h;

    public ClickableElement(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0) {
        this.b = mutableInteractionSource;
        this.c = indicationNodeFactory;
        this.d = z;
        this.e = z2;
        this.f = str;
        this.g = role;
        this.h = function0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ClickableElement.class == obj.getClass()) {
                ClickableElement clickableElement = (ClickableElement) obj;
                if (!Intrinsics.a(this.b, clickableElement.b) || !Intrinsics.a(this.c, clickableElement.c) || this.d != clickableElement.d || this.e != clickableElement.e || !Intrinsics.a(this.f, clickableElement.f) || !Intrinsics.a(this.g, clickableElement.g) || this.h != clickableElement.h) {
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
        return new AbstractClickableNode(this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        MutableInteractionSource mutableInteractionSource = this.b;
        if (mutableInteractionSource != null) {
            i = mutableInteractionSource.hashCode();
        } else {
            i = 0;
        }
        int i5 = i * 31;
        IndicationNodeFactory indicationNodeFactory = this.c;
        if (indicationNodeFactory != null) {
            i2 = indicationNodeFactory.hashCode();
        } else {
            i2 = 0;
        }
        int b = jb.b(jb.b((i5 + i2) * 31, 31, this.d), 31, this.e);
        String str = this.f;
        if (str != null) {
            i3 = str.hashCode();
        } else {
            i3 = 0;
        }
        int i6 = (b + i3) * 31;
        Role role = this.g;
        if (role != null) {
            i4 = Integer.hashCode(role.a);
        }
        return this.h.hashCode() + ((i6 + i4) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((ClickableNode) node).o1(this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
}
