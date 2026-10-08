package androidx.compose.ui.autofill;

import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AutofillUtils_androidKt {
    public static final CharSequence a(CharSequence charSequence) {
        if (charSequence.length() <= 5000) {
            return charSequence;
        }
        if (Character.isHighSurrogate(charSequence.charAt(4999)) && Character.isLowSurrogate(charSequence.charAt(5000))) {
            return StringsKt.P(charSequence, 4999);
        }
        return StringsKt.P(charSequence, 5000);
    }
}
