package com.google.android.material.shape;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import defpackage.u2;
import java.util.BitSet;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MaterialShapeDrawable extends Drawable implements Shapeable {
    public static final Paint F = new Paint(1);
    public final ShapeAppearancePathProvider A;
    public PorterDuffColorFilter B;
    public PorterDuffColorFilter C;
    public final RectF D;
    public final boolean E;
    public MaterialShapeDrawableState j;
    public final ShapePath.ShadowCompatOperation[] k;
    public final ShapePath.ShadowCompatOperation[] l;
    public final BitSet m;
    public boolean n;
    public final Matrix o;
    public final Path p;
    public final Path q;
    public final RectF r;
    public final RectF s;
    public final Region t;
    public final Region u;
    public ShapeAppearanceModel v;
    public final Paint w;
    public final Paint x;
    public final ShadowRenderer y;
    public final ShapeAppearancePathProvider.PathListener z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.shape.MaterialShapeDrawable$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ShapeAppearancePathProvider.PathListener {
        public AnonymousClass1() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MaterialShapeDrawableState extends Drawable.ConstantState {
        public ShapeAppearanceModel a;
        public ElevationOverlayProvider b;
        public ColorStateList c;
        public ColorStateList d;
        public ColorStateList e;
        public PorterDuff.Mode f;
        public Rect g;
        public float h;
        public float i;
        public float j;
        public int k;
        public float l;
        public float m;
        public int n;
        public int o;
        public Paint.Style p;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.n = true;
            return materialShapeDrawable;
        }
    }

    public MaterialShapeDrawable(MaterialShapeDrawableState materialShapeDrawableState) {
        ShapeAppearancePathProvider shapeAppearancePathProvider;
        this.k = new ShapePath.ShadowCompatOperation[4];
        this.l = new ShapePath.ShadowCompatOperation[4];
        this.m = new BitSet(8);
        this.o = new Matrix();
        this.p = new Path();
        this.q = new Path();
        this.r = new RectF();
        this.s = new RectF();
        this.t = new Region();
        this.u = new Region();
        Paint paint = new Paint(1);
        this.w = paint;
        Paint paint2 = new Paint(1);
        this.x = paint2;
        this.y = new ShadowRenderer();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            shapeAppearancePathProvider = ShapeAppearancePathProvider.Lazy.a;
        } else {
            shapeAppearancePathProvider = new ShapeAppearancePathProvider();
        }
        this.A = shapeAppearancePathProvider;
        this.D = new RectF();
        this.E = true;
        this.j = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = F;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        x();
        w(getState());
        this.z = new AnonymousClass1();
    }

    public final void a(RectF rectF, Path path) {
        b(rectF, path);
        if (this.j.h != 1.0f) {
            Matrix matrix = this.o;
            matrix.reset();
            float f = this.j.h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.D, true);
    }

    public final void b(RectF rectF, Path path) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        this.A.a(materialShapeDrawableState.a, materialShapeDrawableState.i, rectF, this.z, path);
    }

    public final int c(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        float f = 0.0f;
        float f2 = materialShapeDrawableState.m + 0.0f + materialShapeDrawableState.l;
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawableState.b;
        if (elevationOverlayProvider != null && elevationOverlayProvider.a && ColorUtils.d(i, 255) == elevationOverlayProvider.c) {
            if (elevationOverlayProvider.d > 0.0f && f2 > 0.0f) {
                f = Math.min(((((float) Math.log1p(f2 / r3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
            }
            return ColorUtils.d(MaterialColors.b(f, ColorUtils.d(i, 255), elevationOverlayProvider.b), Color.alpha(i));
        }
        return i;
    }

    public final void d(Canvas canvas) {
        if (this.m.cardinality() > 0) {
            Log.w("MaterialShapeDrawable", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.j.o;
        Path path = this.p;
        ShadowRenderer shadowRenderer = this.y;
        if (i != 0) {
            canvas.drawPath(path, shadowRenderer.a);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            ShapePath.ShadowCompatOperation shadowCompatOperation = this.k[i2];
            int i3 = this.j.n;
            Matrix matrix = ShapePath.ShadowCompatOperation.a;
            shadowCompatOperation.a(matrix, shadowRenderer, i3, canvas);
            this.l[i2].a(matrix, shadowRenderer, this.j.n, canvas);
        }
        if (this.E) {
            int sin = (int) (Math.sin(Math.toRadians(0.0d)) * this.j.o);
            int cos = (int) (Math.cos(Math.toRadians(0.0d)) * this.j.o);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, F);
            canvas.translate(sin, cos);
        }
    }

    /* JADX WARN: Type inference failed for: r10v12, types: [com.google.android.material.shape.MaterialShapeDrawable$2] */
    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF;
        Paint paint;
        float f;
        float f2;
        PorterDuffColorFilter porterDuffColorFilter = this.B;
        Paint paint2 = this.w;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i = this.j.k;
        paint2.setAlpha(((i + (i >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.C;
        Paint paint3 = this.x;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.j.j);
        int alpha2 = paint3.getAlpha();
        int i2 = this.j.k;
        paint3.setAlpha(((i2 + (i2 >>> 7)) * alpha2) >>> 8);
        boolean z = this.n;
        RectF rectF2 = this.s;
        float f3 = 0.0f;
        Path path = this.q;
        Path path2 = this.p;
        if (z) {
            if (n()) {
                f = paint3.getStrokeWidth() / 2.0f;
            } else {
                f = 0.0f;
            }
            final float f4 = -f;
            ShapeAppearanceModel shapeAppearanceModel = this.j.a;
            ?? r10 = new Object() { // from class: com.google.android.material.shape.MaterialShapeDrawable.2
                public final CornerSize a(CornerSize cornerSize) {
                    if (cornerSize instanceof RelativeCornerSize) {
                        return cornerSize;
                    }
                    return new AdjustedCornerSize(f4, cornerSize);
                }
            };
            ShapeAppearanceModel.Builder d = shapeAppearanceModel.d();
            d.e = r10.a(shapeAppearanceModel.e);
            d.f = r10.a(shapeAppearanceModel.f);
            d.h = r10.a(shapeAppearanceModel.h);
            d.g = r10.a(shapeAppearanceModel.g);
            ShapeAppearanceModel a = d.a();
            this.v = a;
            float f5 = this.j.i;
            rectF2.set(i());
            if (n()) {
                f2 = paint3.getStrokeWidth() / 2.0f;
            } else {
                f2 = 0.0f;
            }
            rectF2.inset(f2, f2);
            rectF = rectF2;
            this.A.a(a, f5, rectF, null, path);
            a(i(), path2);
            this.n = false;
        } else {
            rectF = rectF2;
        }
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        materialShapeDrawableState.getClass();
        if (materialShapeDrawableState.n > 0 && !this.j.a.c(i()) && !path2.isConvex() && Build.VERSION.SDK_INT < 29) {
            canvas.save();
            canvas.translate((int) (this.j.o * Math.sin(Math.toRadians(0.0d))), (int) (this.j.o * Math.cos(Math.toRadians(0.0d))));
            if (!this.E) {
                d(canvas);
                canvas.restore();
            } else {
                RectF rectF3 = this.D;
                int width = (int) (rectF3.width() - getBounds().width());
                int height = (int) (rectF3.height() - getBounds().height());
                if (width >= 0 && height >= 0) {
                    Bitmap createBitmap = Bitmap.createBitmap((this.j.n * 2) + ((int) rectF3.width()) + width, (this.j.n * 2) + ((int) rectF3.height()) + height, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(createBitmap);
                    float f6 = (getBounds().left - this.j.n) - width;
                    float f7 = (getBounds().top - this.j.n) - height;
                    canvas2.translate(-f6, -f7);
                    d(canvas2);
                    canvas.drawBitmap(createBitmap, f6, f7, (Paint) null);
                    createBitmap.recycle();
                    canvas.restore();
                } else {
                    u2.l("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    return;
                }
            }
        }
        MaterialShapeDrawableState materialShapeDrawableState2 = this.j;
        Paint.Style style = materialShapeDrawableState2.p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            f(canvas, paint2, path2, materialShapeDrawableState2.a, i());
        }
        if (n()) {
            ShapeAppearanceModel shapeAppearanceModel2 = this.v;
            rectF.set(i());
            if (n()) {
                f3 = paint3.getStrokeWidth() / 2.0f;
            }
            rectF.inset(f3, f3);
            paint = paint3;
            f(canvas, paint, path, shapeAppearanceModel2, rectF);
        } else {
            paint = paint3;
        }
        paint2.setAlpha(alpha);
        paint.setAlpha(alpha2);
    }

    public final void e(Canvas canvas, Paint paint, Path path, RectF rectF) {
        f(canvas, paint, path, this.j.a, rectF);
    }

    public final void f(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        if (shapeAppearanceModel.c(rectF)) {
            float a = shapeAppearanceModel.f.a(rectF) * this.j.i;
            canvas.drawRoundRect(rectF, a, a, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    public final float g() {
        return this.j.a.h.a(i());
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.j.getClass();
        if (this.j.a.c(i())) {
            outline.setRoundRect(getBounds(), l() * this.j.i);
            return;
        }
        RectF i = i();
        Path path = this.p;
        a(i, path);
        if (!path.isConvex() && Build.VERSION.SDK_INT < 29) {
            return;
        }
        try {
            outline.setConvexPath(path);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.j.g;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.t;
        region.set(bounds);
        RectF i = i();
        Path path = this.p;
        a(i, path);
        Region region2 = this.u;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final float h() {
        return this.j.a.g.a(i());
    }

    public final RectF i() {
        Rect bounds = getBounds();
        RectF rectF = this.r;
        rectF.set(bounds);
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.n = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!super.isStateful()) {
            ColorStateList colorStateList = this.j.e;
            if (colorStateList == null || !colorStateList.isStateful()) {
                this.j.getClass();
                ColorStateList colorStateList2 = this.j.d;
                if (colorStateList2 == null || !colorStateList2.isStateful()) {
                    ColorStateList colorStateList3 = this.j.c;
                    if (colorStateList3 == null || !colorStateList3.isStateful()) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final ColorStateList j() {
        return this.j.c;
    }

    public final ShapeAppearanceModel k() {
        return this.j.a;
    }

    public final float l() {
        return this.j.a.e.a(i());
    }

    public final float m() {
        return this.j.a.f.a(i());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.graphics.drawable.Drawable$ConstantState, com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = null;
        constantState.e = null;
        constantState.f = PorterDuff.Mode.SRC_IN;
        constantState.g = null;
        constantState.h = 1.0f;
        constantState.i = 1.0f;
        constantState.k = 255;
        constantState.l = 0.0f;
        constantState.m = 0.0f;
        constantState.n = 0;
        constantState.o = 0;
        constantState.p = Paint.Style.FILL_AND_STROKE;
        constantState.a = materialShapeDrawableState.a;
        constantState.b = materialShapeDrawableState.b;
        constantState.j = materialShapeDrawableState.j;
        constantState.c = materialShapeDrawableState.c;
        constantState.d = materialShapeDrawableState.d;
        constantState.f = materialShapeDrawableState.f;
        constantState.e = materialShapeDrawableState.e;
        constantState.k = materialShapeDrawableState.k;
        constantState.h = materialShapeDrawableState.h;
        constantState.o = materialShapeDrawableState.o;
        constantState.i = materialShapeDrawableState.i;
        constantState.l = materialShapeDrawableState.l;
        constantState.m = materialShapeDrawableState.m;
        constantState.n = materialShapeDrawableState.n;
        constantState.p = materialShapeDrawableState.p;
        if (materialShapeDrawableState.g != null) {
            constantState.g = new Rect(materialShapeDrawableState.g);
        }
        this.j = constantState;
        return this;
    }

    public final boolean n() {
        Paint.Style style = this.j.p;
        if ((style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.x.getStrokeWidth() > 0.0f) {
            return true;
        }
        return false;
    }

    public final void o(Context context) {
        this.j.b = new ElevationOverlayProvider(context);
        y();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.n = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z;
        boolean w = w(iArr);
        boolean x = x();
        if (!w && !x) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p(RelativeCornerSize relativeCornerSize) {
        ShapeAppearanceModel.Builder d = this.j.a.d();
        d.e = relativeCornerSize;
        d.f = relativeCornerSize;
        d.g = relativeCornerSize;
        d.h = relativeCornerSize;
        setShapeAppearanceModel(d.a());
    }

    public final void q(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.m != f) {
            materialShapeDrawableState.m = f;
            y();
        }
    }

    public final void r(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.c != colorStateList) {
            materialShapeDrawableState.c = colorStateList;
            onStateChange(getState());
        }
    }

    public final void s(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.i != f) {
            materialShapeDrawableState.i = f;
            this.n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.k != i) {
            materialShapeDrawableState.k = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.j.getClass();
        super.invalidateSelf();
    }

    @Override // com.google.android.material.shape.Shapeable
    public final void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.j.a = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.j.e = colorStateList;
        x();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.f != mode) {
            materialShapeDrawableState.f = mode;
            x();
            super.invalidateSelf();
        }
    }

    public final void t(int i, int i2, int i3, int i4) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.g == null) {
            materialShapeDrawableState.g = new Rect();
        }
        this.j.g.set(0, i2, 0, i4);
        invalidateSelf();
    }

    public final void u(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        if (materialShapeDrawableState.d != colorStateList) {
            materialShapeDrawableState.d = colorStateList;
            onStateChange(getState());
        }
    }

    public final void v(float f) {
        this.j.j = f;
        invalidateSelf();
    }

    public final boolean w(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.j.c != null && color2 != (colorForState2 = this.j.c.getColorForState(iArr, (color2 = (paint2 = this.w).getColor())))) {
            paint2.setColor(colorForState2);
            z = true;
        } else {
            z = false;
        }
        if (this.j.d != null && color != (colorForState = this.j.d.getColorForState(iArr, (color = (paint = this.x).getColor())))) {
            paint.setColor(colorForState);
            return true;
        }
        return z;
    }

    public final boolean x() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.B;
        PorterDuffColorFilter porterDuffColorFilter3 = this.C;
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        ColorStateList colorStateList = materialShapeDrawableState.e;
        PorterDuff.Mode mode = materialShapeDrawableState.f;
        if (colorStateList != null && mode != null) {
            porterDuffColorFilter = new PorterDuffColorFilter(c(colorStateList.getColorForState(getState(), 0)), mode);
        } else {
            int color = this.w.getColor();
            int c = c(color);
            if (c != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(c, PorterDuff.Mode.SRC_IN);
            } else {
                porterDuffColorFilter = null;
            }
        }
        this.B = porterDuffColorFilter;
        this.j.getClass();
        this.C = null;
        this.j.getClass();
        if (Objects.equals(porterDuffColorFilter2, this.B) && Objects.equals(porterDuffColorFilter3, this.C)) {
            return false;
        }
        return true;
    }

    public final void y() {
        MaterialShapeDrawableState materialShapeDrawableState = this.j;
        float f = materialShapeDrawableState.m + 0.0f;
        materialShapeDrawableState.n = (int) Math.ceil(0.75f * f);
        this.j.o = (int) Math.ceil(f * 0.25f);
        x();
        super.invalidateSelf();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.graphics.drawable.Drawable$ConstantState, com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this((MaterialShapeDrawableState) r0);
        ?? constantState = new Drawable.ConstantState();
        constantState.c = null;
        constantState.d = null;
        constantState.e = null;
        constantState.f = PorterDuff.Mode.SRC_IN;
        constantState.g = null;
        constantState.h = 1.0f;
        constantState.i = 1.0f;
        constantState.k = 255;
        constantState.l = 0.0f;
        constantState.m = 0.0f;
        constantState.n = 0;
        constantState.o = 0;
        constantState.p = Paint.Style.FILL_AND_STROKE;
        constantState.a = shapeAppearanceModel;
        constantState.b = null;
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }
}
