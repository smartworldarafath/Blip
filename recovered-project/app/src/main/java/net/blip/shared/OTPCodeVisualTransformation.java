package net.blip.shared;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OTPCodeVisualTransformation implements VisualTransformation {
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.text.input.OffsetMapping, java.lang.Object] */
    @Override // androidx.compose.ui.text.input.VisualTransformation
    public final TransformedText f(AnnotatedString annotatedString) {
        annotatedString.getClass();
        AnnotatedString.Builder builder = new AnnotatedString.Builder();
        CharSequence P = kotlin.text.StringsKt.P(annotatedString, 3);
        boolean z = P instanceof AnnotatedString;
        StringBuilder sb = builder.j;
        if (z) {
            builder.b((AnnotatedString) P);
        } else {
            sb.append(P);
        }
        String str = annotatedString.k;
        if (str.length() >= 3) {
            sb.append((char) 8201);
        }
        builder.b(annotatedString.subSequence(Math.min(3, str.length()), str.length()));
        return new TransformedText(builder.e(), new Object());
    }
}
