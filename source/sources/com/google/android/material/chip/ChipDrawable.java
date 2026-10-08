package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ChipDrawable extends MaterialShapeDrawable implements Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {
    public static final int[] O0 = {R.attr.state_enabled};
    public static final ShapeDrawable P0 = new ShapeDrawable(new OvalShape());
    public boolean A0;
    public int B0;
    public int C0;
    public ColorFilter D0;
    public PorterDuffColorFilter E0;
    public ColorStateList F0;
    public ColorStateList G;
    public PorterDuff.Mode G0;
    public ColorStateList H;
    public int[] H0;
    public float I;
    public ColorStateList I0;
    public float J;
    public WeakReference J0;
    public ColorStateList K;
    public TextUtils.TruncateAt K0;
    public float L;
    public boolean L0;
    public ColorStateList M;
    public int M0;
    public CharSequence N;
    public boolean N0;
    public boolean O;
    public Drawable P;
    public ColorStateList Q;
    public float R;
    public boolean S;
    public boolean T;
    public Drawable U;
    public RippleDrawable V;
    public ColorStateList W;
    public float X;
    public SpannableStringBuilder Y;
    public boolean Z;
    public boolean a0;
    public Drawable b0;
    public ColorStateList c0;
    public MotionSpec d0;
    public MotionSpec e0;
    public float f0;
    public float g0;
    public float h0;
    public float i0;
    public float j0;
    public float k0;
    public float l0;
    public float m0;
    public final Context n0;
    public final Paint o0;
    public final Paint.FontMetrics p0;
    public final RectF q0;
    public final PointF r0;
    public final Path s0;
    public final TextDrawableHelper t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public int y0;
    public int z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Delegate {
    }

    public ChipDrawable(Context context, AttributeSet attributeSet) {
        super(ShapeAppearanceModel.a(context, attributeSet, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action).a());
        this.J = -1.0f;
        this.o0 = new Paint(1);
        this.p0 = new Paint.FontMetrics();
        this.q0 = new RectF();
        this.r0 = new PointF();
        this.s0 = new Path();
        this.C0 = 255;
        this.G0 = PorterDuff.Mode.SRC_IN;
        this.J0 = new WeakReference(null);
        o(context);
        this.n0 = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.t0 = textDrawableHelper;
        this.N = "";
        textDrawableHelper.a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = O0;
        setState(iArr);
        if (!Arrays.equals(this.H0, iArr)) {
            this.H0 = iArr;
            if (f0()) {
                H(getState(), iArr);
            }
        }
        this.L0 = true;
        P0.setTint(-1);
    }

    public static boolean E(ColorStateList colorStateList) {
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public static boolean F(Drawable drawable) {
        if (drawable != null && drawable.isStateful()) {
            return true;
        }
        return false;
    }

    public static void g0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public final void A(Rect rect, RectF rectF) {
        Drawable drawable;
        Drawable drawable2;
        rectF.setEmpty();
        if (!e0() && !d0()) {
            return;
        }
        float f = this.f0 + this.g0;
        if (this.A0) {
            drawable = this.b0;
        } else {
            drawable = this.P;
        }
        float f2 = this.R;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        if (getLayoutDirection() == 0) {
            float f3 = rect.left + f;
            rectF.left = f3;
            rectF.right = f3 + f2;
        } else {
            float f4 = rect.right - f;
            rectF.right = f4;
            rectF.left = f4 - f2;
        }
        if (this.A0) {
            drawable2 = this.b0;
        } else {
            drawable2 = this.P;
        }
        float f5 = this.R;
        if (f5 <= 0.0f && drawable2 != null) {
            f5 = (float) Math.ceil(TypedValue.applyDimension(1, 24.0f, this.n0.getResources().getDisplayMetrics()));
            if (drawable2.getIntrinsicHeight() <= f5) {
                f5 = drawable2.getIntrinsicHeight();
            }
        }
        float exactCenterY = rect.exactCenterY() - (f5 / 2.0f);
        rectF.top = exactCenterY;
        rectF.bottom = exactCenterY + f5;
    }

    public final float B() {
        Drawable drawable;
        if (!e0() && !d0()) {
            return 0.0f;
        }
        float f = this.g0;
        if (this.A0) {
            drawable = this.b0;
        } else {
            drawable = this.P;
        }
        float f2 = this.R;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        return f2 + f + this.h0;
    }

    public final float C() {
        if (f0()) {
            return this.k0 + this.X + this.l0;
        }
        return 0.0f;
    }

    public final float D() {
        if (this.N0) {
            return l();
        }
        return this.J;
    }

    public final void G() {
        Delegate delegate = (Delegate) this.J0.get();
        if (delegate != null) {
            Chip chip = (Chip) delegate;
            chip.c(chip.y);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean H(int[] iArr, int[] iArr2) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        TextAppearance textAppearance;
        int i5;
        int[] state;
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        int i6;
        PorterDuffColorFilter porterDuffColorFilter;
        ColorStateList colorStateList2;
        boolean z5;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList3 = this.G;
        if (colorStateList3 != null) {
            i = colorStateList3.getColorForState(iArr, this.u0);
        } else {
            i = 0;
        }
        int c = c(i);
        boolean z6 = true;
        if (this.u0 != c) {
            this.u0 = c;
            onStateChange = true;
        }
        ColorStateList colorStateList4 = this.H;
        if (colorStateList4 != null) {
            i2 = colorStateList4.getColorForState(iArr, this.v0);
        } else {
            i2 = 0;
        }
        int c2 = c(i2);
        if (this.v0 != c2) {
            this.v0 = c2;
            onStateChange = true;
        }
        int b = ColorUtils.b(c2, c);
        if (this.w0 != b) {
            z = true;
        } else {
            z = false;
        }
        if (j() == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z | z2) {
            this.w0 = b;
            r(ColorStateList.valueOf(b));
            onStateChange = true;
        }
        ColorStateList colorStateList5 = this.K;
        if (colorStateList5 != null) {
            i3 = colorStateList5.getColorForState(iArr, this.x0);
        } else {
            i3 = 0;
        }
        if (this.x0 != i3) {
            this.x0 = i3;
            onStateChange = true;
        }
        if (this.I0 != null) {
            boolean z7 = false;
            boolean z8 = false;
            for (int i7 : iArr) {
                if (i7 == 16842910) {
                    z7 = true;
                } else if (i7 == 16842908 || i7 == 16842919 || i7 == 16843623) {
                    z8 = true;
                }
            }
            if (z7 && z8) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                i4 = this.I0.getColorForState(iArr, this.y0);
                if (this.y0 != i4) {
                    this.y0 = i4;
                }
                textAppearance = this.t0.f;
                if (textAppearance == null && (colorStateList2 = textAppearance.a) != null) {
                    i5 = colorStateList2.getColorForState(iArr, this.z0);
                } else {
                    i5 = 0;
                }
                if (this.z0 != i5) {
                    this.z0 = i5;
                    onStateChange = true;
                }
                state = getState();
                if (state != null) {
                    int length = state.length;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= length) {
                            break;
                        }
                        if (state[i8] == 16842912) {
                            if (this.Z) {
                                z3 = true;
                            }
                        } else {
                            i8++;
                        }
                    }
                }
                z3 = false;
                if (this.A0 == z3 && this.b0 != null) {
                    float B = B();
                    this.A0 = z3;
                    if (B != B()) {
                        onStateChange = true;
                        z4 = true;
                    } else {
                        z4 = false;
                        onStateChange = true;
                    }
                } else {
                    z4 = false;
                }
                colorStateList = this.F0;
                if (colorStateList == null) {
                    i6 = colorStateList.getColorForState(iArr, this.B0);
                } else {
                    i6 = 0;
                }
                if (this.B0 == i6) {
                    this.B0 = i6;
                    ColorStateList colorStateList6 = this.F0;
                    PorterDuff.Mode mode = this.G0;
                    if (colorStateList6 != null && mode != null) {
                        porterDuffColorFilter = new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
                    } else {
                        porterDuffColorFilter = null;
                    }
                    this.E0 = porterDuffColorFilter;
                } else {
                    z6 = onStateChange;
                }
                if (F(this.P)) {
                    z6 |= this.P.setState(iArr);
                }
                if (F(this.b0)) {
                    z6 |= this.b0.setState(iArr);
                }
                if (F(this.U)) {
                    int[] iArr3 = new int[iArr.length + iArr2.length];
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                    System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
                    z6 |= this.U.setState(iArr3);
                }
                if (F(this.V)) {
                    z6 |= this.V.setState(iArr2);
                }
                if (z6) {
                    invalidateSelf();
                }
                if (z4) {
                    G();
                }
                return z6;
            }
        }
        i4 = 0;
        if (this.y0 != i4) {
        }
        textAppearance = this.t0.f;
        if (textAppearance == null) {
        }
        i5 = 0;
        if (this.z0 != i5) {
        }
        state = getState();
        if (state != null) {
        }
        z3 = false;
        if (this.A0 == z3) {
        }
        z4 = false;
        colorStateList = this.F0;
        if (colorStateList == null) {
        }
        if (this.B0 == i6) {
        }
        if (F(this.P)) {
        }
        if (F(this.b0)) {
        }
        if (F(this.U)) {
        }
        if (F(this.V)) {
        }
        if (z6) {
        }
        if (z4) {
        }
        return z6;
    }

    public final void I(boolean z) {
        if (this.Z != z) {
            this.Z = z;
            float B = B();
            if (!z && this.A0) {
                this.A0 = false;
            }
            float B2 = B();
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void J(Drawable drawable) {
        if (this.b0 != drawable) {
            float B = B();
            this.b0 = drawable;
            float B2 = B();
            g0(this.b0);
            z(this.b0);
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void K(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.c0 != colorStateList) {
            this.c0 = colorStateList;
            if (this.a0 && (drawable = this.b0) != null && this.Z) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void L(boolean z) {
        if (this.a0 != z) {
            boolean d0 = d0();
            this.a0 = z;
            boolean d02 = d0();
            if (d0 != d02) {
                Drawable drawable = this.b0;
                if (d02) {
                    z(drawable);
                } else {
                    g0(drawable);
                }
                invalidateSelf();
                G();
            }
        }
    }

    public final void M(float f) {
        if (this.J != f) {
            this.J = f;
            ShapeAppearanceModel.Builder d = k().d();
            d.e = new AbsoluteCornerSize(f);
            d.f = new AbsoluteCornerSize(f);
            d.g = new AbsoluteCornerSize(f);
            d.h = new AbsoluteCornerSize(f);
            setShapeAppearanceModel(d.a());
        }
    }

    public final void N(Drawable drawable) {
        Drawable drawable2 = this.P;
        Drawable drawable3 = null;
        if (drawable2 == null) {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float B = B();
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.P = drawable3;
            float B2 = B();
            g0(drawable2);
            if (e0()) {
                z(this.P);
            }
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void O(float f) {
        if (this.R != f) {
            float B = B();
            this.R = f;
            float B2 = B();
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void P(ColorStateList colorStateList) {
        this.S = true;
        if (this.Q != colorStateList) {
            this.Q = colorStateList;
            if (e0()) {
                this.P.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void Q(boolean z) {
        if (this.O != z) {
            boolean e0 = e0();
            this.O = z;
            boolean e02 = e0();
            if (e0 != e02) {
                Drawable drawable = this.P;
                if (e02) {
                    z(drawable);
                } else {
                    g0(drawable);
                }
                invalidateSelf();
                G();
            }
        }
    }

    public final void R(ColorStateList colorStateList) {
        if (this.K != colorStateList) {
            this.K = colorStateList;
            if (this.N0) {
                u(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void S(float f) {
        if (this.L != f) {
            this.L = f;
            this.o0.setStrokeWidth(f);
            if (this.N0) {
                v(f);
            }
            invalidateSelf();
        }
    }

    public final void T(Drawable drawable) {
        Drawable drawable2 = this.U;
        Drawable drawable3 = null;
        if (drawable2 == null) {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float C = C();
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.U = drawable3;
            ColorStateList colorStateList = this.M;
            if (colorStateList == null) {
                colorStateList = ColorStateList.valueOf(0);
            }
            this.V = new RippleDrawable(colorStateList, this.U, P0);
            float C2 = C();
            g0(drawable2);
            if (f0()) {
                z(this.U);
            }
            invalidateSelf();
            if (C != C2) {
                G();
            }
        }
    }

    public final void U(float f) {
        if (this.l0 != f) {
            this.l0 = f;
            invalidateSelf();
            if (f0()) {
                G();
            }
        }
    }

    public final void V(float f) {
        if (this.X != f) {
            this.X = f;
            invalidateSelf();
            if (f0()) {
                G();
            }
        }
    }

    public final void W(float f) {
        if (this.k0 != f) {
            this.k0 = f;
            invalidateSelf();
            if (f0()) {
                G();
            }
        }
    }

    public final void X(ColorStateList colorStateList) {
        if (this.W != colorStateList) {
            this.W = colorStateList;
            if (f0()) {
                this.U.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void Y(boolean z) {
        if (this.T != z) {
            boolean f0 = f0();
            this.T = z;
            boolean f02 = f0();
            if (f0 != f02) {
                Drawable drawable = this.U;
                if (f02) {
                    z(drawable);
                } else {
                    g0(drawable);
                }
                invalidateSelf();
                G();
            }
        }
    }

    public final void Z(float f) {
        if (this.h0 != f) {
            float B = B();
            this.h0 = f;
            float B2 = B();
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void a0(float f) {
        if (this.g0 != f) {
            float B = B();
            this.g0 = f;
            float B2 = B();
            invalidateSelf();
            if (B != B2) {
                G();
            }
        }
    }

    public final void b0(ColorStateList colorStateList) {
        if (this.M != colorStateList) {
            this.M = colorStateList;
            this.I0 = null;
            onStateChange(getState());
        }
    }

    public final void c0(TextAppearance textAppearance) {
        TextDrawableHelper textDrawableHelper = this.t0;
        TextAppearanceFontCallback textAppearanceFontCallback = textDrawableHelper.b;
        TextPaint textPaint = textDrawableHelper.a;
        if (textDrawableHelper.f != textAppearance) {
            textDrawableHelper.f = textAppearance;
            if (textAppearance != null) {
                Context context = this.n0;
                textAppearance.f(context, textPaint, textAppearanceFontCallback);
                TextDrawableHelper.TextDrawableDelegate textDrawableDelegate = (TextDrawableHelper.TextDrawableDelegate) textDrawableHelper.e.get();
                if (textDrawableDelegate != null) {
                    textPaint.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.e(context, textPaint, textAppearanceFontCallback);
                textDrawableHelper.d = true;
            }
            TextDrawableHelper.TextDrawableDelegate textDrawableDelegate2 = (TextDrawableHelper.TextDrawableDelegate) textDrawableHelper.e.get();
            if (textDrawableDelegate2 != null) {
                ChipDrawable chipDrawable = (ChipDrawable) textDrawableDelegate2;
                chipDrawable.G();
                chipDrawable.invalidateSelf();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    public final boolean d0() {
        if (this.a0 && this.b0 != null && this.A0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        Canvas canvas2;
        int i2;
        float f;
        boolean z;
        int i3;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && (i = this.C0) != 0) {
            if (i < 255) {
                canvas2 = canvas;
                i2 = canvas2.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i);
            } else {
                canvas2 = canvas;
                i2 = 0;
            }
            boolean z2 = this.N0;
            Paint paint = this.o0;
            RectF rectF = this.q0;
            if (!z2) {
                paint.setColor(this.u0);
                paint.setStyle(Paint.Style.FILL);
                rectF.set(bounds);
                canvas2.drawRoundRect(rectF, D(), D(), paint);
            }
            if (!this.N0) {
                paint.setColor(this.v0);
                paint.setStyle(Paint.Style.FILL);
                ColorFilter colorFilter = this.D0;
                if (colorFilter == null) {
                    colorFilter = this.E0;
                }
                paint.setColorFilter(colorFilter);
                rectF.set(bounds);
                canvas2.drawRoundRect(rectF, D(), D(), paint);
            }
            if (this.N0) {
                super.draw(canvas);
            }
            float f2 = 0.0f;
            if (this.L > 0.0f && !this.N0) {
                paint.setColor(this.x0);
                paint.setStyle(Paint.Style.STROKE);
                if (!this.N0) {
                    ColorFilter colorFilter2 = this.D0;
                    if (colorFilter2 == null) {
                        colorFilter2 = this.E0;
                    }
                    paint.setColorFilter(colorFilter2);
                }
                float f3 = bounds.left;
                float f4 = this.L / 2.0f;
                rectF.set(f3 + f4, bounds.top + f4, bounds.right - f4, bounds.bottom - f4);
                float f5 = this.J - (this.L / 2.0f);
                canvas2.drawRoundRect(rectF, f5, f5, paint);
            }
            paint.setColor(this.y0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            if (!this.N0) {
                canvas2.drawRoundRect(rectF, D(), D(), paint);
            } else {
                RectF rectF2 = new RectF(bounds);
                Path path = this.s0;
                b(rectF2, path);
                e(canvas2, paint, path, i());
            }
            if (e0()) {
                A(bounds, rectF);
                float f6 = rectF.left;
                float f7 = rectF.top;
                canvas2.translate(f6, f7);
                this.P.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.P.draw(canvas2);
                canvas2.translate(-f6, -f7);
            }
            if (d0()) {
                A(bounds, rectF);
                float f8 = rectF.left;
                float f9 = rectF.top;
                canvas2.translate(f8, f9);
                this.b0.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.b0.draw(canvas2);
                canvas2.translate(-f8, -f9);
            }
            if (this.L0 && this.N != null) {
                PointF pointF = this.r0;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                CharSequence charSequence = this.N;
                TextDrawableHelper textDrawableHelper = this.t0;
                if (charSequence != null) {
                    float B = B() + this.f0 + this.i0;
                    if (getLayoutDirection() == 0) {
                        pointF.x = bounds.left + B;
                    } else {
                        pointF.x = bounds.right - B;
                        align = Paint.Align.RIGHT;
                    }
                    float centerY = bounds.centerY();
                    TextPaint textPaint = textDrawableHelper.a;
                    Paint.FontMetrics fontMetrics = this.p0;
                    textPaint.getFontMetrics(fontMetrics);
                    pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
                }
                rectF.setEmpty();
                if (this.N != null) {
                    float B2 = B() + this.f0 + this.i0;
                    float C = C() + this.m0 + this.j0;
                    int layoutDirection = getLayoutDirection();
                    int i4 = bounds.left;
                    if (layoutDirection == 0) {
                        rectF.left = i4 + B2;
                        rectF.right = bounds.right - C;
                    } else {
                        rectF.left = i4 + C;
                        rectF.right = bounds.right - B2;
                    }
                    rectF.top = bounds.top;
                    rectF.bottom = bounds.bottom;
                }
                TextAppearance textAppearance = textDrawableHelper.f;
                TextPaint textPaint2 = textDrawableHelper.a;
                if (textAppearance != null) {
                    textPaint2.drawableState = getState();
                    textDrawableHelper.f.e(this.n0, textPaint2, textDrawableHelper.b);
                }
                textPaint2.setTextAlign(align);
                String charSequence2 = this.N.toString();
                if (!textDrawableHelper.d) {
                    f = textDrawableHelper.c;
                } else {
                    if (charSequence2 != null) {
                        f2 = textPaint2.measureText((CharSequence) charSequence2, 0, charSequence2.length());
                    }
                    textDrawableHelper.c = f2;
                    textDrawableHelper.d = false;
                    f = f2;
                }
                if (Math.round(f) > Math.round(rectF.width())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    int save = canvas2.save();
                    canvas2.clipRect(rectF);
                    i3 = save;
                } else {
                    i3 = 0;
                }
                CharSequence charSequence3 = this.N;
                if (z && this.K0 != null) {
                    charSequence3 = TextUtils.ellipsize(charSequence3, textPaint2, rectF.width(), this.K0);
                }
                canvas2.drawText(charSequence3, 0, charSequence3.length(), pointF.x, pointF.y, textPaint2);
                if (z) {
                    canvas2.restoreToCount(i3);
                }
            }
            if (f0()) {
                rectF.setEmpty();
                if (f0()) {
                    float f10 = this.m0 + this.l0;
                    if (getLayoutDirection() == 0) {
                        float f11 = bounds.right - f10;
                        rectF.right = f11;
                        rectF.left = f11 - this.X;
                    } else {
                        float f12 = bounds.left + f10;
                        rectF.left = f12;
                        rectF.right = f12 + this.X;
                    }
                    float exactCenterY = bounds.exactCenterY();
                    float f13 = this.X;
                    float f14 = exactCenterY - (f13 / 2.0f);
                    rectF.top = f14;
                    rectF.bottom = f14 + f13;
                }
                float f15 = rectF.left;
                float f16 = rectF.top;
                canvas2.translate(f15, f16);
                this.U.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.V.setBounds(this.U.getBounds());
                this.V.jumpToCurrentState();
                this.V.draw(canvas2);
                canvas2.translate(-f15, -f16);
            }
            if (this.C0 < 255) {
                canvas2.restoreToCount(i2);
            }
        }
    }

    public final boolean e0() {
        if (this.O && this.P != null) {
            return true;
        }
        return false;
    }

    public final boolean f0() {
        if (this.T && this.U != null) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.C0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.D0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.I;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float measureText;
        float B = B() + this.f0 + this.i0;
        String charSequence = this.N.toString();
        TextDrawableHelper textDrawableHelper = this.t0;
        if (!textDrawableHelper.d) {
            measureText = textDrawableHelper.c;
        } else {
            if (charSequence == null) {
                measureText = 0.0f;
            } else {
                measureText = textDrawableHelper.a.measureText((CharSequence) charSequence, 0, charSequence.length());
            }
            textDrawableHelper.c = measureText;
            textDrawableHelper.d = false;
        }
        return Math.min(Math.round(C() + measureText + B + this.j0 + this.m0), this.M0);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.N0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.J);
            outline2 = outline;
        } else {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.I, this.J);
        }
        outline2.setAlpha(this.C0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (!E(this.G) && !E(this.H) && !E(this.K)) {
            TextAppearance textAppearance = this.t0.f;
            if (textAppearance == null || (colorStateList = textAppearance.a) == null || !colorStateList.isStateful()) {
                if ((!this.a0 || this.b0 == null || !this.Z) && !F(this.P) && !F(this.b0) && !E(this.F0)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (e0()) {
            onLayoutDirectionChanged |= this.P.setLayoutDirection(i);
        }
        if (d0()) {
            onLayoutDirectionChanged |= this.b0.setLayoutDirection(i);
        }
        if (f0()) {
            onLayoutDirectionChanged |= this.U.setLayoutDirection(i);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (e0()) {
            onLevelChange |= this.P.setLevel(i);
        }
        if (d0()) {
            onLevelChange |= this.b0.setLevel(i);
        }
        if (f0()) {
            onLevelChange |= this.U.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final boolean onStateChange(int[] iArr) {
        if (this.N0) {
            super.onStateChange(iArr);
        }
        return H(iArr, this.H0);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.C0 != i) {
            this.C0 = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.D0 != colorFilter) {
            this.D0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.F0 != colorStateList) {
            this.F0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (this.G0 != mode) {
            this.G0 = mode;
            ColorStateList colorStateList = this.F0;
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            } else {
                porterDuffColorFilter = null;
            }
            this.E0 = porterDuffColorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (e0()) {
            visible |= this.P.setVisible(z, z2);
        }
        if (d0()) {
            visible |= this.b0.setVisible(z, z2);
        }
        if (f0()) {
            visible |= this.U.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void z(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.U) {
                if (drawable.isStateful()) {
                    drawable.setState(this.H0);
                }
                drawable.setTintList(this.W);
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
            Drawable drawable2 = this.P;
            if (drawable == drawable2 && this.S) {
                drawable2.setTintList(this.Q);
            }
        }
    }
}
