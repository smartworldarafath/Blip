package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.LinkAnnotation;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextAnnotatedStringNodeKt {
    public static final boolean a(AnnotatedString annotatedString) {
        int length = annotatedString.k.length();
        List list = annotatedString.j;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i);
                if ((range.a instanceof LinkAnnotation) && AnnotatedStringKt.b(0, length, range.b, range.c)) {
                    return true;
                }
            }
        }
        return false;
    }
}
