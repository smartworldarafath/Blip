package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackgroundElement extends ModifierNodeElement<BackgroundNode> {
    public final long b;
    public final Brush c;
    public final float d;
    public final Shape e;

    public BackgroundElement(long j, Brush brush, Shape shape, int i) {
        j = (i & 1) != 0 ? Color.h : j;
        brush = (i & 2) != 0 ? null : brush;
        this.b = j;
        this.c = brush;
        this.d = 1.0f;
        this.e = shape;
    }

    public final boolean equals(Object obj) {
        BackgroundElement backgroundElement;
        if (obj instanceof BackgroundElement) {
            backgroundElement = (BackgroundElement) obj;
        } else {
            backgroundElement = null;
        }
        if (backgroundElement == null || !Color.c(this.b, backgroundElement.b) || !Intrinsics.a(this.c, backgroundElement.c) || this.d != backgroundElement.d || !Intrinsics.a(this.e, backgroundElement.e)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.BackgroundNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.b;
        node.y = this.c;
        node.z = this.d;
        node.A = this.e;
        node.B = 9205357640488583168L;
        return node;
    }

    public final int hashCode() {
        int i;
        int i2 = Color.i;
        int hashCode = Long.hashCode(this.b) * 31;
        Brush brush = this.c;
        if (brush != null) {
            i = brush.hashCode();
        } else {
            i = 0;
        }
        return this.e.hashCode() + q.a(this.d, (hashCode + i) * 31, 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        BackgroundNode backgroundNode = (BackgroundNode) node;
        backgroundNode.x = this.b;
        backgroundNode.y = this.c;
        backgroundNode.z = this.d;
        Shape shape = backgroundNode.A;
        Shape shape2 = this.e;
        if (!Intrinsics.a(shape, shape2)) {
            backgroundNode.A = shape2;
            SemanticsModifierNodeKt.b(backgroundNode);
        }
        DrawModifierNodeKt.a(backgroundNode);
    }
}
