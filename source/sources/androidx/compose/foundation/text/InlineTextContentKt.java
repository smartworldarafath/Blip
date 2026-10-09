package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.AnnotatedString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InlineTextContentKt {
    public static final void a(AnnotatedString.Builder builder, String str, String str2) {
        if (str2.length() <= 0) {
            InlineClassHelperKt.a("alternateText can't be an empty string.");
        }
        builder.d(str);
        builder.j.append(str2);
        builder.c();
    }
}
