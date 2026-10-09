package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidBlendMode_androidKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import defpackage.z8;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayerV29 implements GraphicsLayerImpl {
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public int E;
    public int F;
    public RenderEffect G;
    public int H;
    public final CanvasHolder b;
    public final CanvasDrawScope c;
    public final RenderNode d;
    public long e;
    public Paint f;
    public Matrix g;
    public boolean h;
    public float i;
    public int j;
    public ColorFilter k;
    public long l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public long r;
    public long s;
    public float t;
    public float u;
    public float v;
    public float w;
    public boolean x;
    public int y;
    public int z;

    public GraphicsLayerV29() {
        CanvasHolder canvasHolder = new CanvasHolder();
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        this.b = canvasHolder;
        this.c = canvasDrawScope;
        RenderNode b = z8.b();
        this.d = b;
        this.e = 0L;
        b.setClipToBounds(false);
        R(b, 0);
        this.i = 1.0f;
        this.j = 3;
        this.l = 9205357640488583168L;
        this.m = 1.0f;
        this.n = 1.0f;
        long j = Color.b;
        this.r = j;
        this.s = j;
        this.w = 8.0f;
        this.H = 0;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void A(float f) {
        this.m = f;
        this.d.setScaleX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float B() {
        return this.w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void C(RenderEffect renderEffect) {
        android.graphics.RenderEffect renderEffect2;
        this.G = renderEffect;
        if (Build.VERSION.SDK_INT >= 31) {
            RenderNode renderNode = this.d;
            if (renderEffect != null) {
                renderEffect2 = renderEffect.a();
            } else {
                renderEffect2 = null;
            }
            renderNode.setRenderEffect(renderEffect2);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float D() {
        return this.o;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void E(boolean z) {
        this.x = z;
        Q();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float F() {
        return this.t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void G(int i) {
        this.H = i;
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void H(float f) {
        this.o = f;
        this.d.setTranslationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void I(long j) {
        this.s = j;
        this.d.setSpotShadowColor(ColorKt.f(j));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final Matrix J() {
        Matrix matrix = this.g;
        if (matrix == null) {
            matrix = new Matrix();
            this.g = matrix;
        }
        this.d.getMatrix(matrix);
        return matrix;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void K(float f) {
        this.w = f;
        this.d.setCameraDistance(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float L() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float M() {
        return this.n;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void N(float f) {
        this.t = f;
        this.d.setRotationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int O() {
        return this.j;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void P(Canvas canvas) {
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.a;
        ((AndroidCanvas) canvas).a.drawRenderNode(this.d);
    }

    public final void Q() {
        boolean z;
        boolean z2 = this.x;
        boolean z3 = false;
        if (z2 && !this.h) {
            z = true;
        } else {
            z = false;
        }
        if (z2 && this.h) {
            z3 = true;
        }
        if (z != this.C) {
            this.C = z;
            this.d.setClipToBounds(z);
        }
        if (z3 != this.D) {
            this.D = z3;
            this.d.setClipToOutline(z3);
        }
    }

    public final void R(RenderNode renderNode, int i) {
        Paint paint = this.f;
        if (i == 1) {
            renderNode.setUseCompositingLayer(true, paint);
            renderNode.setHasOverlappingRendering(true);
        } else if (i == 2) {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, paint);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    public final void S() {
        int i = this.H;
        if (i != 1 && this.j == 3 && this.k == null && this.G == null) {
            R(this.d, i);
        } else {
            R(this.d, 1);
        }
    }

    public final void T() {
        long j = this.l;
        long j2 = 9223372034707292159L & j;
        RenderNode renderNode = this.d;
        if (j2 == 9205357640488583168L) {
            renderNode.setPivotX((Float.intBitsToFloat((int) (this.e >> 32)) / 2.0f) + this.y);
            this.d.setPivotY((Float.intBitsToFloat((int) (this.e & 4294967295L)) / 2.0f) + this.z);
        } else {
            renderNode.setPivotX(Float.intBitsToFloat((int) (j >> 32)) + this.y);
            this.d.setPivotY(Float.intBitsToFloat((int) (this.l & 4294967295L)) + this.z);
        }
    }

    public final void U() {
        RenderNode renderNode = this.d;
        int i = this.E;
        renderNode.setPosition(i - this.y, this.F - this.z, i + ((int) Float.intBitsToFloat((int) (this.e >> 32))) + this.A, this.F + ((int) Float.intBitsToFloat((int) (this.e & 4294967295L))) + this.B);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float a() {
        return this.i;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void b(float f) {
        this.u = f;
        this.d.setRotationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float c() {
        return this.m;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void d(float f) {
        this.q = f;
        this.d.setElevation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final RenderEffect e() {
        return this.G;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void f(float f) {
        this.v = f;
        this.d.setRotationZ(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void g(float f) {
        this.p = f;
        this.d.setTranslationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void h(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        RecordingCanvas beginRecording;
        CanvasDrawScope canvasDrawScope = this.c;
        beginRecording = this.d.beginRecording();
        float f = this.y;
        float f2 = this.z;
        long floatToRawIntBits = (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        try {
            CanvasHolder canvasHolder = this.b;
            AndroidCanvas androidCanvas = canvasHolder.a;
            android.graphics.Canvas canvas = androidCanvas.a;
            androidCanvas.a = beginRecording;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            canvasDrawScope$drawContext$1.f(density);
            canvasDrawScope$drawContext$1.g(layoutDirection);
            canvasDrawScope$drawContext$1.b = graphicsLayer;
            canvasDrawScope$drawContext$1.h(this.e);
            canvasDrawScope$drawContext$1.e(androidCanvas);
            if (this.y <= 0.0f && this.z <= 0.0f) {
                ((GraphicsLayer$clipDrawBlock$1) function1).b(canvasDrawScope);
                canvasHolder.a.a = canvas;
                this.d.endRecording();
            }
            int i = (int) (floatToRawIntBits >> 32);
            int i2 = (int) (floatToRawIntBits & 4294967295L);
            androidCanvas.o(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
            ((GraphicsLayer$clipDrawBlock$1) function1).b(canvasDrawScope);
            androidCanvas.o(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            canvasHolder.a.a = canvas;
            this.d.endRecording();
        } catch (Throwable th) {
            this.d.endRecording();
            throw th;
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void i(Outline outline, long j) {
        boolean z;
        this.d.setOutline(outline);
        if (outline != null) {
            z = true;
        } else {
            z = false;
        }
        this.h = z;
        Q();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void j(int i) {
        this.j = i;
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        paint.setBlendMode(AndroidBlendMode_androidKt.a(i));
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void k() {
        this.d.discardDisplayList();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int l() {
        return this.H;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final ColorFilter m() {
        return this.k;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void n(float f) {
        this.n = f;
        this.d.setScaleY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void o(int i, int i2, long j) {
        this.E = i;
        this.F = i2;
        boolean a = Size.a(this.e, IntSizeKt.a(j));
        this.e = IntSizeKt.a(j);
        U();
        if (!a && Offset.c(this.l, 9205357640488583168L)) {
            this.d.setPivotX((((int) (j >> 32)) / 2.0f) + this.y);
            this.d.setPivotY((((int) (j & 4294967295L)) / 2.0f) + this.z);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float p() {
        return this.u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void q(ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        this.k = colorFilter;
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        if (colorFilter != null) {
            colorFilter2 = colorFilter.a;
        } else {
            colorFilter2 = null;
        }
        paint.setColorFilter(colorFilter2);
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final boolean r() {
        boolean hasDisplayList;
        hasDisplayList = this.d.hasDisplayList();
        return hasDisplayList;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float s() {
        return this.v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void t(long j) {
        this.l = j;
        T();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long u() {
        return this.r;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void v(float f) {
        this.i = f;
        this.d.setAlpha(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void w(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2 = false;
        if (i >= 0 && i2 >= 0 && i3 >= 0 && i4 >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            StringBuilder k = jb.k("Outsets cannot be negative! Left: ", i, ", Top: ", i2, ", Right: ");
            k.append(i3);
            k.append(", Bottom: ");
            k.append(i4);
            InlineClassHelperKt.a(k.toString());
        }
        int i5 = this.y;
        if (i != i5 || i2 != this.z || i3 != this.A || i4 != this.B) {
            if (i != i5 || i2 != this.z) {
                z2 = true;
            }
            this.y = i;
            this.z = i2;
            this.A = i3;
            this.B = i4;
            U();
            if (z2) {
                T();
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float x() {
        return this.p;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long y() {
        return this.s;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void z(long j) {
        this.r = j;
        this.d.setAmbientShadowColor(ColorKt.f(j));
    }
}
