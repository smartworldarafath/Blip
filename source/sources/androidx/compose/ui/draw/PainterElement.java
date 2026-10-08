package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PainterElement extends ModifierNodeElement<PainterNode> {
    public final Alignment b;
    public final ContentScale c;
    public final float d;
    public final ColorFilter e;
    private final Painter painter;

    public PainterElement(Painter painter, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        this.painter = painter;
        this.b = alignment;
        this.c = contentScale;
        this.d = f;
        this.e = colorFilter;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PainterElement) {
                PainterElement painterElement = (PainterElement) obj;
                if (!Intrinsics.a(this.painter, painterElement.painter) || !Intrinsics.a(this.b, painterElement.b) || !Intrinsics.a(this.c, painterElement.c) || Float.compare(this.d, painterElement.d) != 0 || !Intrinsics.a(this.e, painterElement.e)) {
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
        return new PainterNode(this.painter, this.b, this.c, this.d, this.e);
    }

    public final int hashCode() {
        int hashCode;
        int a = q.a(this.d, (this.c.hashCode() + ((this.b.hashCode() + jb.b(this.painter.hashCode() * 31, 31, true)) * 31)) * 31, 31);
        ColorFilter colorFilter = this.e;
        if (colorFilter == null) {
            hashCode = 0;
        } else {
            hashCode = colorFilter.hashCode();
        }
        return a + hashCode;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        PainterNode painterNode = (PainterNode) node;
        painterNode.getClass();
        boolean a = Size.a(painterNode.Y0().i(), this.painter.i());
        painterNode.d1(this.painter);
        painterNode.x = this.b;
        painterNode.y = this.c;
        painterNode.z = this.d;
        painterNode.A = this.e;
        if (!a) {
            LayoutModifierNodeKt.a(painterNode);
        }
        DrawModifierNodeKt.a(painterNode);
    }

    public final String toString() {
        return "PainterElement(painter=" + this.painter + ", sizeToIntrinsics=true, alignment=" + this.b + ", contentScale=" + this.c + ", alpha=" + this.d + ", colorFilter=" + this.e + ")";
    }
}
