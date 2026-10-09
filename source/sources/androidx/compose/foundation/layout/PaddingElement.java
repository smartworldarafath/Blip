package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Dp;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PaddingElement extends ModifierNodeElement<PaddingNode> {
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    public PaddingElement(float f, float f2, float f3, float f4) {
        boolean z;
        boolean z2;
        boolean z3;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        boolean z4 = true;
        if (f < 0.0f && !Float.isNaN(f)) {
            z = false;
        } else {
            z = true;
        }
        if (f2 < 0.0f && !Float.isNaN(f2)) {
            z2 = false;
        } else {
            z2 = true;
        }
        boolean z5 = z & z2;
        if (f3 < 0.0f && !Float.isNaN(f3)) {
            z3 = false;
        } else {
            z3 = true;
        }
        boolean z6 = z5 & z3;
        if (f4 < 0.0f && !Float.isNaN(f4)) {
            z4 = false;
        }
        if (!(z6 & z4)) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
    }

    public final boolean equals(Object obj) {
        PaddingElement paddingElement;
        if (obj instanceof PaddingElement) {
            paddingElement = (PaddingElement) obj;
        } else {
            paddingElement = null;
        }
        if (paddingElement != null && Dp.b(this.b, paddingElement.b) && Dp.b(this.c, paddingElement.c) && Dp.b(this.d, paddingElement.d) && Dp.b(this.e, paddingElement.e)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.PaddingNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.A = this.e;
        node.B = true;
        return node;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + q.a(this.e, q.a(this.d, q.a(this.c, Float.hashCode(this.b) * 31, 31), 31), 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        PaddingNode paddingNode = (PaddingNode) node;
        paddingNode.x = this.b;
        paddingNode.y = this.c;
        paddingNode.z = this.d;
        paddingNode.A = this.e;
        paddingNode.B = true;
    }
}
