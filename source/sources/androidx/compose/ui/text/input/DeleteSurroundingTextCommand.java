package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeleteSurroundingTextCommand implements EditCommand {
    public final int a;
    public final int b;

    public DeleteSurroundingTextCommand(int i, int i2) {
        boolean z;
        this.a = i;
        this.b = i2;
        if (i >= 0 && i2 >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            InlineClassHelperKt.a("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
        }
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int i = editingBuffer.c;
        PartialGapBuffer partialGapBuffer = editingBuffer.a;
        int i2 = this.b;
        int i3 = i + i2;
        if (((i ^ i3) & (i2 ^ i3)) < 0) {
            i3 = partialGapBuffer.a();
        }
        editingBuffer.a(editingBuffer.c, Math.min(i3, partialGapBuffer.a()));
        int i4 = editingBuffer.b;
        int i5 = this.a;
        int i6 = i4 - i5;
        if (((i5 ^ i4) & (i4 ^ i6)) < 0) {
            i6 = 0;
        }
        editingBuffer.a(Math.max(0, i6), editingBuffer.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextCommand)) {
            return false;
        }
        DeleteSurroundingTextCommand deleteSurroundingTextCommand = (DeleteSurroundingTextCommand) obj;
        if (this.a == deleteSurroundingTextCommand.a && this.b == deleteSurroundingTextCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + this.b;
    }

    public final String toString() {
        return jb.e("DeleteSurroundingTextCommand(lengthBeforeCursor=", this.a, ", lengthAfterCursor=", this.b, ")");
    }
}
