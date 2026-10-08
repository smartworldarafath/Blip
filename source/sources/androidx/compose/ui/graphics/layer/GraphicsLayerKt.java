package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GraphicsLayerKt {
    public static final void a(DrawScope drawScope, GraphicsLayer graphicsLayer) {
        boolean z;
        boolean z2;
        long j;
        Canvas canvas;
        boolean z3;
        boolean z4;
        Canvas canvas2;
        float f;
        androidx.compose.ui.graphics.Canvas a = drawScope.l0().a();
        GraphicsLayer graphicsLayer2 = drawScope.l0().b;
        GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.a;
        if (graphicsLayer.s) {
            return;
        }
        long j2 = graphicsLayer.h;
        Canvas a2 = AndroidCanvas_androidKt.a(a);
        boolean isHardwareAccelerated = a2.isHardwareAccelerated();
        if (!isHardwareAccelerated) {
            long j3 = graphicsLayer.t;
            float f2 = (int) (j3 >> 32);
            float f3 = f2 - graphicsLayer.v;
            float f4 = (int) (j3 & 4294967295L);
            float f5 = f4 - graphicsLayer.w;
            long j4 = graphicsLayer.u;
            float f6 = f2 + ((int) (j4 >> 32)) + graphicsLayer.x;
            float f7 = f4 + ((int) (j4 & 4294967295L)) + graphicsLayer.y;
            float a3 = graphicsLayerImpl.a();
            ColorFilter m = graphicsLayerImpl.m();
            int O = graphicsLayerImpl.O();
            if (a3 >= 1.0f && O == 3 && m == null) {
                canvas2 = a2;
                if (graphicsLayerImpl.l() != 1) {
                    canvas2.save();
                    f = f3;
                    a2 = canvas2;
                    a2.translate(f, f5);
                    Matrix J = graphicsLayerImpl.J();
                    J.preTranslate(graphicsLayer.v, graphicsLayer.w);
                    a2.concat(J);
                    long j5 = graphicsLayer.h;
                    float f8 = graphicsLayer.v;
                    float f9 = graphicsLayer.w;
                    graphicsLayer.h = Offset.e(j5, (Float.floatToRawIntBits(f9) & 4294967295L) | (Float.floatToRawIntBits(f8) << 32));
                }
            } else {
                canvas2 = a2;
            }
            AndroidPaint androidPaint = graphicsLayer.p;
            if (androidPaint == null) {
                androidPaint = AndroidPaint_androidKt.a();
                graphicsLayer.p = androidPaint;
            }
            androidPaint.d(a3);
            androidPaint.e(O);
            androidPaint.g(m);
            Paint b = AndroidPaint_androidKt.b(androidPaint);
            f = f3;
            a2 = canvas2;
            a2.saveLayer(f, f5, f6, f7, b);
            a2.translate(f, f5);
            Matrix J2 = graphicsLayerImpl.J();
            J2.preTranslate(graphicsLayer.v, graphicsLayer.w);
            a2.concat(J2);
            long j52 = graphicsLayer.h;
            float f82 = graphicsLayer.v;
            float f92 = graphicsLayer.w;
            graphicsLayer.h = Offset.e(j52, (Float.floatToRawIntBits(f92) & 4294967295L) | (Float.floatToRawIntBits(f82) << 32));
        }
        graphicsLayer.a();
        if (!graphicsLayerImpl.r()) {
            try {
                graphicsLayer.a.h(graphicsLayer.b, graphicsLayer.c, graphicsLayer, graphicsLayer.e);
            } catch (Throwable unused) {
            }
        }
        if (graphicsLayerImpl.L() > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            a.t();
        }
        if (!isHardwareAccelerated && graphicsLayer.A) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            a.g();
            Outline d = graphicsLayer.d();
            if (d instanceof Outline.Rectangle) {
                androidx.compose.ui.graphics.Canvas.l(a, ((Outline.Rectangle) d).a);
            } else if (d instanceof Outline.Rounded) {
                AndroidPath androidPath = graphicsLayer.m;
                if (androidPath != null) {
                    androidPath.a.rewind();
                } else {
                    androidPath = AndroidPath_androidKt.a();
                    graphicsLayer.m = androidPath;
                }
                Path.d(androidPath, ((Outline.Rounded) d).a);
                a.j(androidPath);
            } else if (d instanceof Outline.Generic) {
                a.j(((Outline.Generic) d).a);
            } else {
                k8.e();
                return;
            }
        }
        if (graphicsLayer2 != null) {
            ChildLayerDependenciesTracker childLayerDependenciesTracker = graphicsLayer2.r;
            if (!childLayerDependenciesTracker.e) {
                InlineClassHelperKt.a("Only add dependencies during a tracking");
            }
            MutableScatterSet mutableScatterSet = childLayerDependenciesTracker.c;
            if (mutableScatterSet != null) {
                mutableScatterSet.d(graphicsLayer);
            } else if (childLayerDependenciesTracker.a != null) {
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                GraphicsLayer graphicsLayer3 = childLayerDependenciesTracker.a;
                graphicsLayer3.getClass();
                mutableScatterSet3.d(graphicsLayer3);
                mutableScatterSet3.d(graphicsLayer);
                childLayerDependenciesTracker.c = mutableScatterSet3;
                childLayerDependenciesTracker.a = null;
            } else {
                childLayerDependenciesTracker.a = graphicsLayer;
            }
            MutableScatterSet mutableScatterSet4 = childLayerDependenciesTracker.d;
            if (mutableScatterSet4 != null) {
                z4 = !mutableScatterSet4.m(graphicsLayer);
            } else if (childLayerDependenciesTracker.b != graphicsLayer) {
                z4 = true;
            } else {
                childLayerDependenciesTracker.b = null;
                z4 = false;
            }
            if (z4) {
                graphicsLayer.q++;
            }
        }
        if (!((AndroidCanvas) a).a.isHardwareAccelerated()) {
            CanvasDrawScope canvasDrawScope = graphicsLayer.o;
            if (canvasDrawScope == null) {
                canvasDrawScope = new CanvasDrawScope();
                graphicsLayer.o = canvasDrawScope;
            }
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            Density density = graphicsLayer.b;
            LayoutDirection layoutDirection = graphicsLayer.c;
            long a4 = IntSizeKt.a(graphicsLayer.u);
            Density b2 = canvasDrawScope$drawContext$1.b();
            LayoutDirection c = canvasDrawScope$drawContext$1.c();
            canvas = a2;
            androidx.compose.ui.graphics.Canvas a5 = canvasDrawScope$drawContext$1.a();
            j = j2;
            long d2 = canvasDrawScope$drawContext$1.d();
            z3 = z;
            GraphicsLayer graphicsLayer4 = canvasDrawScope$drawContext$1.b;
            canvasDrawScope$drawContext$1.f(density);
            canvasDrawScope$drawContext$1.g(layoutDirection);
            canvasDrawScope$drawContext$1.e(a);
            canvasDrawScope$drawContext$1.h(a4);
            canvasDrawScope$drawContext$1.b = graphicsLayer;
            a.g();
            try {
                graphicsLayer.c(canvasDrawScope);
            } finally {
                a.r();
                canvasDrawScope$drawContext$1.f(b2);
                canvasDrawScope$drawContext$1.g(c);
                canvasDrawScope$drawContext$1.e(a5);
                canvasDrawScope$drawContext$1.h(d2);
                canvasDrawScope$drawContext$1.b = graphicsLayer4;
            }
        } else {
            j = j2;
            canvas = a2;
            z3 = z;
            graphicsLayerImpl.P(a);
        }
        if (z2) {
            a.r();
        }
        if (z3) {
            a.h();
        }
        if (!isHardwareAccelerated) {
            canvas.restore();
        }
        graphicsLayer.h = j;
    }
}
