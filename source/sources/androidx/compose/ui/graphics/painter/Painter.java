package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Painter {
    public AndroidPaint j;
    public boolean k;
    public ColorFilter l;
    public float m = 1.0f;
    public LayoutDirection n = LayoutDirection.j;

    public boolean d(float f) {
        return false;
    }

    public boolean e(ColorFilter colorFilter) {
        return false;
    }

    public final void g(LayoutNodeDrawScope layoutNodeDrawScope, long j, float f, ColorFilter colorFilter) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        if (this.m != f) {
            if (!d(f)) {
                AndroidPaint androidPaint = this.j;
                if (f == 1.0f) {
                    if (androidPaint != null) {
                        androidPaint.d(f);
                    }
                    this.k = false;
                } else {
                    if (androidPaint == null) {
                        androidPaint = AndroidPaint_androidKt.a();
                        this.j = androidPaint;
                    }
                    androidPaint.d(f);
                    this.k = true;
                }
            }
            this.m = f;
        }
        if (!Intrinsics.a(this.l, colorFilter)) {
            if (!e(colorFilter)) {
                AndroidPaint androidPaint2 = this.j;
                if (colorFilter == null) {
                    if (androidPaint2 != null) {
                        androidPaint2.g(null);
                    }
                    this.k = false;
                } else {
                    if (androidPaint2 == null) {
                        androidPaint2 = AndroidPaint_androidKt.a();
                        this.j = androidPaint2;
                    }
                    androidPaint2.g(colorFilter);
                    this.k = true;
                }
            }
            this.l = colorFilter;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        if (this.n != layoutDirection) {
            f(layoutDirection);
            this.n = layoutDirection;
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32)) - Float.intBitsToFloat(i);
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L)) - Float.intBitsToFloat(i2);
        canvasDrawScope.k.a.a(0.0f, 0.0f, intBitsToFloat, intBitsToFloat2);
        if (f > 0.0f) {
            try {
                if (Float.intBitsToFloat(i) > 0.0f && Float.intBitsToFloat(i2) > 0.0f) {
                    if (this.k) {
                        float intBitsToFloat3 = Float.intBitsToFloat(i);
                        float intBitsToFloat4 = Float.intBitsToFloat(i2);
                        Rect a = RectKt.a(0L, (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat3) << 32));
                        Canvas a2 = canvasDrawScope.k.a();
                        AndroidPaint androidPaint3 = this.j;
                        if (androidPaint3 == null) {
                            androidPaint3 = AndroidPaint_androidKt.a();
                            this.j = androidPaint3;
                        }
                        try {
                            a2.c(a, androidPaint3);
                            j(layoutNodeDrawScope);
                            a2.r();
                        } catch (Throwable th) {
                            a2.r();
                            throw th;
                        }
                    } else {
                        j(layoutNodeDrawScope);
                    }
                }
            } catch (Throwable th2) {
                canvasDrawScope.k.a.a(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
                throw th2;
            }
        }
        canvasDrawScope.k.a.a(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
    }

    public abstract long i();

    public abstract void j(LayoutNodeDrawScope layoutNodeDrawScope);

    public void f(LayoutDirection layoutDirection) {
    }
}
