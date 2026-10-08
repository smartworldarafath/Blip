package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.appcompat.R$styleable;
import androidx.emoji2.viewsintegration.EmojiEditTextHelper;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppCompatEmojiEditTextHelper {
    public final EditText a;
    public final EmojiEditTextHelper b;

    public AppCompatEmojiEditTextHelper(EditText editText) {
        this.a = editText;
        this.b = new EmojiEditTextHelper(editText);
    }

    public final void a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, R$styleable.g, i, 0);
        try {
            boolean z = true;
            if (obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, true);
            }
            obtainStyledAttributes.recycle();
            this.b.c(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
