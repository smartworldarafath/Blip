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
import androidx.compose.ui.unit.IntSize;
import defpackage.f;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    public float x;

    public final long Y0(long j, boolean z) {
        int round;
        int g = Constraints.g(j);
        if (g != Integer.MAX_VALUE && (round = Math.round(g * this.x)) > 0) {
            if (!z || AspectRatioKt.b(round, g, j)) {
                return (round << 32) | (g & 4294967295L);
            }
            return 0L;
        }
        return 0L;
    }

    public final long Z0(long j, boolean z) {
        int round;
        int h = Constraints.h(j);
        if (h != Integer.MAX_VALUE && (round = Math.round(h / this.x)) > 0) {
            if (!z || AspectRatioKt.b(h, round, j)) {
                return (h << 32) | (round & 4294967295L);
            }
            return 0L;
        }
        return 0L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (i != Integer.MAX_VALUE) {
            return Math.round(i * this.x);
        }
        return intrinsicMeasurable.m(i);
    }

    public final long a1(long j, boolean z) {
        int i = Constraints.i(j);
        int round = Math.round(i * this.x);
        if (round > 0) {
            if (!z || AspectRatioKt.b(round, i, j)) {
                return (round << 32) | (i & 4294967295L);
            }
            return 0L;
        }
        return 0L;
    }

    public final long b1(long j, boolean z) {
        int j2 = Constraints.j(j);
        int round = Math.round(j2 / this.x);
        if (round > 0) {
            if (!z || AspectRatioKt.b(j2, round, j)) {
                return (j2 << 32) | (round & 4294967295L);
            }
            return 0L;
        }
        return 0L;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (i != Integer.MAX_VALUE) {
            return Math.round(i / this.x);
        }
        return intrinsicMeasurable.V(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (i != Integer.MAX_VALUE) {
            return Math.round(i * this.x);
        }
        return intrinsicMeasurable.p(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (i != Integer.MAX_VALUE) {
            return Math.round(i / this.x);
        }
        return intrinsicMeasurable.b(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        long Z0 = Z0(j, true);
        if (IntSize.a(Z0, 0L)) {
            Z0 = Y0(j, true);
            if (IntSize.a(Z0, 0L)) {
                Z0 = b1(j, true);
                if (IntSize.a(Z0, 0L)) {
                    Z0 = a1(j, true);
                    if (IntSize.a(Z0, 0L)) {
                        Z0 = Z0(j, false);
                        if (IntSize.a(Z0, 0L)) {
                            Z0 = Y0(j, false);
                            if (IntSize.a(Z0, 0L)) {
                                Z0 = b1(j, false);
                                if (IntSize.a(Z0, 0L)) {
                                    Z0 = a1(j, false);
                                    if (IntSize.a(Z0, 0L)) {
                                        Z0 = 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!IntSize.a(Z0, 0L)) {
            j = Constraints.Companion.c((int) (Z0 >> 32), (int) (4294967295L & Z0));
        }
        Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        f fVar = new f(w, 2);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }
}
