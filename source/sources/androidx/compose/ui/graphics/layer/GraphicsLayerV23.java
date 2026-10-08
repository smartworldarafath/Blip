package androidx.compose.ui.graphics.layer;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import androidx.compose.ui.geometry.Offset;
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
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayerV23 implements GraphicsLayerImpl {
    public static final AtomicBoolean K = new AtomicBoolean(true);
    public boolean A;
    public int B;
    public int C;
    public int D;
    public int E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public RenderEffect J;
    public final CanvasHolder b;
    public final CanvasDrawScope c;
    public final RenderNode d;
    public long e;
    public Paint f;
    public Matrix g;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public ColorFilter l;
    public float m;
    public boolean n;
    public long o;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public long u;
    public long v;
    public float w;
    public float x;
    public float y;
    public float z;

    public GraphicsLayerV23(AndroidComposeView androidComposeView, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope) {
        this.b = canvasHolder;
        this.c = canvasDrawScope;
        RenderNode create = RenderNode.create("Compose", androidComposeView);
        this.d = create;
        this.e = 0L;
        this.i = 0L;
        if (K.getAndSet(false)) {
            create.setScaleX(create.getScaleX());
            create.setScaleY(create.getScaleY());
            create.setTranslationX(create.getTranslationX());
            create.setTranslationY(create.getTranslationY());
            create.setElevation(create.getElevation());
            create.setRotation(create.getRotation());
            create.setRotationX(create.getRotationX());
            create.setRotationY(create.getRotationY());
            create.setCameraDistance(create.getCameraDistance());
            create.setPivotX(create.getPivotX());
            create.setPivotY(create.getPivotY());
            create.setClipToOutline(create.getClipToOutline());
            create.setClipToBounds(false);
            create.setAlpha(create.getAlpha());
            create.isValid();
            create.setLeftTopRightBottom(0, 0, 0, 0);
            create.offsetLeftAndRight(0);
            create.offsetTopAndBottom(0);
            RenderNodeVerificationHelper28.c(create, RenderNodeVerificationHelper28.a(create));
            RenderNodeVerificationHelper28.d(create, RenderNodeVerificationHelper28.b(create));
            RenderNodeVerificationHelper24.a(create);
            create.setLayerType(0);
            create.setHasOverlappingRendering(create.hasOverlappingRendering());
        }
        create.setClipToBounds(false);
        R(0);
        this.j = 0;
        this.k = 3;
        this.m = 1.0f;
        this.o = 9205357640488583168L;
        this.p = 1.0f;
        this.q = 1.0f;
        long j = Color.b;
        this.u = j;
        this.v = j;
        this.z = 8.0f;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void A(float f) {
        this.p = f;
        this.d.setScaleX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float B() {
        return this.z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void C(RenderEffect renderEffect) {
        this.J = renderEffect;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float D() {
        return this.r;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void E(boolean z) {
        this.A = z;
        Q();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float F() {
        return this.w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void G(int i) {
        this.j = i;
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void H(float f) {
        this.r = f;
        this.d.setTranslationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void I(long j) {
        this.v = j;
        RenderNodeVerificationHelper28.d(this.d, ColorKt.f(j));
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
        this.z = f;
        this.d.setCameraDistance(-f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float L() {
        return this.t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float M() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void N(float f) {
        this.w = f;
        this.d.setRotationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int O() {
        return this.k;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void P(Canvas canvas) {
        android.graphics.Canvas canvas2 = AndroidCanvas_androidKt.a;
        DisplayListCanvas displayListCanvas = ((AndroidCanvas) canvas).a;
        displayListCanvas.getClass();
        displayListCanvas.drawRenderNode(this.d);
    }

    public final void Q() {
        boolean z;
        boolean z2 = this.A;
        boolean z3 = false;
        if (z2 && !this.h) {
            z = true;
        } else {
            z = false;
        }
        if (z2 && this.h) {
            z3 = true;
        }
        if (z != this.F) {
            this.F = z;
            this.d.setClipToBounds(z);
        }
        if (z3 != this.G) {
            this.G = z3;
            this.d.setClipToOutline(z3);
        }
    }

    public final void R(int i) {
        RenderNode renderNode = this.d;
        if (i == 1) {
            renderNode.setLayerType(2);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(true);
        } else if (i == 2) {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    public final void S() {
        int i = this.j;
        if (i != 1 && this.k == 3 && this.l == null) {
            R(i);
        } else {
            R(1);
        }
    }

    public final void T() {
        long j = this.o;
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            this.n = true;
            this.d.setPivotX((((int) (this.e >> 32)) / 2.0f) + this.B);
            this.d.setPivotY((((int) (4294967295L & this.e)) / 2.0f) + this.C);
        } else {
            this.n = false;
            this.d.setPivotX(Float.intBitsToFloat((int) (j >> 32)) + this.B);
            this.d.setPivotY(Float.intBitsToFloat((int) (this.o & 4294967295L)) + this.C);
        }
    }

    public final void U() {
        RenderNode renderNode = this.d;
        int i = this.H;
        int i2 = i - this.B;
        int i3 = this.I;
        int i4 = i3 - this.C;
        long j = this.e;
        renderNode.setLeftTopRightBottom(i2, i4, i + ((int) (j >> 32)) + this.D, i3 + ((int) (j & 4294967295L)) + this.E);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float a() {
        return this.m;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void b(float f) {
        this.x = f;
        this.d.setRotationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float c() {
        return this.p;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void d(float f) {
        this.t = f;
        this.d.setElevation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final RenderEffect e() {
        return this.J;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void f(float f) {
        this.y = f;
        this.d.setRotation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void g(float f) {
        this.s = f;
        this.d.setTranslationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void h(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        DisplayListCanvas displayListCanvas;
        android.graphics.Canvas canvas;
        Density b;
        LayoutDirection c;
        Canvas a;
        long d;
        GraphicsLayer graphicsLayer2;
        CanvasDrawScope canvasDrawScope = this.c;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
        DisplayListCanvas start = this.d.start(Math.max(((int) (this.e >> 32)) + this.B + this.D, (int) (this.i >> 32)), Math.max(((int) (this.e & 4294967295L)) + this.C + this.E, (int) (this.i & 4294967295L)));
        float f = this.B;
        float f2 = this.C;
        long floatToRawIntBits = (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        try {
            AndroidCanvas androidCanvas = this.b.a;
            android.graphics.Canvas canvas2 = androidCanvas.a;
            androidCanvas.a = (android.graphics.Canvas) start;
            if (this.B > 0.0f || this.C > 0.0f) {
                canvas = canvas2;
                int i = (int) (floatToRawIntBits >> 32);
                int i2 = (int) (floatToRawIntBits & 4294967295L);
                androidCanvas.o(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
                long a2 = IntSizeKt.a(this.e);
                b = canvasDrawScope$drawContext$1.b();
                c = canvasDrawScope$drawContext$1.c();
                a = canvasDrawScope$drawContext$1.a();
                displayListCanvas = start;
                try {
                    d = canvasDrawScope$drawContext$1.d();
                    graphicsLayer2 = canvasDrawScope$drawContext$1.b;
                    canvasDrawScope$drawContext$1.f(density);
                    canvasDrawScope$drawContext$1.g(layoutDirection);
                    canvasDrawScope$drawContext$1.e(androidCanvas);
                    canvasDrawScope$drawContext$1.h(a2);
                    canvasDrawScope$drawContext$1.b = graphicsLayer;
                    androidCanvas.g();
                    try {
                        ((GraphicsLayer$clipDrawBlock$1) function1).b(canvasDrawScope);
                        androidCanvas.r();
                        canvasDrawScope$drawContext$1.f(b);
                        canvasDrawScope$drawContext$1.g(c);
                        canvasDrawScope$drawContext$1.e(a);
                        canvasDrawScope$drawContext$1.h(d);
                        canvasDrawScope$drawContext$1.b = graphicsLayer2;
                        androidCanvas.o(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                    this.d.end(displayListCanvas);
                    throw th;
                }
            } else {
                long a3 = IntSizeKt.a(this.e);
                b = canvasDrawScope$drawContext$1.b();
                c = canvasDrawScope$drawContext$1.c();
                a = canvasDrawScope$drawContext$1.a();
                d = canvasDrawScope$drawContext$1.d();
                canvas = canvas2;
                graphicsLayer2 = canvasDrawScope$drawContext$1.b;
                canvasDrawScope$drawContext$1.f(density);
                canvasDrawScope$drawContext$1.g(layoutDirection);
                canvasDrawScope$drawContext$1.e(androidCanvas);
                canvasDrawScope$drawContext$1.h(a3);
                canvasDrawScope$drawContext$1.b = graphicsLayer;
                androidCanvas.g();
                try {
                    ((GraphicsLayer$clipDrawBlock$1) function1).b(canvasDrawScope);
                    androidCanvas.r();
                    canvasDrawScope$drawContext$1.f(b);
                    canvasDrawScope$drawContext$1.g(c);
                    canvasDrawScope$drawContext$1.e(a);
                    canvasDrawScope$drawContext$1.h(d);
                    canvasDrawScope$drawContext$1.b = graphicsLayer2;
                    displayListCanvas = start;
                } finally {
                }
            }
            androidCanvas.a = canvas;
            this.d.end(displayListCanvas);
        } catch (Throwable th2) {
            th = th2;
            displayListCanvas = start;
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void i(Outline outline, long j) {
        boolean z;
        this.i = j;
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
        if (this.k == i) {
            return;
        }
        this.k = i;
        Paint paint = this.f;
        if (paint == null) {
            paint = new Paint();
            this.f = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.b(i)));
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void k() {
        RenderNodeVerificationHelper24.a(this.d);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int l() {
        return this.j;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final ColorFilter m() {
        return this.l;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void n(float f) {
        this.q = f;
        this.d.setScaleY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void o(int i, int i2, long j) {
        this.H = i;
        this.I = i2;
        boolean a = IntSize.a(this.e, j);
        this.e = j;
        U();
        if (!a) {
            if (this.n || Offset.c(this.o, 9205357640488583168L)) {
                this.d.setPivotX((((int) (j >> 32)) / 2.0f) + this.B);
                this.d.setPivotY((((int) (j & 4294967295L)) / 2.0f) + this.C);
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float p() {
        return this.x;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void q(ColorFilter colorFilter) {
        this.l = colorFilter;
        if (colorFilter != null) {
            R(1);
            RenderNode renderNode = this.d;
            Paint paint = this.f;
            if (paint == null) {
                paint = new Paint();
                this.f = paint;
            }
            paint.setColorFilter(colorFilter.a);
            renderNode.setLayerPaint(paint);
            return;
        }
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final boolean r() {
        return this.d.isValid();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float s() {
        return this.y;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void t(long j) {
        this.o = j;
        T();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long u() {
        return this.u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void v(float f) {
        this.m = f;
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
        int i5 = this.B;
        if (i != i5 || i2 != this.C || i3 != this.D || i4 != this.E) {
            if (i != i5 || i2 != this.C) {
                z2 = true;
            }
            this.B = i;
            this.C = i2;
            this.D = i3;
            this.E = i4;
            U();
            if (z2) {
                T();
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float x() {
        return this.s;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long y() {
        return this.v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void z(long j) {
        this.u = j;
        RenderNodeVerificationHelper28.c(this.d, ColorKt.f(j));
    }
}
