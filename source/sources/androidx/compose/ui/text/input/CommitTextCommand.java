package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CommitTextCommand implements EditCommand {
    public final AnnotatedString a;
    public final int b;

    public CommitTextCommand(String str, int i) {
        this(new AnnotatedString(str), i);
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int length;
        int i = editingBuffer.d;
        AnnotatedString annotatedString = this.a;
        int i2 = -1;
        if (i != -1) {
            editingBuffer.d(annotatedString.k, i, editingBuffer.e);
        } else {
            editingBuffer.d(annotatedString.k, editingBuffer.b, editingBuffer.c);
        }
        int i3 = editingBuffer.b;
        int i4 = editingBuffer.c;
        if (i3 == i4) {
            i2 = i4;
        }
        int i5 = this.b;
        if (i5 > 0) {
            length = (i2 + i5) - 1;
        } else {
            length = (i2 + i5) - annotatedString.k.length();
        }
        int d = RangesKt.d(length, 0, editingBuffer.a.a());
        editingBuffer.f(d, d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommitTextCommand)) {
            return false;
        }
        CommitTextCommand commitTextCommand = (CommitTextCommand) obj;
        if (Intrinsics.a(this.a.k, commitTextCommand.a.k) && this.b == commitTextCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.k.hashCode() * 31) + this.b;
    }

    public final String toString() {
        return "CommitTextCommand(text='" + this.a.k + "', newCursorPosition=" + this.b + ")";
    }

    public CommitTextCommand(AnnotatedString annotatedString, int i) {
        this.a = annotatedString;
        this.b = i;
    }
}
