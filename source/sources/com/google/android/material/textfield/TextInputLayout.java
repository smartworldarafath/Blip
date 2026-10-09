package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.jb;
import defpackage.u2;
import io.sentry.d;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    public AppCompatTextView A;
    public View.OnLongClickListener A0;
    public ColorStateList B;
    public final CheckableImageButton B0;
    public int C;
    public ColorStateList C0;
    public ColorStateList D;
    public ColorStateList D0;
    public ColorStateList E;
    public ColorStateList E0;
    public CharSequence F;
    public int F0;
    public final AppCompatTextView G;
    public int G0;
    public CharSequence H;
    public int H0;
    public final AppCompatTextView I;
    public ColorStateList I0;
    public boolean J;
    public int J0;
    public CharSequence K;
    public int K0;
    public boolean L;
    public int L0;
    public MaterialShapeDrawable M;
    public int M0;
    public MaterialShapeDrawable N;
    public int N0;
    public final ShapeAppearanceModel O;
    public boolean O0;
    public final int P;
    public final CollapsingTextHelper P0;
    public int Q;
    public boolean Q0;
    public int R;
    public boolean R0;
    public int S;
    public ValueAnimator S0;
    public int T;
    public boolean T0;
    public int U;
    public boolean U0;
    public int V;
    public int W;
    public int a0;
    public final Rect b0;
    public final Rect c0;
    public final RectF d0;
    public Typeface e0;
    public final CheckableImageButton f0;
    public ColorStateList g0;
    public boolean h0;
    public PorterDuff.Mode i0;
    public final FrameLayout j;
    public boolean j0;
    public final LinearLayout k;
    public ColorDrawable k0;
    public final LinearLayout l;
    public int l0;
    public final FrameLayout m;
    public View.OnLongClickListener m0;
    public EditText n;
    public final LinkedHashSet n0;
    public CharSequence o;
    public int o0;
    public int p;
    public final SparseArray p0;
    public int q;
    public final CheckableImageButton q0;
    public final IndicatorViewController r;
    public final LinkedHashSet r0;
    public boolean s;
    public ColorStateList s0;
    public int t;
    public boolean t0;
    public boolean u;
    public PorterDuff.Mode u0;
    public AppCompatTextView v;
    public boolean v0;
    public int w;
    public ColorDrawable w0;
    public int x;
    public int x0;
    public CharSequence y;
    public Drawable y0;
    public boolean z;
    public View.OnLongClickListener z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout m;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.m = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            CharSequence charSequence;
            boolean z;
            String str;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.m;
            EditText editText = textInputLayout.getEditText();
            if (editText != null) {
                charSequence = editText.getText();
            } else {
                charSequence = null;
            }
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean isEmpty = TextUtils.isEmpty(charSequence);
            boolean isEmpty2 = TextUtils.isEmpty(hint);
            boolean z2 = textInputLayout.O0;
            boolean isEmpty3 = TextUtils.isEmpty(error);
            if (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) {
                z = false;
            } else {
                z = true;
            }
            if (!isEmpty2) {
                str = hint.toString();
            } else {
                str = "";
            }
            if (!isEmpty) {
                accessibilityNodeInfoCompat.m(charSequence);
            } else if (!TextUtils.isEmpty(str)) {
                accessibilityNodeInfoCompat.m(str);
                if (!z2 && placeholderText != null) {
                    accessibilityNodeInfoCompat.m(str + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.m(placeholderText);
            }
            if (!TextUtils.isEmpty(str)) {
                accessibilityNodeInfo.setHintText(str);
                accessibilityNodeInfo.setShowingHintText(isEmpty);
            }
            if (charSequence == null || charSequence.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
            if (z) {
                if (isEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfo.setError(error);
            }
            if (editText != null) {
                editText.setLabelFor(R.id.textinput_helper_text);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnEditTextAttachedListener {
        void a(TextInputLayout textInputLayout);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnEndIconChangedListener {
        void a(TextInputLayout textInputLayout, int i);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x05e3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x05d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.a(context, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout), attributeSet, R.attr.textInputStyle);
        float f;
        int i;
        AttributeSet attributeSet2;
        this.p = -1;
        this.q = -1;
        this.r = new IndicatorViewController(this);
        this.b0 = new Rect();
        this.c0 = new Rect();
        this.d0 = new RectF();
        this.n0 = new LinkedHashSet();
        this.o0 = 0;
        SparseArray sparseArray = new SparseArray();
        this.p0 = sparseArray;
        this.r0 = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.P0 = collapsingTextHelper;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.j = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.k = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        frameLayout.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.l = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        frameLayout.addView(linearLayout2);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.m = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearInterpolator linearInterpolator = AnimationUtils.a;
        collapsingTextHelper.H = linearInterpolator;
        collapsingTextHelper.g();
        collapsingTextHelper.G = linearInterpolator;
        collapsingTextHelper.g();
        if (collapsingTextHelper.h != 8388659) {
            collapsingTextHelper.h = 8388659;
            collapsingTextHelper.g();
        }
        ThemeEnforcement.a(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        int[] iArr = R$styleable.v;
        ThemeEnforcement.b(context2, attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout, 20, 18, 33, 38, 42);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout);
        TintTypedArray tintTypedArray = new TintTypedArray(context2, obtainStyledAttributes);
        this.J = obtainStyledAttributes.getBoolean(41, true);
        setHint(obtainStyledAttributes.getText(4));
        this.R0 = obtainStyledAttributes.getBoolean(40, true);
        this.Q0 = obtainStyledAttributes.getBoolean(35, true);
        if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        ShapeAppearanceModel a = ShapeAppearanceModel.a(context2, attributeSet, R.attr.textInputStyle, R.style.Widget_Design_TextInputLayout).a();
        this.O = a;
        this.P = context2.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.S = obtainStyledAttributes.getDimensionPixelOffset(7, 0);
        this.U = obtainStyledAttributes.getDimensionPixelSize(14, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
        this.V = obtainStyledAttributes.getDimensionPixelSize(15, context2.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.T = this.U;
        float dimension = obtainStyledAttributes.getDimension(11, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(8, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(9, -1.0f);
        ShapeAppearanceModel.Builder d = a.d();
        if (dimension >= 0.0f) {
            f = 0.0f;
            d.e = new AbsoluteCornerSize(dimension);
        } else {
            f = 0.0f;
        }
        if (dimension2 >= f) {
            d.f = new AbsoluteCornerSize(dimension2);
        }
        if (dimension3 >= f) {
            d.g = new AbsoluteCornerSize(dimension3);
        }
        if (dimension4 >= f) {
            d.h = new AbsoluteCornerSize(dimension4);
        }
        this.O = d.a();
        ColorStateList b = MaterialResources.b(context2, tintTypedArray, 5);
        if (b != null) {
            int defaultColor = b.getDefaultColor();
            this.J0 = defaultColor;
            this.a0 = defaultColor;
            if (b.isStateful()) {
                this.K0 = b.getColorForState(new int[]{-16842910}, -1);
                this.L0 = b.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
                this.M0 = b.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            } else {
                this.L0 = this.J0;
                ColorStateList a2 = ResourcesCompat.a(context2.getResources(), R.color.mtrl_filled_background_color, context2.getTheme());
                this.K0 = a2.getColorForState(new int[]{-16842910}, -1);
                this.M0 = a2.getColorForState(new int[]{android.R.attr.state_hovered}, -1);
            }
            i = 0;
        } else {
            i = 0;
            this.a0 = 0;
            this.J0 = 0;
            this.K0 = 0;
            this.L0 = 0;
            this.M0 = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList a3 = tintTypedArray.a(1);
            this.E0 = a3;
            this.D0 = a3;
        }
        ColorStateList b2 = MaterialResources.b(context2, tintTypedArray, 12);
        this.H0 = obtainStyledAttributes.getColor(12, i);
        this.F0 = context2.getColor(R.color.mtrl_textinput_default_box_stroke_color);
        this.N0 = context2.getColor(R.color.mtrl_textinput_disabled_color);
        this.G0 = context2.getColor(R.color.mtrl_textinput_hovered_box_stroke_color);
        if (b2 != null) {
            setBoxStrokeColorStateList(b2);
        }
        if (obtainStyledAttributes.hasValue(13)) {
            setBoxStrokeErrorColor(MaterialResources.b(context2, tintTypedArray, 13));
        }
        if (obtainStyledAttributes.getResourceId(42, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(42, 0));
        }
        int resourceId = obtainStyledAttributes.getResourceId(33, 0);
        CharSequence text = obtainStyledAttributes.getText(28);
        boolean z = obtainStyledAttributes.getBoolean(29, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, (ViewGroup) linearLayout2, false);
        this.B0 = checkableImageButton;
        checkableImageButton.setId(R.id.text_input_error_icon);
        checkableImageButton.setVisibility(8);
        if (MaterialResources.d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        if (obtainStyledAttributes.hasValue(30)) {
            setErrorIconDrawable(tintTypedArray.b(30));
        }
        if (obtainStyledAttributes.hasValue(31)) {
            setErrorIconTintList(MaterialResources.b(context2, tintTypedArray, 31));
        }
        if (obtainStyledAttributes.hasValue(32)) {
            setErrorIconTintMode(ViewUtils.b(obtainStyledAttributes.getInt(32, -1), null));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        Field field = ViewCompat.a;
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        int resourceId2 = obtainStyledAttributes.getResourceId(38, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(37, false);
        CharSequence text2 = obtainStyledAttributes.getText(36);
        int resourceId3 = obtainStyledAttributes.getResourceId(50, 0);
        CharSequence text3 = obtainStyledAttributes.getText(49);
        int resourceId4 = obtainStyledAttributes.getResourceId(53, 0);
        CharSequence text4 = obtainStyledAttributes.getText(52);
        int resourceId5 = obtainStyledAttributes.getResourceId(63, 0);
        CharSequence text5 = obtainStyledAttributes.getText(62);
        boolean z3 = obtainStyledAttributes.getBoolean(16, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(17, -1));
        this.x = obtainStyledAttributes.getResourceId(20, 0);
        this.w = obtainStyledAttributes.getResourceId(18, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) linearLayout, false);
        this.f0 = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (MaterialResources.d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginEnd(0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (obtainStyledAttributes.hasValue(59)) {
            setStartIconDrawable(tintTypedArray.b(59));
            if (obtainStyledAttributes.hasValue(58)) {
                setStartIconContentDescription(obtainStyledAttributes.getText(58));
            }
            setStartIconCheckable(obtainStyledAttributes.getBoolean(57, true));
        }
        if (obtainStyledAttributes.hasValue(60)) {
            setStartIconTintList(MaterialResources.b(context2, tintTypedArray, 60));
        }
        if (obtainStyledAttributes.hasValue(61)) {
            setStartIconTintMode(ViewUtils.b(obtainStyledAttributes.getInt(61, -1), null));
        }
        setBoxBackgroundMode(obtainStyledAttributes.getInt(6, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout2, false);
        this.q0 = checkableImageButton3;
        frameLayout2.addView(checkableImageButton3);
        checkableImageButton3.setVisibility(8);
        if (MaterialResources.d(context2)) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton3.getLayoutParams()).setMarginStart(0);
        }
        sparseArray.append(-1, new EndIconDelegate(this));
        sparseArray.append(0, new EndIconDelegate(this));
        sparseArray.append(1, new PasswordToggleEndIconDelegate(this));
        sparseArray.append(2, new ClearTextEndIconDelegate(this));
        sparseArray.append(3, new DropdownMenuEndIconDelegate(this));
        if (obtainStyledAttributes.hasValue(25)) {
            setEndIconMode(obtainStyledAttributes.getInt(25, 0));
            if (obtainStyledAttributes.hasValue(24)) {
                setEndIconDrawable(tintTypedArray.b(24));
            }
            if (obtainStyledAttributes.hasValue(23)) {
                setEndIconContentDescription(obtainStyledAttributes.getText(23));
            }
            setEndIconCheckable(obtainStyledAttributes.getBoolean(22, true));
        } else if (obtainStyledAttributes.hasValue(46)) {
            setEndIconMode(obtainStyledAttributes.getBoolean(46, false) ? 1 : 0);
            setEndIconDrawable(tintTypedArray.b(45));
            setEndIconContentDescription(obtainStyledAttributes.getText(44));
            if (obtainStyledAttributes.hasValue(47)) {
                setEndIconTintList(MaterialResources.b(context2, tintTypedArray, 47));
            }
            if (obtainStyledAttributes.hasValue(48)) {
                setEndIconTintMode(ViewUtils.b(obtainStyledAttributes.getInt(48, -1), null));
            }
        }
        if (!obtainStyledAttributes.hasValue(46)) {
            if (obtainStyledAttributes.hasValue(26)) {
                setEndIconTintList(MaterialResources.b(context2, tintTypedArray, 26));
            }
            if (obtainStyledAttributes.hasValue(27)) {
                attributeSet2 = null;
                setEndIconTintMode(ViewUtils.b(obtainStyledAttributes.getInt(27, -1), null));
                AppCompatTextView appCompatTextView = new AppCompatTextView(context2, attributeSet2);
                this.G = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_prefix_text);
                appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                appCompatTextView.setAccessibilityLiveRegion(1);
                linearLayout.addView(checkableImageButton2);
                linearLayout.addView(appCompatTextView);
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2, attributeSet2);
                this.I = appCompatTextView2;
                appCompatTextView2.setId(R.id.textinput_suffix_text);
                appCompatTextView2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
                appCompatTextView2.setAccessibilityLiveRegion(1);
                linearLayout2.addView(appCompatTextView2);
                linearLayout2.addView(checkableImageButton);
                linearLayout2.addView(frameLayout2);
                setHelperTextEnabled(z2);
                setHelperText(text2);
                setHelperTextTextAppearance(resourceId2);
                setErrorEnabled(z);
                setErrorTextAppearance(resourceId);
                setErrorContentDescription(text);
                setCounterTextAppearance(this.x);
                setCounterOverflowTextAppearance(this.w);
                setPlaceholderText(text3);
                setPlaceholderTextAppearance(resourceId3);
                setPrefixText(text4);
                setPrefixTextAppearance(resourceId4);
                setSuffixText(text5);
                setSuffixTextAppearance(resourceId5);
                if (obtainStyledAttributes.hasValue(34)) {
                    setErrorTextColor(tintTypedArray.a(34));
                }
                if (obtainStyledAttributes.hasValue(39)) {
                    setHelperTextColor(tintTypedArray.a(39));
                }
                if (obtainStyledAttributes.hasValue(43)) {
                    setHintTextColor(tintTypedArray.a(43));
                }
                if (obtainStyledAttributes.hasValue(21)) {
                    setCounterTextColor(tintTypedArray.a(21));
                }
                if (obtainStyledAttributes.hasValue(19)) {
                    setCounterOverflowTextColor(tintTypedArray.a(19));
                }
                if (obtainStyledAttributes.hasValue(51)) {
                    setPlaceholderTextColor(tintTypedArray.a(51));
                }
                if (obtainStyledAttributes.hasValue(54)) {
                    setPrefixTextColor(tintTypedArray.a(54));
                }
                if (obtainStyledAttributes.hasValue(64)) {
                    setSuffixTextColor(tintTypedArray.a(64));
                }
                setCounterEnabled(z3);
                setEnabled(obtainStyledAttributes.getBoolean(0, true));
                tintTypedArray.e();
                setImportantForAccessibility(2);
                ViewCompat.p(this, 1);
            }
        }
        attributeSet2 = null;
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context2, attributeSet2);
        this.G = appCompatTextView3;
        appCompatTextView3.setId(R.id.textinput_prefix_text);
        appCompatTextView3.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        appCompatTextView3.setAccessibilityLiveRegion(1);
        linearLayout.addView(checkableImageButton2);
        linearLayout.addView(appCompatTextView3);
        AppCompatTextView appCompatTextView22 = new AppCompatTextView(context2, attributeSet2);
        this.I = appCompatTextView22;
        appCompatTextView22.setId(R.id.textinput_suffix_text);
        appCompatTextView22.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        appCompatTextView22.setAccessibilityLiveRegion(1);
        linearLayout2.addView(appCompatTextView22);
        linearLayout2.addView(checkableImageButton);
        linearLayout2.addView(frameLayout2);
        setHelperTextEnabled(z2);
        setHelperText(text2);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z);
        setErrorTextAppearance(resourceId);
        setErrorContentDescription(text);
        setCounterTextAppearance(this.x);
        setCounterOverflowTextAppearance(this.w);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        setPrefixText(text4);
        setPrefixTextAppearance(resourceId4);
        setSuffixText(text5);
        setSuffixTextAppearance(resourceId5);
        if (obtainStyledAttributes.hasValue(34)) {
        }
        if (obtainStyledAttributes.hasValue(39)) {
        }
        if (obtainStyledAttributes.hasValue(43)) {
        }
        if (obtainStyledAttributes.hasValue(21)) {
        }
        if (obtainStyledAttributes.hasValue(19)) {
        }
        if (obtainStyledAttributes.hasValue(51)) {
        }
        if (obtainStyledAttributes.hasValue(54)) {
        }
        if (obtainStyledAttributes.hasValue(64)) {
        }
        setCounterEnabled(z3);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        tintTypedArray.e();
        setImportantForAccessibility(2);
        ViewCompat.p(this, 1);
    }

    public static void d(CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = drawable.mutate();
            if (z) {
                drawable.setTintList(colorStateList);
            }
            if (z2) {
                drawable.setTintMode(mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private EndIconDelegate getEndIconDelegate() {
        int i = this.o0;
        SparseArray sparseArray = this.p0;
        EndIconDelegate endIconDelegate = (EndIconDelegate) sparseArray.get(i);
        if (endIconDelegate != null) {
            return endIconDelegate;
        }
        return (EndIconDelegate) sparseArray.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        CheckableImageButton checkableImageButton = this.B0;
        if (checkableImageButton.getVisibility() == 0) {
            return checkableImageButton;
        }
        if (this.o0 != 0 && g()) {
            return this.q0;
        }
        return null;
    }

    public static void j(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                j((ViewGroup) childAt, z);
            }
        }
    }

    public static void l(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean z;
        Field field = ViewCompat.a;
        boolean hasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z2 = false;
        int i = 1;
        if (onLongClickListener != null) {
            z = true;
        } else {
            z = false;
        }
        if (hasOnClickListeners || z) {
            z2 = true;
        }
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z);
        if (!z2) {
            i = 2;
        }
        checkableImageButton.setImportantForAccessibility(i);
    }

    private void setEditText(EditText editText) {
        boolean z;
        boolean z2;
        if (this.n == null) {
            if (this.o0 != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.n = editText;
            setMinWidth(this.p);
            setMaxWidth(this.q);
            h();
            setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
            Typeface typeface = this.n.getTypeface();
            CollapsingTextHelper collapsingTextHelper = this.P0;
            CancelableFontCallback cancelableFontCallback = collapsingTextHelper.v;
            if (cancelableFontCallback != null) {
                cancelableFontCallback.c = true;
            }
            if (collapsingTextHelper.s != typeface) {
                collapsingTextHelper.s = typeface;
                z = true;
            } else {
                z = false;
            }
            if (collapsingTextHelper.t != typeface) {
                collapsingTextHelper.t = typeface;
                z2 = true;
            } else {
                z2 = false;
            }
            if (z || z2) {
                collapsingTextHelper.g();
            }
            float textSize = this.n.getTextSize();
            if (collapsingTextHelper.i != textSize) {
                collapsingTextHelper.i = textSize;
                collapsingTextHelper.g();
            }
            int gravity = this.n.getGravity();
            int i = (gravity & (-113)) | 48;
            if (collapsingTextHelper.h != i) {
                collapsingTextHelper.h = i;
                collapsingTextHelper.g();
            }
            if (collapsingTextHelper.g != gravity) {
                collapsingTextHelper.g = gravity;
                collapsingTextHelper.g();
            }
            this.n.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                    TextInputLayout textInputLayout = TextInputLayout.this;
                    textInputLayout.s(!textInputLayout.U0, false);
                    if (textInputLayout.s) {
                        textInputLayout.n(editable.length());
                    }
                    if (textInputLayout.z) {
                        textInputLayout.t(editable.length());
                    }
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }
            });
            if (this.D0 == null) {
                this.D0 = this.n.getHintTextColors();
            }
            if (this.J) {
                if (TextUtils.isEmpty(this.K)) {
                    CharSequence hint = this.n.getHint();
                    this.o = hint;
                    setHint(hint);
                    this.n.setHint((CharSequence) null);
                }
                this.L = true;
            }
            if (this.v != null) {
                n(this.n.getText().length());
            }
            q();
            this.r.b();
            this.k.bringToFront();
            this.l.bringToFront();
            this.m.bringToFront();
            this.B0.bringToFront();
            Iterator it = this.n0.iterator();
            while (it.hasNext()) {
                ((OnEditTextAttachedListener) it.next()).a(this);
            }
            u();
            x();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            s(false, true);
            return;
        }
        u2.g("We already have an EditText, can only have one");
    }

    private void setErrorIconVisible(boolean z) {
        int i;
        int i2 = 8;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        this.B0.setVisibility(i);
        if (!z) {
            i2 = 0;
        }
        this.m.setVisibility(i2);
        x();
        if (this.o0 != 0) {
            return;
        }
        p();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.K)) {
            this.K = charSequence;
            CollapsingTextHelper collapsingTextHelper = this.P0;
            if (charSequence == null || !TextUtils.equals(collapsingTextHelper.w, charSequence)) {
                collapsingTextHelper.w = charSequence;
                collapsingTextHelper.x = null;
                Bitmap bitmap = collapsingTextHelper.z;
                if (bitmap != null) {
                    bitmap.recycle();
                    collapsingTextHelper.z = null;
                }
                collapsingTextHelper.g();
            }
            if (!this.O0) {
                i();
            }
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.z == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.A = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            this.A.setAccessibilityLiveRegion(1);
            setPlaceholderTextAppearance(this.C);
            setPlaceholderTextColor(this.B);
            AppCompatTextView appCompatTextView2 = this.A;
            if (appCompatTextView2 != null) {
                this.j.addView(appCompatTextView2);
                this.A.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView3 = this.A;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setVisibility(8);
            }
            this.A = null;
        }
        this.z = z;
    }

    public final void a(float f) {
        CollapsingTextHelper collapsingTextHelper = this.P0;
        if (collapsingTextHelper.c == f) {
            return;
        }
        if (this.S0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.S0 = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.b);
            this.S0.setDuration(167L);
            this.S0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextInputLayout.this.P0.j(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.S0.setFloatValues(collapsingTextHelper.c, f);
        this.S0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            FrameLayout frameLayout = this.j;
            frameLayout.addView(view, layoutParams2);
            frameLayout.setLayoutParams(layoutParams);
            r();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public final void b() {
        int i;
        int i2;
        int i3;
        int i4;
        MaterialShapeDrawable materialShapeDrawable = this.M;
        if (materialShapeDrawable == null) {
            return;
        }
        materialShapeDrawable.setShapeAppearanceModel(this.O);
        if (this.R == 2 && (i3 = this.T) > -1 && (i4 = this.W) != 0) {
            MaterialShapeDrawable materialShapeDrawable2 = this.M;
            materialShapeDrawable2.v(i3);
            materialShapeDrawable2.u(ColorStateList.valueOf(i4));
        }
        int i5 = this.a0;
        if (this.R == 1) {
            TypedValue a = MaterialAttributes.a(getContext(), R.attr.colorSurface);
            if (a != null) {
                i2 = a.data;
            } else {
                i2 = 0;
            }
            i5 = ColorUtils.b(this.a0, i2);
        }
        this.a0 = i5;
        this.M.r(ColorStateList.valueOf(i5));
        if (this.o0 == 3) {
            this.n.getBackground().invalidateSelf();
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.N;
        if (materialShapeDrawable3 != null) {
            if (this.T > -1 && (i = this.W) != 0) {
                materialShapeDrawable3.r(ColorStateList.valueOf(i));
            }
            invalidate();
        }
        invalidate();
    }

    public final void c() {
        d(this.q0, this.t0, this.s0, this.v0, this.u0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.n;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.o != null) {
            boolean z = this.L;
            this.L = false;
            CharSequence hint = editText.getHint();
            this.n.setHint(this.o);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.n.setHint(hint);
                this.L = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.j;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.n) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.U0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.U0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.J) {
            CollapsingTextHelper collapsingTextHelper = this.P0;
            collapsingTextHelper.getClass();
            int save = canvas.save();
            if (collapsingTextHelper.x != null && collapsingTextHelper.b) {
                collapsingTextHelper.N.getLineLeft(0);
                collapsingTextHelper.E.setTextSize(collapsingTextHelper.B);
                float f = collapsingTextHelper.q;
                float f2 = collapsingTextHelper.r;
                float f3 = collapsingTextHelper.A;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                canvas.translate(f, f2);
                collapsingTextHelper.N.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.N;
        if (materialShapeDrawable != null) {
            Rect bounds = materialShapeDrawable.getBounds();
            bounds.top = bounds.bottom - this.T;
            this.N.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void drawableStateChanged() {
        boolean z;
        ColorStateList colorStateList;
        if (this.T0) {
            return;
        }
        boolean z2 = true;
        this.T0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.P0;
        if (collapsingTextHelper != null) {
            collapsingTextHelper.C = drawableState;
            ColorStateList colorStateList2 = collapsingTextHelper.l;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = collapsingTextHelper.k) != null && colorStateList.isStateful())) {
                collapsingTextHelper.g();
                z = true;
                if (this.n != null) {
                    Field field = ViewCompat.a;
                    if (!isLaidOut() || !isEnabled()) {
                        z2 = false;
                    }
                    s(z2, false);
                }
                q();
                z();
                if (z) {
                    invalidate();
                }
                this.T0 = false;
            }
        }
        z = false;
        if (this.n != null) {
        }
        q();
        z();
        if (z) {
        }
        this.T0 = false;
    }

    public final int e() {
        float f;
        if (this.J) {
            int i = this.R;
            CollapsingTextHelper collapsingTextHelper = this.P0;
            if (i != 0 && i != 1) {
                if (i != 2) {
                    return 0;
                }
                TextPaint textPaint = collapsingTextHelper.F;
                textPaint.setTextSize(collapsingTextHelper.j);
                textPaint.setTypeface(collapsingTextHelper.s);
                textPaint.setLetterSpacing(collapsingTextHelper.M);
                f = (-textPaint.ascent()) / 2.0f;
            } else {
                TextPaint textPaint2 = collapsingTextHelper.F;
                textPaint2.setTextSize(collapsingTextHelper.j);
                textPaint2.setTypeface(collapsingTextHelper.s);
                textPaint2.setLetterSpacing(collapsingTextHelper.M);
                f = -textPaint2.ascent();
            }
            return (int) f;
        }
        return 0;
    }

    public final boolean f() {
        if (this.J && !TextUtils.isEmpty(this.K) && (this.M instanceof CutoutDrawable)) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        if (this.m.getVisibility() == 0 && this.q0.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.n;
        if (editText != null) {
            return e() + getPaddingTop() + editText.getBaseline();
        }
        return super.getBaseline();
    }

    public MaterialShapeDrawable getBoxBackground() {
        int i = this.R;
        if (i != 1 && i != 2) {
            d.d();
            return null;
        }
        return this.M;
    }

    public int getBoxBackgroundColor() {
        return this.a0;
    }

    public int getBoxBackgroundMode() {
        return this.R;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.M.g();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.M.h();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.M.m();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.M.l();
    }

    public int getBoxStrokeColor() {
        return this.H0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.I0;
    }

    public int getBoxStrokeWidth() {
        return this.U;
    }

    public int getBoxStrokeWidthFocused() {
        return this.V;
    }

    public int getCounterMaxLength() {
        return this.t;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.s && this.u && (appCompatTextView = this.v) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.D;
    }

    public ColorStateList getCounterTextColor() {
        return this.D;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.D0;
    }

    public EditText getEditText() {
        return this.n;
    }

    public CharSequence getEndIconContentDescription() {
        return this.q0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.q0.getDrawable();
    }

    public int getEndIconMode() {
        return this.o0;
    }

    public CheckableImageButton getEndIconView() {
        return this.q0;
    }

    public CharSequence getError() {
        IndicatorViewController indicatorViewController = this.r;
        if (indicatorViewController.k) {
            return indicatorViewController.j;
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.r.m;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.r.l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.B0.getDrawable();
    }

    public final int getErrorTextCurrentColor() {
        AppCompatTextView appCompatTextView = this.r.l;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHelperText() {
        IndicatorViewController indicatorViewController = this.r;
        if (indicatorViewController.q) {
            return indicatorViewController.p;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.r.r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.J) {
            return this.K;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        CollapsingTextHelper collapsingTextHelper = this.P0;
        TextPaint textPaint = collapsingTextHelper.F;
        textPaint.setTextSize(collapsingTextHelper.j);
        textPaint.setTypeface(collapsingTextHelper.s);
        textPaint.setLetterSpacing(collapsingTextHelper.M);
        return -textPaint.ascent();
    }

    public final int getHintCurrentCollapsedTextColor() {
        CollapsingTextHelper collapsingTextHelper = this.P0;
        return collapsingTextHelper.d(collapsingTextHelper.l);
    }

    public ColorStateList getHintTextColor() {
        return this.E0;
    }

    public int getMaxWidth() {
        return this.q;
    }

    public int getMinWidth() {
        return this.p;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.q0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.q0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.z) {
            return this.y;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.C;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.B;
    }

    public CharSequence getPrefixText() {
        return this.F;
    }

    public ColorStateList getPrefixTextColor() {
        return this.G.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.G;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f0.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f0.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.H;
    }

    public ColorStateList getSuffixTextColor() {
        return this.I.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.I;
    }

    public Typeface getTypeface() {
        return this.e0;
    }

    public final void h() {
        int i = this.R;
        if (i != 0) {
            ShapeAppearanceModel shapeAppearanceModel = this.O;
            if (i != 1) {
                if (i == 2) {
                    if (this.J && !(this.M instanceof CutoutDrawable)) {
                        this.M = new CutoutDrawable(shapeAppearanceModel);
                    } else {
                        this.M = new MaterialShapeDrawable(shapeAppearanceModel);
                    }
                    this.N = null;
                } else {
                    u2.g(jb.i(new StringBuilder(), this.R, " is illegal; only @BoxBackgroundMode constants are supported."));
                    return;
                }
            } else {
                this.M = new MaterialShapeDrawable(shapeAppearanceModel);
                this.N = new MaterialShapeDrawable();
            }
        } else {
            this.M = null;
            this.N = null;
        }
        EditText editText = this.n;
        if (editText != null && this.M != null && editText.getBackground() == null && this.R != 0) {
            EditText editText2 = this.n;
            MaterialShapeDrawable materialShapeDrawable = this.M;
            Field field = ViewCompat.a;
            editText2.setBackground(materialShapeDrawable);
        }
        z();
        if (this.R == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.S = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.d(getContext())) {
                this.S = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.n != null && this.R == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText3 = this.n;
                Field field2 = ViewCompat.a;
                editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), this.n.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (MaterialResources.d(getContext())) {
                EditText editText4 = this.n;
                Field field3 = ViewCompat.a;
                editText4.setPaddingRelative(editText4.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), this.n.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.R != 0) {
            r();
        }
    }

    public final void i() {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        float f;
        float b;
        float f2;
        float b2;
        int i;
        float b3;
        int i2;
        if (!f()) {
            return;
        }
        int width = this.n.getWidth();
        int gravity = this.n.getGravity();
        CollapsingTextHelper collapsingTextHelper = this.P0;
        CharSequence charSequence = collapsingTextHelper.w;
        TextInputLayout textInputLayout = collapsingTextHelper.a;
        Field field = ViewCompat.a;
        if (textInputLayout.getLayoutDirection() == 1) {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.d;
        } else {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.c;
        }
        boolean a = textDirectionHeuristicCompat.a(charSequence, charSequence.length());
        collapsingTextHelper.y = a;
        Rect rect = collapsingTextHelper.e;
        if (gravity != 17 && (gravity & 7) != 1) {
            if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                if (a) {
                    f = rect.right;
                    b = collapsingTextHelper.b();
                } else {
                    i2 = rect.left;
                    f2 = i2;
                }
            } else if (a) {
                i2 = rect.left;
                f2 = i2;
            } else {
                f = rect.right;
                b = collapsingTextHelper.b();
            }
            RectF rectF = this.d0;
            rectF.left = f2;
            rectF.top = rect.top;
            if (gravity == 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                    if (collapsingTextHelper.y) {
                        i = rect.right;
                        b2 = i;
                    } else {
                        b3 = collapsingTextHelper.b();
                        b2 = b3 + f2;
                    }
                } else if (collapsingTextHelper.y) {
                    b3 = collapsingTextHelper.b();
                    b2 = b3 + f2;
                } else {
                    i = rect.right;
                    b2 = i;
                }
            } else {
                b2 = (width / 2.0f) + (collapsingTextHelper.b() / 2.0f);
            }
            rectF.right = b2;
            TextPaint textPaint = collapsingTextHelper.F;
            textPaint.setTextSize(collapsingTextHelper.j);
            textPaint.setTypeface(collapsingTextHelper.s);
            textPaint.setLetterSpacing(collapsingTextHelper.M);
            textPaint.ascent();
            float f3 = rectF.left;
            float f4 = this.P;
            rectF.left = f3 - f4;
            rectF.right += f4;
            int i3 = this.T;
            this.Q = i3;
            rectF.top = 0.0f;
            rectF.bottom = i3;
            rectF.offset(-getPaddingLeft(), 0.0f);
            CutoutDrawable cutoutDrawable = (CutoutDrawable) this.M;
            cutoutDrawable.getClass();
            cutoutDrawable.z(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
        f = width / 2.0f;
        b = collapsingTextHelper.b() / 2.0f;
        f2 = f - b;
        RectF rectF2 = this.d0;
        rectF2.left = f2;
        rectF2.top = rect.top;
        if (gravity == 17) {
        }
        b2 = (width / 2.0f) + (collapsingTextHelper.b() / 2.0f);
        rectF2.right = b2;
        TextPaint textPaint2 = collapsingTextHelper.F;
        textPaint2.setTextSize(collapsingTextHelper.j);
        textPaint2.setTypeface(collapsingTextHelper.s);
        textPaint2.setLetterSpacing(collapsingTextHelper.M);
        textPaint2.ascent();
        float f32 = rectF2.left;
        float f42 = this.P;
        rectF2.left = f32 - f42;
        rectF2.right += f42;
        int i32 = this.T;
        this.Q = i32;
        rectF2.top = 0.0f;
        rectF2.bottom = i32;
        rectF2.offset(-getPaddingLeft(), 0.0f);
        CutoutDrawable cutoutDrawable2 = (CutoutDrawable) this.M;
        cutoutDrawable2.getClass();
        cutoutDrawable2.z(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom);
    }

    public final void k(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() != null && colorStateList != null && colorStateList.isStateful()) {
            int[] drawableState = getDrawableState();
            int[] drawableState2 = checkableImageButton.getDrawableState();
            int length = drawableState.length;
            int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
            System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
            int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
            Drawable mutate = drawable.mutate();
            mutate.setTintList(ColorStateList.valueOf(colorForState));
            checkableImageButton.setImageDrawable(mutate);
        }
    }

    public final void m(AppCompatTextView appCompatTextView, int i) {
        try {
            appCompatTextView.setTextAppearance(i);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        appCompatTextView.setTextAppearance(R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(getContext().getColor(R.color.design_error));
    }

    public final void n(int i) {
        boolean z;
        int i2;
        BidiFormatter bidiFormatter;
        boolean z2 = this.u;
        int i3 = this.t;
        String str = null;
        if (i3 == -1) {
            this.v.setText(String.valueOf(i));
            this.v.setContentDescription(null);
            this.u = false;
        } else {
            if (i > i3) {
                z = true;
            } else {
                z = false;
            }
            this.u = z;
            Context context = getContext();
            AppCompatTextView appCompatTextView = this.v;
            int i4 = this.t;
            if (this.u) {
                i2 = R.string.character_counter_overflowed_content_description;
            } else {
                i2 = R.string.character_counter_content_description;
            }
            appCompatTextView.setContentDescription(context.getString(i2, Integer.valueOf(i), Integer.valueOf(i4)));
            if (z2 != this.u) {
                o();
            }
            String str2 = BidiFormatter.b;
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                bidiFormatter = BidiFormatter.e;
            } else {
                bidiFormatter = BidiFormatter.d;
            }
            AppCompatTextView appCompatTextView2 = this.v;
            String string = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.t));
            bidiFormatter.getClass();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
            if (string != null) {
                str = bidiFormatter.c(string).toString();
            }
            appCompatTextView2.setText(str);
        }
        if (this.n != null && z2 != this.u) {
            s(false, false);
            z();
            q();
        }
    }

    public final void o() {
        int i;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.v;
        if (appCompatTextView != null) {
            if (this.u) {
                i = this.w;
            } else {
                i = this.x;
            }
            m(appCompatTextView, i);
            if (!this.u && (colorStateList2 = this.D) != null) {
                this.v.setTextColor(colorStateList2);
            }
            if (this.u && (colorStateList = this.E) != null) {
                this.v.setTextColor(colorStateList);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int compoundPaddingTop;
        int compoundPaddingBottom;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.n;
        if (editText != null) {
            ThreadLocal threadLocal = DescendantOffsetUtils.a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.b0;
            boolean z2 = false;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = DescendantOffsetUtils.a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            DescendantOffsetUtils.a(this, editText, matrix);
            ThreadLocal threadLocal3 = DescendantOffsetUtils.b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            MaterialShapeDrawable materialShapeDrawable = this.N;
            if (materialShapeDrawable != null) {
                int i5 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i5 - this.V, rect.right, i5);
            }
            if (this.J) {
                float textSize = this.n.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.P0;
                if (collapsingTextHelper.i != textSize) {
                    collapsingTextHelper.i = textSize;
                    collapsingTextHelper.g();
                }
                int gravity = this.n.getGravity();
                int i6 = (gravity & (-113)) | 48;
                if (collapsingTextHelper.h != i6) {
                    collapsingTextHelper.h = i6;
                    collapsingTextHelper.g();
                }
                if (collapsingTextHelper.g != gravity) {
                    collapsingTextHelper.g = gravity;
                    collapsingTextHelper.g();
                }
                if (this.n != null) {
                    Field field = ViewCompat.a;
                    if (getLayoutDirection() == 1) {
                        z2 = true;
                    }
                    int i7 = rect.bottom;
                    Rect rect2 = this.c0;
                    rect2.bottom = i7;
                    int i8 = this.R;
                    int i9 = rect.left;
                    AppCompatTextView appCompatTextView = this.G;
                    if (i8 != 1) {
                        if (i8 != 2) {
                            int compoundPaddingLeft = this.n.getCompoundPaddingLeft() + i9;
                            if (this.F != null && !z2) {
                                compoundPaddingLeft = (compoundPaddingLeft - appCompatTextView.getMeasuredWidth()) + appCompatTextView.getPaddingLeft();
                            }
                            rect2.left = compoundPaddingLeft;
                            rect2.top = getPaddingTop();
                            int compoundPaddingRight = rect.right - this.n.getCompoundPaddingRight();
                            if (this.F != null && z2) {
                                compoundPaddingRight += appCompatTextView.getMeasuredWidth() - appCompatTextView.getPaddingRight();
                            }
                            rect2.right = compoundPaddingRight;
                        } else {
                            rect2.left = this.n.getPaddingLeft() + i9;
                            rect2.top = rect.top - e();
                            rect2.right = rect.right - this.n.getPaddingRight();
                        }
                    } else {
                        int compoundPaddingLeft2 = this.n.getCompoundPaddingLeft() + i9;
                        if (this.F != null && !z2) {
                            compoundPaddingLeft2 = (compoundPaddingLeft2 - appCompatTextView.getMeasuredWidth()) + appCompatTextView.getPaddingLeft();
                        }
                        rect2.left = compoundPaddingLeft2;
                        rect2.top = rect.top + this.S;
                        int compoundPaddingRight2 = rect.right - this.n.getCompoundPaddingRight();
                        if (this.F != null && z2) {
                            compoundPaddingRight2 += appCompatTextView.getMeasuredWidth() - appCompatTextView.getPaddingRight();
                        }
                        rect2.right = compoundPaddingRight2;
                    }
                    int i10 = rect2.left;
                    int i11 = rect2.top;
                    int i12 = rect2.right;
                    int i13 = rect2.bottom;
                    Rect rect3 = collapsingTextHelper.e;
                    if (rect3.left != i10 || rect3.top != i11 || rect3.right != i12 || rect3.bottom != i13) {
                        rect3.set(i10, i11, i12, i13);
                        collapsingTextHelper.D = true;
                        collapsingTextHelper.f();
                    }
                    if (this.n != null) {
                        TextPaint textPaint = collapsingTextHelper.F;
                        textPaint.setTextSize(collapsingTextHelper.i);
                        textPaint.setTypeface(collapsingTextHelper.t);
                        textPaint.setLetterSpacing(0.0f);
                        float f = -textPaint.ascent();
                        rect2.left = this.n.getCompoundPaddingLeft() + rect.left;
                        if (this.R == 1 && this.n.getMinLines() <= 1) {
                            compoundPaddingTop = (int) (rect.centerY() - (f / 2.0f));
                        } else {
                            compoundPaddingTop = rect.top + this.n.getCompoundPaddingTop();
                        }
                        rect2.top = compoundPaddingTop;
                        rect2.right = rect.right - this.n.getCompoundPaddingRight();
                        if (this.R == 1 && this.n.getMinLines() <= 1) {
                            compoundPaddingBottom = (int) (rect2.top + f);
                        } else {
                            compoundPaddingBottom = rect.bottom - this.n.getCompoundPaddingBottom();
                        }
                        rect2.bottom = compoundPaddingBottom;
                        int i14 = rect2.left;
                        int i15 = rect2.top;
                        int i16 = rect2.right;
                        Rect rect4 = collapsingTextHelper.d;
                        if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom) {
                            rect4.set(i14, i15, i16, compoundPaddingBottom);
                            collapsingTextHelper.D = true;
                            collapsingTextHelper.f();
                        }
                        collapsingTextHelper.g();
                        if (f() && !this.O0) {
                            i();
                            return;
                        }
                        return;
                    }
                    d.d();
                    return;
                }
                d.d();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        boolean z = false;
        if (this.n != null && this.n.getMeasuredHeight() < (max = Math.max(this.l.getMeasuredHeight(), this.k.getMeasuredHeight()))) {
            this.n.setMinimumHeight(max);
            z = true;
        }
        boolean p = p();
        if (z || p) {
            this.n.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.n.requestLayout();
                }
            });
        }
        if (this.A != null && (editText = this.n) != null) {
            this.A.setGravity(editText.getGravity());
            this.A.setPadding(this.n.getCompoundPaddingLeft(), this.n.getCompoundPaddingTop(), this.n.getCompoundPaddingRight(), this.n.getCompoundPaddingBottom());
        }
        u();
        x();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.j);
        setError(savedState.l);
        if (savedState.m) {
            this.q0.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public final void run() {
                    CheckableImageButton checkableImageButton = TextInputLayout.this.q0;
                    checkableImageButton.performClick();
                    checkableImageButton.jumpDrawablesToCurrentState();
                }
            });
        }
        setHint(savedState.n);
        setHelperText(savedState.o);
        setPlaceholderText(savedState.p);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.material.textfield.TextInputLayout$SavedState, android.os.Parcelable, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        if (this.r.e()) {
            absSavedState.l = getError();
        }
        if (this.o0 != 0 && this.q0.m) {
            z = true;
        } else {
            z = false;
        }
        absSavedState.m = z;
        absSavedState.n = getHint();
        absSavedState.o = getHelperText();
        absSavedState.p = getPlaceholderText();
        return absSavedState;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean p() {
        boolean z;
        CheckableImageButton endIconToUpdateDummyDrawable;
        Drawable[] compoundDrawablesRelative;
        ColorDrawable colorDrawable;
        Drawable drawable;
        ColorDrawable colorDrawable2;
        if (this.n == null) {
            return false;
        }
        boolean z2 = true;
        if (getStartIconDrawable() != null || this.F != null) {
            LinearLayout linearLayout = this.k;
            if (linearLayout.getMeasuredWidth() > 0) {
                int measuredWidth = linearLayout.getMeasuredWidth() - this.n.getPaddingLeft();
                if (this.k0 == null || this.l0 != measuredWidth) {
                    ColorDrawable colorDrawable3 = new ColorDrawable();
                    this.k0 = colorDrawable3;
                    this.l0 = measuredWidth;
                    colorDrawable3.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative2 = this.n.getCompoundDrawablesRelative();
                Drawable drawable2 = compoundDrawablesRelative2[0];
                ColorDrawable colorDrawable4 = this.k0;
                if (drawable2 != colorDrawable4) {
                    this.n.setCompoundDrawablesRelative(colorDrawable4, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                    z = true;
                    if ((this.B0.getVisibility() != 0 || ((this.o0 != 0 && g()) || this.H != null)) && this.l.getMeasuredWidth() > 0) {
                        int measuredWidth2 = this.I.getMeasuredWidth() - this.n.getPaddingRight();
                        endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
                        if (endIconToUpdateDummyDrawable != null) {
                            measuredWidth2 = ((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams()).getMarginStart() + endIconToUpdateDummyDrawable.getMeasuredWidth() + measuredWidth2;
                        }
                        compoundDrawablesRelative = this.n.getCompoundDrawablesRelative();
                        colorDrawable = this.w0;
                        if (colorDrawable == null && this.x0 != measuredWidth2) {
                            this.x0 = measuredWidth2;
                            colorDrawable.setBounds(0, 0, measuredWidth2, 1);
                            this.n.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.w0, compoundDrawablesRelative[3]);
                            return true;
                        }
                        if (colorDrawable == null) {
                            ColorDrawable colorDrawable5 = new ColorDrawable();
                            this.w0 = colorDrawable5;
                            this.x0 = measuredWidth2;
                            colorDrawable5.setBounds(0, 0, measuredWidth2, 1);
                        }
                        drawable = compoundDrawablesRelative[2];
                        colorDrawable2 = this.w0;
                        if (drawable != colorDrawable2) {
                            this.y0 = drawable;
                            this.n.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], colorDrawable2, compoundDrawablesRelative[3]);
                            return true;
                        }
                    } else if (this.w0 != null) {
                        Drawable[] compoundDrawablesRelative3 = this.n.getCompoundDrawablesRelative();
                        if (compoundDrawablesRelative3[2] == this.w0) {
                            this.n.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.y0, compoundDrawablesRelative3[3]);
                        } else {
                            z2 = z;
                        }
                        this.w0 = null;
                        return z2;
                    }
                    return z;
                }
                z = false;
                if (this.B0.getVisibility() != 0) {
                }
                int measuredWidth22 = this.I.getMeasuredWidth() - this.n.getPaddingRight();
                endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
                if (endIconToUpdateDummyDrawable != null) {
                }
                compoundDrawablesRelative = this.n.getCompoundDrawablesRelative();
                colorDrawable = this.w0;
                if (colorDrawable == null) {
                }
                if (colorDrawable == null) {
                }
                drawable = compoundDrawablesRelative[2];
                colorDrawable2 = this.w0;
                if (drawable != colorDrawable2) {
                }
                return z;
            }
        }
        if (this.k0 != null) {
            Drawable[] compoundDrawablesRelative4 = this.n.getCompoundDrawablesRelative();
            this.n.setCompoundDrawablesRelative(null, compoundDrawablesRelative4[1], compoundDrawablesRelative4[2], compoundDrawablesRelative4[3]);
            this.k0 = null;
            z = true;
            if (this.B0.getVisibility() != 0) {
            }
            int measuredWidth222 = this.I.getMeasuredWidth() - this.n.getPaddingRight();
            endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
            }
            compoundDrawablesRelative = this.n.getCompoundDrawablesRelative();
            colorDrawable = this.w0;
            if (colorDrawable == null) {
            }
            if (colorDrawable == null) {
            }
            drawable = compoundDrawablesRelative[2];
            colorDrawable2 = this.w0;
            if (drawable != colorDrawable2) {
            }
            return z;
        }
        z = false;
        if (this.B0.getVisibility() != 0) {
        }
        int measuredWidth2222 = this.I.getMeasuredWidth() - this.n.getPaddingRight();
        endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
        if (endIconToUpdateDummyDrawable != null) {
        }
        compoundDrawablesRelative = this.n.getCompoundDrawablesRelative();
        colorDrawable = this.w0;
        if (colorDrawable == null) {
        }
        if (colorDrawable == null) {
        }
        drawable = compoundDrawablesRelative[2];
        colorDrawable2 = this.w0;
        if (drawable != colorDrawable2) {
        }
        return z;
    }

    public final void q() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        int i;
        EditText editText = this.n;
        if (editText != null && this.R == 0 && (background = editText.getBackground()) != null) {
            int[] iArr = DrawableUtils.a;
            Drawable mutate = background.mutate();
            IndicatorViewController indicatorViewController = this.r;
            if (indicatorViewController.e()) {
                AppCompatTextView appCompatTextView2 = indicatorViewController.l;
                if (appCompatTextView2 != null) {
                    i = appCompatTextView2.getCurrentTextColor();
                } else {
                    i = -1;
                }
                mutate.setColorFilter(AppCompatDrawableManager.b(i, PorterDuff.Mode.SRC_IN));
                return;
            }
            if (this.u && (appCompatTextView = this.v) != null) {
                mutate.setColorFilter(AppCompatDrawableManager.b(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else {
                mutate.clearColorFilter();
                this.n.refreshDrawableState();
            }
        }
    }

    public final void r() {
        if (this.R != 1) {
            FrameLayout frameLayout = this.j;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int e = e();
            if (e != layoutParams.topMargin) {
                layoutParams.topMargin = e;
                frameLayout.requestLayout();
            }
        }
    }

    public final void s(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        ColorStateList colorStateList2;
        boolean isEnabled = isEnabled();
        EditText editText = this.n;
        int i = 0;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z3 = true;
        } else {
            z3 = false;
        }
        EditText editText2 = this.n;
        if (editText2 != null && editText2.hasFocus()) {
            z4 = true;
        } else {
            z4 = false;
        }
        IndicatorViewController indicatorViewController = this.r;
        boolean e = indicatorViewController.e();
        ColorStateList colorStateList3 = this.D0;
        CollapsingTextHelper collapsingTextHelper = this.P0;
        if (colorStateList3 != null) {
            collapsingTextHelper.i(colorStateList3);
            ColorStateList colorStateList4 = this.D0;
            if (collapsingTextHelper.k != colorStateList4) {
                collapsingTextHelper.k = colorStateList4;
                collapsingTextHelper.g();
            }
        }
        if (!isEnabled) {
            ColorStateList colorStateList5 = this.D0;
            int i2 = this.N0;
            if (colorStateList5 != null) {
                i2 = colorStateList5.getColorForState(new int[]{-16842910}, i2);
            }
            collapsingTextHelper.i(ColorStateList.valueOf(i2));
            ColorStateList valueOf = ColorStateList.valueOf(i2);
            if (collapsingTextHelper.k != valueOf) {
                collapsingTextHelper.k = valueOf;
                collapsingTextHelper.g();
            }
        } else if (e) {
            AppCompatTextView appCompatTextView2 = indicatorViewController.l;
            if (appCompatTextView2 != null) {
                colorStateList2 = appCompatTextView2.getTextColors();
            } else {
                colorStateList2 = null;
            }
            collapsingTextHelper.i(colorStateList2);
        } else if (this.u && (appCompatTextView = this.v) != null) {
            collapsingTextHelper.i(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.E0) != null) {
            collapsingTextHelper.i(colorStateList);
        }
        if (!z3 && this.Q0 && (!isEnabled() || !z4)) {
            if (z2 || !this.O0) {
                ValueAnimator valueAnimator = this.S0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.S0.cancel();
                }
                if (z && this.R0) {
                    a(0.0f);
                } else {
                    collapsingTextHelper.j(0.0f);
                }
                if (f() && !((CutoutDrawable) this.M).H.isEmpty() && f()) {
                    ((CutoutDrawable) this.M).z(0.0f, 0.0f, 0.0f, 0.0f);
                }
                this.O0 = true;
                AppCompatTextView appCompatTextView3 = this.A;
                if (appCompatTextView3 != null && this.z) {
                    appCompatTextView3.setText((CharSequence) null);
                    this.A.setVisibility(4);
                }
                v();
                y();
                return;
            }
            return;
        }
        if (!z2 && !this.O0) {
            return;
        }
        ValueAnimator valueAnimator2 = this.S0;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.S0.cancel();
        }
        if (z && this.R0) {
            a(1.0f);
        } else {
            collapsingTextHelper.j(1.0f);
        }
        this.O0 = false;
        if (f()) {
            i();
        }
        EditText editText3 = this.n;
        if (editText3 != null) {
            i = editText3.getText().length();
        }
        t(i);
        v();
        y();
    }

    public void setBoxBackgroundColor(int i) {
        if (this.a0 != i) {
            this.a0 = i;
            this.J0 = i;
            this.L0 = i;
            this.M0 = i;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.J0 = defaultColor;
        this.a0 = defaultColor;
        this.K0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.L0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.M0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i) {
        if (i != this.R) {
            this.R = i;
            if (this.n != null) {
                h();
            }
        }
    }

    public void setBoxStrokeColor(int i) {
        if (this.H0 != i) {
            this.H0 = i;
            z();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.F0 = colorStateList.getDefaultColor();
            this.N0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.G0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.H0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.H0 != colorStateList.getDefaultColor()) {
            this.H0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.I0 != colorStateList) {
            this.I0 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.U = i;
        z();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.V = i;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        int length;
        if (this.s != z) {
            IndicatorViewController indicatorViewController = this.r;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.v = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.e0;
                if (typeface != null) {
                    this.v.setTypeface(typeface);
                }
                this.v.setMaxLines(1);
                indicatorViewController.a(this.v, 2);
                ((ViewGroup.MarginLayoutParams) this.v.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.v != null) {
                    EditText editText = this.n;
                    if (editText == null) {
                        length = 0;
                    } else {
                        length = editText.getText().length();
                    }
                    n(length);
                }
            } else {
                indicatorViewController.h(this.v, 2);
                this.v = null;
            }
            this.s = z;
        }
    }

    public void setCounterMaxLength(int i) {
        int length;
        if (this.t != i) {
            if (i > 0) {
                this.t = i;
            } else {
                this.t = -1;
            }
            if (this.s && this.v != null) {
                EditText editText = this.n;
                if (editText == null) {
                    length = 0;
                } else {
                    length = editText.getText().length();
                }
                n(length);
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.w != i) {
            this.w = i;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.x != i) {
            this.x = i;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            o();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.D0 = colorStateList;
        this.E0 = colorStateList;
        if (this.n != null) {
            s(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        j(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.q0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.q0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setEndIconContentDescription(charSequence);
    }

    public void setEndIconDrawable(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.b(getContext(), i);
        } else {
            drawable = null;
        }
        setEndIconDrawable(drawable);
    }

    public void setEndIconMode(int i) {
        boolean z;
        int i2 = this.o0;
        this.o0 = i;
        Iterator it = this.r0.iterator();
        while (it.hasNext()) {
            ((OnEndIconChangedListener) it.next()).a(this, i2);
        }
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        setEndIconVisible(z);
        if (getEndIconDelegate().b(this.R)) {
            getEndIconDelegate().a();
            c();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.R + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.z0;
        CheckableImageButton checkableImageButton = this.q0;
        checkableImageButton.setOnClickListener(onClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.z0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.q0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.s0 != colorStateList) {
            this.s0 = colorStateList;
            this.t0 = true;
            c();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.u0 != mode) {
            this.u0 = mode;
            this.v0 = true;
            c();
        }
    }

    public void setEndIconVisible(boolean z) {
        int i;
        if (g() != z) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            this.q0.setVisibility(i);
            x();
            p();
        }
    }

    public void setError(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.r;
        if (!indicatorViewController.k) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            indicatorViewController.c();
            indicatorViewController.j = charSequence;
            indicatorViewController.l.setText(charSequence);
            int i = indicatorViewController.h;
            if (i != 1) {
                indicatorViewController.i = 1;
            }
            indicatorViewController.j(i, indicatorViewController.i, indicatorViewController.i(indicatorViewController.l, charSequence));
            return;
        }
        indicatorViewController.g();
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.r;
        indicatorViewController.m = charSequence;
        AppCompatTextView appCompatTextView = indicatorViewController.l;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.r;
        TextInputLayout textInputLayout = indicatorViewController.b;
        if (indicatorViewController.k == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.a, null);
            indicatorViewController.l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            indicatorViewController.l.setTextAlignment(5);
            Typeface typeface = indicatorViewController.u;
            if (typeface != null) {
                indicatorViewController.l.setTypeface(typeface);
            }
            int i = indicatorViewController.n;
            indicatorViewController.n = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.l;
            if (appCompatTextView2 != null) {
                indicatorViewController.b.m(appCompatTextView2, i);
            }
            ColorStateList colorStateList = indicatorViewController.o;
            indicatorViewController.o = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.l;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = indicatorViewController.m;
            indicatorViewController.m = charSequence;
            AppCompatTextView appCompatTextView4 = indicatorViewController.l;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            indicatorViewController.l.setVisibility(4);
            indicatorViewController.l.setAccessibilityLiveRegion(1);
            indicatorViewController.a(indicatorViewController.l, 0);
        } else {
            indicatorViewController.g();
            indicatorViewController.h(indicatorViewController.l, 0);
            indicatorViewController.l = null;
            textInputLayout.q();
            textInputLayout.z();
        }
        indicatorViewController.k = z;
    }

    public void setErrorIconDrawable(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.b(getContext(), i);
        } else {
            drawable = null;
        }
        setErrorIconDrawable(drawable);
        k(this.B0, this.C0);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.A0;
        CheckableImageButton checkableImageButton = this.B0;
        checkableImageButton.setOnClickListener(onClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.A0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.B0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.C0 = colorStateList;
        CheckableImageButton checkableImageButton = this.B0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            drawable.setTintList(colorStateList);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        CheckableImageButton checkableImageButton = this.B0;
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            drawable.setTintMode(mode);
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i) {
        IndicatorViewController indicatorViewController = this.r;
        indicatorViewController.n = i;
        AppCompatTextView appCompatTextView = indicatorViewController.l;
        if (appCompatTextView != null) {
            indicatorViewController.b.m(appCompatTextView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.r;
        indicatorViewController.o = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.l;
        if (appCompatTextView != null && colorStateList != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.Q0 != z) {
            this.Q0 = z;
            s(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        IndicatorViewController indicatorViewController = this.r;
        if (isEmpty) {
            if (indicatorViewController.q) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!indicatorViewController.q) {
            setHelperTextEnabled(true);
        }
        indicatorViewController.c();
        indicatorViewController.p = charSequence;
        indicatorViewController.r.setText(charSequence);
        int i = indicatorViewController.h;
        if (i != 2) {
            indicatorViewController.i = 2;
        }
        indicatorViewController.j(i, indicatorViewController.i, indicatorViewController.i(indicatorViewController.r, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.r;
        indicatorViewController.t = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null && colorStateList != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setHelperTextEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.r;
        TextInputLayout textInputLayout = indicatorViewController.b;
        if (indicatorViewController.q == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.a, null);
            indicatorViewController.r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            indicatorViewController.r.setTextAlignment(5);
            Typeface typeface = indicatorViewController.u;
            if (typeface != null) {
                indicatorViewController.r.setTypeface(typeface);
            }
            indicatorViewController.r.setVisibility(4);
            indicatorViewController.r.setAccessibilityLiveRegion(1);
            int i = indicatorViewController.s;
            indicatorViewController.s = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.r;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextAppearance(i);
            }
            ColorStateList colorStateList = indicatorViewController.t;
            indicatorViewController.t = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            indicatorViewController.a(indicatorViewController.r, 1);
        } else {
            indicatorViewController.c();
            int i2 = indicatorViewController.h;
            if (i2 == 2) {
                indicatorViewController.i = 0;
            }
            indicatorViewController.j(i2, indicatorViewController.i, indicatorViewController.i(indicatorViewController.r, null));
            indicatorViewController.h(indicatorViewController.r, 1);
            indicatorViewController.r = null;
            textInputLayout.q();
            textInputLayout.z();
        }
        indicatorViewController.q = z;
    }

    public void setHelperTextTextAppearance(int i) {
        IndicatorViewController indicatorViewController = this.r;
        indicatorViewController.s = i;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setHint(int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setHint(charSequence);
    }

    public void setHintAnimationEnabled(boolean z) {
        this.R0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.J) {
            this.J = z;
            if (!z) {
                this.L = false;
                if (!TextUtils.isEmpty(this.K) && TextUtils.isEmpty(this.n.getHint())) {
                    this.n.setHint(this.K);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.n.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.K)) {
                        setHint(hint);
                    }
                    this.n.setHint((CharSequence) null);
                }
                this.L = true;
            }
            if (this.n != null) {
                r();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        CollapsingTextHelper collapsingTextHelper = this.P0;
        collapsingTextHelper.h(i);
        this.E0 = collapsingTextHelper.l;
        if (this.n != null) {
            s(false, false);
            r();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.E0 != colorStateList) {
            if (this.D0 == null) {
                this.P0.i(colorStateList);
            }
            this.E0 = colorStateList;
            if (this.n != null) {
                s(false, false);
            }
        }
    }

    public void setMaxWidth(int i) {
        this.q = i;
        EditText editText = this.n;
        if (editText != null && i != -1) {
            editText.setMaxWidth(i);
        }
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(int i) {
        this.p = i;
        EditText editText = this.n;
        if (editText != null && i != -1) {
            editText.setMinWidth(i);
        }
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setPasswordVisibilityToggleContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.b(getContext(), i);
        } else {
            drawable = null;
        }
        setPasswordVisibilityToggleDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.o0 != 1) {
            setEndIconMode(1);
        } else if (!z) {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.s0 = colorStateList;
        this.t0 = true;
        c();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.u0 = mode;
        this.v0 = true;
        c();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        int i = 0;
        if (this.z && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.z) {
                setPlaceholderTextEnabled(true);
            }
            this.y = charSequence;
        }
        EditText editText = this.n;
        if (editText != null) {
            i = editText.getText().length();
        }
        t(i);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.C = i;
        AppCompatTextView appCompatTextView = this.A;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView != null && colorStateList != null) {
                appCompatTextView.setTextColor(colorStateList);
            }
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        this.F = charSequence2;
        this.G.setText(charSequence);
        v();
    }

    public void setPrefixTextAppearance(int i) {
        this.G.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.G.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f0.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setStartIconContentDescription(charSequence);
    }

    public void setStartIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f0;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            k(checkableImageButton, this.g0);
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        View.OnLongClickListener onLongClickListener = this.m0;
        CheckableImageButton checkableImageButton = this.f0;
        checkableImageButton.setOnClickListener(onClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.m0 = onLongClickListener;
        CheckableImageButton checkableImageButton = this.f0;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        l(checkableImageButton, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.g0 != colorStateList) {
            this.g0 = colorStateList;
            this.h0 = true;
            d(this.f0, true, colorStateList, this.j0, this.i0);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.i0 != mode) {
            this.i0 = mode;
            this.j0 = true;
            d(this.f0, this.h0, this.g0, true, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        boolean z2;
        CheckableImageButton checkableImageButton = this.f0;
        int i = 0;
        if (checkableImageButton.getVisibility() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != z) {
            if (!z) {
                i = 8;
            }
            checkableImageButton.setVisibility(i);
            u();
            p();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        this.H = charSequence2;
        this.I.setText(charSequence);
        y();
    }

    public void setSuffixTextAppearance(int i) {
        this.I.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.I.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.n;
        if (editText != null) {
            ViewCompat.n(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(Typeface typeface) {
        boolean z;
        if (typeface != this.e0) {
            this.e0 = typeface;
            CollapsingTextHelper collapsingTextHelper = this.P0;
            CancelableFontCallback cancelableFontCallback = collapsingTextHelper.v;
            boolean z2 = true;
            if (cancelableFontCallback != null) {
                cancelableFontCallback.c = true;
            }
            if (collapsingTextHelper.s != typeface) {
                collapsingTextHelper.s = typeface;
                z = true;
            } else {
                z = false;
            }
            if (collapsingTextHelper.t != typeface) {
                collapsingTextHelper.t = typeface;
            } else {
                z2 = false;
            }
            if (z || z2) {
                collapsingTextHelper.g();
            }
            IndicatorViewController indicatorViewController = this.r;
            if (typeface != indicatorViewController.u) {
                indicatorViewController.u = typeface;
                AppCompatTextView appCompatTextView = indicatorViewController.l;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = indicatorViewController.r;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.v;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t(int i) {
        if (i == 0 && !this.O0) {
            AppCompatTextView appCompatTextView = this.A;
            if (appCompatTextView != null && this.z) {
                appCompatTextView.setText(this.y);
                this.A.setVisibility(0);
                this.A.bringToFront();
                return;
            }
            return;
        }
        AppCompatTextView appCompatTextView2 = this.A;
        if (appCompatTextView2 != null && this.z) {
            appCompatTextView2.setText((CharSequence) null);
            this.A.setVisibility(4);
        }
    }

    public final void u() {
        int paddingStart;
        if (this.n == null) {
            return;
        }
        if (this.f0.getVisibility() == 0) {
            paddingStart = 0;
        } else {
            EditText editText = this.n;
            Field field = ViewCompat.a;
            paddingStart = editText.getPaddingStart();
        }
        int compoundPaddingTop = this.n.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = this.n.getCompoundPaddingBottom();
        Field field2 = ViewCompat.a;
        this.G.setPaddingRelative(paddingStart, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void v() {
        int i;
        if (this.F != null && !this.O0) {
            i = 0;
        } else {
            i = 8;
        }
        this.G.setVisibility(i);
        p();
    }

    public final void w(boolean z, boolean z2) {
        int defaultColor = this.I0.getDefaultColor();
        int colorForState = this.I0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.I0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z) {
            this.W = colorForState2;
        } else if (z2) {
            this.W = colorForState;
        } else {
            this.W = defaultColor;
        }
    }

    public final void x() {
        int i;
        if (this.n == null) {
            return;
        }
        if (!g() && this.B0.getVisibility() != 0) {
            EditText editText = this.n;
            Field field = ViewCompat.a;
            i = editText.getPaddingEnd();
        } else {
            i = 0;
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.n.getPaddingTop();
        int paddingBottom = this.n.getPaddingBottom();
        Field field2 = ViewCompat.a;
        this.I.setPaddingRelative(dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    public final void y() {
        boolean z;
        AppCompatTextView appCompatTextView = this.I;
        int visibility = appCompatTextView.getVisibility();
        int i = 0;
        if (this.H != null && !this.O0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            i = 8;
        }
        appCompatTextView.setVisibility(i);
        if (visibility != appCompatTextView.getVisibility()) {
            getEndIconDelegate().c(z);
        }
        p();
    }

    public final void z() {
        boolean z;
        boolean z2;
        AppCompatTextView appCompatTextView;
        int i;
        EditText editText;
        EditText editText2;
        if (this.M != null && this.R != 0) {
            boolean z3 = false;
            if (!isFocused() && ((editText2 = this.n) == null || !editText2.hasFocus())) {
                z = false;
            } else {
                z = true;
            }
            if (!isHovered() && ((editText = this.n) == null || !editText.isHovered())) {
                z2 = false;
            } else {
                z2 = true;
            }
            boolean isEnabled = isEnabled();
            int i2 = -1;
            IndicatorViewController indicatorViewController = this.r;
            if (!isEnabled) {
                this.W = this.N0;
            } else if (indicatorViewController.e()) {
                if (this.I0 != null) {
                    w(z, z2);
                } else {
                    AppCompatTextView appCompatTextView2 = indicatorViewController.l;
                    if (appCompatTextView2 != null) {
                        i = appCompatTextView2.getCurrentTextColor();
                    } else {
                        i = -1;
                    }
                    this.W = i;
                }
            } else if (this.u && (appCompatTextView = this.v) != null) {
                if (this.I0 != null) {
                    w(z, z2);
                } else {
                    this.W = appCompatTextView.getCurrentTextColor();
                }
            } else if (z) {
                this.W = this.H0;
            } else if (z2) {
                this.W = this.G0;
            } else {
                this.W = this.F0;
            }
            if (getErrorIconDrawable() != null && indicatorViewController.k && indicatorViewController.e()) {
                z3 = true;
            }
            setErrorIconVisible(z3);
            k(this.B0, this.C0);
            k(this.f0, this.g0);
            ColorStateList colorStateList = this.s0;
            CheckableImageButton checkableImageButton = this.q0;
            k(checkableImageButton, colorStateList);
            EndIconDelegate endIconDelegate = getEndIconDelegate();
            endIconDelegate.getClass();
            if (endIconDelegate instanceof DropdownMenuEndIconDelegate) {
                if (indicatorViewController.e() && getEndIconDrawable() != null) {
                    Drawable mutate = getEndIconDrawable().mutate();
                    AppCompatTextView appCompatTextView3 = indicatorViewController.l;
                    if (appCompatTextView3 != null) {
                        i2 = appCompatTextView3.getCurrentTextColor();
                    }
                    mutate.setTint(i2);
                    checkableImageButton.setImageDrawable(mutate);
                } else {
                    c();
                }
            }
            if (z && isEnabled()) {
                this.T = this.V;
            } else {
                this.T = this.U;
            }
            if (this.R == 2 && f() && !this.O0 && this.Q != this.T) {
                if (f()) {
                    ((CutoutDrawable) this.M).z(0.0f, 0.0f, 0.0f, 0.0f);
                }
                i();
            }
            if (this.R == 1) {
                if (!isEnabled()) {
                    this.a0 = this.K0;
                } else if (z2 && !z) {
                    this.a0 = this.M0;
                } else if (z) {
                    this.a0 = this.L0;
                } else {
                    this.a0 = this.J0;
                }
            }
            b();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public CharSequence l;
        public boolean m;
        public CharSequence n;
        public CharSequence o;
        public CharSequence p;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.l = (CharSequence) creator.createFromParcel(parcel);
            this.m = parcel.readInt() == 1;
            this.n = (CharSequence) creator.createFromParcel(parcel);
            this.o = (CharSequence) creator.createFromParcel(parcel);
            this.p = (CharSequence) creator.createFromParcel(parcel);
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.l) + " hint=" + ((Object) this.n) + " helperText=" + ((Object) this.o) + " placeholderText=" + ((Object) this.p) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.l, parcel, i);
            parcel.writeInt(this.m ? 1 : 0);
            TextUtils.writeToParcel(this.n, parcel, i);
            TextUtils.writeToParcel(this.o, parcel, i);
            TextUtils.writeToParcel(this.p, parcel, i);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$1, reason: invalid class name */
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

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.q0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.q0;
        checkableImageButton.setImageDrawable(drawable);
        k(checkableImageButton, this.s0);
    }

    public void setHint(CharSequence charSequence) {
        if (this.J) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.q0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.q0.setImageDrawable(drawable);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f0.setContentDescription(charSequence);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.B0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.r.k);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.b(getContext(), i) : null);
    }
}
