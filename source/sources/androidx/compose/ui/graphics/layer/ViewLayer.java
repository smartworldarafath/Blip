package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewLayer extends View {
    public static final ViewLayer$Companion$LayerOutlineProvider$1 v = new ViewOutlineProvider();
    public final DrawChildContainer j;
    public final CanvasHolder k;
    public final CanvasDrawScope l;
    public boolean m;
    public Outline n;
    public boolean o;
    public Density p;
    public LayoutDirection q;
    public Function1 r;
    public GraphicsLayer s;
    public float t;
    public float u;

    public ViewLayer(DrawChildContainer drawChildContainer, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope) {
        super(drawChildContainer.getContext());
        this.j = drawChildContainer;
        this.k = canvasHolder;
        this.l = canvasDrawScope;
        setOutlineProvider(v);
        this.o = true;
        this.p = DrawContextKt.a;
        this.q = LayoutDirection.j;
        GraphicsLayerImpl.a.getClass();
        this.r = GraphicsLayerImpl$Companion$DefaultDrawBlock$1.k;
        setWillNotDraw(false);
        setClipBounds(null);
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        AndroidCanvas androidCanvas;
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1;
        Density b;
        LayoutDirection c;
        androidx.compose.ui.graphics.Canvas a;
        long d;
        GraphicsLayer graphicsLayer;
        float f = this.t;
        CanvasDrawScope canvasDrawScope = this.l;
        CanvasHolder canvasHolder = this.k;
        if (f <= 0.0f && this.u <= 0.0f) {
            androidCanvas = canvasHolder.a;
            Canvas canvas2 = androidCanvas.a;
            androidCanvas.a = canvas;
            Density density = this.p;
            LayoutDirection layoutDirection = this.q;
            float width = getWidth();
            float height = getHeight();
            long floatToRawIntBits = (4294967295L & Float.floatToRawIntBits(height)) | (Float.floatToRawIntBits(width) << 32);
            GraphicsLayer graphicsLayer2 = this.s;
            Function1 function1 = this.r;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$12 = canvasDrawScope.k;
            canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            b = canvasDrawScope$drawContext$12.b();
            c = canvasDrawScope$drawContext$1.c();
            a = canvasDrawScope$drawContext$1.a();
            d = canvasDrawScope$drawContext$1.d();
            graphicsLayer = canvasDrawScope$drawContext$1.b;
            canvasDrawScope$drawContext$1.f(density);
            canvasDrawScope$drawContext$1.g(layoutDirection);
            canvasDrawScope$drawContext$1.e(androidCanvas);
            canvasDrawScope$drawContext$1.h(floatToRawIntBits);
            canvasDrawScope$drawContext$1.b = graphicsLayer2;
            androidCanvas.g();
            try {
                function1.b(canvasDrawScope);
                androidCanvas.r();
                canvasDrawScope$drawContext$1.f(b);
                canvasDrawScope$drawContext$1.g(c);
                canvasDrawScope$drawContext$1.e(a);
                canvasDrawScope$drawContext$1.h(d);
                canvasDrawScope$drawContext$1.b = graphicsLayer;
                canvasHolder.a.a = canvas2;
            } finally {
            }
        } else {
            int save = canvas.save();
            canvas.translate(this.t, this.u);
            androidCanvas = canvasHolder.a;
            Canvas canvas3 = androidCanvas.a;
            androidCanvas.a = canvas;
            Density density2 = this.p;
            LayoutDirection layoutDirection2 = this.q;
            float width2 = getWidth();
            float height2 = getHeight();
            long floatToRawIntBits2 = (4294967295L & Float.floatToRawIntBits(height2)) | (Float.floatToRawIntBits(width2) << 32);
            GraphicsLayer graphicsLayer3 = this.s;
            Function1 function12 = this.r;
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$13 = canvasDrawScope.k;
            canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            b = canvasDrawScope$drawContext$13.b();
            c = canvasDrawScope$drawContext$1.c();
            a = canvasDrawScope$drawContext$1.a();
            d = canvasDrawScope$drawContext$1.d();
            graphicsLayer = canvasDrawScope$drawContext$1.b;
            canvasDrawScope$drawContext$1.f(density2);
            canvasDrawScope$drawContext$1.g(layoutDirection2);
            canvasDrawScope$drawContext$1.e(androidCanvas);
            canvasDrawScope$drawContext$1.h(floatToRawIntBits2);
            canvasDrawScope$drawContext$1.b = graphicsLayer3;
            androidCanvas.g();
            try {
                function12.b(canvasDrawScope);
                androidCanvas.r();
                canvasDrawScope$drawContext$1.f(b);
                canvasDrawScope$drawContext$1.g(c);
                canvasDrawScope$drawContext$1.e(a);
                canvasDrawScope$drawContext$1.h(d);
                canvasDrawScope$drawContext$1.b = graphicsLayer;
                canvasHolder.a.a = canvas3;
                canvas.restoreToCount(save);
            } finally {
            }
        }
        this.m = false;
    }

    public final boolean getCanUseCompositingLayer$ui_graphics() {
        return this.o;
    }

    public final CanvasHolder getCanvasHolder() {
        return this.k;
    }

    public final View getOwnerView() {
        return this.j;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.o;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.m) {
            this.m = true;
            super.invalidate();
        }
    }

    public final void setCanUseCompositingLayer$ui_graphics(boolean z) {
        if (this.o != z) {
            this.o = z;
            invalidate();
        }
    }

    public final void setInvalidated(boolean z) {
        this.m = z;
    }

    @Override // android.view.View
    public final void forceLayout() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
