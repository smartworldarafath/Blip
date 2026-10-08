package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.geometry.Offset;
import defpackage.fe;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidCanvas implements Canvas {
    public android.graphics.Canvas a = AndroidCanvas_androidKt.a;
    public Rect b;
    public Rect c;

    @Override // androidx.compose.ui.graphics.Canvas
    public final void a(ArrayList arrayList, Paint paint) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            long j = ((Offset) arrayList.get(i)).a;
            this.a.drawPoint(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), AndroidPaint_androidKt.b(paint));
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void b(float f, float f2) {
        this.a.scale(f, f2);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void c(androidx.compose.ui.geometry.Rect rect, Paint paint) {
        this.a.saveLayer(rect.a, rect.b, rect.c, rect.d, AndroidPaint_androidKt.b(paint), 31);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void d(long j, long j2, Paint paint) {
        this.a.drawLine(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void e(float f, float f2, float f3, float f4, Paint paint) {
        this.a.drawRect(f, f2, f3, f4, AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void f(float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        this.a.drawArc(f, f2, f3, f4, f5, f6, false, AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void g() {
        this.a.save();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void h() {
        CanvasUtils.a(this.a, false);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void i(ImageBitmap imageBitmap, long j, long j2, long j3, Paint paint) {
        if (this.b == null) {
            this.b = new Rect();
            this.c = new Rect();
        }
        android.graphics.Canvas canvas = this.a;
        Bitmap a = AndroidImageBitmap_androidKt.a(imageBitmap);
        Rect rect = this.b;
        rect.getClass();
        int i = (int) (j >> 32);
        rect.left = i;
        int i2 = (int) (j & 4294967295L);
        rect.top = i2;
        rect.right = i + ((int) (j2 >> 32));
        rect.bottom = i2 + ((int) (j2 & 4294967295L));
        Rect rect2 = this.c;
        rect2.getClass();
        rect2.left = 0;
        rect2.top = 0;
        rect2.right = (int) (j3 >> 32);
        rect2.bottom = (int) (j3 & 4294967295L);
        canvas.drawBitmap(a, rect, rect2, AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void j(Path path) {
        android.graphics.Canvas canvas = this.a;
        if (path instanceof AndroidPath) {
            canvas.clipPath(((AndroidPath) path).a, Region.Op.INTERSECT);
        } else {
            fe.t("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void k(float[] fArr) {
        if (!MatrixKt.a(fArr)) {
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            AndroidMatrixConversions_androidKt.a(matrix, fArr);
            this.a.concat(matrix);
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void m(Path path, Paint paint) {
        android.graphics.Canvas canvas = this.a;
        if (path instanceof AndroidPath) {
            canvas.drawPath(((AndroidPath) path).a, AndroidPaint_androidKt.b(paint));
        } else {
            fe.t("Unable to obtain android.graphics.Path");
        }
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void n(float f, float f2, float f3, float f4, int i) {
        Region.Op op;
        android.graphics.Canvas canvas = this.a;
        if (i == 0) {
            op = Region.Op.DIFFERENCE;
        } else {
            op = Region.Op.INTERSECT;
        }
        canvas.clipRect(f, f2, f3, f4, op);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void o(float f, float f2) {
        this.a.translate(f, f2);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void p() {
        this.a.rotate(45.0f);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void q(ImageBitmap imageBitmap, Paint paint) {
        this.a.drawBitmap(AndroidImageBitmap_androidKt.a(imageBitmap), Float.intBitsToFloat(0), Float.intBitsToFloat(0), AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void r() {
        this.a.restore();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void s(float f, long j, Paint paint) {
        this.a.drawCircle(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), f, AndroidPaint_androidKt.b(paint));
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void t() {
        CanvasUtils.a(this.a, true);
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public final void u(float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        this.a.drawRoundRect(f, f2, f3, f4, f5, f6, AndroidPaint_androidKt.b(paint));
    }
}
