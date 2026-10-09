package androidx.compose.ui.text.platform;

import android.graphics.Paint;
import android.graphics.Shader;
import android.text.TextPaint;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import defpackage.k8;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {
    public static final /* synthetic */ int j = 0;
    public AndroidPaint a;
    public TextDecoration b;
    public int c;
    public Shadow d;
    public Color e;
    public Brush f;
    public State g;
    public Size h;
    public DrawStyle i;

    public final Paint a() {
        AndroidPaint androidPaint = this.a;
        if (androidPaint != null) {
            return androidPaint;
        }
        AndroidPaint androidPaint2 = new AndroidPaint(this);
        this.a = androidPaint2;
        return androidPaint2;
    }

    public final void b(int i) {
        if (i == this.c) {
            return;
        }
        ((AndroidPaint) a()).e(i);
        this.c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        if (r1 == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(final Brush brush, final long j2, float f) {
        Shader shader;
        boolean a;
        if (brush == null) {
            this.g = null;
            this.f = null;
            this.h = null;
            setShader(null);
            return;
        }
        if (brush instanceof SolidColor) {
            d(TextDrawStyleKt.a(((SolidColor) brush).a, f));
            return;
        }
        if (brush instanceof ShaderBrush) {
            boolean z = false;
            if (Intrinsics.a(this.f, brush)) {
                Size size = this.h;
                if (size == null) {
                    a = false;
                } else {
                    a = Size.a(size.a, j2);
                }
            }
            if (j2 != 9205357640488583168L) {
                z = true;
            }
            if (z) {
                this.f = brush;
                this.h = new Size(j2);
                this.g = SnapshotStateKt.e(new Function0() { // from class: j2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        int i = AndroidTextPaint.j;
                        return ((ShaderBrush) Brush.this).b(j2);
                    }
                });
            }
            Paint a2 = a();
            State state = this.g;
            if (state != null) {
                shader = (Shader) state.getValue();
            } else {
                shader = null;
            }
            ((AndroidPaint) a2).i(shader);
            this.e = null;
            AndroidTextPaint_androidKt.a(this, f);
            return;
        }
        k8.e();
    }

    public final void d(long j2) {
        boolean c;
        Color color = this.e;
        boolean z = false;
        if (color == null) {
            c = false;
        } else {
            c = Color.c(color.a, j2);
        }
        if (!c) {
            if (j2 != 16) {
                z = true;
            }
            if (z) {
                this.e = new Color(j2);
                setColor(ColorKt.f(j2));
                this.g = null;
                this.f = null;
                this.h = null;
                setShader(null);
            }
        }
    }

    public final void e(DrawStyle drawStyle) {
        if (drawStyle != null && !Intrinsics.a(this.i, drawStyle)) {
            this.i = drawStyle;
            if (drawStyle.equals(Fill.a)) {
                setStyle(Paint.Style.FILL);
                return;
            }
            if (drawStyle instanceof Stroke) {
                ((AndroidPaint) a()).m(1);
                Stroke stroke = (Stroke) drawStyle;
                ((AndroidPaint) a()).l(stroke.a);
                androidx.compose.ui.graphics.Paint a = a();
                ((AndroidPaint) a).a.setStrokeMiter(stroke.b);
                ((AndroidPaint) a()).k(stroke.d);
                ((AndroidPaint) a()).j(stroke.c);
                ((AndroidPaint) a()).a.setPathEffect(null);
                return;
            }
            k8.e();
        }
    }

    public final void f(Shadow shadow) {
        if (shadow != null && !Intrinsics.a(this.d, shadow)) {
            this.d = shadow;
            if (shadow.equals(Shadow.d)) {
                clearShadowLayer();
                return;
            }
            Shadow shadow2 = this.d;
            float f = shadow2.c;
            if (f == 0.0f) {
                f = Float.MIN_VALUE;
            }
            setShadowLayer(f, Float.intBitsToFloat((int) (shadow2.b >> 32)), Float.intBitsToFloat((int) (this.d.b & 4294967295L)), ColorKt.f(this.d.a));
        }
    }

    public final void g(TextDecoration textDecoration) {
        if (textDecoration != null && !Intrinsics.a(this.b, textDecoration)) {
            this.b = textDecoration;
            setUnderlineText(textDecoration.a(TextDecoration.c));
            setStrikeThruText(this.b.a(TextDecoration.d));
        }
    }
}
