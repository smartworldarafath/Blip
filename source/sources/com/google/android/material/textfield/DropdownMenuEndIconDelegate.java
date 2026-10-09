package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.LinkedHashSet;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DropdownMenuEndIconDelegate extends EndIconDelegate {
    public final TextWatcher d;
    public final View.OnFocusChangeListener e;
    public final TextInputLayout.AccessibilityDelegate f;
    public final TextInputLayout.OnEditTextAttachedListener g;
    public final TextInputLayout.OnEndIconChangedListener h;
    public boolean i;
    public boolean j;
    public long k;
    public StateListDrawable l;
    public MaterialShapeDrawable m;
    public AccessibilityManager n;
    public ValueAnimator o;
    public ValueAnimator p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.textfield.DropdownMenuEndIconDelegate$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements TextInputLayout.OnEditTextAttachedListener {
        public AnonymousClass4() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            if (editText instanceof AutoCompleteTextView) {
                final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
                final DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                TextWatcher textWatcher = dropdownMenuEndIconDelegate.d;
                TextInputLayout textInputLayout2 = dropdownMenuEndIconDelegate.a;
                int boxBackgroundMode = textInputLayout2.getBoxBackgroundMode();
                if (boxBackgroundMode == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(dropdownMenuEndIconDelegate.m);
                } else if (boxBackgroundMode == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(dropdownMenuEndIconDelegate.l);
                }
                if (autoCompleteTextView.getKeyListener() == null) {
                    int boxBackgroundMode2 = textInputLayout2.getBoxBackgroundMode();
                    MaterialShapeDrawable boxBackground = textInputLayout2.getBoxBackground();
                    int a = MaterialColors.a(autoCompleteTextView, R.attr.colorControlHighlight);
                    int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
                    if (boxBackgroundMode2 == 2) {
                        int a2 = MaterialColors.a(autoCompleteTextView, R.attr.colorSurface);
                        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(boxBackground.k());
                        int b = MaterialColors.b(0.1f, a, a2);
                        materialShapeDrawable.r(new ColorStateList(iArr, new int[]{b, 0}));
                        materialShapeDrawable.setTint(a2);
                        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{b, a2});
                        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(boxBackground.k());
                        materialShapeDrawable2.setTint(-1);
                        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable, materialShapeDrawable2), boxBackground});
                        Field field = ViewCompat.a;
                        autoCompleteTextView.setBackground(layerDrawable);
                    } else if (boxBackgroundMode2 == 1) {
                        int boxBackgroundColor = textInputLayout2.getBoxBackgroundColor();
                        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.b(0.1f, a, boxBackgroundColor), boxBackgroundColor}), boxBackground, boxBackground);
                        Field field2 = ViewCompat.a;
                        autoCompleteTextView.setBackground(rippleDrawable);
                    }
                }
                autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.7
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 1) {
                            long currentTimeMillis = System.currentTimeMillis();
                            DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate2 = DropdownMenuEndIconDelegate.this;
                            long j = currentTimeMillis - dropdownMenuEndIconDelegate2.k;
                            if (j < 0 || j > 300) {
                                dropdownMenuEndIconDelegate2.i = false;
                            }
                            DropdownMenuEndIconDelegate.d(dropdownMenuEndIconDelegate2, autoCompleteTextView);
                        }
                        return false;
                    }
                });
                autoCompleteTextView.setOnFocusChangeListener(dropdownMenuEndIconDelegate.e);
                autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.8
                    @Override // android.widget.AutoCompleteTextView.OnDismissListener
                    public final void onDismiss() {
                        DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate2 = DropdownMenuEndIconDelegate.this;
                        dropdownMenuEndIconDelegate2.i = true;
                        dropdownMenuEndIconDelegate2.k = System.currentTimeMillis();
                        dropdownMenuEndIconDelegate2.g(false);
                    }
                });
                autoCompleteTextView.setThreshold(0);
                autoCompleteTextView.removeTextChangedListener(textWatcher);
                autoCompleteTextView.addTextChangedListener(textWatcher);
                textInputLayout.setEndIconCheckable(true);
                textInputLayout.setErrorIconDrawable((Drawable) null);
                if (autoCompleteTextView.getKeyListener() == null) {
                    CheckableImageButton checkableImageButton = dropdownMenuEndIconDelegate.c;
                    Field field3 = ViewCompat.a;
                    checkableImageButton.setImportantForAccessibility(2);
                }
                textInputLayout.setTextInputAccessibilityDelegate(dropdownMenuEndIconDelegate.f);
                textInputLayout.setEndIconVisible(true);
                return;
            }
            u2.n("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
    }

    public DropdownMenuEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                EditText editText = dropdownMenuEndIconDelegate.a.getEditText();
                if (editText instanceof AutoCompleteTextView) {
                    final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
                    if (dropdownMenuEndIconDelegate.n.isTouchExplorationEnabled() && autoCompleteTextView.getKeyListener() != null && !dropdownMenuEndIconDelegate.c.hasFocus()) {
                        autoCompleteTextView.dismissDropDown();
                    }
                    autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean isPopupShowing = autoCompleteTextView.isPopupShowing();
                            DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate2 = DropdownMenuEndIconDelegate.this;
                            dropdownMenuEndIconDelegate2.g(isPopupShowing);
                            dropdownMenuEndIconDelegate2.i = isPopupShowing;
                        }
                    });
                    return;
                }
                u2.n("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            }
        };
        this.e = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.a.setEndIconActivated(z);
                if (!z) {
                    dropdownMenuEndIconDelegate.g(false);
                    dropdownMenuEndIconDelegate.i = false;
                }
            }
        };
        this.f = new TextInputLayout.AccessibilityDelegate(textInputLayout) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.3
            @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
                super.d(view, accessibilityNodeInfoCompat);
                if (!DropdownMenuEndIconDelegate.f(DropdownMenuEndIconDelegate.this.a.getEditText())) {
                    accessibilityNodeInfoCompat.i("android.widget.Spinner");
                }
                if (accessibilityNodeInfo.isShowingHintText()) {
                    accessibilityNodeInfo.setHintText(null);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void e(View view, AccessibilityEvent accessibilityEvent) {
                super.e(view, accessibilityEvent);
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                TextInputLayout textInputLayout2 = dropdownMenuEndIconDelegate.a;
                EditText editText = textInputLayout2.getEditText();
                if (editText instanceof AutoCompleteTextView) {
                    AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
                    if (accessibilityEvent.getEventType() == 1 && dropdownMenuEndIconDelegate.n.isTouchExplorationEnabled() && !DropdownMenuEndIconDelegate.f(textInputLayout2.getEditText())) {
                        DropdownMenuEndIconDelegate.d(dropdownMenuEndIconDelegate, autoCompleteTextView);
                        return;
                    }
                    return;
                }
                u2.n("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            }
        };
        this.g = new AnonymousClass4();
        this.h = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5
            @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
            public final void a(TextInputLayout textInputLayout2, int i) {
                final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout2.getEditText();
                if (autoCompleteTextView != null && i == 3) {
                    autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            autoCompleteTextView.removeTextChangedListener(DropdownMenuEndIconDelegate.this.d);
                        }
                    });
                    if (autoCompleteTextView.getOnFocusChangeListener() == DropdownMenuEndIconDelegate.this.e) {
                        autoCompleteTextView.setOnFocusChangeListener(null);
                    }
                    autoCompleteTextView.setOnTouchListener(null);
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
        };
        this.i = false;
        this.j = false;
        this.k = Long.MAX_VALUE;
    }

    public static void d(DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate, AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - dropdownMenuEndIconDelegate.k;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            dropdownMenuEndIconDelegate.i = false;
        }
        if (!dropdownMenuEndIconDelegate.i) {
            dropdownMenuEndIconDelegate.g(!dropdownMenuEndIconDelegate.j);
            if (dropdownMenuEndIconDelegate.j) {
                autoCompleteTextView.requestFocus();
                autoCompleteTextView.showDropDown();
                return;
            } else {
                autoCompleteTextView.dismissDropDown();
                return;
            }
        }
        dropdownMenuEndIconDelegate.i = false;
    }

    public static boolean f(EditText editText) {
        if (editText.getKeyListener() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        Context context = this.b;
        float dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable e = e(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable e2 = e(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.m = e;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.l = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, e);
        this.l.addState(new int[0], e2);
        Drawable b = AppCompatResources.b(context, R.drawable.mtrl_dropdown_arrow);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconDrawable(b);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                DropdownMenuEndIconDelegate.d(dropdownMenuEndIconDelegate, (AutoCompleteTextView) dropdownMenuEndIconDelegate.a.getEditText());
            }
        });
        LinkedHashSet linkedHashSet = textInputLayout.n0;
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = this.g;
        linkedHashSet.add(onEditTextAttachedListener);
        if (textInputLayout.n != null) {
            ((AnonymousClass4) onEditTextAttachedListener).a(textInputLayout);
        }
        textInputLayout.r0.add(this.h);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = AnimationUtils.a;
        ofFloat.setInterpolator(linearInterpolator);
        ofFloat.setDuration(67L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DropdownMenuEndIconDelegate.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.p = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(linearInterpolator);
        ofFloat2.setDuration(50L);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DropdownMenuEndIconDelegate.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.o = ofFloat2;
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.c.setChecked(dropdownMenuEndIconDelegate.j);
                dropdownMenuEndIconDelegate.p.start();
            }
        });
        this.n = (AccessibilityManager) context.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean b(int i) {
        if (i != 0) {
            return true;
        }
        return false;
    }

    public final MaterialShapeDrawable e(float f, float f2, float f3, int i) {
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.e = new AbsoluteCornerSize(f);
        builder.f = new AbsoluteCornerSize(f);
        builder.h = new AbsoluteCornerSize(f2);
        builder.g = new AbsoluteCornerSize(f2);
        ShapeAppearanceModel a = builder.a();
        Paint paint = MaterialShapeDrawable.F;
        Context context = this.b;
        int b = MaterialAttributes.b(R.attr.colorSurface, context, "MaterialShapeDrawable");
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.o(context);
        materialShapeDrawable.r(ColorStateList.valueOf(b));
        materialShapeDrawable.q(f3);
        materialShapeDrawable.setShapeAppearanceModel(a);
        materialShapeDrawable.t(0, i, 0, i);
        return materialShapeDrawable;
    }

    public final void g(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.p.cancel();
            this.o.start();
        }
    }
}
