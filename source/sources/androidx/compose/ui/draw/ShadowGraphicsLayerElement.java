package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.Dp;
import defpackage.jb;
import defpackage.ma;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShadowGraphicsLayerElement extends ModifierNodeElement<BlockGraphicsLayerModifier> {
    public final float b;
    public final Shape c;
    public final boolean d;
    public final long e;
    public final long f;

    public ShadowGraphicsLayerElement(float f, Shape shape, boolean z, long j, long j2) {
        this.b = f;
        this.c = shape;
        this.d = z;
        this.e = j;
        this.f = j2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ShadowGraphicsLayerElement) {
                ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj;
                if (!Dp.b(this.b, shadowGraphicsLayerElement.b) || !Intrinsics.a(this.c, shadowGraphicsLayerElement.c) || this.d != shadowGraphicsLayerElement.d || !Color.c(this.e, shadowGraphicsLayerElement.e) || !Color.c(this.f, shadowGraphicsLayerElement.f)) {
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
        return new BlockGraphicsLayerModifier(new ma(24, this));
    }

    public final int hashCode() {
        int b = jb.b((this.c.hashCode() + (Float.hashCode(this.b) * 31)) * 31, 31, this.d);
        int i = Color.i;
        return Long.hashCode(this.f) + jb.a(b, 31, this.e);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        NodeCoordinator nodeCoordinator;
        BlockGraphicsLayerModifier blockGraphicsLayerModifier = (BlockGraphicsLayerModifier) node;
        ma maVar = new ma(24, this);
        blockGraphicsLayerModifier.x = maVar;
        if (blockGraphicsLayerModifier.j.w && (nodeCoordinator = DelegatableNodeKt.e(blockGraphicsLayerModifier, 2).E) != null) {
            nodeCoordinator.D1(maVar, true);
        }
    }

    public final String toString() {
        String c = Dp.c(this.b);
        String i = Color.i(this.e);
        String i2 = Color.i(this.f);
        StringBuilder sb = new StringBuilder("ShadowGraphicsLayerElement(elevation=");
        sb.append(c);
        sb.append(", shape=");
        sb.append(this.c);
        sb.append(", clip=");
        sb.append(this.d);
        sb.append(", ambientColor=");
        sb.append(i);
        sb.append(", spotColor=");
        return q.l(sb, i2, ")");
    }
}
