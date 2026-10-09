package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k8;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CanvasDrawScope implements DrawScope {
    public final DrawParams j;
    public final CanvasDrawScope$drawContext$1 k;
    public AndroidPaint l;
    public AndroidPaint m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DrawParams {
        public Density a;
        public LayoutDirection b;
        public Canvas c;
        public long d;

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof DrawParams) {
                    DrawParams drawParams = (DrawParams) obj;
                    if (!Intrinsics.a(this.a, drawParams.a) || this.b != drawParams.b || !Intrinsics.a(this.c, drawParams.c) || !Size.a(this.d, drawParams.d)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Long.hashCode(this.d) + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "DrawParams(density=" + this.a + ", layoutDirection=" + this.b + ", canvas=" + this.c + ", size=" + Size.f(this.d) + ")";
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.graphics.drawscope.CanvasDrawScope$DrawParams] */
    public CanvasDrawScope() {
        Density density = DrawContextKt.a;
        LayoutDirection layoutDirection = LayoutDirection.j;
        ?? obj = new Object();
        obj.a = density;
        obj.b = layoutDirection;
        obj.c = EmptyCanvas.a;
        obj.d = 0L;
        this.j = obj;
        this.k = new CanvasDrawScope$drawContext$1(this);
    }

    public static Paint a(CanvasDrawScope canvasDrawScope, long j, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i) {
        Paint e = canvasDrawScope.e(drawStyle);
        if (f != 1.0f) {
            j = Color.b(j, Color.d(j) * f);
        }
        AndroidPaint androidPaint = (AndroidPaint) e;
        if (!Color.c(androidPaint.a(), j)) {
            androidPaint.f(j);
        }
        if (androidPaint.c != null) {
            androidPaint.i(null);
        }
        if (!Intrinsics.a(androidPaint.d, colorFilter)) {
            androidPaint.g(colorFilter);
        }
        if (androidPaint.b != i) {
            androidPaint.e(i);
        }
        if (androidPaint.a.isFilterBitmap()) {
            return e;
        }
        androidPaint.h(1);
        return e;
    }

    public static Paint c(CanvasDrawScope canvasDrawScope, long j, float f) {
        AndroidPaint androidPaint = canvasDrawScope.m;
        if (androidPaint == null) {
            androidPaint = AndroidPaint_androidKt.a();
            androidPaint.m(1);
            canvasDrawScope.m = androidPaint;
        }
        android.graphics.Paint paint = androidPaint.a;
        if (!Color.c(androidPaint.a(), j)) {
            androidPaint.f(j);
        }
        if (androidPaint.c != null) {
            androidPaint.i(null);
        }
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
        if (androidPaint.b() != 1) {
            androidPaint.j(1);
        }
        if (androidPaint.c() != 0) {
            androidPaint.k(0);
        }
        if (paint.isFilterBitmap()) {
            return androidPaint;
        }
        androidPaint.h(1);
        return androidPaint;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void D(long j, long j2, long j3, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i) {
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j2 & 4294967295L);
        this.j.c.e(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i3), a(this, j, drawStyle, f, colorFilter, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void G(long j, float f, long j2, float f2) {
        this.j.c.s(f, j2, a(this, j, Fill.a, f2, null, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void H0(long j, float f, float f2, long j2, long j3, DrawStyle drawStyle) {
        int i = (int) (j2 >> 32);
        int i2 = (int) (j2 & 4294967295L);
        this.j.c.f(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j3 & 4294967295L)) + Float.intBitsToFloat(i2), f, f2, a(this, j, drawStyle, 1.0f, null, 3));
    }

    public final Paint b(Brush brush, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i, int i2) {
        Paint e = e(drawStyle);
        if (brush != null) {
            brush.a(f, i(), e);
        } else {
            AndroidPaint androidPaint = (AndroidPaint) e;
            if (androidPaint.c != null) {
                androidPaint.i(null);
            }
            long a = androidPaint.a();
            long j = Color.b;
            if (!Color.c(a, j)) {
                androidPaint.f(j);
            }
            if (androidPaint.a.getAlpha() / 255.0f != f) {
                androidPaint.d(f);
            }
        }
        AndroidPaint androidPaint2 = (AndroidPaint) e;
        if (!Intrinsics.a(androidPaint2.d, colorFilter)) {
            androidPaint2.g(colorFilter);
        }
        if (androidPaint2.b != i) {
            androidPaint2.e(i);
        }
        if (androidPaint2.a.isFilterBitmap() == i2) {
            return e;
        }
        androidPaint2.h(i2);
        return e;
    }

    public final void d(ImageBitmap imageBitmap, BlendModeColorFilter blendModeColorFilter) {
        this.j.c.q(imageBitmap, b(null, Fill.a, 1.0f, blendModeColorFilter, 3, 1));
    }

    public final Paint e(DrawStyle drawStyle) {
        if (Intrinsics.a(drawStyle, Fill.a)) {
            AndroidPaint androidPaint = this.l;
            if (androidPaint == null) {
                AndroidPaint a = AndroidPaint_androidKt.a();
                a.m(0);
                this.l = a;
                return a;
            }
            return androidPaint;
        }
        if (drawStyle instanceof Stroke) {
            AndroidPaint androidPaint2 = this.m;
            if (androidPaint2 == null) {
                androidPaint2 = AndroidPaint_androidKt.a();
                androidPaint2.m(1);
                this.m = androidPaint2;
            }
            android.graphics.Paint paint = androidPaint2.a;
            float strokeWidth = paint.getStrokeWidth();
            Stroke stroke = (Stroke) drawStyle;
            float f = stroke.a;
            if (strokeWidth != f) {
                androidPaint2.l(f);
            }
            int b = androidPaint2.b();
            int i = stroke.c;
            if (b != i) {
                androidPaint2.j(i);
            }
            float strokeMiter = paint.getStrokeMiter();
            float f2 = stroke.b;
            if (strokeMiter != f2) {
                paint.setStrokeMiter(f2);
            }
            int c = androidPaint2.c();
            int i2 = stroke.d;
            if (c == i2) {
                return androidPaint2;
            }
            androidPaint2.k(i2);
            return androidPaint2;
        }
        k8.e();
        return null;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.j.a.e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j.a.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.j.b;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final CanvasDrawScope$drawContext$1 l0() {
        return this.k;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void m0(Brush brush, long j, long j2, float f, DrawStyle drawStyle, int i) {
        int i2 = (int) (j >> 32);
        int i3 = (int) (j & 4294967295L);
        this.j.c.e(Float.intBitsToFloat(i2), Float.intBitsToFloat(i3), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (4294967295L & j2)) + Float.intBitsToFloat(i3), b(brush, drawStyle, f, null, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void o0(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        this.j.c.i(imageBitmap, j, j2, j3, b(null, Fill.a, f, colorFilter, 3, i));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void u0(Path path, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.j.c.m(path, b(brush, drawStyle, f, null, i, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void v(float f, long j, long j2, long j3) {
        this.j.c.d(j2, j3, c(this, j, f));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final void x0(ArrayList arrayList, long j, float f) {
        this.j.c.a(arrayList, c(this, j, f));
    }
}
