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
import defpackage.f;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    public float x;
    public float y;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int i2;
        int m = intrinsicMeasurable.m(i);
        if (!Float.isNaN(this.x)) {
            i2 = lookaheadCapablePlaceable.y0(this.x);
        } else {
            i2 = 0;
        }
        if (m < i2) {
            return i2;
        }
        return m;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int i2;
        int V = intrinsicMeasurable.V(i);
        if (!Float.isNaN(this.y)) {
            i2 = lookaheadCapablePlaceable.y0(this.y);
        } else {
            i2 = 0;
        }
        if (V < i2) {
            return i2;
        }
        return V;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int i2;
        int p = intrinsicMeasurable.p(i);
        if (!Float.isNaN(this.x)) {
            i2 = lookaheadCapablePlaceable.y0(this.x);
        } else {
            i2 = 0;
        }
        if (p < i2) {
            return i2;
        }
        return p;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int i2;
        int b = intrinsicMeasurable.b(i);
        if (!Float.isNaN(this.y)) {
            i2 = lookaheadCapablePlaceable.y0(this.y);
        } else {
            i2 = 0;
        }
        if (b < i2) {
            return i2;
        }
        return b;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        int j2;
        int i;
        Map map;
        int i2 = 0;
        if (!Float.isNaN(this.x) && Constraints.j(j) == 0) {
            int y0 = measureScope.y0(this.x);
            j2 = Constraints.h(j);
            if (y0 < 0) {
                y0 = 0;
            }
            if (y0 <= j2) {
                j2 = y0;
            }
        } else {
            j2 = Constraints.j(j);
        }
        int h = Constraints.h(j);
        if (!Float.isNaN(this.y) && Constraints.i(j) == 0) {
            int y02 = measureScope.y0(this.y);
            i = Constraints.g(j);
            if (y02 >= 0) {
                i2 = y02;
            }
            if (i2 <= i) {
                i = i2;
            }
        } else {
            i = Constraints.i(j);
        }
        Placeable w = measurable.w(ConstraintsKt.a(j2, h, i, Constraints.g(j)));
        int i3 = w.j;
        int i4 = w.k;
        f fVar = new f(w, 15);
        map = EmptyMap.j;
        return measureScope.B(i3, i4, map, fVar);
    }
}
