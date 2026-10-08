package androidx.compose.ui.draganddrop;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeDragShadowBuilder extends View.DragShadowBuilder {
    public final Density a;
    public final long b;
    public final Function1 c;

    public ComposeDragShadowBuilder(Density density, long j, Function1 function1) {
        this.a = density;
        this.b = j;
        this.c = function1;
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onDrawShadow(Canvas canvas) {
        CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
        LayoutDirection layoutDirection = LayoutDirection.j;
        Canvas canvas2 = AndroidCanvas_androidKt.a;
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.a = canvas;
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.j;
        Density density = drawParams.a;
        LayoutDirection layoutDirection2 = drawParams.b;
        androidx.compose.ui.graphics.Canvas canvas3 = drawParams.c;
        long j = drawParams.d;
        drawParams.a = this.a;
        drawParams.b = layoutDirection;
        drawParams.c = androidCanvas;
        drawParams.d = this.b;
        androidCanvas.g();
        this.c.b(canvasDrawScope);
        androidCanvas.r();
        drawParams.a = density;
        drawParams.b = layoutDirection2;
        drawParams.c = canvas3;
        drawParams.d = j;
    }

    @Override // android.view.View.DragShadowBuilder
    public final void onProvideShadowMetrics(Point point, Point point2) {
        long j = this.b;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        Density density = this.a;
        point.set(density.y0(intBitsToFloat / density.getDensity()), density.y0(Float.intBitsToFloat((int) (j & 4294967295L)) / density.getDensity()));
        point2.set(point.x / 2, point.y / 2);
    }
}
