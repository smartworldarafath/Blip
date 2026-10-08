package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CanvasDrawScope$drawContext$1 {
    public final CanvasDrawScopeKt$asDrawTransform$1 a = new CanvasDrawScopeKt$asDrawTransform$1(this);
    public GraphicsLayer b;
    public final /* synthetic */ CanvasDrawScope c;

    public CanvasDrawScope$drawContext$1(CanvasDrawScope canvasDrawScope) {
        this.c = canvasDrawScope;
    }

    public final Canvas a() {
        return this.c.j.c;
    }

    public final Density b() {
        return this.c.j.a;
    }

    public final LayoutDirection c() {
        return this.c.j.b;
    }

    public final long d() {
        return this.c.j.d;
    }

    public final void e(Canvas canvas) {
        this.c.j.c = canvas;
    }

    public final void f(Density density) {
        this.c.j.a = density;
    }

    public final void g(LayoutDirection layoutDirection) {
        this.c.j.b = layoutDirection;
    }

    public final void h(long j) {
        this.c.j.d = j;
    }
}
