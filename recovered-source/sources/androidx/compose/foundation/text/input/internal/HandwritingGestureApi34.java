package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.HandwritingGesture;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import defpackage.ma;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HandwritingGestureApi34 {
    public static int a(HandwritingGesture handwritingGesture, ma maVar) {
        String fallbackText;
        fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        maVar.b(new CommitTextCommand(fallbackText, 1));
        return 5;
    }

    public static void b(long j, AnnotatedString annotatedString, boolean z, ma maVar) {
        int i;
        if (z) {
            int i2 = TextRange.c;
            int i3 = (int) (j >> 32);
            int i4 = (int) (j & 4294967295L);
            int i5 = 10;
            if (i3 > 0) {
                i = Character.codePointBefore(annotatedString, i3);
            } else {
                i = 10;
            }
            if (i4 < annotatedString.k.length()) {
                i5 = Character.codePointAt(annotatedString, i4);
            }
            if (HandwritingGesture_androidKt.i(i) && (HandwritingGesture_androidKt.h(i5) || HandwritingGesture_androidKt.g(i5))) {
                do {
                    i3 -= Character.charCount(i);
                    if (i3 == 0) {
                        break;
                    } else {
                        i = Character.codePointBefore(annotatedString, i3);
                    }
                } while (HandwritingGesture_androidKt.i(i));
                j = TextRangeKt.a(i3, i4);
            } else if (HandwritingGesture_androidKt.i(i5) && (HandwritingGesture_androidKt.h(i) || HandwritingGesture_androidKt.g(i))) {
                do {
                    i4 += Character.charCount(i5);
                    if (i4 == annotatedString.k.length()) {
                        break;
                    } else {
                        i5 = Character.codePointAt(annotatedString, i4);
                    }
                } while (HandwritingGesture_androidKt.i(i5));
                j = TextRangeKt.a(i3, i4);
            }
        }
        int i6 = (int) (4294967295L & j);
        maVar.b(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i6, i6), new DeleteSurroundingTextCommand(TextRange.d(j), 0)}));
    }
}
