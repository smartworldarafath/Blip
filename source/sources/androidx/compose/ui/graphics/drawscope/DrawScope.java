package androidx.compose.ui.graphics.drawscope;

import android.graphics.Paint;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DrawScope extends Density {
    static void A(DrawScope drawScope, ImageBitmap imageBitmap, long j, long j2, float f, ColorFilter colorFilter, int i, int i2) {
        long j3;
        float f2;
        int i3;
        if ((i2 & 16) != 0) {
            j3 = j;
        } else {
            j3 = j2;
        }
        if ((i2 & 32) != 0) {
            f2 = 1.0f;
        } else {
            f2 = f;
        }
        if ((i2 & 512) != 0) {
            i3 = 1;
        } else {
            i3 = i;
        }
        drawScope.o0(imageBitmap, 0L, j, j3, f2, colorFilter, i3);
    }

    static /* synthetic */ void H(DrawScope drawScope, Path path, Brush brush, float f, Stroke stroke, int i) {
        int i2;
        if ((i & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        DrawStyle drawStyle = stroke;
        if ((i & 8) != 0) {
            drawStyle = Fill.a;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i & 32) != 0) {
            i2 = 3;
        } else {
            i2 = 0;
        }
        drawScope.u0(path, brush, f2, drawStyle2, i2);
    }

    static /* synthetic */ void J(DrawScope drawScope, long j, float f, long j2, float f2, int i) {
        if ((i & 4) != 0) {
            j2 = drawScope.B0();
        }
        long j3 = j2;
        if ((i & 8) != 0) {
            f2 = 1.0f;
        }
        drawScope.G(j, f, j3, f2);
    }

    static /* synthetic */ void O(DrawScope drawScope, Brush brush, long j, long j2, float f, DrawStyle drawStyle, int i) {
        long j3;
        float f2;
        DrawStyle drawStyle2;
        int i2;
        if ((i & 2) != 0) {
            j = 0;
        }
        long j4 = j;
        if ((i & 4) != 0) {
            j3 = Y(drawScope.i(), j4);
        } else {
            j3 = j2;
        }
        if ((i & 8) != 0) {
            f2 = 1.0f;
        } else {
            f2 = f;
        }
        if ((i & 16) != 0) {
            drawStyle2 = Fill.a;
        } else {
            drawStyle2 = drawStyle;
        }
        if ((i & 64) != 0) {
            i2 = 3;
        } else {
            i2 = 5;
        }
        drawScope.m0(brush, j4, j3, f2, drawStyle2, i2);
    }

    static long Y(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (j2 & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    static void d0(LayoutNodeDrawScope layoutNodeDrawScope, SolidColor solidColor, long j, long j2, float f, float f2, int i) {
        if ((i & 64) != 0) {
            f2 = 1.0f;
        }
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        Canvas canvas = canvasDrawScope.j.c;
        AndroidPaint androidPaint = canvasDrawScope.m;
        if (androidPaint == null) {
            androidPaint = AndroidPaint_androidKt.a();
            androidPaint.m(1);
            canvasDrawScope.m = androidPaint;
        }
        Paint paint = androidPaint.a;
        solidColor.a(f2, canvasDrawScope.i(), androidPaint);
        if (!Intrinsics.a(androidPaint.d, null)) {
            androidPaint.g(null);
        }
        if (androidPaint.b != 3) {
            androidPaint.e(3);
        }
        if (paint.getStrokeWidth() != f) {
            androidPaint.l(f);
        }
        if (paint.getStrokeMiter() != 4.0f) {
            paint.setStrokeMiter(4.0f);
        }
        if (androidPaint.b() != 0) {
            androidPaint.j(0);
        }
        if (androidPaint.c() != 0) {
            androidPaint.k(0);
        }
        if (!paint.isFilterBitmap()) {
            androidPaint.h(1);
        }
        canvas.d(j, j2, androidPaint);
    }

    static void k(LayoutNodeDrawScope layoutNodeDrawScope, Brush brush, long j, long j2, long j3, DrawStyle drawStyle, int i) {
        long j4;
        DrawStyle drawStyle2;
        if ((i & 2) != 0) {
            j = 0;
        }
        long j5 = j;
        if ((i & 4) != 0) {
            j4 = Y(layoutNodeDrawScope.j.i(), j5);
        } else {
            j4 = j2;
        }
        if ((i & 32) != 0) {
            drawStyle2 = Fill.a;
        } else {
            drawStyle2 = drawStyle;
        }
        layoutNodeDrawScope.d(brush, j5, j4, j3, 1.0f, drawStyle2);
    }

    static /* synthetic */ void r0(DrawScope drawScope, long j, long j2, float f, ColorFilter colorFilter, int i) {
        long j3;
        float f2;
        ColorFilter colorFilter2;
        int i2;
        if ((i & 4) != 0) {
            j3 = Y(drawScope.i(), 0L);
        } else {
            j3 = j2;
        }
        if ((i & 8) != 0) {
            f2 = 1.0f;
        } else {
            f2 = f;
        }
        if ((i & 32) != 0) {
            colorFilter2 = null;
        } else {
            colorFilter2 = colorFilter;
        }
        if ((i & 64) != 0) {
            i2 = 3;
        } else {
            i2 = 0;
        }
        drawScope.D(j, 0L, j3, f2, Fill.a, colorFilter2, i2);
    }

    default long B0() {
        return SizeKt.a(l0().d());
    }

    void D(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i);

    void G(long j, float f, long j2, float f2);

    void H0(long j, float f, float f2, long j2, long j3, DrawStyle drawStyle);

    LayoutDirection getLayoutDirection();

    default long i() {
        return l0().d();
    }

    CanvasDrawScope$drawContext$1 l0();

    void m0(Brush brush, long j, long j2, float f, DrawStyle drawStyle, int i);

    void o0(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i);

    void u0(Path path, Brush brush, float f, DrawStyle drawStyle, int i);

    void v(float f, long j, long j2, long j3);

    void x0(ArrayList arrayList, long j, float f);
}
