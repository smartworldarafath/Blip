package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BorderModifierNodeElement extends ModifierNodeElement<BorderModifierNode> {
    public final float b;
    public final SolidColor c;
    public final Shape d;

    public BorderModifierNodeElement(float f, SolidColor solidColor, Shape shape) {
        this.b = f;
        this.c = solidColor;
        this.d = shape;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BorderModifierNodeElement) {
                BorderModifierNodeElement borderModifierNodeElement = (BorderModifierNodeElement) obj;
                if (!Dp.b(this.b, borderModifierNodeElement.b) || !this.c.equals(borderModifierNodeElement.c) || !Intrinsics.a(this.d, borderModifierNodeElement.d)) {
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
        return new BorderModifierNode(this.b, this.c, this.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + (Float.hashCode(this.b) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        BorderModifierNode borderModifierNode = (BorderModifierNode) node;
        float f = borderModifierNode.A;
        CacheDrawModifierNode cacheDrawModifierNode = borderModifierNode.D;
        float f2 = this.b;
        if (!Dp.b(f, f2)) {
            borderModifierNode.A = f2;
            cacheDrawModifierNode.w();
        }
        SolidColor solidColor = borderModifierNode.B;
        SolidColor solidColor2 = this.c;
        if (!Intrinsics.a(solidColor, solidColor2)) {
            borderModifierNode.B = solidColor2;
            cacheDrawModifierNode.w();
        }
        Shape shape = borderModifierNode.C;
        Shape shape2 = this.d;
        if (!Intrinsics.a(shape, shape2)) {
            borderModifierNode.C = shape2;
            cacheDrawModifierNode.w();
            SemanticsModifierNodeKt.b(borderModifierNode);
        }
    }

    public final String toString() {
        return "BorderModifierNodeElement(width=" + Dp.c(this.b) + ", brush=" + this.c + ", shape=" + this.d + ")";
    }
}
