package com.google.android.material.textfield;

import android.graphics.drawable.Drawable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.util.LinkedHashSet;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PasswordToggleEndIconDelegate extends EndIconDelegate {
    public final TextWatcher d;
    public final TextInputLayout.OnEditTextAttachedListener e;
    public final TextInputLayout.OnEndIconChangedListener f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.android.material.textfield.PasswordToggleEndIconDelegate$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements TextInputLayout.OnEditTextAttachedListener {
        public AnonymousClass2() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public final void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = PasswordToggleEndIconDelegate.this;
            passwordToggleEndIconDelegate.c.setChecked(true ^ PasswordToggleEndIconDelegate.d(passwordToggleEndIconDelegate));
            TextWatcher textWatcher = passwordToggleEndIconDelegate.d;
            editText.removeTextChangedListener(textWatcher);
            editText.addTextChangedListener(textWatcher);
        }
    }

    public PasswordToggleEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                PasswordToggleEndIconDelegate.this.c.setChecked(!PasswordToggleEndIconDelegate.d(r0));
            }
        };
        this.e = new AnonymousClass2();
        this.f = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.3
            @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
            public final void a(TextInputLayout textInputLayout2, int i) {
                final EditText editText = textInputLayout2.getEditText();
                if (editText != null && i == 1) {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    editText.post(new Runnable() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            editText.removeTextChangedListener(PasswordToggleEndIconDelegate.this.d);
                        }
                    });
                }
            }
        };
    }

    public static boolean d(PasswordToggleEndIconDelegate passwordToggleEndIconDelegate) {
        EditText editText = passwordToggleEndIconDelegate.a.getEditText();
        if (editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        Drawable b = AppCompatResources.b(this.b, R.drawable.design_password_eye);
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconDrawable(b);
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.PasswordToggleEndIconDelegate.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = PasswordToggleEndIconDelegate.this;
                TextInputLayout textInputLayout2 = passwordToggleEndIconDelegate.a;
                EditText editText = textInputLayout2.getEditText();
                if (editText == null) {
                    return;
                }
                int selectionEnd = editText.getSelectionEnd();
                if (PasswordToggleEndIconDelegate.d(passwordToggleEndIconDelegate)) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                }
                textInputLayout2.k(textInputLayout2.q0, textInputLayout2.s0);
            }
        });
        LinkedHashSet linkedHashSet = textInputLayout.n0;
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = this.e;
        linkedHashSet.add(onEditTextAttachedListener);
        if (textInputLayout.n != null) {
            ((AnonymousClass2) onEditTextAttachedListener).a(textInputLayout);
        }
        textInputLayout.r0.add(this.f);
        EditText editText = textInputLayout.getEditText();
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }
}
