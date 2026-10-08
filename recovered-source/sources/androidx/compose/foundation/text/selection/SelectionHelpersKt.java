package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionHelpersKt {
    public static final ResolvedTextDirection a(TextLayoutResult textLayoutResult, int i) {
        TextLayoutInput textLayoutInput = textLayoutResult.a;
        MultiParagraph multiParagraph = textLayoutResult.b;
        if (textLayoutInput.a.k.length() != 0) {
            int d = multiParagraph.d(i);
            if ((i != 0 && d == multiParagraph.d(i - 1)) || (i != textLayoutInput.a.k.length() && d == multiParagraph.d(i + 1))) {
                return textLayoutResult.a(i);
            }
        }
        return textLayoutResult.g(i);
    }
}
