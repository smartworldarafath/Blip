package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SizeElement extends ModifierNodeElement<SizeNode> {
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final boolean f;

    public /* synthetic */ SizeElement(float f, float f2, float f3, float f4, boolean z, int i) {
        this((i & 1) != 0 ? Float.NaN : f, (i & 2) != 0 ? Float.NaN : f2, (i & 4) != 0 ? Float.NaN : f3, (i & 8) != 0 ? Float.NaN : f4, z);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SizeElement) {
                SizeElement sizeElement = (SizeElement) obj;
                if (!Dp.b(this.b, sizeElement.b) || !Dp.b(this.c, sizeElement.c) || !Dp.b(this.d, sizeElement.d) || !Dp.b(this.e, sizeElement.e) || this.f != sizeElement.f) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.SizeNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.A = this.e;
        node.B = this.f;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + q.a(this.e, q.a(this.d, q.a(this.c, Float.hashCode(this.b) * 31, 31), 31), 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        SizeNode sizeNode = (SizeNode) node;
        sizeNode.x = this.b;
        sizeNode.y = this.c;
        sizeNode.z = this.d;
        sizeNode.A = this.e;
        sizeNode.B = this.f;
    }

    public SizeElement(float f, float f2, float f3, float f4, boolean z) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = z;
    }
}
