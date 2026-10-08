package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public final boolean A;
    public final float B;
    public AndroidRippleNode C;
    private final ColorProducer color;
    public final InteractionSource z;

    public DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer) {
        this.z = interactionSource;
        this.A = z;
        this.B = f;
        this.color = colorProducer;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        ObserverModifierNodeKt.a(this, new b(this, 0));
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        ObserverModifierNodeKt.a(this, new b(this, 0));
    }
}
