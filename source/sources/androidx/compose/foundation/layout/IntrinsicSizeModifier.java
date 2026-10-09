package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import defpackage.f;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class IntrinsicSizeModifier extends Modifier.Node implements LayoutModifierNode {
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.V(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.b(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        int p;
        Map map;
        IntrinsicWidthNode intrinsicWidthNode = (IntrinsicWidthNode) this;
        if (intrinsicWidthNode.x == IntrinsicSize.j) {
            p = measurable.m(Constraints.g(j));
        } else {
            p = measurable.p(Constraints.g(j));
        }
        if (p < 0) {
            p = 0;
        }
        if (p < 0) {
            InlineClassHelperKt.a("width must be >= 0");
        }
        long h = ConstraintsKt.h(p, p, 0, Integer.MAX_VALUE);
        if (intrinsicWidthNode.y) {
            h = ConstraintsKt.e(j, h);
        }
        Placeable w = measurable.w(h);
        int i = w.j;
        int i2 = w.k;
        f fVar = new f(w, 6);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }
}
