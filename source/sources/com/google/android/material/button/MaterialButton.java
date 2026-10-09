package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int[] A = {R.attr.state_checkable};
    public static final int[] B = {R.attr.state_checked};
    public final MaterialButtonHelper n;
    public final LinkedHashSet o;
    public OnPressedChangeListener p;
    public PorterDuff.Mode q;
    public ColorStateList r;
    public Drawable s;
    public int t;
    public int u;
    public int v;
    public int w;
    public boolean x;
    public boolean y;
    public int z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnCheckedChangeListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnPressedChangeListener {
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.a(context, attributeSet, net.blip.android.R.attr.materialButtonStyle, net.blip.android.R.style.Widget_MaterialComponents_Button), attributeSet);
        this.o = new LinkedHashSet();
        this.x = false;
        this.y = false;
        Context context2 = getContext();
        TypedArray d = ThemeEnforcement.d(context2, attributeSet, R$styleable.j, net.blip.android.R.attr.materialButtonStyle, net.blip.android.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.w = d.getDimensionPixelSize(12, 0);
        int i = d.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.q = ViewUtils.b(i, mode);
        this.r = MaterialResources.a(getContext(), d, 14);
        this.s = MaterialResources.c(getContext(), d, 10);
        this.z = d.getInteger(11, 1);
        this.t = d.getDimensionPixelSize(13, 0);
        MaterialButtonHelper materialButtonHelper = new MaterialButtonHelper(this, ShapeAppearanceModel.a(context2, attributeSet, net.blip.android.R.attr.materialButtonStyle, net.blip.android.R.style.Widget_MaterialComponents_Button).a());
        this.n = materialButtonHelper;
        materialButtonHelper.c = d.getDimensionPixelOffset(1, 0);
        materialButtonHelper.d = d.getDimensionPixelOffset(2, 0);
        materialButtonHelper.e = d.getDimensionPixelOffset(3, 0);
        materialButtonHelper.f = d.getDimensionPixelOffset(4, 0);
        if (d.hasValue(8)) {
            int dimensionPixelSize = d.getDimensionPixelSize(8, -1);
            materialButtonHelper.g = dimensionPixelSize;
            float f = dimensionPixelSize;
            ShapeAppearanceModel.Builder d2 = materialButtonHelper.b.d();
            d2.e = new AbsoluteCornerSize(f);
            d2.f = new AbsoluteCornerSize(f);
            d2.g = new AbsoluteCornerSize(f);
            d2.h = new AbsoluteCornerSize(f);
            materialButtonHelper.c(d2.a());
            materialButtonHelper.p = true;
        }
        materialButtonHelper.h = d.getDimensionPixelSize(20, 0);
        materialButtonHelper.i = ViewUtils.b(d.getInt(7, -1), mode);
        materialButtonHelper.j = MaterialResources.a(getContext(), d, 6);
        materialButtonHelper.k = MaterialResources.a(getContext(), d, 19);
        materialButtonHelper.l = MaterialResources.a(getContext(), d, 16);
        materialButtonHelper.q = d.getBoolean(5, false);
        materialButtonHelper.s = d.getDimensionPixelSize(9, 0);
        Field field = ViewCompat.a;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (d.hasValue(0)) {
            materialButtonHelper.o = true;
            setSupportBackgroundTintList(materialButtonHelper.j);
            setSupportBackgroundTintMode(materialButtonHelper.i);
        } else {
            materialButtonHelper.e();
        }
        setPaddingRelative(paddingStart + materialButtonHelper.c, paddingTop + materialButtonHelper.e, paddingEnd + materialButtonHelper.d, paddingBottom + materialButtonHelper.f);
        d.recycle();
        setCompoundDrawablePadding(this.w);
        d(this.s != null);
    }

    private String getA11yClassName() {
        Class cls;
        MaterialButtonHelper materialButtonHelper = this.n;
        if (materialButtonHelper != null && materialButtonHelper.q) {
            cls = CompoundButton.class;
        } else {
            cls = Button.class;
        }
        return cls.getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        return Math.min((int) paint.measureText(charSequence), getLayout().getEllipsizedWidth());
    }

    public final boolean b() {
        MaterialButtonHelper materialButtonHelper = this.n;
        if (materialButtonHelper != null && !materialButtonHelper.o) {
            return true;
        }
        return false;
    }

    public final void c() {
        int i = this.z;
        if (i != 1 && i != 2) {
            if (i != 3 && i != 4) {
                if (i != 16 && i != 32) {
                    return;
                }
                setCompoundDrawablesRelative(null, this.s, null, null);
                return;
            }
            setCompoundDrawablesRelative(null, null, this.s, null);
            return;
        }
        setCompoundDrawablesRelative(this.s, null, null, null);
    }

    public final void d(boolean z) {
        Drawable drawable = this.s;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.s = mutate;
            mutate.setTintList(this.r);
            PorterDuff.Mode mode = this.q;
            if (mode != null) {
                this.s.setTintMode(mode);
            }
            int i = this.t;
            if (i == 0) {
                i = this.s.getIntrinsicWidth();
            }
            int i2 = this.t;
            if (i2 == 0) {
                i2 = this.s.getIntrinsicHeight();
            }
            Drawable drawable2 = this.s;
            int i3 = this.u;
            int i4 = this.v;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
        }
        if (z) {
            c();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.z;
        if (((i5 != 1 && i5 != 2) || drawable3 == this.s) && (((i5 != 3 && i5 != 4) || drawable5 == this.s) && ((i5 != 16 && i5 != 32) || drawable4 == this.s))) {
            return;
        }
        c();
    }

    public final void e(int i, int i2) {
        boolean z;
        if (this.s != null && getLayout() != null) {
            int i3 = this.z;
            boolean z2 = true;
            if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
                if (i3 != 16 && i3 != 32) {
                    return;
                }
                this.u = 0;
                if (i3 == 16) {
                    this.v = 0;
                    d(false);
                    return;
                }
                int i4 = this.t;
                if (i4 == 0) {
                    i4 = this.s.getIntrinsicHeight();
                }
                int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.w) - getPaddingBottom()) / 2;
                if (this.v != textHeight) {
                    this.v = textHeight;
                    d(false);
                    return;
                }
                return;
            }
            this.v = 0;
            if (i3 != 1 && i3 != 3) {
                int i5 = this.t;
                if (i5 == 0) {
                    i5 = this.s.getIntrinsicWidth();
                }
                int textWidth = i - getTextWidth();
                Field field = ViewCompat.a;
                int paddingEnd = ((((textWidth - getPaddingEnd()) - i5) - this.w) - getPaddingStart()) / 2;
                if (getLayoutDirection() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.z != 4) {
                    z2 = false;
                }
                if (z != z2) {
                    paddingEnd = -paddingEnd;
                }
                if (this.u != paddingEnd) {
                    this.u = paddingEnd;
                    d(false);
                    return;
                }
                return;
            }
            this.u = 0;
            d(false);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.n.g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.s;
    }

    public int getIconGravity() {
        return this.z;
    }

    public int getIconPadding() {
        return this.w;
    }

    public int getIconSize() {
        return this.t;
    }

    public ColorStateList getIconTint() {
        return this.r;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.q;
    }

    public int getInsetBottom() {
        return this.n.f;
    }

    public int getInsetTop() {
        return this.n.e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.n.l;
        }
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (b()) {
            return this.n.b;
        }
        u2.l("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.n.k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.n.h;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        if (b()) {
            return this.n.j;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (b()) {
            return this.n.i;
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.x;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            MaterialShapeUtils.b(this, this.n.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        MaterialButtonHelper materialButtonHelper = this.n;
        if (materialButtonHelper != null && materialButtonHelper.q) {
            View.mergeDrawableStates(onCreateDrawableState, A);
        }
        if (this.x) {
            View.mergeDrawableStates(onCreateDrawableState, B);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.x);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        MaterialButtonHelper materialButtonHelper = this.n;
        if (materialButtonHelper != null && materialButtonHelper.q) {
            z = true;
        } else {
            z = false;
        }
        accessibilityNodeInfo.setCheckable(z);
        accessibilityNodeInfo.setChecked(this.x);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.j);
        setChecked(savedState.l);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, com.google.android.material.button.MaterialButton$SavedState] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.l = this.x;
        return absSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        e(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (materialButtonHelper.b(false) != null) {
                materialButtonHelper.b(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (b()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                MaterialButtonHelper materialButtonHelper = this.n;
                materialButtonHelper.o = true;
                MaterialButton materialButton = materialButtonHelper.a;
                materialButton.setSupportBackgroundTintList(materialButtonHelper.j);
                materialButton.setSupportBackgroundTintMode(materialButtonHelper.i);
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.b(getContext(), i);
        } else {
            drawable = null;
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (b()) {
            this.n.q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        int i;
        MaterialButtonHelper materialButtonHelper = this.n;
        if (materialButtonHelper != null && materialButtonHelper.q && isEnabled() && this.x != z) {
            this.x = z;
            refreshDrawableState();
            if (!this.y) {
                this.y = true;
                Iterator it = this.o.iterator();
                while (it.hasNext()) {
                    OnCheckedChangeListener onCheckedChangeListener = (OnCheckedChangeListener) it.next();
                    boolean z2 = this.x;
                    MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
                    if (!materialButtonToggleGroup.p) {
                        if (materialButtonToggleGroup.q) {
                            if (z2) {
                                i = getId();
                            } else {
                                i = -1;
                            }
                            materialButtonToggleGroup.s = i;
                        }
                        if (materialButtonToggleGroup.d(getId(), z2)) {
                            materialButtonToggleGroup.b(getId(), this.x);
                        }
                        materialButtonToggleGroup.invalidate();
                    }
                }
                this.y = false;
            }
        }
    }

    public void setCornerRadius(int i) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (!materialButtonHelper.p || materialButtonHelper.g != i) {
                materialButtonHelper.g = i;
                materialButtonHelper.p = true;
                float f = i;
                ShapeAppearanceModel.Builder d = materialButtonHelper.b.d();
                d.e = new AbsoluteCornerSize(f);
                d.f = new AbsoluteCornerSize(f);
                d.g = new AbsoluteCornerSize(f);
                d.h = new AbsoluteCornerSize(f);
                materialButtonHelper.c(d.a());
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.n.b(false).q(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.s != drawable) {
            this.s = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.z != i) {
            this.z = i;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i) {
        if (this.w != i) {
            this.w = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.b(getContext(), i);
        } else {
            drawable = null;
        }
        setIcon(drawable);
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            if (this.t != i) {
                this.t = i;
                d(true);
                return;
            }
            return;
        }
        u2.g("iconSize cannot be less than 0");
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.r != colorStateList) {
            this.r = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.q != mode) {
            this.q = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(AppCompatResources.a(getContext(), i));
    }

    public void setInsetBottom(int i) {
        MaterialButtonHelper materialButtonHelper = this.n;
        materialButtonHelper.d(materialButtonHelper.e, i);
    }

    public void setInsetTop(int i) {
        MaterialButtonHelper materialButtonHelper = this.n;
        materialButtonHelper.d(i, materialButtonHelper.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(OnPressedChangeListener onPressedChangeListener) {
        this.p = onPressedChangeListener;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.p;
        if (onPressedChangeListener != null) {
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            MaterialButton materialButton = materialButtonHelper.a;
            if (materialButtonHelper.l != colorStateList) {
                materialButtonHelper.l = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    RippleDrawable rippleDrawable = (RippleDrawable) materialButton.getBackground();
                    if (colorStateList == null) {
                        colorStateList = ColorStateList.valueOf(0);
                    }
                    rippleDrawable.setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (b()) {
            setRippleColor(AppCompatResources.a(getContext(), i));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        if (b()) {
            this.n.c(shapeAppearanceModel);
        } else {
            u2.l("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            materialButtonHelper.n = z;
            materialButtonHelper.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (materialButtonHelper.k != colorStateList) {
                materialButtonHelper.k = colorStateList;
                materialButtonHelper.f();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (b()) {
            setStrokeColor(AppCompatResources.a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (materialButtonHelper.h != i) {
                materialButtonHelper.h = i;
                materialButtonHelper.f();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (materialButtonHelper.j != colorStateList) {
                materialButtonHelper.j = colorStateList;
                if (materialButtonHelper.b(false) != null) {
                    materialButtonHelper.b(false).setTintList(materialButtonHelper.j);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (b()) {
            MaterialButtonHelper materialButtonHelper = this.n;
            if (materialButtonHelper.i != mode) {
                materialButtonHelper.i = mode;
                if (materialButtonHelper.b(false) != null && materialButtonHelper.i != null) {
                    materialButtonHelper.b(false).setTintMode(materialButtonHelper.i);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.x);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public boolean l;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.l = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.l ? 1 : 0);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public static class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }
    }
}
