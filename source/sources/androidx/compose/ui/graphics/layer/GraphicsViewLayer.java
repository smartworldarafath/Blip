package androidx.compose.ui.graphics.layer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidBlendMode_androidKt;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsViewLayer implements GraphicsLayerImpl {
    public static final GraphicsViewLayer$Companion$PlaceholderCanvas$1 I = new Canvas();
    public float A;
    public float B;
    public float C;
    public int D;
    public int E;
    public int F;
    public int G;
    public RenderEffect H;
    public final DrawChildContainer b;
    public final CanvasHolder c;
    public final ViewLayer d;
    public final Resources e;
    public final Rect f;
    public Paint g;
    public int h;
    public int i;
    public long j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public ColorFilter o;
    public int p;
    public float q;
    public boolean r;
    public long s;
    public float t;
    public float u;
    public float v;
    public float w;
    public float x;
    public long y;
    public long z;

    public GraphicsViewLayer(DrawChildContainer drawChildContainer) {
        CanvasHolder canvasHolder = new CanvasHolder();
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        this.b = drawChildContainer;
        this.c = canvasHolder;
        ViewLayer viewLayer = new ViewLayer(drawChildContainer, canvasHolder, canvasDrawScope);
        this.d = viewLayer;
        this.e = drawChildContainer.getResources();
        this.f = new Rect();
        drawChildContainer.addView(viewLayer);
        viewLayer.setClipBounds(null);
        this.j = 0L;
        View.generateViewId();
        this.n = 3;
        this.p = 0;
        this.q = 1.0f;
        this.s = 9205357640488583168L;
        this.t = 1.0f;
        this.u = 1.0f;
        long j = Color.b;
        this.y = j;
        this.z = j;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void A(float f) {
        this.t = f;
        this.d.setScaleX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float B() {
        return this.d.getCameraDistance() / this.e.getDisplayMetrics().densityDpi;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void C(RenderEffect renderEffect) {
        android.graphics.RenderEffect renderEffect2;
        this.H = renderEffect;
        if (Build.VERSION.SDK_INT >= 31) {
            if (renderEffect != null) {
                renderEffect2 = renderEffect.a();
            } else {
                renderEffect2 = null;
            }
            this.d.setRenderEffect(renderEffect2);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float D() {
        return this.v;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void E(boolean z) {
        boolean z2;
        boolean z3 = false;
        if (z && !this.l) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.m = z2;
        this.k = true;
        if (z && this.l) {
            z3 = true;
        }
        this.d.setClipToOutline(z3);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float F() {
        return this.A;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void G(int i) {
        this.p = i;
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void H(float f) {
        this.v = f;
        this.d.setTranslationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void I(long j) {
        this.z = j;
        this.d.setOutlineSpotShadowColor(ColorKt.f(j));
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final Matrix J() {
        return this.d.getMatrix();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void K(float f) {
        this.d.setCameraDistance(f * this.e.getDisplayMetrics().densityDpi);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float L() {
        return this.x;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float M() {
        return this.u;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void N(float f) {
        this.A = f;
        this.d.setRotationX(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int O() {
        return this.n;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void P(androidx.compose.ui.graphics.Canvas canvas) {
        Rect rect;
        boolean z = this.k;
        ViewLayer viewLayer = this.d;
        if (z) {
            if ((this.m || viewLayer.getClipToOutline()) && !this.l) {
                rect = this.f;
                rect.left = 0;
                rect.top = 0;
                rect.right = viewLayer.getWidth();
                rect.bottom = viewLayer.getHeight();
            } else {
                rect = null;
            }
            viewLayer.setClipBounds(rect);
        }
        Canvas canvas2 = AndroidCanvas_androidKt.a;
        if (((AndroidCanvas) canvas).a.isHardwareAccelerated()) {
            this.b.a(canvas, viewLayer, viewLayer.getDrawingTime());
        }
    }

    public final void Q(int i) {
        ViewLayer viewLayer = this.d;
        boolean z = true;
        if (i == 1) {
            viewLayer.setLayerType(2, this.g);
        } else {
            Paint paint = this.g;
            if (i == 2) {
                viewLayer.setLayerType(0, paint);
                z = false;
            } else {
                viewLayer.setLayerType(0, paint);
            }
        }
        viewLayer.setCanUseCompositingLayer$ui_graphics(z);
    }

    public final void R() {
        boolean z = this.m;
        ViewLayer viewLayer = this.d;
        if (z || viewLayer.getClipToOutline()) {
            this.k = true;
        }
        int i = this.h;
        int i2 = i - this.D;
        int i3 = this.i;
        int i4 = i3 - this.E;
        long j = this.j;
        viewLayer.layout(i2, i4, i + ((int) (j >> 32)) + this.F, i3 + ((int) (j & 4294967295L)) + this.G);
    }

    public final void S() {
        int i = this.p;
        if (i != 1 && this.n == 3 && this.o == null) {
            Q(i);
        } else {
            Q(1);
        }
    }

    public final void T() {
        boolean z = this.r;
        ViewLayer viewLayer = this.d;
        if (!z && !Offset.c(this.s, 9205357640488583168L)) {
            viewLayer.setPivotX(Float.intBitsToFloat((int) (this.s >> 32)) + this.D);
            viewLayer.setPivotY(Float.intBitsToFloat((int) (this.s & 4294967295L)) + this.E);
        } else {
            viewLayer.setPivotX((((int) (this.j >> 32)) / 2.0f) + this.D);
            viewLayer.setPivotY((((int) (this.j & 4294967295L)) / 2.0f) + this.E);
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float a() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void b(float f) {
        this.B = f;
        this.d.setRotationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float c() {
        return this.t;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void d(float f) {
        this.x = f;
        this.d.setElevation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final RenderEffect e() {
        return this.H;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void f(float f) {
        this.C = f;
        this.d.setRotation(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void g(float f) {
        this.w = f;
        this.d.setTranslationY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void h(Density density, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        ViewLayer viewLayer = this.d;
        ViewParent parent = viewLayer.getParent();
        DrawChildContainer drawChildContainer = this.b;
        if (parent == null) {
            drawChildContainer.addView(viewLayer);
        }
        float f = this.D;
        float f2 = this.E;
        long floatToRawIntBits = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
        float intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
        viewLayer.p = density;
        viewLayer.q = layoutDirection;
        viewLayer.r = function1;
        viewLayer.s = graphicsLayer;
        viewLayer.t = intBitsToFloat;
        viewLayer.u = intBitsToFloat2;
        if (viewLayer.isAttachedToWindow()) {
            viewLayer.setVisibility(4);
            viewLayer.setVisibility(0);
            try {
                CanvasHolder canvasHolder = this.c;
                GraphicsViewLayer$Companion$PlaceholderCanvas$1 graphicsViewLayer$Companion$PlaceholderCanvas$1 = I;
                AndroidCanvas androidCanvas = canvasHolder.a;
                Canvas canvas = androidCanvas.a;
                androidCanvas.a = graphicsViewLayer$Companion$PlaceholderCanvas$1;
                drawChildContainer.a(androidCanvas, viewLayer, viewLayer.getDrawingTime());
                canvasHolder.a.a = canvas;
            } catch (ClassCastException unused) {
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void i(Outline outline, long j) {
        ViewLayer viewLayer = this.d;
        viewLayer.n = outline;
        viewLayer.invalidateOutline();
        boolean z = false;
        if ((this.m || viewLayer.getClipToOutline()) && outline != null) {
            viewLayer.setClipToOutline(true);
            if (this.m) {
                this.m = false;
                this.k = true;
            }
        }
        if (outline != null) {
            z = true;
        }
        this.l = z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void j(int i) {
        this.n = i;
        Paint paint = this.g;
        if (paint == null) {
            paint = new Paint();
            this.g = paint;
        }
        paint.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.b(i)));
        S();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void k() {
        this.b.removeViewInLayout(this.d);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final int l() {
        return this.p;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final ColorFilter m() {
        return this.o;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void n(float f) {
        this.u = f;
        this.d.setScaleY(f);
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void o(int i, int i2, long j) {
        if (!IntSize.a(this.j, j)) {
            this.h = i;
            this.i = i2;
            this.j = j;
            R();
            return;
        }
        int i3 = this.h;
        ViewLayer viewLayer = this.d;
        if (i3 != i) {
            viewLayer.offsetLeftAndRight(i - i3);
        }
        int i4 = this.i;
        if (i4 != i2) {
            viewLayer.offsetTopAndBottom(i2 - i4);
        }
        this.h = i;
        this.i = i2;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float p() {
        return this.B;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void q(ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        this.o = colorFilter;
        Paint paint = this.g;
        if (paint == null) {
            paint = new Paint();
            this.g = paint;
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
    public final float s() {
        return this.C;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void t(long j) {
        boolean z;
        this.s = j;
        if ((j & 9223372034707292159L) == 9205357640488583168L) {
            z = true;
        } else {
            z = false;
        }
        this.r = z;
        T();
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long u() {
        return this.y;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void v(float f) {
        this.q = f;
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
        int i5 = this.D;
        if (i != i5 || i2 != this.E || i3 != this.F || i4 != this.G) {
            if (i != i5 || i2 != this.E) {
                z2 = true;
            }
            this.D = i;
            this.E = i2;
            this.F = i3;
            this.G = i4;
            R();
            if (z2) {
                T();
            }
        }
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final float x() {
        return this.w;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final long y() {
        return this.z;
    }

    @Override // androidx.compose.ui.graphics.layer.GraphicsLayerImpl
    public final void z(long j) {
        this.y = j;
        this.d.setOutlineAmbientShadowColor(ColorKt.f(j));
    }
}
