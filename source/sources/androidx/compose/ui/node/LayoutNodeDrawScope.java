package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {
    public final CanvasDrawScope j = new CanvasDrawScope();
    public DrawModifierNode k;

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final long B0() {
        return this.j.B0();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void D(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        this.j.D(j, j2, j3, f, drawStyle, colorFilter, i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long D0(long j) {
        return this.j.D0(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float E(long j) {
        return this.j.E(j);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void G(long j, float f, long j2, float f2) {
        this.j.G(j, f, j2, f2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void H0(long j, float f, float f2, long j2, long j3, DrawStyle drawStyle) {
        this.j.H0(j, f, f2, j2, j3, drawStyle);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float I0(long j) {
        return this.j.I0(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long N(int i) {
        return this.j.N(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long P(float f) {
        return this.j.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float U(int i) {
        return this.j.U(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float X(float f) {
        return f / this.j.getDensity();
    }

    public final void a() {
        CanvasDrawScope canvasDrawScope = this.j;
        Canvas a = canvasDrawScope.k.a();
        DelegatableNode delegatableNode = this.k;
        if (delegatableNode != null) {
            Modifier.Node node = (Modifier.Node) delegatableNode;
            Modifier.Node node2 = node.j.o;
            if (node2 != null && (node2.m & 4) != 0) {
                while (node2 != null) {
                    int i = node2.l;
                    if ((i & 2) != 0) {
                        break;
                    } else if ((i & 4) != 0) {
                        break;
                    } else {
                        node2 = node2.o;
                    }
                }
            }
            node2 = null;
            if (node2 != null) {
                MutableVector mutableVector = null;
                while (node2 != null) {
                    if (node2 instanceof DrawModifierNode) {
                        DrawModifierNode drawModifierNode = (DrawModifierNode) node2;
                        GraphicsLayer graphicsLayer = canvasDrawScope.k.b;
                        NodeCoordinator e = DelegatableNodeKt.e(drawModifierNode, 4);
                        long a2 = IntSizeKt.a(e.l);
                        LayoutNode layoutNode = e.D;
                        layoutNode.getClass();
                        LayoutNodeKt.a(layoutNode).getSharedDrawScope().b(a, a2, e, drawModifierNode, graphicsLayer);
                    } else if ((node2.l & 4) != 0 && (node2 instanceof DelegatingNode)) {
                        int i2 = 0;
                        for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                            if ((node3.l & 4) != 0) {
                                i2++;
                                if (i2 == 1) {
                                    node2 = node3;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                    }
                                    if (node2 != null) {
                                        mutableVector.b(node2);
                                        node2 = null;
                                    }
                                    mutableVector.b(node3);
                                }
                            }
                        }
                        if (i2 == 1) {
                        }
                    }
                    node2 = DelegatableNodeKt.b(mutableVector);
                }
                return;
            }
            NodeCoordinator e2 = DelegatableNodeKt.e(delegatableNode, 4);
            if (e2.d1() == node.j) {
                e2 = e2.E;
                e2.getClass();
            }
            e2.t1(a, canvasDrawScope.k.b);
            return;
        }
        throw q.p("Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer.");
    }

    public final void b(Canvas canvas, long j, NodeCoordinator nodeCoordinator, DrawModifierNode drawModifierNode, GraphicsLayer graphicsLayer) {
        DrawModifierNode drawModifierNode2 = this.k;
        this.k = drawModifierNode;
        LayoutDirection layoutDirection = nodeCoordinator.D.I;
        CanvasDrawScope canvasDrawScope = this.j;
        Density b = canvasDrawScope.k.b();
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
        LayoutDirection c = canvasDrawScope$drawContext$1.c();
        Canvas a = canvasDrawScope$drawContext$1.a();
        long d = canvasDrawScope$drawContext$1.d();
        GraphicsLayer graphicsLayer2 = canvasDrawScope$drawContext$1.b;
        canvasDrawScope$drawContext$1.f(nodeCoordinator);
        canvasDrawScope$drawContext$1.g(layoutDirection);
        canvasDrawScope$drawContext$1.e(canvas);
        canvasDrawScope$drawContext$1.h(j);
        canvasDrawScope$drawContext$1.b = graphicsLayer;
        canvas.g();
        try {
            drawModifierNode.h(this);
            canvas.r();
            canvasDrawScope$drawContext$1.f(b);
            canvasDrawScope$drawContext$1.g(c);
            canvasDrawScope$drawContext$1.e(a);
            canvasDrawScope$drawContext$1.h(d);
            canvasDrawScope$drawContext$1.b = graphicsLayer2;
            this.k = drawModifierNode2;
        } catch (Throwable th) {
            canvas.r();
            canvasDrawScope$drawContext$1.f(b);
            canvasDrawScope$drawContext$1.g(c);
            canvasDrawScope$drawContext$1.e(a);
            canvasDrawScope$drawContext$1.h(d);
            canvasDrawScope$drawContext$1.b = graphicsLayer2;
            throw th;
        }
    }

    public final void c(Path path, long j, DrawStyle drawStyle) {
        CanvasDrawScope canvasDrawScope = this.j;
        canvasDrawScope.j.c.m(path, CanvasDrawScope.a(canvasDrawScope, j, drawStyle, 1.0f, null, 3));
    }

    public final void d(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle) {
        CanvasDrawScope canvasDrawScope = this.j;
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        canvasDrawScope.j.c.u(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), canvasDrawScope.b(brush, drawStyle, f, null, 3, 1));
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.j.e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.j.j.b;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final long i() {
        return this.j.i();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float i0(float f) {
        return this.j.getDensity() * f;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final CanvasDrawScope$drawContext$1 l0() {
        return this.j.k;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void m0(Brush brush, long j, long j2, float f, DrawStyle drawStyle, int i) {
        this.j.m0(brush, j, j2, f, drawStyle, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void o0(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        this.j.o0(imageBitmap, j, j2, j3, f, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void u0(Path path, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.j.u0(path, brush, f, drawStyle, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void v(float f, long j, long j2, long j3) {
        this.j.v(f, j, j2, j3);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long x(float f) {
        return this.j.x(f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void x0(ArrayList arrayList, long j, float f) {
        this.j.x0(arrayList, j, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long y(long j) {
        return this.j.y(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int y0(float f) {
        return this.j.y0(f);
    }
}
