package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CollapsingTextHelper {
    public float A;
    public float B;
    public int[] C;
    public boolean D;
    public final TextPaint E;
    public final TextPaint F;
    public TimeInterpolator G;
    public TimeInterpolator H;
    public float I;
    public float J;
    public float K;
    public ColorStateList L;
    public float M;
    public StaticLayout N;
    public CharSequence O;
    public final TextInputLayout a;
    public boolean b;
    public float c;
    public final Rect d;
    public final Rect e;
    public final RectF f;
    public int g = 16;
    public int h = 16;
    public float i = 15.0f;
    public float j = 15.0f;
    public ColorStateList k;
    public ColorStateList l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public Typeface s;
    public Typeface t;
    public Typeface u;
    public CancelableFontCallback v;
    public CharSequence w;
    public CharSequence x;
    public boolean y;
    public Bitmap z;

    public CollapsingTextHelper(TextInputLayout textInputLayout) {
        this.a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.E = textPaint;
        this.F = new TextPaint(textPaint);
        this.e = new Rect();
        this.d = new Rect();
        this.f = new RectF();
    }

    public static int a(float f, int i, int i2) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), (int) ((Color.red(i2) * f) + (Color.red(i) * f2)), (int) ((Color.green(i2) * f) + (Color.green(i) * f2)), (int) ((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float e(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.a(f, f2, f3);
    }

    public final float b() {
        if (this.w == null) {
            return 0.0f;
        }
        float f = this.j;
        TextPaint textPaint = this.F;
        textPaint.setTextSize(f);
        textPaint.setTypeface(this.s);
        textPaint.setLetterSpacing(this.M);
        CharSequence charSequence = this.w;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    /* JADX WARN: Type inference failed for: r7v5, types: [com.google.android.material.internal.StaticLayoutBuilderCompat, java.lang.Object] */
    public final void c(float f) {
        boolean z;
        float f2;
        boolean z2;
        boolean z3;
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        TextDirectionHeuristic textDirectionHeuristic;
        if (this.w != null) {
            float width = this.e.width();
            float width2 = this.d.width();
            if (Math.abs(f - this.j) < 0.001f) {
                f2 = this.j;
                this.A = 1.0f;
                Typeface typeface = this.u;
                Typeface typeface2 = this.s;
                if (typeface != typeface2) {
                    this.u = typeface2;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                float f3 = this.i;
                Typeface typeface3 = this.u;
                Typeface typeface4 = this.t;
                if (typeface3 != typeface4) {
                    this.u = typeface4;
                    z = true;
                } else {
                    z = false;
                }
                if (Math.abs(f - f3) < 0.001f) {
                    this.A = 1.0f;
                } else {
                    this.A = f / this.i;
                }
                float f4 = this.j / this.i;
                if (width2 * f4 > width) {
                    width = Math.min(width / f4, width2);
                } else {
                    width = width2;
                }
                f2 = f3;
                z2 = z;
            }
            if (width > 0.0f) {
                if (this.B == f2 && !this.D && !z2) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                this.B = f2;
                this.D = false;
            }
            if (this.x != null && !z2) {
                return;
            }
            float f5 = this.B;
            TextPaint textPaint = this.E;
            textPaint.setTextSize(f5);
            textPaint.setTypeface(this.u);
            if (this.A != 1.0f) {
                z3 = true;
            } else {
                z3 = false;
            }
            textPaint.setLinearText(z3);
            CharSequence charSequence = this.w;
            Field field = ViewCompat.a;
            if (this.a.getLayoutDirection() == 1) {
                textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.d;
            } else {
                textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.c;
            }
            boolean a = textDirectionHeuristicCompat.a(charSequence, charSequence.length());
            this.y = a;
            CharSequence charSequence2 = this.w;
            int i = (int) width;
            ?? obj = new Object();
            obj.a = charSequence2;
            obj.b = charSequence2.length();
            obj.c = Layout.Alignment.ALIGN_NORMAL;
            obj.d = Integer.MAX_VALUE;
            obj.e = 1.0f;
            obj.f = 1;
            obj.g = true;
            obj.i = null;
            obj.i = TextUtils.TruncateAt.END;
            obj.h = a;
            obj.c = Layout.Alignment.ALIGN_NORMAL;
            obj.g = false;
            obj.d = 1;
            obj.e = 1.0f;
            obj.f = 1;
            if (obj.a == null) {
                obj.a = "";
            }
            int max = Math.max(0, i);
            CharSequence charSequence3 = obj.a;
            if (obj.d == 1) {
                charSequence3 = TextUtils.ellipsize(charSequence3, textPaint, max, obj.i);
            }
            int min = Math.min(charSequence3.length(), obj.b);
            obj.b = min;
            if (obj.h && obj.d == 1) {
                obj.c = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence3, 0, min, textPaint, max);
            obtain.setAlignment(obj.c);
            obtain.setIncludePad(obj.g);
            if (obj.h) {
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            }
            obtain.setTextDirection(textDirectionHeuristic);
            TextUtils.TruncateAt truncateAt = obj.i;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(obj.d);
            float f6 = obj.e;
            if (f6 != 1.0f) {
                obtain.setLineSpacing(0.0f, f6);
            }
            if (obj.d > 1) {
                obtain.setHyphenationFrequency(obj.f);
            }
            StaticLayout build = obtain.build();
            build.getClass();
            this.N = build;
            this.x = build.getText();
        }
    }

    public final int d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.C;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    public final void f() {
        boolean z;
        Rect rect = this.e;
        if (rect.width() > 0 && rect.height() > 0) {
            Rect rect2 = this.d;
            if (rect2.width() > 0 && rect2.height() > 0) {
                z = true;
                this.b = z;
            }
        }
        z = false;
        this.b = z;
    }

    public final void g() {
        float f;
        float f2;
        float f3;
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.a;
        if (textInputLayout.getHeight() > 0 && textInputLayout.getWidth() > 0) {
            float f4 = this.B;
            c(this.j);
            CharSequence charSequence = this.x;
            TextPaint textPaint = this.E;
            if (charSequence != null && (staticLayout = this.N) != null) {
                this.O = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
            }
            CharSequence charSequence2 = this.O;
            if (charSequence2 != null) {
                f = textPaint.measureText(charSequence2, 0, charSequence2.length());
            } else {
                f = 0.0f;
            }
            int absoluteGravity = Gravity.getAbsoluteGravity(this.h, this.y ? 1 : 0);
            int i = absoluteGravity & 112;
            Rect rect = this.e;
            if (i != 48) {
                if (i != 80) {
                    this.n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
                } else {
                    this.n = textPaint.ascent() + rect.bottom;
                }
            } else {
                this.n = rect.top;
            }
            int i2 = absoluteGravity & 8388615;
            if (i2 != 1) {
                if (i2 != 5) {
                    this.p = rect.left;
                } else {
                    this.p = rect.right - f;
                }
            } else {
                this.p = rect.centerX() - (f / 2.0f);
            }
            c(this.i);
            StaticLayout staticLayout2 = this.N;
            if (staticLayout2 != null) {
                f2 = staticLayout2.getHeight();
            } else {
                f2 = 0.0f;
            }
            CharSequence charSequence3 = this.x;
            if (charSequence3 != null) {
                f3 = textPaint.measureText(charSequence3, 0, charSequence3.length());
            } else {
                f3 = 0.0f;
            }
            StaticLayout staticLayout3 = this.N;
            if (staticLayout3 != null) {
                staticLayout3.getLineLeft(0);
            }
            int absoluteGravity2 = Gravity.getAbsoluteGravity(this.g, this.y ? 1 : 0);
            int i3 = absoluteGravity2 & 112;
            Rect rect2 = this.d;
            if (i3 != 48) {
                if (i3 != 80) {
                    this.m = rect2.centerY() - (f2 / 2.0f);
                } else {
                    this.m = textPaint.descent() + (rect2.bottom - f2);
                }
            } else {
                this.m = rect2.top;
            }
            int i4 = absoluteGravity2 & 8388615;
            if (i4 != 1) {
                if (i4 != 5) {
                    this.o = rect2.left;
                } else {
                    this.o = rect2.right - f3;
                }
            } else {
                this.o = rect2.centerX() - (f3 / 2.0f);
            }
            Bitmap bitmap = this.z;
            if (bitmap != null) {
                bitmap.recycle();
                this.z = null;
            }
            k(f4);
            float f5 = this.c;
            float e = e(rect2.left, rect.left, f5, this.G);
            RectF rectF = this.f;
            rectF.left = e;
            rectF.top = e(this.m, this.n, f5, this.G);
            rectF.right = e(rect2.right, rect.right, f5, this.G);
            rectF.bottom = e(rect2.bottom, rect.bottom, f5, this.G);
            this.q = e(this.o, this.p, f5, this.G);
            this.r = e(this.m, this.n, f5, this.G);
            k(e(this.i, this.j, f5, this.H));
            FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.b;
            e(0.0f, 1.0f, 1.0f - f5, fastOutSlowInInterpolator);
            Field field = ViewCompat.a;
            textInputLayout.postInvalidateOnAnimation();
            e(1.0f, 0.0f, f5, fastOutSlowInInterpolator);
            textInputLayout.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.l;
            ColorStateList colorStateList2 = this.k;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(f5, d(colorStateList2), d(this.l)));
            } else {
                textPaint.setColor(d(colorStateList));
            }
            float f6 = this.M;
            if (f6 != 0.0f) {
                textPaint.setLetterSpacing(e(0.0f, f6, f5, fastOutSlowInInterpolator));
            } else {
                textPaint.setLetterSpacing(f6);
            }
            textPaint.setShadowLayer(AnimationUtils.a(0.0f, this.I, f5), AnimationUtils.a(0.0f, this.J, f5), AnimationUtils.a(0.0f, this.K, f5), a(f5, 0, d(this.L)));
            textInputLayout.postInvalidateOnAnimation();
        }
    }

    public final void h(int i) {
        TextInputLayout textInputLayout = this.a;
        TextAppearance textAppearance = new TextAppearance(textInputLayout.getContext(), i);
        ColorStateList colorStateList = textAppearance.a;
        if (colorStateList != null) {
            this.l = colorStateList;
        }
        float f = textAppearance.k;
        if (f != 0.0f) {
            this.j = f;
        }
        ColorStateList colorStateList2 = textAppearance.b;
        if (colorStateList2 != null) {
            this.L = colorStateList2;
        }
        this.J = textAppearance.f;
        this.K = textAppearance.g;
        this.I = textAppearance.h;
        this.M = textAppearance.j;
        CancelableFontCallback cancelableFontCallback = this.v;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.c = true;
        }
        CancelableFontCallback.ApplyFont applyFont = new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public final void a(Typeface typeface) {
                CollapsingTextHelper collapsingTextHelper = CollapsingTextHelper.this;
                CancelableFontCallback cancelableFontCallback2 = collapsingTextHelper.v;
                if (cancelableFontCallback2 != null) {
                    cancelableFontCallback2.c = true;
                }
                if (collapsingTextHelper.s != typeface) {
                    collapsingTextHelper.s = typeface;
                    collapsingTextHelper.g();
                }
            }
        };
        textAppearance.a();
        this.v = new CancelableFontCallback(applyFont, textAppearance.n);
        textAppearance.c(textInputLayout.getContext(), this.v);
        g();
    }

    public final void i(ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            g();
        }
    }

    public final void j(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.c) {
            this.c = f;
            float f2 = this.d.left;
            Rect rect = this.e;
            float e = e(f2, rect.left, f, this.G);
            RectF rectF = this.f;
            rectF.left = e;
            rectF.top = e(this.m, this.n, f, this.G);
            rectF.right = e(r1.right, rect.right, f, this.G);
            rectF.bottom = e(r1.bottom, rect.bottom, f, this.G);
            this.q = e(this.o, this.p, f, this.G);
            this.r = e(this.m, this.n, f, this.G);
            k(e(this.i, this.j, f, this.H));
            FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.b;
            e(0.0f, 1.0f, 1.0f - f, fastOutSlowInInterpolator);
            Field field = ViewCompat.a;
            TextInputLayout textInputLayout = this.a;
            textInputLayout.postInvalidateOnAnimation();
            e(1.0f, 0.0f, f, fastOutSlowInInterpolator);
            textInputLayout.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.l;
            ColorStateList colorStateList2 = this.k;
            TextPaint textPaint = this.E;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(f, d(colorStateList2), d(this.l)));
            } else {
                textPaint.setColor(d(colorStateList));
            }
            float f3 = this.M;
            if (f3 != 0.0f) {
                textPaint.setLetterSpacing(e(0.0f, f3, f, fastOutSlowInInterpolator));
            } else {
                textPaint.setLetterSpacing(f3);
            }
            textPaint.setShadowLayer(AnimationUtils.a(0.0f, this.I, f), AnimationUtils.a(0.0f, this.J, f), AnimationUtils.a(0.0f, this.K, f), a(f, 0, d(this.L)));
            textInputLayout.postInvalidateOnAnimation();
        }
    }

    public final void k(float f) {
        c(f);
        Field field = ViewCompat.a;
        this.a.postInvalidateOnAnimation();
    }
}
