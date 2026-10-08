package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldKeyInput {
    public final LegacyTextFieldState a;
    public final TextFieldSelectionManager b;
    public final TextFieldValue c;
    public final boolean d;
    public final boolean e;
    public final TextPreparedSelectionState f;
    public final OffsetMapping g;
    public final UndoManager h;
    public final DeadKeyCombiner i;
    public final KeyMapping_androidKt$platformDefaultKeyMapping$1 j = KeyMapping_androidKt.a;
    public final Function1 k;
    public final int l;

    public TextFieldKeyInput(LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, boolean z, boolean z2, TextPreparedSelectionState textPreparedSelectionState, OffsetMapping offsetMapping, UndoManager undoManager, DeadKeyCombiner deadKeyCombiner, Function1 function1, int i) {
        this.a = legacyTextFieldState;
        this.b = textFieldSelectionManager;
        this.c = textFieldValue;
        this.d = z;
        this.e = z2;
        this.f = textPreparedSelectionState;
        this.g = offsetMapping;
        this.h = undoManager;
        this.i = deadKeyCombiner;
        this.k = function1;
        this.l = i;
    }

    public final void a(List list) {
        EditProcessor editProcessor = this.a.d;
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, new Object());
        this.k.b(editProcessor.a(arrayList));
    }
}
