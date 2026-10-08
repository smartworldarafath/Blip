package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldValueKt {
    public static final AnnotatedString a(TextFieldValue textFieldValue) {
        AnnotatedString annotatedString = textFieldValue.a;
        long j = textFieldValue.b;
        annotatedString.getClass();
        return annotatedString.subSequence(TextRange.f(j), TextRange.e(j));
    }

    public static final AnnotatedString b(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.a;
        AnnotatedString annotatedString2 = textFieldValue.a;
        long j = textFieldValue.b;
        int e = TextRange.e(j);
        int e2 = TextRange.e(j);
        int i2 = e2 + i;
        if (((i ^ i2) & (e2 ^ i2)) < 0) {
            i2 = annotatedString2.k.length();
        }
        return annotatedString.subSequence(e, Math.min(i2, annotatedString2.k.length()));
    }

    public static final AnnotatedString c(TextFieldValue textFieldValue, int i) {
        AnnotatedString annotatedString = textFieldValue.a;
        long j = textFieldValue.b;
        int f = TextRange.f(j);
        int i2 = f - i;
        if (((f ^ i2) & (i ^ f)) < 0) {
            i2 = 0;
        }
        return annotatedString.subSequence(Math.max(0, i2), TextRange.f(j));
    }
}
