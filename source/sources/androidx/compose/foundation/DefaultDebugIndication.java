package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultDebugIndication implements IndicationNodeFactory {
    public static final DefaultDebugIndication a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DefaultDebugIndicationInstance extends Modifier.Node implements DrawModifierNode {
        public boolean A;
        public final InteractionSource x;
        public boolean y;
        public boolean z;

        public DefaultDebugIndicationInstance(InteractionSource interactionSource) {
            this.x = interactionSource;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void Q0() {
            BuildersKt.c(M0(), null, null, new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this, null), 3);
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
            layoutNodeDrawScope.a();
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
            if (this.y) {
                DrawScope.r0(layoutNodeDrawScope, Color.b(Color.b, 0.3f), canvasDrawScope.i(), 0.0f, null, 122);
            } else {
                if (!this.z && !this.A) {
                    return;
                }
                DrawScope.r0(layoutNodeDrawScope, Color.b(Color.b, 0.1f), canvasDrawScope.i(), 0.0f, null, 122);
            }
        }
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode a(InteractionSource interactionSource) {
        return new DefaultDebugIndicationInstance(interactionSource);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        return -1;
    }
}
