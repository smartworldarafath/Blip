package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.jb;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CombinedClickableElement extends ModifierNodeElement<CombinedClickableNode> {
    public final MutableInteractionSource b;
    public final IndicationNodeFactory c;
    public final boolean d;
    public final Function0 e;
    public final Function0 f;

    public CombinedClickableElement(IndicationNodeFactory indicationNodeFactory, MutableInteractionSource mutableInteractionSource, Function0 function0, Function0 function02, boolean z) {
        this.b = mutableInteractionSource;
        this.c = indicationNodeFactory;
        this.d = z;
        this.e = function0;
        this.f = function02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CombinedClickableElement.class == obj.getClass()) {
            CombinedClickableElement combinedClickableElement = (CombinedClickableElement) obj;
            if (Intrinsics.a(this.b, combinedClickableElement.b) && Intrinsics.a(this.c, combinedClickableElement.c) && this.d == combinedClickableElement.d && this.e == combinedClickableElement.e && this.f == combinedClickableElement.f) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new CombinedClickableNode(this.c, this.b, this.e, this.f, this.d);
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        MutableInteractionSource mutableInteractionSource = this.b;
        if (mutableInteractionSource != null) {
            i = mutableInteractionSource.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        IndicationNodeFactory indicationNodeFactory = this.c;
        if (indicationNodeFactory != null) {
            i2 = indicationNodeFactory.hashCode();
        } else {
            i2 = 0;
        }
        int hashCode = (this.e.hashCode() + jb.b(jb.b((i4 + i2) * 31, 31, false), 29791, this.d)) * 961;
        Function0 function0 = this.f;
        if (function0 != null) {
            i3 = function0.hashCode();
        }
        return Boolean.hashCode(true) + ((hashCode + i3) * 961);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        CombinedClickableNode combinedClickableNode = (CombinedClickableNode) node;
        combinedClickableNode.U = true;
        if (combinedClickableNode.T == null) {
            z = true;
        } else {
            z = false;
        }
        Function0 function0 = this.f;
        if (function0 == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != z2) {
            combinedClickableNode.d1();
            SemanticsModifierNodeKt.b(combinedClickableNode);
            z3 = true;
        } else {
            z3 = false;
        }
        combinedClickableNode.T = function0;
        boolean z5 = combinedClickableNode.E;
        boolean z6 = this.d;
        if (z5 != z6) {
            z4 = true;
        } else {
            z4 = z3;
        }
        combinedClickableNode.o1(this.b, this.c, false, z6, null, null, this.e);
        if (z4) {
            combinedClickableNode.p1(false);
            combinedClickableNode.p1(true);
        }
    }
}
