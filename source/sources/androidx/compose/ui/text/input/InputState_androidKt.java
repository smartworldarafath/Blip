package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InputState_androidKt {
    public static final ExtractedText a(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        String str = textFieldValue.a.k;
        extractedText.text = str;
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = str.length();
        extractedText.partialStartOffset = -1;
        long j = textFieldValue.b;
        extractedText.selectionStart = TextRange.f(j);
        extractedText.selectionEnd = TextRange.e(j);
        extractedText.flags = !StringsKt.j(textFieldValue.a.k, '\n') ? 1 : 0;
        return extractedText;
    }
}
