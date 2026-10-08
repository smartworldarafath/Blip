package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SetComposingTextCommand implements EditCommand {
    public final AnnotatedString a;
    public final int b;

    public SetComposingTextCommand(String str, int i) {
        this.a = new AnnotatedString(str);
        this.b = i;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int length;
        int i = editingBuffer.d;
        AnnotatedString annotatedString = this.a;
        int i2 = -1;
        if (i != -1) {
            int i3 = editingBuffer.e;
            String str = annotatedString.k;
            String str2 = annotatedString.k;
            editingBuffer.d(str, i, i3);
            if (str2.length() > 0) {
                editingBuffer.e(i, str2.length() + i);
            }
        } else {
            int i4 = editingBuffer.b;
            int i5 = editingBuffer.c;
            String str3 = annotatedString.k;
            String str4 = annotatedString.k;
            editingBuffer.d(str3, i4, i5);
            if (str4.length() > 0) {
                editingBuffer.e(i4, str4.length() + i4);
            }
        }
        int i6 = editingBuffer.b;
        int i7 = editingBuffer.c;
        if (i6 == i7) {
            i2 = i7;
        }
        int i8 = this.b;
        if (i8 > 0) {
            length = (i2 + i8) - 1;
        } else {
            length = (i2 + i8) - annotatedString.k.length();
        }
        int d = RangesKt.d(length, 0, editingBuffer.a.a());
        editingBuffer.f(d, d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) obj;
        if (Intrinsics.a(this.a.k, setComposingTextCommand.a.k) && this.b == setComposingTextCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.k.hashCode() * 31) + this.b;
    }

    public final String toString() {
        return "SetComposingTextCommand(text='" + this.a.k + "', newCursorPosition=" + this.b + ")";
    }
}
