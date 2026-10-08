package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.f;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    public ColorFilter A;
    private Painter painter;
    public Alignment x;
    public ContentScale y;
    public float z;

    public PainterNode(Painter painter, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        this.painter = painter;
        this.x = alignment;
        this.y = contentScale;
        this.z = f;
        this.A = colorFilter;
    }

    public static boolean a1(long j) {
        if (!Size.a(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L))) & Integer.MAX_VALUE) < 2139095040) {
            return true;
        }
        return false;
    }

    public static boolean b1(long j) {
        if (!Size.a(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Integer.MAX_VALUE) < 2139095040) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final Painter Y0() {
        return this.painter;
    }

    public final boolean Z0() {
        if (this.painter.i() != 9205357640488583168L) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (Z0()) {
            long c1 = c1(ConstraintsKt.b(0, 0, 0, i, 7));
            return Math.max(Constraints.j(c1), intrinsicMeasurable.m(i));
        }
        return intrinsicMeasurable.m(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (Z0()) {
            long c1 = c1(ConstraintsKt.b(0, i, 0, 0, 13));
            return Math.max(Constraints.i(c1), intrinsicMeasurable.V(i));
        }
        return intrinsicMeasurable.V(i);
    }

    public final long c1(long j) {
        boolean z;
        int j2;
        int i;
        float intBitsToFloat;
        float intBitsToFloat2;
        boolean z2 = false;
        if (Constraints.d(j) && Constraints.c(j)) {
            z = true;
        } else {
            z = false;
        }
        if (Constraints.f(j) && Constraints.e(j)) {
            z2 = true;
        }
        if ((!Z0() && z) || z2) {
            return Constraints.a(j, Constraints.h(j), 0, Constraints.g(j), 0, 10);
        }
        long i2 = this.painter.i();
        if (b1(i2)) {
            j2 = Math.round(Float.intBitsToFloat((int) (i2 >> 32)));
        } else {
            j2 = Constraints.j(j);
        }
        if (a1(i2)) {
            i = Math.round(Float.intBitsToFloat((int) (i2 & 4294967295L)));
        } else {
            i = Constraints.i(j);
        }
        int g = ConstraintsKt.g(j2, j);
        float f = ConstraintsKt.f(i, j);
        long floatToRawIntBits = (Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(g) << 32);
        if (Z0()) {
            if (!b1(this.painter.i())) {
                intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
            } else {
                intBitsToFloat = Float.intBitsToFloat((int) (this.painter.i() >> 32));
            }
            if (!a1(this.painter.i())) {
                intBitsToFloat2 = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
            } else {
                intBitsToFloat2 = Float.intBitsToFloat((int) (this.painter.i() & 4294967295L));
            }
            long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
            if (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) == 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) == 0.0f) {
                floatToRawIntBits = 0;
            } else {
                floatToRawIntBits = ScaleFactorKt.a(floatToRawIntBits2, this.y.a(floatToRawIntBits2, floatToRawIntBits));
            }
        }
        return Constraints.a(j, ConstraintsKt.g(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits >> 32))), j), 0, ConstraintsKt.f(Math.round(Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L))), j), 0, 10);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (Z0()) {
            long c1 = c1(ConstraintsKt.b(0, 0, 0, i, 7));
            return Math.max(Constraints.j(c1), intrinsicMeasurable.p(i));
        }
        return intrinsicMeasurable.p(i);
    }

    public final void d1(Painter painter) {
        this.painter = painter;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (Z0()) {
            long c1 = c1(ConstraintsKt.b(0, i, 0, 0, 13));
            return Math.max(Constraints.i(c1), intrinsicMeasurable.b(i));
        }
        return intrinsicMeasurable.b(i);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        float intBitsToFloat;
        float intBitsToFloat2;
        long j;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        long i = this.painter.i();
        if (b1(i)) {
            intBitsToFloat = Float.intBitsToFloat((int) (i >> 32));
        } else {
            intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32));
        }
        if (a1(i)) {
            intBitsToFloat2 = Float.intBitsToFloat((int) (i & 4294967295L));
        } else {
            intBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L));
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        if (Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32)) == 0.0f || Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L)) == 0.0f) {
            j = 0;
        } else {
            j = ScaleFactorKt.a(floatToRawIntBits, this.y.a(floatToRawIntBits, canvasDrawScope.i()));
        }
        long a = this.x.a((Math.round(Float.intBitsToFloat((int) (j >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L), (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32))) << 32) | (Math.round(Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L))) & 4294967295L), layoutNodeDrawScope.getLayoutDirection());
        float f = (int) (a >> 32);
        float f2 = (int) (a & 4294967295L);
        canvasDrawScope.k.a.c(f, f2);
        try {
            this.painter.g(layoutNodeDrawScope, j, this.z, this.A);
            canvasDrawScope.k.a.c(-f, -f2);
            layoutNodeDrawScope.a();
        } catch (Throwable th) {
            canvasDrawScope.k.a.c(-f, -f2);
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        Placeable w = measurable.w(c1(j));
        int i = w.j;
        int i2 = w.k;
        f fVar = new f(w, 9);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=true, alignment=" + this.x + ", alpha=" + this.z + ", colorFilter=" + this.A + ")";
    }
}
