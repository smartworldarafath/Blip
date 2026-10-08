package net.blip.shared;

import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BrushPainter extends Painter {
    public final SolidColor o;
    public final long p;
    private final Painter painter;

    public BrushPainter(Painter painter, SolidColor solidColor) {
        painter.getClass();
        this.painter = painter;
        this.o = solidColor;
        this.p = painter.i();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        return this.p;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        Canvas a = canvasDrawScope.k.a();
        try {
            a.c(RectKt.a(0L, canvasDrawScope.i()), AndroidPaint_androidKt.a());
            this.painter.g(layoutNodeDrawScope, canvasDrawScope.i(), 1.0f, null);
            DrawScope.O(layoutNodeDrawScope, this.o, 0L, 0L, 0.0f, null, 62);
        } finally {
            a.r();
        }
    }
}
