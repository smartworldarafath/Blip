package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextFieldSizeElement extends ModifierNodeElement<TextFieldSizeNode> {
    public final TextStyle b;

    public TextFieldSizeElement(TextStyle textStyle) {
        this.b = textStyle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldSizeElement)) {
            return false;
        }
        return Intrinsics.a(this.b, ((TextFieldSizeElement) obj).b);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new TextFieldSizeNode(this.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        TextFieldSizeNode textFieldSizeNode = (TextFieldSizeNode) node;
        textFieldSizeNode.getClass();
        TextStyle a = TextStyleKt.a(this.b, DelegatableNodeKt.g(textFieldSizeNode).I);
        textFieldSizeNode.Y0(a, (FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.a(textFieldSizeNode, CompositionLocalsKt.k));
        TextFieldSize textFieldSize = textFieldSizeNode.z;
        if (textFieldSize != null) {
            TextFieldSize.a(textFieldSize, null, null, a, 23);
            LayoutModifierNodeKt.a(textFieldSizeNode);
            return;
        }
        throw q.C("Min size state is not set.");
    }
}
