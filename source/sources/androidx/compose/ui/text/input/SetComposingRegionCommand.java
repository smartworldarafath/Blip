package androidx.compose.ui.text.input;

import defpackage.jb;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SetComposingRegionCommand implements EditCommand {
    public final int a;
    public final int b;

    public SetComposingRegionCommand(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        boolean z;
        if (editingBuffer.d != -1) {
            z = true;
        } else {
            z = false;
        }
        PartialGapBuffer partialGapBuffer = editingBuffer.a;
        if (z) {
            editingBuffer.d = -1;
            editingBuffer.e = -1;
        }
        int d = RangesKt.d(this.a, 0, partialGapBuffer.a());
        int d2 = RangesKt.d(this.b, 0, partialGapBuffer.a());
        if (d != d2) {
            if (d < d2) {
                editingBuffer.e(d, d2);
            } else {
                editingBuffer.e(d2, d);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        if (this.a == setComposingRegionCommand.a && this.b == setComposingRegionCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + this.b;
    }

    public final String toString() {
        return jb.e("SetComposingRegionCommand(start=", this.a, ", end=", this.b, ")");
    }
}
