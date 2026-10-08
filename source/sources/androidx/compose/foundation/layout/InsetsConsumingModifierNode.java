package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.v9;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InsetsConsumingModifierNode extends Modifier.Node implements TraversableNode {
    public WindowInsets x;
    public WindowInsets y;

    public InsetsConsumingModifierNode() {
        FixedIntInsets fixedIntInsets = WindowInsetsKt.a;
        this.x = fixedIntInsets;
        this.y = fixedIntInsets;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void Q0() {
        TraversableNodeKt.a(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new v9(this, 1));
        Z0();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void R0() {
        this.y = this.x;
        TraversableNodeKt.c(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new v9(this, 0));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        this.x = WindowInsetsKt.a;
    }

    public abstract WindowInsets Y0(WindowInsets windowInsets);

    public void Z0() {
        this.y = Y0(this.x);
        TraversableNodeKt.c(this, "androidx.compose.foundation.layout.ConsumedInsetsProvider", new v9(this, 0));
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object p() {
        return "androidx.compose.foundation.layout.ConsumedInsetsProvider";
    }
}
