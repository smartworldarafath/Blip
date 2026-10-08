package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
    public LazyLayoutItemAnimator x;

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        this.x.j = this;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        LazyLayoutItemAnimator lazyLayoutItemAnimator = this.x;
        lazyLayoutItemAnimator.e();
        lazyLayoutItemAnimator.b = null;
        lazyLayoutItemAnimator.c = -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DisplayingDisappearingItemsNode) && Intrinsics.a(this.x, ((DisplayingDisappearingItemsNode) obj).x)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        ArrayList arrayList = this.x.i;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i);
            GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.m;
            if (graphicsLayer != null) {
                long j = lazyLayoutItemAnimation.k;
                long j2 = graphicsLayer.t;
                float f = ((int) (j >> 32)) - ((int) (j2 >> 32));
                float f2 = ((int) (j & 4294967295L)) - ((int) (4294967295L & j2));
                canvasDrawScope.k.a.c(f, f2);
                try {
                    GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer);
                } finally {
                    canvasDrawScope.k.a.c(-f, -f2);
                }
            }
        }
        layoutNodeDrawScope.a();
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    public final String toString() {
        return "DisplayingDisappearingItemsNode(animator=" + this.x + ")";
    }
}
