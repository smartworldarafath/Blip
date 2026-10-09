package androidx.emoji2.viewsintegration;

import android.text.Editable;
import androidx.emoji2.text.SpannableBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EmojiEditableFactory extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile Editable.Factory b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        if (cls != null) {
            return new SpannableBuilder(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
