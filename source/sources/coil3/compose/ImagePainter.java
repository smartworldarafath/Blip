package coil3.compose;

import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import coil3.Image;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImagePainter extends Painter {
    public final Image o;

    public ImagePainter(Image image) {
        this.o = image;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        float f;
        Image image = this.o;
        int b = image.b();
        float f2 = Float.NaN;
        if (b > 0) {
            f = b;
        } else {
            f = Float.NaN;
        }
        int a = image.a();
        if (a > 0) {
            f2 = a;
        }
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        float f;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        Image image = this.o;
        int b = image.b();
        float f2 = 1.0f;
        if (b > 0) {
            f = Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32)) / b;
        } else {
            f = 1.0f;
        }
        int a = image.a();
        if (a > 0) {
            f2 = Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L)) / a;
        }
        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
        long d = canvasDrawScope$drawContext$1.d();
        canvasDrawScope$drawContext$1.a().g();
        try {
            canvasDrawScope$drawContext$1.a.b(f, f2, 0L);
            image.k(AndroidCanvas_androidKt.a(canvasDrawScope.k.a()));
        } finally {
            q.v(canvasDrawScope$drawContext$1, d);
        }
    }
}
