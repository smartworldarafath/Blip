package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ValidatingOffsetMappingKt {
    public static final OffsetMapping a = new ValidatingOffsetMapping(OffsetMapping.Companion.a, 0, 0);

    public static final TransformedText a(VisualTransformation visualTransformation, AnnotatedString annotatedString) {
        TransformedText f = visualTransformation.f(annotatedString);
        int length = annotatedString.k.length();
        AnnotatedString annotatedString2 = f.a;
        OffsetMapping offsetMapping = f.b;
        int length2 = annotatedString2.k.length();
        int min = Math.min(length, 100);
        for (int i = 0; i < min; i++) {
            b(offsetMapping.b(i), length2, i);
        }
        b(offsetMapping.b(length), length2, length);
        int min2 = Math.min(length2, 100);
        for (int i2 = 0; i2 < min2; i2++) {
            c(offsetMapping.a(i2), length, i2);
        }
        c(offsetMapping.a(length2), length, length2);
        return new TransformedText(annotatedString2, new ValidatingOffsetMapping(offsetMapping, annotatedString.k.length(), annotatedString2.k.length()));
    }

    public static final void b(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (!z) {
            StringBuilder k = jb.k("OffsetMapping.originalToTransformed returned invalid mapping: ", i3, " -> ", i, " is not in range of transformed text [0, ");
            k.append(i2);
            k.append("]");
            InlineClassHelperKt.c(k.toString());
        }
    }

    public static final void c(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (!z) {
            StringBuilder k = jb.k("OffsetMapping.transformedToOriginal returned invalid mapping: ", i3, " -> ", i, " is not in range of original text [0, ");
            k.append(i2);
            k.append("]");
            InlineClassHelperKt.c(k.toString());
        }
    }
}
