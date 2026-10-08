package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    public final int a;
    public final int b;

    public DeleteSurroundingTextInCodePointsCommand(int i, int i2) {
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
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < this.a) {
                int i4 = i3 + 1;
                int i5 = editingBuffer.b;
                if (i5 > i4) {
                    char b = editingBuffer.b((i5 - i4) - 1);
                    char b2 = editingBuffer.b(editingBuffer.b - i4);
                    if (Character.isHighSurrogate(b) && Character.isLowSurrogate(b2)) {
                        i3 += 2;
                    } else {
                        i3 = i4;
                    }
                    i2++;
                } else {
                    i3 = i5;
                    break;
                }
            } else {
                break;
            }
        }
        int i6 = 0;
        while (true) {
            if (i >= this.b) {
                break;
            }
            int i7 = i6 + 1;
            int i8 = editingBuffer.c;
            PartialGapBuffer partialGapBuffer = editingBuffer.a;
            if (i8 + i7 < partialGapBuffer.a()) {
                char b3 = editingBuffer.b((editingBuffer.c + i7) - 1);
                char b4 = editingBuffer.b(editingBuffer.c + i7);
                if (Character.isHighSurrogate(b3) && Character.isLowSurrogate(b4)) {
                    i6 += 2;
                } else {
                    i6 = i7;
                }
                i++;
            } else {
                i6 = partialGapBuffer.a() - editingBuffer.c;
                break;
            }
        }
        int i9 = editingBuffer.c;
        editingBuffer.a(i9, i6 + i9);
        int i10 = editingBuffer.b;
        editingBuffer.a(i10 - i3, i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        if (this.a == deleteSurroundingTextInCodePointsCommand.a && this.b == deleteSurroundingTextInCodePointsCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + this.b;
    }

    public final String toString() {
        return jb.e("DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=", this.a, ", lengthAfterCursor=", this.b, ")");
    }
}
