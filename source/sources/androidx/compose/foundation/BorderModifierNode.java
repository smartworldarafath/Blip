package androidx.compose.foundation;

import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BorderModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public float A;
    public SolidColor B;
    public Shape C;
    public final CacheDrawModifierNode D;
    public BorderCache z;

    public BorderModifierNode(float f, SolidColor solidColor, Shape shape) {
        this.A = f;
        this.B = solidColor;
        this.C = shape;
        CacheDrawModifierNode a = DrawModifierKt.a(new b(0, this));
        Y0(a);
        this.D = a;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.d(semanticsPropertyReceiver, this.C);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean n() {
        return false;
    }
}
