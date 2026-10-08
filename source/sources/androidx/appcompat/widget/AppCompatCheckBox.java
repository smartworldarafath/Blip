package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import com.google.android.material.chip.Chip;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AppCompatCheckBox extends CheckBox {
    public final AppCompatCompoundButtonHelper j;
    public final AppCompatBackgroundHelper k;
    public final AppCompatTextHelper l;
    public AppCompatEmojiTextHelper m;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0069 A[Catch: all -> 0x0048, TryCatch #1 {all -> 0x0048, blocks: (B:3:0x002f, B:5:0x0036, B:8:0x003c, B:9:0x0062, B:11:0x0069, B:12:0x0070, B:14:0x0077, B:21:0x004b, B:23:0x0051, B:25:0x0057), top: B:2:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #1 {all -> 0x0048, blocks: (B:3:0x002f, B:5:0x0036, B:8:0x003c, B:9:0x0062, B:11:0x0069, B:12:0x0070, B:14:0x0077, B:21:0x004b, B:23:0x0051, B:25:0x0057), top: B:2:0x002f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.chipStyle);
        int resourceId;
        int resourceId2;
        ThemeUtils.a(this, getContext());
        this.j = new AppCompatCompoundButtonHelper((Chip) this);
        Context context2 = getContext();
        int[] iArr = R$styleable.j;
        TintTypedArray d = TintTypedArray.d(context2, attributeSet, iArr, R.attr.chipStyle);
        TypedArray typedArray = d.b;
        ViewCompat.m(this, getContext(), iArr, attributeSet, d.b, R.attr.chipStyle);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setButtonDrawable(AppCompatResources.b(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
                if (typedArray.hasValue(2)) {
                    setButtonTintList(d.a(2));
                }
                if (typedArray.hasValue(3)) {
                    setButtonTintMode(DrawableUtils.b(typedArray.getInt(3, -1), null));
                }
                d.e();
                AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
                this.k = appCompatBackgroundHelper;
                appCompatBackgroundHelper.d(attributeSet, R.attr.chipStyle);
                AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
                this.l = appCompatTextHelper;
                appCompatTextHelper.e(attributeSet, R.attr.chipStyle);
                getEmojiTextViewHelper().a(attributeSet, R.attr.chipStyle);
            }
            if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setButtonDrawable(AppCompatResources.b(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
            }
            if (typedArray.hasValue(3)) {
            }
            d.e();
            AppCompatBackgroundHelper appCompatBackgroundHelper2 = new AppCompatBackgroundHelper(this);
            this.k = appCompatBackgroundHelper2;
            appCompatBackgroundHelper2.d(attributeSet, R.attr.chipStyle);
            AppCompatTextHelper appCompatTextHelper2 = new AppCompatTextHelper(this);
            this.l = appCompatTextHelper2;
            appCompatTextHelper2.e(attributeSet, R.attr.chipStyle);
            getEmojiTextViewHelper().a(attributeSet, R.attr.chipStyle);
        } catch (Throwable th) {
            d.e();
            throw th;
        }
    }

    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.m == null) {
            this.m = new AppCompatEmojiTextHelper(this);
        }
        return this.m;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.a();
        }
        AppCompatTextHelper appCompatTextHelper = this.l;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.j;
        if (appCompatCompoundButtonHelper != null) {
            return appCompatCompoundButtonHelper.b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.j;
        if (appCompatCompoundButtonHelper != null) {
            return appCompatCompoundButtonHelper.c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        TintInfo tintInfo = this.l.h;
        if (tintInfo != null) {
            return tintInfo.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        TintInfo tintInfo = this.l.h;
        if (tintInfo != null) {
            return tintInfo.b;
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b.b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.j;
        if (appCompatCompoundButtonHelper != null) {
            if (appCompatCompoundButtonHelper.f) {
                appCompatCompoundButtonHelper.f = false;
            } else {
                appCompatCompoundButtonHelper.f = true;
                appCompatCompoundButtonHelper.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.l;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.l;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().b.c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().b.a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.k;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.j;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.b = colorStateList;
            appCompatCompoundButtonHelper.d = true;
            appCompatCompoundButtonHelper.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.j;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.c = mode;
            appCompatCompoundButtonHelper.e = true;
            appCompatCompoundButtonHelper.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        AppCompatTextHelper appCompatTextHelper = this.l;
        appCompatTextHelper.g(colorStateList);
        appCompatTextHelper.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        AppCompatTextHelper appCompatTextHelper = this.l;
        appCompatTextHelper.h(mode);
        appCompatTextHelper.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(AppCompatResources.b(getContext(), i));
    }
}
