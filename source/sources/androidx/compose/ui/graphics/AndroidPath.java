package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.ui.geometry.Rect;
import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPath implements Path {
    public final android.graphics.Path a;
    public RectF b;
    public float[] c;
    public android.graphics.Matrix d;

    public AndroidPath(android.graphics.Path path) {
        this.a = path;
    }

    public final void e(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.cubicTo(f, f2, f3, f4, f5, f6);
    }

    public final Rect f() {
        if (this.b == null) {
            this.b = new RectF();
        }
        RectF rectF = this.b;
        rectF.getClass();
        this.a.computeBounds(rectF, true);
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final void g(float f, float f2) {
        this.a.lineTo(f, f2);
    }

    public final boolean h(Path path, Path path2, int i) {
        Path.Op op;
        if (i == 0) {
            op = Path.Op.DIFFERENCE;
        } else if (i == 1) {
            op = Path.Op.INTERSECT;
        } else if (i == 4) {
            op = Path.Op.REVERSE_DIFFERENCE;
        } else if (i == 2) {
            op = Path.Op.UNION;
        } else {
            op = Path.Op.XOR;
        }
        if (path instanceof AndroidPath) {
            android.graphics.Path path3 = ((AndroidPath) path).a;
            if (path2 instanceof AndroidPath) {
                return this.a.op(path3, ((AndroidPath) path2).a, op);
            }
            fe.t("Unable to obtain android.graphics.Path");
            return false;
        }
        fe.t("Unable to obtain android.graphics.Path");
        return false;
    }

    public final void i() {
        this.a.reset();
    }

    public final void j(long j) {
        android.graphics.Matrix matrix = this.d;
        if (matrix == null) {
            this.d = new android.graphics.Matrix();
        } else {
            matrix.reset();
        }
        android.graphics.Matrix matrix2 = this.d;
        matrix2.getClass();
        matrix2.setTranslate(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        android.graphics.Matrix matrix3 = this.d;
        matrix3.getClass();
        this.a.transform(matrix3);
    }
}
