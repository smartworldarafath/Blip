package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldValue {
    public final AnnotatedString a;
    public final long b;
    public final TextRange c;

    public TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange) {
        TextRange textRange2;
        this.a = annotatedString;
        this.b = TextRangeKt.b(annotatedString.k.length(), j);
        if (textRange != null) {
            textRange2 = new TextRange(TextRangeKt.b(annotatedString.k.length(), textRange.a));
        } else {
            textRange2 = null;
        }
        this.c = textRange2;
    }

    public static TextFieldValue a(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j, int i) {
        TextRange textRange;
        if ((i & 1) != 0) {
            annotatedString = textFieldValue.a;
        }
        if ((i & 2) != 0) {
            j = textFieldValue.b;
        }
        if ((i & 4) != 0) {
            textRange = textFieldValue.c;
        } else {
            textRange = null;
        }
        textFieldValue.getClass();
        return new TextFieldValue(annotatedString, j, textRange);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        if (TextRange.b(this.b, textFieldValue.b) && Intrinsics.a(this.c, textFieldValue.c) && Intrinsics.a(this.a, textFieldValue.a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.a.hashCode() * 31;
        int i2 = TextRange.c;
        int a = jb.a(hashCode, 31, this.b);
        TextRange textRange = this.c;
        if (textRange != null) {
            i = Long.hashCode(textRange.a);
        } else {
            i = 0;
        }
        return a + i;
    }

    public final String toString() {
        return "TextFieldValue(text='" + ((Object) this.a) + "', selection=" + TextRange.h(this.b) + ", composition=" + this.c + ")";
    }

    public TextFieldValue(int i, long j, String str) {
        this(new AnnotatedString((i & 1) != 0 ? "" : str), (i & 2) != 0 ? TextRange.b : j, (TextRange) null);
    }
}
