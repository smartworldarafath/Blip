package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class HeightInLinesElement extends ModifierNodeElement<HeightInLinesNode> {
    public final TextStyle b;
    public final int c;
    public final int d;

    public HeightInLinesElement(TextStyle textStyle, int i, int i2) {
        this.b = textStyle;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof HeightInLinesElement) {
                HeightInLinesElement heightInLinesElement = (HeightInLinesElement) obj;
                if (!Intrinsics.a(this.b, heightInLinesElement.b) || this.c != heightInLinesElement.c || this.d != heightInLinesElement.d) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.Modifier$Node, androidx.compose.foundation.text.HeightInLinesNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.B = -1;
        node.C = -1;
        return node;
    }

    public final int hashCode() {
        return (((this.b.hashCode() * 31) + this.c) * 31) + this.d;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        HeightInLinesNode heightInLinesNode = (HeightInLinesNode) node;
        TextStyle textStyle = heightInLinesNode.x;
        TextStyle textStyle2 = this.b;
        boolean a = Intrinsics.a(textStyle, textStyle2);
        int i = this.c;
        int i2 = this.d;
        if (a && heightInLinesNode.y == i && heightInLinesNode.z == i2) {
            return;
        }
        heightInLinesNode.x = textStyle2;
        heightInLinesNode.y = i;
        heightInLinesNode.z = i2;
        heightInLinesNode.D = TextStyleKt.a(textStyle2, DelegatableNodeKt.g(heightInLinesNode).I);
        heightInLinesNode.A = true;
        LayoutModifierNodeKt.a(heightInLinesNode);
    }
}
