package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldPreparedSelection extends BaseTextPreparedSelection<TextFieldPreparedSelection> {
    public final TextFieldValue h;
    public final TextLayoutResultProxy i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState) {
        super(r1, r2, r0, offsetMapping, textPreparedSelectionState);
        TextLayoutResult textLayoutResult;
        AnnotatedString annotatedString = textFieldValue.a;
        long j = textFieldValue.b;
        if (textLayoutResultProxy != null) {
            textLayoutResult = textLayoutResultProxy.a;
        } else {
            textLayoutResult = null;
        }
        this.h = textFieldValue;
        this.i = textLayoutResultProxy;
    }

    public final List q(Function1 function1) {
        if (TextRange.c(this.f)) {
            EditCommand editCommand = (EditCommand) function1.b(this);
            if (editCommand != null) {
                return CollectionsKt.B(editCommand);
            }
            return null;
        }
        return CollectionsKt.C(new CommitTextCommand("", 0), new SetSelectionCommand(TextRange.f(this.f), TextRange.f(this.f)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r9 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int r(TextLayoutResultProxy textLayoutResultProxy, int i) {
        Rect rect;
        LayoutCoordinates layoutCoordinates = textLayoutResultProxy.b;
        TextLayoutResult textLayoutResult = textLayoutResultProxy.a;
        if (layoutCoordinates != null) {
            LayoutCoordinates layoutCoordinates2 = textLayoutResultProxy.c;
            if (layoutCoordinates2 != null) {
                rect = layoutCoordinates2.l(layoutCoordinates, true);
            } else {
                rect = null;
            }
        }
        rect = Rect.e;
        long j = this.h.b;
        int i2 = TextRange.c;
        OffsetMapping offsetMapping = this.d;
        Rect c = textLayoutResult.c(offsetMapping.b((int) (j & 4294967295L)));
        float f = c.a;
        float intBitsToFloat = (Float.intBitsToFloat((int) (rect.c() & 4294967295L)) * i) + c.b;
        return offsetMapping.a(textLayoutResult.b.g((Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(f) << 32)));
    }
}
