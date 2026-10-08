package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.c;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EditProcessor {
    public TextFieldValue a;
    public EditingBuffer b;

    public final TextFieldValue a(List list) {
        EditCommand editCommand;
        Exception e;
        long a;
        EditCommand editCommand2;
        TextRange textRange = null;
        try {
            int size = list.size();
            int i = 0;
            editCommand = null;
            while (i < size) {
                try {
                    editCommand2 = (EditCommand) list.get(i);
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    editCommand2.a(this.b);
                    i++;
                    editCommand = editCommand2;
                } catch (Exception e3) {
                    e = e3;
                    editCommand = editCommand2;
                    StringBuilder sb = new StringBuilder();
                    int a2 = this.b.a.a();
                    TextRange c = this.b.c();
                    EditingBuffer editingBuffer = this.b;
                    sb.append("Error while applying EditCommand batch to buffer (length=" + a2 + ", composition=" + c + ", selection=" + TextRange.h(TextRangeKt.a(editingBuffer.b, editingBuffer.c)) + "):");
                    sb.append('\n');
                    CollectionsKt.x(list, sb, "\n", new c(editCommand, this), 60);
                    throw new RuntimeException(sb.toString(), e);
                }
            }
            EditingBuffer editingBuffer2 = this.b;
            editingBuffer2.getClass();
            AnnotatedString annotatedString = new AnnotatedString(editingBuffer2.a.toString());
            EditingBuffer editingBuffer3 = this.b;
            long a3 = TextRangeKt.a(editingBuffer3.b, editingBuffer3.c);
            TextRange textRange2 = new TextRange(a3);
            if (!TextRange.g(this.a.b)) {
                textRange = textRange2;
            }
            if (textRange != null) {
                a = textRange.a;
            } else {
                a = TextRangeKt.a(TextRange.e(a3), TextRange.f(a3));
            }
            TextFieldValue textFieldValue = new TextFieldValue(annotatedString, a, this.b.c());
            this.a = textFieldValue;
            return textFieldValue;
        } catch (Exception e4) {
            editCommand = null;
            e = e4;
        }
    }
}
