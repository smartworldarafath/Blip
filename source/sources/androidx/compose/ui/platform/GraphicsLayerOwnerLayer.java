package androidx.compose.ui.platform;

import android.view.ViewParent;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayerOwnerLayer implements OwnedLayer {
    public boolean A;
    public boolean C;
    public GraphicsLayer j;
    public final GraphicsContext k;
    public final AndroidComposeView l;
    public Function2 m;
    public Function0 n;
    public boolean p;
    public float[] r;
    public boolean s;
    public int w;
    public Outline y;
    public boolean z;
    public long o = 9223372034707292159L;
    public final float[] q = Matrix.a();
    public Density t = DensityKt.b(1.0f);
    public LayoutDirection u = LayoutDirection.j;
    public final CanvasDrawScope v = new CanvasDrawScope();
    public long x = TransformOrigin.b;
    public boolean B = true;
    public final defpackage.c D = new defpackage.c(23, this);

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, GraphicsContext graphicsContext, AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.j = graphicsLayer;
        this.k = graphicsContext;
        this.l = androidComposeView;
        this.m = function2;
        this.n = function0;
    }

    public final float[] a() {
        float[] fArr = this.r;
        if (fArr == null) {
            fArr = Matrix.a();
            this.r = fArr;
        }
        if (!this.A) {
            if (Float.isNaN(fArr[0])) {
                return null;
            }
        } else {
            this.A = false;
            float[] b = b();
            if (this.B) {
                return b;
            }
            if (!InvertMatrixKt.a(b, fArr)) {
                fArr[0] = Float.NaN;
                return null;
            }
        }
        return fArr;
    }

    public final float[] b() {
        boolean z = this.z;
        float[] fArr = this.q;
        if (z) {
            GraphicsLayer graphicsLayer = this.j;
            long j = graphicsLayer.z;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.a;
            if ((9223372034707292159L & j) == 9205357640488583168L) {
                j = SizeKt.a(IntSizeKt.a(this.o));
            }
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            float D = graphicsLayerImpl.D();
            float x = graphicsLayerImpl.x();
            float F = graphicsLayerImpl.F();
            float p = graphicsLayerImpl.p();
            float s = graphicsLayerImpl.s();
            float c = graphicsLayerImpl.c();
            float M = graphicsLayerImpl.M();
            double d = F * 0.017453292519943295d;
            float sin = (float) Math.sin(d);
            float cos = (float) Math.cos(d);
            float f = -sin;
            float f2 = (x * cos) - (0.0f * sin);
            float f3 = (0.0f * cos) + (x * sin);
            double d2 = p * 0.017453292519943295d;
            float sin2 = (float) Math.sin(d2);
            float cos2 = (float) Math.cos(d2);
            float f4 = -sin2;
            float f5 = sin * sin2;
            float f6 = sin * cos2;
            float f7 = cos * sin2;
            float f8 = cos * cos2;
            float f9 = (f3 * sin2) + (D * cos2);
            float f10 = (f3 * cos2) + ((-D) * sin2);
            double d3 = s * 0.017453292519943295d;
            float sin3 = (float) Math.sin(d3);
            float cos3 = (float) Math.cos(d3);
            float f11 = -sin3;
            float f12 = (cos3 * f5) + (f11 * cos2);
            float f13 = ((f5 * sin3) + (cos2 * cos3)) * c;
            float f14 = sin3 * cos * c;
            float f15 = ((sin3 * f6) + (cos3 * f4)) * c;
            float f16 = f12 * M;
            float f17 = cos * cos3 * M;
            float f18 = ((cos3 * f6) + (f11 * f4)) * M;
            float f19 = f7 * 1.0f;
            float f20 = f * 1.0f;
            float f21 = f8 * 1.0f;
            if (fArr.length >= 16) {
                fArr[0] = f13;
                fArr[1] = f14;
                fArr[2] = f15;
                fArr[3] = 0.0f;
                fArr[4] = f16;
                fArr[5] = f17;
                fArr[6] = f18;
                fArr[7] = 0.0f;
                fArr[8] = f19;
                fArr[9] = f20;
                fArr[10] = f21;
                fArr[11] = 0.0f;
                float f22 = -intBitsToFloat;
                fArr[12] = ((f13 * f22) - (intBitsToFloat2 * f16)) + f9 + intBitsToFloat;
                fArr[13] = ((f14 * f22) - (intBitsToFloat2 * f17)) + f2 + intBitsToFloat2;
                fArr[14] = ((f22 * f15) - (intBitsToFloat2 * f18)) + f10;
                fArr[15] = 1.0f;
            }
            this.z = false;
            this.B = MatrixKt.a(fArr);
        }
        return fArr;
    }

    public final void c() {
        if (!this.s && !this.p) {
            this.l.invalidate();
            f(true);
        }
    }

    public final void d(long j) {
        boolean l = AndroidComposeView.l();
        AndroidComposeView androidComposeView = this.l;
        if (l) {
            androidComposeView.M(-4.0f);
        }
        GraphicsLayer graphicsLayer = this.j;
        if (!IntOffset.a(graphicsLayer.t, j)) {
            graphicsLayer.t = j;
            graphicsLayer.a.o((int) (j >> 32), (int) (j & 4294967295L), graphicsLayer.u);
        }
        ViewParent parent = androidComposeView.getParent();
        if (parent != null) {
            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
        }
    }

    public final void e(long j) {
        if (!IntSize.a(j, this.o)) {
            if (AndroidComposeView.l()) {
                this.l.M(-4.0f);
            }
            this.o = j;
            c();
        }
    }

    public final void f(boolean z) {
        if (z != this.s) {
            this.s = z;
            AndroidComposeView androidComposeView = this.l;
            MutableObjectList mutableObjectList = androidComposeView.J;
            boolean z2 = androidComposeView.L;
            if (!z) {
                if (!z2) {
                    mutableObjectList.l(this);
                    MutableObjectList mutableObjectList2 = androidComposeView.K;
                    if (mutableObjectList2 != null) {
                        mutableObjectList2.l(this);
                        return;
                    }
                    return;
                }
                return;
            }
            if (!z2) {
                mutableObjectList.g(this);
                return;
            }
            MutableObjectList mutableObjectList3 = androidComposeView.K;
            if (mutableObjectList3 == null) {
                mutableObjectList3 = new MutableObjectList();
                androidComposeView.K = mutableObjectList3;
            }
            mutableObjectList3.g(this);
        }
    }

    public final void g() {
        AndroidComposeView.l();
        if (this.s) {
            if (!TransformOrigin.a(this.x, TransformOrigin.b) && !IntSize.a(this.j.u, this.o)) {
                GraphicsLayer graphicsLayer = this.j;
                float intBitsToFloat = Float.intBitsToFloat((int) (this.x >> 32)) * ((int) (this.o >> 32));
                float intBitsToFloat2 = Float.intBitsToFloat((int) (this.x & 4294967295L)) * ((int) (this.o & 4294967295L));
                long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                if (!Offset.c(graphicsLayer.z, floatToRawIntBits)) {
                    graphicsLayer.z = floatToRawIntBits;
                    graphicsLayer.a.t(floatToRawIntBits);
                }
            }
            GraphicsLayer graphicsLayer2 = this.j;
            Density density = this.t;
            LayoutDirection layoutDirection = this.u;
            long j = this.o;
            long j2 = graphicsLayer2.u;
            GraphicsLayerImpl graphicsLayerImpl = graphicsLayer2.a;
            if (!IntSize.a(j2, j)) {
                graphicsLayer2.u = j;
                long j3 = graphicsLayer2.t;
                graphicsLayerImpl.o((int) (j3 >> 32), (int) (4294967295L & j3), j);
                if (graphicsLayer2.i == 9205357640488583168L) {
                    graphicsLayer2.g = true;
                    graphicsLayer2.a();
                }
            }
            graphicsLayer2.b = density;
            graphicsLayer2.c = layoutDirection;
            graphicsLayer2.d = this.D;
            graphicsLayerImpl.h(density, layoutDirection, graphicsLayer2, graphicsLayer2.e);
            f(false);
        }
    }
}
