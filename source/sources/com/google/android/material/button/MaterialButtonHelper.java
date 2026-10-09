package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.core.view.ViewCompat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.reflect.Field;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class MaterialButtonHelper {
    public final MaterialButton a;
    public ShapeAppearanceModel b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public MaterialShapeDrawable m;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q;
    public RippleDrawable r;
    public int s;

    public MaterialButtonHelper(MaterialButton materialButton, ShapeAppearanceModel shapeAppearanceModel) {
        this.a = materialButton;
        this.b = shapeAppearanceModel;
    }

    public final Shapeable a() {
        RippleDrawable rippleDrawable = this.r;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 1) {
            int numberOfLayers = this.r.getNumberOfLayers();
            RippleDrawable rippleDrawable2 = this.r;
            if (numberOfLayers > 2) {
                return (Shapeable) rippleDrawable2.getDrawable(2);
            }
            return (Shapeable) rippleDrawable2.getDrawable(1);
        }
        return null;
    }

    public final MaterialShapeDrawable b(boolean z) {
        RippleDrawable rippleDrawable = this.r;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 0) {
            return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return null;
    }

    public final void c(ShapeAppearanceModel shapeAppearanceModel) {
        this.b = shapeAppearanceModel;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    public final void d(int i, int i2) {
        Field field = ViewCompat.a;
        MaterialButton materialButton = this.a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            e();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public final void e() {
        int i;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.b);
        MaterialButton materialButton = this.a;
        materialShapeDrawable.o(materialButton.getContext());
        materialShapeDrawable.setTintList(this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            materialShapeDrawable.setTintMode(mode);
        }
        float f = this.h;
        ColorStateList colorStateList = this.k;
        materialShapeDrawable.v(f);
        materialShapeDrawable.u(colorStateList);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.b);
        materialShapeDrawable2.setTint(0);
        float f2 = this.h;
        if (this.n) {
            i = MaterialColors.a(materialButton, R.attr.colorSurface);
        } else {
            i = 0;
        }
        materialShapeDrawable2.v(f2);
        materialShapeDrawable2.u(ColorStateList.valueOf(i));
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.b);
        this.m = materialShapeDrawable3;
        materialShapeDrawable3.setTint(-1);
        ColorStateList colorStateList2 = this.l;
        if (colorStateList2 == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable}), this.c, this.e, this.d, this.f), this.m);
        this.r = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        MaterialShapeDrawable b = b(false);
        if (b != null) {
            b.q(this.s);
        }
    }

    public final void f() {
        int i = 0;
        MaterialShapeDrawable b = b(false);
        MaterialShapeDrawable b2 = b(true);
        if (b != null) {
            float f = this.h;
            ColorStateList colorStateList = this.k;
            b.v(f);
            b.u(colorStateList);
            if (b2 != null) {
                float f2 = this.h;
                if (this.n) {
                    i = MaterialColors.a(this.a, R.attr.colorSurface);
                }
                b2.v(f2);
                b2.u(ColorStateList.valueOf(i));
            }
        }
    }
}
