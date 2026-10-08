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
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    public float A;
    public boolean B;
    public float x;
    public float y;
    public float z;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
    
        if (r4 != Integer.MAX_VALUE) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long Y0(MeasureScope measureScope) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        if (!Float.isNaN(this.z)) {
            i = measureScope.y0(this.z);
            if (i < 0) {
                i = 0;
            }
        } else {
            i = Integer.MAX_VALUE;
        }
        if (!Float.isNaN(this.A)) {
            i2 = measureScope.y0(this.A);
            if (i2 < 0) {
                i2 = 0;
            }
        } else {
            i2 = Integer.MAX_VALUE;
        }
        if (!Float.isNaN(this.x)) {
            i3 = measureScope.y0(this.x);
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 > i) {
                i3 = i;
            }
        }
        i3 = 0;
        if (!Float.isNaN(this.y)) {
            int y0 = measureScope.y0(this.y);
            if (y0 < 0) {
                y0 = 0;
            }
            if (y0 > i2) {
                y0 = i2;
            }
            if (y0 != Integer.MAX_VALUE) {
                i4 = y0;
            }
        }
        return ConstraintsKt.a(i3, i, i4, i2);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long Y0 = Y0(lookaheadCapablePlaceable);
        if (Constraints.f(Y0)) {
            return Constraints.h(Y0);
        }
        if (!this.B) {
            i = ConstraintsKt.f(i, Y0);
        }
        return ConstraintsKt.g(intrinsicMeasurable.m(i), Y0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long Y0 = Y0(lookaheadCapablePlaceable);
        if (Constraints.e(Y0)) {
            return Constraints.g(Y0);
        }
        if (!this.B) {
            i = ConstraintsKt.g(i, Y0);
        }
        return ConstraintsKt.f(intrinsicMeasurable.V(i), Y0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long Y0 = Y0(lookaheadCapablePlaceable);
        if (Constraints.f(Y0)) {
            return Constraints.h(Y0);
        }
        if (!this.B) {
            i = ConstraintsKt.f(i, Y0);
        }
        return ConstraintsKt.g(intrinsicMeasurable.p(i), Y0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long Y0 = Y0(lookaheadCapablePlaceable);
        if (Constraints.e(Y0)) {
            return Constraints.g(Y0);
        }
        if (!this.B) {
            i = ConstraintsKt.g(i, Y0);
        }
        return ConstraintsKt.f(intrinsicMeasurable.b(i), Y0);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        int j2;
        int h;
        int i;
        int g;
        long a;
        Map map;
        long Y0 = Y0(measureScope);
        if (this.B) {
            a = ConstraintsKt.e(j, Y0);
        } else {
            if (!Float.isNaN(this.x)) {
                j2 = Constraints.j(Y0);
            } else {
                j2 = Constraints.j(j);
                int h2 = Constraints.h(Y0);
                if (j2 > h2) {
                    j2 = h2;
                }
            }
            if (!Float.isNaN(this.z)) {
                h = Constraints.h(Y0);
            } else {
                h = Constraints.h(j);
                int j3 = Constraints.j(Y0);
                if (h < j3) {
                    h = j3;
                }
            }
            if (!Float.isNaN(this.y)) {
                i = Constraints.i(Y0);
            } else {
                i = Constraints.i(j);
                int g2 = Constraints.g(Y0);
                if (i > g2) {
                    i = g2;
                }
            }
            if (!Float.isNaN(this.A)) {
                g = Constraints.g(Y0);
            } else {
                g = Constraints.g(j);
                int i2 = Constraints.i(Y0);
                if (g < i2) {
                    g = i2;
                }
            }
            a = ConstraintsKt.a(j2, h, i, g);
        }
        Placeable w = measurable.w(a);
        int i3 = w.j;
        int i4 = w.k;
        f fVar = new f(w, 11);
        map = EmptyMap.j;
        return measureScope.B(i3, i4, map, fVar);
    }
}
