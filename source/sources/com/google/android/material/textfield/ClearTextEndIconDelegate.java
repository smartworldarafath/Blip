package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashSet;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ClearTextEndIconDelegate extends EndIconDelegate {
    public final TextWatcher d;
    public final View.OnFocusChangeListener e;
    public final TextInputLayout.OnEditTextAttachedListener f;
    public final TextInputLayout.OnEndIconChangedListener g;
    public AnimatorSet h;
    public ValueAnimator i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.textfield.ClearTextEndIconDelegate$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements TextInputLayout.OnEditTextAttachedListener {
        public AnonymousClass3() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public final void a(TextInputLayout textInputLayout) {
            boolean z;
            ClearTextEndIconDelegate clearTextEndIconDelegate = ClearTextEndIconDelegate.this;
            TextWatcher textWatcher = clearTextEndIconDelegate.d;
            EditText editText = textInputLayout.getEditText();
            if (editText.hasFocus() && editText.getText().length() > 0) {
                z = true;
            } else {
                z = false;
            }
            textInputLayout.setEndIconVisible(z);
            textInputLayout.setEndIconCheckable(false);
            editText.setOnFocusChangeListener(clearTextEndIconDelegate.e);
            editText.removeTextChangedListener(textWatcher);
            editText.addTextChangedListener(textWatcher);
        }
    }

    public ClearTextEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new TextWatcher() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                boolean z;
                ClearTextEndIconDelegate clearTextEndIconDelegate = ClearTextEndIconDelegate.this;
                TextInputLayout textInputLayout2 = clearTextEndIconDelegate.a;
                if (textInputLayout2.getSuffixText() != null) {
                    return;
                }
                if (textInputLayout2.hasFocus() && editable.length() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                clearTextEndIconDelegate.d(z);
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        };
        this.e = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                boolean z2;
                if (!TextUtils.isEmpty(((EditText) view).getText()) && z) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                ClearTextEndIconDelegate.this.d(z2);
            }
        };
        this.f = new AnonymousClass3();
        this.g = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.4
            @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
            public final void a(TextInputLayout textInputLayout2, int i) {
                final EditText editText = textInputLayout2.getEditText();
                if (editText != null && i == 2) {
                    editText.post(new Runnable() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            editText.removeTextChangedListener(ClearTextEndIconDelegate.this.d);
                        }
                    });
                    if (editText.getOnFocusChangeListener() == ClearTextEndIconDelegate.this.e) {
                        editText.setOnFocusChangeListener(null);
                    }
                }
            }
        };
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        Drawable b = AppCompatResources.b(this.b, R.drawable.mtrl_ic_cancel);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconDrawable(b);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextInputLayout textInputLayout2 = ClearTextEndIconDelegate.this.a;
                Editable text = textInputLayout2.getEditText().getText();
                if (text != null) {
                    text.clear();
                }
                textInputLayout2.k(textInputLayout2.q0, textInputLayout2.s0);
            }
        });
        LinkedHashSet linkedHashSet = textInputLayout.n0;
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = this.f;
        linkedHashSet.add(onEditTextAttachedListener);
        if (textInputLayout.n != null) {
            ((AnonymousClass3) onEditTextAttachedListener).a(textInputLayout);
        }
        textInputLayout.r0.add(this.g);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(AnimationUtils.d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CheckableImageButton checkableImageButton = ClearTextEndIconDelegate.this.c;
                checkableImageButton.setScaleX(floatValue);
                checkableImageButton.setScaleY(floatValue);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        LinearInterpolator linearInterpolator = AnimationUtils.a;
        ofFloat2.setInterpolator(linearInterpolator);
        ofFloat2.setDuration(100L);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ClearTextEndIconDelegate.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.h = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                ClearTextEndIconDelegate.this.a.setEndIconVisible(true);
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(linearInterpolator);
        ofFloat3.setDuration(100L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ClearTextEndIconDelegate.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.i = ofFloat3;
        ofFloat3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.ClearTextEndIconDelegate.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ClearTextEndIconDelegate.this.a.setEndIconVisible(false);
            }
        });
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void c(boolean z) {
        if (this.a.getSuffixText() == null) {
            return;
        }
        d(z);
    }

    public final void d(boolean z) {
        boolean z2;
        if (this.a.g() == z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && !this.h.isRunning()) {
            this.i.cancel();
            this.h.start();
            if (z2) {
                this.h.end();
                return;
            }
            return;
        }
        if (!z) {
            this.h.cancel();
            this.i.start();
            if (z2) {
                this.i.end();
            }
        }
    }
}
