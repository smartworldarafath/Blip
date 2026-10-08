package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1;
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
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import defpackage.f;
import defpackage.q;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractContentPainterNode extends Modifier.Node implements DrawModifierNode, LayoutModifierNode, SemanticsModifierNode {
    public boolean A;
    public String B;
    public ConstraintsSizeResolver C;
    public Alignment x;
    public ContentScale y;
    public float z;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        String str = this.B;
        if (str != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
            semanticsPropertyReceiver.b(SemanticsProperties.a, CollectionsKt.B(str));
            SemanticsPropertiesKt.c(semanticsPropertyReceiver, 5);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final long Y0(long j) {
        if (Size.e(j)) {
            return 0L;
        }
        long i = ((ContentPainterNode) this).D.i();
        if (i != 9205357640488583168L) {
            float intBitsToFloat = Float.intBitsToFloat((int) (i >> 32));
            if (Math.abs(intBitsToFloat) > Float.MAX_VALUE) {
                intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            }
            float intBitsToFloat2 = Float.intBitsToFloat((int) (i & 4294967295L));
            if (Math.abs(intBitsToFloat2) > Float.MAX_VALUE) {
                intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            }
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            long a = this.y.a(floatToRawIntBits, j);
            if (Math.abs(Float.intBitsToFloat((int) (a >> 32))) <= Float.MAX_VALUE && Math.abs(Float.intBitsToFloat((int) (4294967295L & a))) <= Float.MAX_VALUE) {
                return ScaleFactorKt.a(floatToRawIntBits, a);
            }
        }
        return j;
    }

    public final long Z0(long j) {
        boolean z;
        float j2;
        int i;
        float f;
        boolean f2 = Constraints.f(j);
        boolean e = Constraints.e(j);
        if (!f2 || !e) {
            ContentPainterNode contentPainterNode = (ContentPainterNode) this;
            if (Constraints.d(j) && Constraints.c(j)) {
                z = true;
            } else {
                z = false;
            }
            AsyncImagePainter asyncImagePainter = contentPainterNode.D;
            long i2 = asyncImagePainter.i();
            if (i2 == 9205357640488583168L) {
                if (z && ((AsyncImagePainter.State) asyncImagePainter.D.getValue()).a() != null) {
                    return Constraints.a(j, Constraints.h(j), 0, Constraints.g(j), 0, 10);
                }
            } else {
                if (z && (f2 || e)) {
                    j2 = Constraints.h(j);
                    i = Constraints.g(j);
                } else {
                    float intBitsToFloat = Float.intBitsToFloat((int) (i2 >> 32));
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (i2 & 4294967295L));
                    if (Math.abs(intBitsToFloat) <= Float.MAX_VALUE) {
                        int i3 = UtilsKt.b;
                        float j3 = Constraints.j(j);
                        float h = Constraints.h(j);
                        if (intBitsToFloat < j3) {
                            intBitsToFloat = j3;
                        }
                        if (intBitsToFloat <= h) {
                            h = intBitsToFloat;
                        }
                        j2 = h;
                    } else {
                        j2 = Constraints.j(j);
                    }
                    if (Math.abs(intBitsToFloat2) <= Float.MAX_VALUE) {
                        int i4 = UtilsKt.b;
                        float i5 = Constraints.i(j);
                        float g = Constraints.g(j);
                        if (intBitsToFloat2 < i5) {
                            intBitsToFloat2 = i5;
                        }
                        if (intBitsToFloat2 <= g) {
                            g = intBitsToFloat2;
                        }
                        f = g;
                        long Y0 = Y0((Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(j2) << 32));
                        return Constraints.a(j, ConstraintsKt.g(MathKt.b(Float.intBitsToFloat((int) (Y0 >> 32))), j), 0, ConstraintsKt.f(MathKt.b(Float.intBitsToFloat((int) (Y0 & 4294967295L))), j), 0, 10);
                    }
                    i = Constraints.i(j);
                }
                f = i;
                long Y02 = Y0((Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(j2) << 32));
                return Constraints.a(j, ConstraintsKt.g(MathKt.b(Float.intBitsToFloat((int) (Y02 >> 32))), j), 0, ConstraintsKt.f(MathKt.b(Float.intBitsToFloat((int) (Y02 & 4294967295L))), j), 0, 10);
            }
        }
        return j;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long b = ConstraintsKt.b(0, 0, 0, i, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.C;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.o(b);
        }
        if (((ContentPainterNode) this).D.i() != 9205357640488583168L) {
            long Z0 = Z0(b);
            return Math.max(Constraints.j(Z0), intrinsicMeasurable.m(i));
        }
        return intrinsicMeasurable.m(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long b = ConstraintsKt.b(0, i, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.C;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.o(b);
        }
        if (((ContentPainterNode) this).D.i() != 9205357640488583168L) {
            long Z0 = Z0(b);
            return Math.max(Constraints.i(Z0), intrinsicMeasurable.V(i));
        }
        return intrinsicMeasurable.V(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long b = ConstraintsKt.b(0, 0, 0, i, 7);
        ConstraintsSizeResolver constraintsSizeResolver = this.C;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.o(b);
        }
        if (((ContentPainterNode) this).D.i() != 9205357640488583168L) {
            long Z0 = Z0(b);
            return Math.max(Constraints.j(Z0), intrinsicMeasurable.p(i));
        }
        return intrinsicMeasurable.p(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long b = ConstraintsKt.b(0, i, 0, 0, 13);
        ConstraintsSizeResolver constraintsSizeResolver = this.C;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.o(b);
        }
        if (((ContentPainterNode) this).D.i() != 9205357640488583168L) {
            long Z0 = Z0(b);
            return Math.max(Constraints.i(Z0), intrinsicMeasurable.b(i));
        }
        return intrinsicMeasurable.b(i);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        long Y0 = Y0(canvasDrawScope.i());
        long a = this.x.a(UtilsKt.e(Y0), UtilsKt.e(canvasDrawScope.i()), layoutNodeDrawScope.getLayoutDirection());
        int i = (int) (a >> 32);
        int i2 = (int) (a & 4294967295L);
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
        long d = canvasDrawScope$drawContext$1.d();
        canvasDrawScope$drawContext$1.a().g();
        try {
            CanvasDrawScopeKt$asDrawTransform$1 canvasDrawScopeKt$asDrawTransform$1 = canvasDrawScope$drawContext$1.a;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$12 = canvasDrawScopeKt$asDrawTransform$1.a;
            if (this.A) {
                canvasDrawScope$drawContext$12.a().n(0.0f, 0.0f, Float.intBitsToFloat((int) (canvasDrawScope$drawContext$12.d() >> 32)), Float.intBitsToFloat((int) (4294967295L & canvasDrawScope$drawContext$12.d())), 1);
            }
            canvasDrawScopeKt$asDrawTransform$1.c(i, i2);
            ((ContentPainterNode) this).D.g(layoutNodeDrawScope, Y0, this.z, null);
            canvasDrawScope$drawContext$1.a().r();
            canvasDrawScope$drawContext$1.h(d);
            layoutNodeDrawScope.a();
        } catch (Throwable th) {
            q.v(canvasDrawScope$drawContext$1, d);
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        ConstraintsSizeResolver constraintsSizeResolver = this.C;
        if (constraintsSizeResolver != null) {
            constraintsSizeResolver.o(j);
        }
        Placeable w = measurable.w(Z0(j));
        int i = w.j;
        int i2 = w.k;
        f fVar = new f(w, 0);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }
}
