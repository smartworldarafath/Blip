package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransformedText {
    public final AnnotatedString a;
    public final OffsetMapping b;

    public TransformedText(AnnotatedString annotatedString, OffsetMapping offsetMapping) {
        this.a = annotatedString;
        this.b = offsetMapping;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TransformedText) {
                TransformedText transformedText = (TransformedText) obj;
                if (!Intrinsics.a(this.a, transformedText.a) || !this.b.equals(transformedText.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "TransformedText(text=" + ((Object) this.a) + ", offsetMapping=" + this.b + ")";
    }
}
