package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.fe;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable {
    public static final Rect D = new Rect();
    public static final int[] E = {R.attr.state_selected};
    public static final int[] F = {R.attr.state_checkable};
    public final Rect A;
    public final RectF B;
    public final TextAppearanceFontCallback C;
    public ChipDrawable n;
    public InsetDrawable o;
    public RippleDrawable p;
    public View.OnClickListener q;
    public CompoundButton.OnCheckedChangeListener r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;
    public int y;
    public final ChipTouchHelper z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ChipTouchHelper extends ExploreByTouchHelper {
        public ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int m(float f, float f2) {
            Rect rect = Chip.D;
            Chip chip = Chip.this;
            if (chip.d() && chip.getCloseIconTouchBounds().contains(f, f2)) {
                return 1;
            }
            return 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void n(ArrayList arrayList) {
            ChipDrawable chipDrawable;
            arrayList.add(0);
            Rect rect = Chip.D;
            Chip chip = Chip.this;
            if (chip.d() && (chipDrawable = chip.n) != null && chipDrawable.T && chip.q != null) {
                arrayList.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean q(int i, int i2) {
            boolean z = false;
            if (i2 == 16) {
                Chip chip = Chip.this;
                if (i == 0) {
                    return chip.performClick();
                }
                if (i == 1) {
                    chip.playSoundEffect(0);
                    View.OnClickListener onClickListener = chip.q;
                    if (onClickListener != null) {
                        onClickListener.onClick(chip);
                        z = true;
                    }
                    chip.z.v(1, 1);
                }
            }
            return z;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void r(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String str;
            Chip chip = Chip.this;
            boolean e = chip.e();
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            accessibilityNodeInfo.setCheckable(e);
            accessibilityNodeInfo.setClickable(chip.isClickable());
            if (!chip.e() && !chip.isClickable()) {
                accessibilityNodeInfoCompat.i("android.view.View");
            } else {
                if (chip.e()) {
                    str = "android.widget.CompoundButton";
                } else {
                    str = "android.widget.Button";
                }
                accessibilityNodeInfoCompat.i(str);
            }
            accessibilityNodeInfoCompat.m(chip.getText());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void s(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            CharSequence charSequence = "";
            if (i == 1) {
                Chip chip = Chip.this;
                CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence text = chip.getText();
                    Context context = chip.getContext();
                    if (!TextUtils.isEmpty(text)) {
                        charSequence = text;
                    }
                    accessibilityNodeInfo.setContentDescription(context.getString(net.blip.android.R.string.mtrl_chip_close_icon_content_description, charSequence).trim());
                }
                accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.e);
                accessibilityNodeInfo.setEnabled(chip.isEnabled());
                return;
            }
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.D);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void t(int i, boolean z) {
            if (i == 1) {
                Chip chip = Chip.this;
                chip.v = z;
                chip.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.a(context, attributeSet, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action), attributeSet);
        TextAppearance textAppearance;
        MotionSpec motionSpec;
        MotionSpec motionSpec2;
        MotionSpec motionSpec3;
        int resourceId;
        int resourceId2;
        int resourceId3;
        this.A = new Rect();
        this.B = new RectF();
        this.C = new TextAppearanceFontCallback() { // from class: com.google.android.material.chip.Chip.1
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void b(Typeface typeface, boolean z) {
                CharSequence text;
                Chip chip = Chip.this;
                ChipDrawable chipDrawable = chip.n;
                if (chipDrawable.L0) {
                    text = chipDrawable.N;
                } else {
                    text = chip.getText();
                }
                chip.setText(text);
                chip.requestLayout();
                chip.invalidate();
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void a(int i) {
            }
        };
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null) {
                if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null) {
                    if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null) {
                        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null) {
                            if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                                if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                                    Log.w("Chip", "Chip text must be vertically center and start aligned");
                                }
                            } else {
                                fe.t("Chip does not support multi-line text");
                                throw null;
                            }
                        } else {
                            fe.t("Please set end drawable using R.attr#closeIcon.");
                            throw null;
                        }
                    } else {
                        fe.t("Please set end drawable using R.attr#closeIcon.");
                        throw null;
                    }
                } else {
                    fe.t("Please set start drawable using R.attr#chipIcon.");
                    throw null;
                }
            } else {
                fe.t("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
        }
        ChipDrawable chipDrawable = new ChipDrawable(context2, attributeSet);
        Context context3 = chipDrawable.n0;
        int[] iArr = R$styleable.b;
        TypedArray d = ThemeEnforcement.d(context3, attributeSet, iArr, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        chipDrawable.N0 = d.hasValue(37);
        Context context4 = chipDrawable.n0;
        ColorStateList a = MaterialResources.a(context4, d, 24);
        if (chipDrawable.G != a) {
            chipDrawable.G = a;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        ColorStateList a2 = MaterialResources.a(context4, d, 11);
        if (chipDrawable.H != a2) {
            chipDrawable.H = a2;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        float dimension = d.getDimension(19, 0.0f);
        if (chipDrawable.I != dimension) {
            chipDrawable.I = dimension;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        if (d.hasValue(12)) {
            chipDrawable.M(d.getDimension(12, 0.0f));
        }
        chipDrawable.R(MaterialResources.a(context4, d, 22));
        chipDrawable.S(d.getDimension(23, 0.0f));
        chipDrawable.b0(MaterialResources.a(context4, d, 36));
        String text = d.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(chipDrawable.N, text)) {
            chipDrawable.N = text;
            chipDrawable.t0.d = true;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        if (d.hasValue(0) && (resourceId3 = d.getResourceId(0, 0)) != 0) {
            textAppearance = new TextAppearance(context4, resourceId3);
        } else {
            textAppearance = null;
        }
        textAppearance.k = d.getDimension(1, textAppearance.k);
        chipDrawable.c0(textAppearance);
        int i = d.getInt(3, 0);
        if (i != 1) {
            motionSpec = null;
            if (i != 2) {
                if (i == 3) {
                    chipDrawable.K0 = TextUtils.TruncateAt.END;
                }
            } else {
                chipDrawable.K0 = TextUtils.TruncateAt.MIDDLE;
            }
        } else {
            motionSpec = null;
            chipDrawable.K0 = TextUtils.TruncateAt.START;
        }
        chipDrawable.Q(d.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            chipDrawable.Q(d.getBoolean(15, false));
        }
        chipDrawable.N(MaterialResources.c(context4, d, 14));
        if (d.hasValue(17)) {
            chipDrawable.P(MaterialResources.a(context4, d, 17));
        }
        chipDrawable.O(d.getDimension(16, -1.0f));
        chipDrawable.Y(d.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            chipDrawable.Y(d.getBoolean(26, false));
        }
        chipDrawable.T(MaterialResources.c(context4, d, 25));
        chipDrawable.X(MaterialResources.a(context4, d, 30));
        chipDrawable.V(d.getDimension(28, 0.0f));
        chipDrawable.I(d.getBoolean(6, false));
        chipDrawable.L(d.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            chipDrawable.L(d.getBoolean(8, false));
        }
        chipDrawable.J(MaterialResources.c(context4, d, 7));
        if (d.hasValue(9)) {
            chipDrawable.K(MaterialResources.a(context4, d, 9));
        }
        if (d.hasValue(39) && (resourceId2 = d.getResourceId(39, 0)) != 0) {
            motionSpec2 = MotionSpec.a(context4, resourceId2);
        } else {
            motionSpec2 = motionSpec;
        }
        chipDrawable.d0 = motionSpec2;
        if (d.hasValue(33) && (resourceId = d.getResourceId(33, 0)) != 0) {
            motionSpec3 = MotionSpec.a(context4, resourceId);
        } else {
            motionSpec3 = motionSpec;
        }
        chipDrawable.e0 = motionSpec3;
        float dimension2 = d.getDimension(21, 0.0f);
        if (chipDrawable.f0 != dimension2) {
            chipDrawable.f0 = dimension2;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        chipDrawable.a0(d.getDimension(35, 0.0f));
        chipDrawable.Z(d.getDimension(34, 0.0f));
        float dimension3 = d.getDimension(41, 0.0f);
        if (chipDrawable.i0 != dimension3) {
            chipDrawable.i0 = dimension3;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        float dimension4 = d.getDimension(40, 0.0f);
        if (chipDrawable.j0 != dimension4) {
            chipDrawable.j0 = dimension4;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        chipDrawable.W(d.getDimension(29, 0.0f));
        chipDrawable.U(d.getDimension(27, 0.0f));
        float dimension5 = d.getDimension(13, 0.0f);
        if (chipDrawable.m0 != dimension5) {
            chipDrawable.m0 = dimension5;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
        chipDrawable.M0 = d.getDimensionPixelSize(4, Integer.MAX_VALUE);
        d.recycle();
        ThemeEnforcement.a(context2, attributeSet, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action);
        ThemeEnforcement.b(context2, attributeSet, iArr, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action);
        this.w = obtainStyledAttributes.getBoolean(32, false);
        this.y = (int) Math.ceil(obtainStyledAttributes.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48.0f, getContext().getResources().getDisplayMetrics()))));
        obtainStyledAttributes.recycle();
        setChipDrawable(chipDrawable);
        chipDrawable.q(getElevation());
        ThemeEnforcement.a(context2, attributeSet, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action);
        ThemeEnforcement.b(context2, attributeSet, iArr, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, net.blip.android.R.attr.chipStyle, net.blip.android.R.style.Widget_MaterialComponents_Chip_Action);
        boolean hasValue = obtainStyledAttributes2.hasValue(37);
        obtainStyledAttributes2.recycle();
        this.z = new ChipTouchHelper(this);
        f();
        if (!hasValue) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.chip.Chip.2
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    ChipDrawable chipDrawable2 = Chip.this.n;
                    if (chipDrawable2 != null) {
                        chipDrawable2.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
        setChecked(this.s);
        setText(chipDrawable.N);
        setEllipsize(chipDrawable.K0);
        i();
        if (!this.n.L0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.w) {
            setMinHeight(this.y);
        }
        this.x = getLayoutDirection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.B;
        rectF.setEmpty();
        if (d() && this.q != null) {
            ChipDrawable chipDrawable = this.n;
            Rect bounds = chipDrawable.getBounds();
            rectF.setEmpty();
            if (chipDrawable.f0()) {
                float f = chipDrawable.m0 + chipDrawable.l0 + chipDrawable.X + chipDrawable.k0 + chipDrawable.j0;
                if (chipDrawable.getLayoutDirection() == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.A;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.t0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.u != z) {
            this.u = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.t != z) {
            this.t = z;
            refreshDrawableState();
        }
    }

    public final void c(int i) {
        int i2;
        this.y = i;
        int i3 = 0;
        if (!this.w) {
            InsetDrawable insetDrawable = this.o;
            if (insetDrawable != null) {
                if (insetDrawable != null) {
                    this.o = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
            g();
            return;
        }
        int max = Math.max(0, i - ((int) this.n.I));
        int max2 = Math.max(0, i - this.n.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.o;
            if (insetDrawable2 != null) {
                if (insetDrawable2 != null) {
                    this.o = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
            g();
            return;
        }
        if (max2 > 0) {
            i2 = max2 / 2;
        } else {
            i2 = 0;
        }
        if (max > 0) {
            i3 = max / 2;
        }
        int i4 = i3;
        if (this.o != null) {
            Rect rect = new Rect();
            this.o.getPadding(rect);
            if (rect.top == i4 && rect.bottom == i4 && rect.left == i2 && rect.right == i2) {
                g();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.o = new InsetDrawable((Drawable) this.n, i2, i4, i2, i4);
        g();
    }

    public final boolean d() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            Drawable drawable = chipDrawable.U;
            if (drawable == null) {
                drawable = null;
            }
            if (drawable != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ChipTouchHelper chipTouchHelper = this.z;
        if (action == 10) {
            try {
                Field declaredField = ExploreByTouchHelper.class.getDeclaredField("v");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(chipTouchHelper)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("w", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(chipTouchHelper, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException e) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e);
            } catch (NoSuchFieldException e2) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            } catch (NoSuchMethodException e3) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            } catch (InvocationTargetException e4) {
                Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            }
        }
        if (chipTouchHelper.l(motionEvent) || super.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        ChipTouchHelper chipTouchHelper = this.z;
        chipTouchHelper.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode != 19) {
                                    if (keyCode != 21) {
                                        if (keyCode != 22) {
                                            i2 = 130;
                                        }
                                    } else {
                                        i2 = 17;
                                    }
                                } else {
                                    i2 = 33;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && chipTouchHelper.o(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = chipTouchHelper.u;
                    if (i3 != Integer.MIN_VALUE) {
                        chipTouchHelper.q(i3, 16);
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = chipTouchHelper.o(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = chipTouchHelper.o(1, null);
            }
        }
        if (z && chipTouchHelper.u != Integer.MIN_VALUE) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, boolean] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.n;
        boolean z = false;
        if (chipDrawable != null && ChipDrawable.F(chipDrawable.U)) {
            ChipDrawable chipDrawable2 = this.n;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.v) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.u) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.t) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            } else {
                i = 0;
            }
            if (this.v) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.u) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.t) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            if (!Arrays.equals(chipDrawable2.H0, iArr)) {
                chipDrawable2.H0 = iArr;
                if (chipDrawable2.f0()) {
                    z = chipDrawable2.H(chipDrawable2.getState(), iArr);
                }
            }
        }
        if (z) {
            invalidate();
        }
    }

    public final boolean e() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.Z) {
            return true;
        }
        return false;
    }

    public final void f() {
        ChipDrawable chipDrawable;
        if (d() && (chipDrawable = this.n) != null && chipDrawable.T && this.q != null) {
            ViewCompat.n(this, this.z);
        } else {
            ViewCompat.n(this, null);
        }
    }

    public final void g() {
        ColorStateList colorStateList = this.n.M;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.p = new RippleDrawable(colorStateList, getBackgroundDrawable(), null);
        this.n.getClass();
        RippleDrawable rippleDrawable = this.p;
        Field field = ViewCompat.a;
        setBackground(rippleDrawable);
        h();
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.o;
        if (insetDrawable == null) {
            return this.n;
        }
        return insetDrawable;
    }

    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.b0;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.c0;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.H;
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable == null) {
            return 0.0f;
        }
        return Math.max(0.0f, chipDrawable.D());
    }

    public Drawable getChipDrawable() {
        return this.n;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.m0;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable == null || (drawable = chipDrawable.P) == null) {
            return null;
        }
        return drawable;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.R;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.Q;
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.I;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.f0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.K;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.L;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable == null || (drawable = chipDrawable.U) == null) {
            return null;
        }
        return drawable;
    }

    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.Y;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.l0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.X;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.k0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.W;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.K0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        ChipTouchHelper chipTouchHelper = this.z;
        if (chipTouchHelper.u != 1 && chipTouchHelper.t != 1) {
            super.getFocusedRect(rect);
        } else {
            rect.set(getCloseIconTouchBoundsInt());
        }
    }

    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.e0;
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.h0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.g0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.M;
        }
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.n.k();
    }

    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.d0;
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.j0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            return chipDrawable.i0;
        }
        return 0.0f;
    }

    public final void h() {
        ChipDrawable chipDrawable;
        if (!TextUtils.isEmpty(getText()) && (chipDrawable = this.n) != null) {
            int C = (int) (chipDrawable.C() + chipDrawable.m0 + chipDrawable.j0);
            ChipDrawable chipDrawable2 = this.n;
            int B = (int) (chipDrawable2.B() + chipDrawable2.f0 + chipDrawable2.i0);
            if (this.o != null) {
                Rect rect = new Rect();
                this.o.getPadding(rect);
                B += rect.left;
                C += rect.right;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            Field field = ViewCompat.a;
            setPaddingRelative(B, paddingTop, C, paddingBottom);
        }
    }

    public final void i() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.C);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.b(this, this.n);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, E);
        }
        if (e()) {
            View.mergeDrawableStates(onCreateDrawableState, F);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        ChipTouchHelper chipTouchHelper = this.z;
        int i2 = chipTouchHelper.u;
        if (i2 != Integer.MIN_VALUE) {
            chipTouchHelper.j(i2);
        }
        if (z) {
            chipTouchHelper.o(i, rect);
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                setCloseIconHovered(false);
            }
        } else {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        String str;
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (!e() && !isClickable()) {
            accessibilityNodeInfo.setClassName("android.view.View");
        } else {
            if (e()) {
                str = "android.widget.CompoundButton";
            } else {
                str = "android.widget.Button";
            }
            accessibilityNodeInfo.setClassName(str);
        }
        accessibilityNodeInfo.setCheckable(e());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
            int i2 = -1;
            if (chipGroup.l) {
                i = 0;
                for (int i3 = 0; i3 < chipGroup.getChildCount(); i3++) {
                    if (chipGroup.getChildAt(i3) instanceof Chip) {
                        if (((Chip) chipGroup.getChildAt(i3)) == this) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            i = -1;
            Object tag = getTag(net.blip.android.R.id.row_index_key);
            if (tag instanceof Integer) {
                i2 = ((Integer) tag).intValue();
            }
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(isChecked(), i2, 1, i, 1));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.x != i) {
            this.x = i;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L25;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.t) {
                        if (!contains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else if (this.t) {
                playSoundEffect(0);
                View.OnClickListener onClickListener = this.q;
                if (onClickListener != null) {
                    onClickListener.onClick(this);
                }
                this.z.v(1, 1);
                z = true;
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (contains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.p) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        } else {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.p) {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        } else {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.I(z);
        }
    }

    public void setCheckableResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.I(chipDrawable.n0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable == null) {
            this.s = z;
            return;
        }
        if (chipDrawable.Z) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.r) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.J(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.J(AppCompatResources.b(chipDrawable.n0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.K(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.K(AppCompatResources.a(chipDrawable.n0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.L(chipDrawable.n0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.H != colorStateList) {
            chipDrawable.H = colorStateList;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList a;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.H != (a = AppCompatResources.a(chipDrawable.n0, i))) {
            chipDrawable.H = a;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.M(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.M(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.n;
        if (chipDrawable2 != chipDrawable) {
            if (chipDrawable2 != null) {
                chipDrawable2.J0 = new WeakReference(null);
            }
            this.n = chipDrawable;
            chipDrawable.L0 = false;
            chipDrawable.J0 = new WeakReference(this);
            c(this.y);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.m0 != f) {
            chipDrawable.m0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
    }

    public void setChipEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            float dimension = chipDrawable.n0.getResources().getDimension(i);
            if (chipDrawable.m0 != dimension) {
                chipDrawable.m0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.G();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.N(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.N(AppCompatResources.b(chipDrawable.n0, i));
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.O(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.O(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.P(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.P(AppCompatResources.a(chipDrawable.n0, i));
        }
    }

    public void setChipIconVisible(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.Q(chipDrawable.n0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.I != f) {
            chipDrawable.I = f;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
    }

    public void setChipMinHeightResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            float dimension = chipDrawable.n0.getResources().getDimension(i);
            if (chipDrawable.I != dimension) {
                chipDrawable.I = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.G();
            }
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.f0 != f) {
            chipDrawable.f0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
    }

    public void setChipStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            float dimension = chipDrawable.n0.getResources().getDimension(i);
            if (chipDrawable.f0 != dimension) {
                chipDrawable.f0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.G();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.R(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.R(AppCompatResources.a(chipDrawable.n0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.S(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.S(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.T(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        BidiFormatter bidiFormatter;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.Y != charSequence) {
            String str = BidiFormatter.b;
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                bidiFormatter = BidiFormatter.e;
            } else {
                bidiFormatter = BidiFormatter.d;
            }
            bidiFormatter.getClass();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
            chipDrawable.Y = bidiFormatter.c(charSequence);
            chipDrawable.invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.U(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.U(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.T(AppCompatResources.b(chipDrawable.n0, i));
        }
        f();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.V(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.V(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.W(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.W(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.X(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.X(AppCompatResources.a(chipDrawable.n0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
                return;
            } else {
                fe.t("Please set end drawable using R.attr#closeIcon.");
                return;
            }
        }
        fe.t("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
                return;
            } else {
                fe.t("Please set end drawable using R.attr#closeIcon.");
                return;
            }
        }
        fe.t("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 == 0) {
                super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
                return;
            } else {
                fe.t("Please set end drawable using R.attr#closeIcon.");
                return;
            }
        }
        fe.t("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i == 0) {
            if (i3 == 0) {
                super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
                return;
            } else {
                fe.t("Please set end drawable using R.attr#closeIcon.");
                return;
            }
        }
        fe.t("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.q(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.n != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                ChipDrawable chipDrawable = this.n;
                if (chipDrawable != null) {
                    chipDrawable.K0 = truncateAt;
                    return;
                }
                return;
            }
            fe.t("Text within a chip are not allowed to scroll.");
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.w = z;
        c(this.y);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.e0 = motionSpec;
        }
    }

    public void setHideMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.e0 = MotionSpec.a(chipDrawable.n0, i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.Z(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.Z(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.a0(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.a0(chipDrawable.n0.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.n == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
        } else {
            fe.t("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
        } else {
            fe.t("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.M0 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
        } else {
            fe.t("Chip does not support multi-line text");
        }
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.r = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.q = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.b0(colorStateList);
        }
        this.n.getClass();
        g();
    }

    public void setRippleColorResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.b0(AppCompatResources.a(chipDrawable.n0, i));
            this.n.getClass();
            g();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.n.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.d0 = motionSpec;
        }
    }

    public void setShowMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.d0 = MotionSpec.a(chipDrawable.n0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
        } else {
            fe.t("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        CharSequence charSequence2;
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            if (chipDrawable.L0) {
                charSequence2 = null;
            } else {
                charSequence2 = charSequence;
            }
            super.setText(charSequence2, bufferType);
            ChipDrawable chipDrawable2 = this.n;
            if (chipDrawable2 != null && !TextUtils.equals(chipDrawable2.N, charSequence)) {
                chipDrawable2.N = charSequence;
                chipDrawable2.t0.d = true;
                chipDrawable2.invalidateSelf();
                chipDrawable2.G();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.c0(new TextAppearance(chipDrawable.n0, i));
        }
        i();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.j0 != f) {
            chipDrawable.j0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
    }

    public void setTextEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            float dimension = chipDrawable.n0.getResources().getDimension(i);
            if (chipDrawable.j0 != dimension) {
                chipDrawable.j0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.G();
            }
        }
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null && chipDrawable.i0 != f) {
            chipDrawable.i0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.G();
        }
    }

    public void setTextStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            float dimension = chipDrawable.n0.getResources().getDimension(i);
            if (chipDrawable.i0 != dimension) {
                chipDrawable.i0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.G();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.Y(z);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.L(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.Q(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            fe.t("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            fe.t("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            fe.t("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            fe.t("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.c0(textAppearance);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.n;
        if (chipDrawable != null) {
            chipDrawable.c0(new TextAppearance(chipDrawable.n0, i));
        }
        i();
    }
}
