package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Canvas {
    static void l(Canvas canvas, Rect rect) {
        canvas.n(rect.a, rect.b, rect.c, rect.d, 1);
    }

    void a(ArrayList arrayList, Paint paint);

    void b(float f, float f2);

    void c(Rect rect, Paint paint);

    void d(long j, long j2, Paint paint);

    void e(float f, float f2, float f3, float f4, Paint paint);

    void f(float f, float f2, float f3, float f4, float f5, float f6, Paint paint);

    void g();

    void h();

    void i(ImageBitmap imageBitmap, long j, long j2, long j3, Paint paint);

    void j(Path path);

    void k(float[] fArr);

    void m(Path path, Paint paint);

    void n(float f, float f2, float f3, float f4, int i);

    void o(float f, float f2);

    void p();

    void q(ImageBitmap imageBitmap, Paint paint);

    void r();

    void s(float f, long j, Paint paint);

    void t();

    void u(float f, float f2, float f3, float f4, float f5, float f6, Paint paint);
}
