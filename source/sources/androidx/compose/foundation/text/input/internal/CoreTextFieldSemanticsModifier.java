package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import defpackage.jb;
import defpackage.x6;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoreTextFieldSemanticsModifier extends ModifierNodeElement<CoreTextFieldSemanticsModifierNode> {
    public final TransformedText b;
    public final TextFieldValue c;
    public final LegacyTextFieldState d;
    public final boolean e;
    public final OffsetMapping f;
    public final TextFieldSelectionManager g;
    public final ImeOptions h;
    public final FocusRequester i;

    public CoreTextFieldSemanticsModifier(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.b = transformedText;
        this.c = textFieldValue;
        this.d = legacyTextFieldState;
        this.e = z;
        this.f = offsetMapping;
        this.g = textFieldSelectionManager;
        this.h = imeOptions;
        this.i = focusRequester;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CoreTextFieldSemanticsModifier) {
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = (CoreTextFieldSemanticsModifier) obj;
                if (this.b.equals(coreTextFieldSemanticsModifier.b) && Intrinsics.a(this.c, coreTextFieldSemanticsModifier.c) && this.d == coreTextFieldSemanticsModifier.d && this.e == coreTextFieldSemanticsModifier.e && this.f.equals(coreTextFieldSemanticsModifier.f) && this.g == coreTextFieldSemanticsModifier.g && Intrinsics.a(this.h, coreTextFieldSemanticsModifier.h) && Intrinsics.a(this.i, coreTextFieldSemanticsModifier.i)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode, androidx.compose.ui.node.DelegatingNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? delegatingNode = new DelegatingNode();
        delegatingNode.z = this.b;
        delegatingNode.A = this.c;
        delegatingNode.B = this.d;
        delegatingNode.C = this.e;
        delegatingNode.D = this.f;
        TextFieldSelectionManager textFieldSelectionManager = this.g;
        delegatingNode.E = textFieldSelectionManager;
        delegatingNode.F = this.h;
        delegatingNode.G = this.i;
        textFieldSelectionManager.f = new x6(delegatingNode, 4);
        return delegatingNode;
    }

    public final int hashCode() {
        return this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + jb.b(jb.b(jb.b((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31, 31, false), 31, this.e), 31, false)) * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) node;
        boolean z = coreTextFieldSemanticsModifierNode.C;
        ImeOptions imeOptions = coreTextFieldSemanticsModifierNode.F;
        TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.E;
        coreTextFieldSemanticsModifierNode.z = this.b;
        TextFieldValue textFieldValue = this.c;
        coreTextFieldSemanticsModifierNode.A = textFieldValue;
        coreTextFieldSemanticsModifierNode.B = this.d;
        boolean z2 = this.e;
        coreTextFieldSemanticsModifierNode.C = z2;
        coreTextFieldSemanticsModifierNode.D = this.f;
        TextFieldSelectionManager textFieldSelectionManager2 = this.g;
        coreTextFieldSemanticsModifierNode.E = textFieldSelectionManager2;
        ImeOptions imeOptions2 = this.h;
        coreTextFieldSemanticsModifierNode.F = imeOptions2;
        coreTextFieldSemanticsModifierNode.G = this.i;
        if (z2 != z || z2 != z || !Intrinsics.a(imeOptions2, imeOptions) || !TextRange.c(textFieldValue.b)) {
            SemanticsModifierNodeKt.b(coreTextFieldSemanticsModifierNode);
        }
        if (textFieldSelectionManager2 != textFieldSelectionManager) {
            textFieldSelectionManager2.f = new x6(coreTextFieldSemanticsModifierNode, 0);
        }
    }

    public final String toString() {
        return "CoreTextFieldSemanticsModifier(transformedText=" + this.b + ", value=" + this.c + ", state=" + this.d + ", readOnly=false, enabled=" + this.e + ", isPassword=false, offsetMapping=" + this.f + ", manager=" + this.g + ", imeOptions=" + this.h + ", focusRequester=" + this.i + ")";
    }
}
