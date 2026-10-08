package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPaint implements Paint {
    public final android.graphics.Paint a;
    public int b = 3;
    public Shader c;
    public ColorFilter d;

    public AndroidPaint(android.graphics.Paint paint) {
        this.a = paint;
    }

    public final long a() {
        int i = Build.VERSION.SDK_INT;
        android.graphics.Paint paint = this.a;
        if (i >= 29) {
            return WrapperVerificationHelperMethods.a.a(paint);
        }
        return ColorKt.b(paint.getColor());
    }

    public final int b() {
        int i;
        Paint.Cap strokeCap = this.a.getStrokeCap();
        if (strokeCap == null) {
            i = -1;
        } else {
            i = AndroidPaint_androidKt.WhenMappings.a[strokeCap.ordinal()];
        }
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            return 0;
        }
        return 0;
    }

    public final int c() {
        int i;
        Paint.Join strokeJoin = this.a.getStrokeJoin();
        if (strokeJoin == null) {
            i = -1;
        } else {
            i = AndroidPaint_androidKt.WhenMappings.b[strokeJoin.ordinal()];
        }
        if (i != 1) {
            if (i == 2) {
                return 2;
            }
            if (i == 3) {
                return 1;
            }
            return 0;
        }
        return 0;
    }

    public final void d(float f) {
        this.a.setAlpha((int) Math.rint(f * 255.0f));
    }

    public final void e(int i) {
        if (this.b == i) {
            return;
        }
        this.b = i;
        int i2 = Build.VERSION.SDK_INT;
        android.graphics.Paint paint = this.a;
        if (i2 >= 29) {
            WrapperVerificationHelperMethods.a.b(paint, i);
        } else {
            paint.setXfermode(new PorterDuffXfermode(AndroidBlendMode_androidKt.b(i)));
        }
    }

    public final void f(long j) {
        int i = Build.VERSION.SDK_INT;
        android.graphics.Paint paint = this.a;
        if (i >= 29) {
            WrapperVerificationHelperMethods.a.c(paint, j);
        } else {
            paint.setColor(ColorKt.f(j));
        }
    }

    public final void g(ColorFilter colorFilter) {
        android.graphics.ColorFilter colorFilter2;
        this.d = colorFilter;
        if (colorFilter != null) {
            colorFilter2 = colorFilter.a;
        } else {
            colorFilter2 = null;
        }
        this.a.setColorFilter(colorFilter2);
    }

    public final void h(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.a.setFilterBitmap(!z);
    }

    public final void i(Shader shader) {
        this.c = shader;
        this.a.setShader(shader);
    }

    public final void j(int i) {
        Paint.Cap cap;
        if (i == 2) {
            cap = Paint.Cap.SQUARE;
        } else if (i == 1) {
            cap = Paint.Cap.ROUND;
        } else if (i == 0) {
            cap = Paint.Cap.BUTT;
        } else {
            cap = Paint.Cap.BUTT;
        }
        this.a.setStrokeCap(cap);
    }

    public final void k(int i) {
        Paint.Join join;
        if (i == 0) {
            join = Paint.Join.MITER;
        } else if (i == 2) {
            join = Paint.Join.BEVEL;
        } else if (i == 1) {
            join = Paint.Join.ROUND;
        } else {
            join = Paint.Join.MITER;
        }
        this.a.setStrokeJoin(join);
    }

    public final void l(float f) {
        this.a.setStrokeWidth(f);
    }

    public final void m(int i) {
        Paint.Style style;
        if (i == 1) {
            style = Paint.Style.STROKE;
        } else {
            style = Paint.Style.FILL;
        }
        this.a.setStyle(style);
    }
}
