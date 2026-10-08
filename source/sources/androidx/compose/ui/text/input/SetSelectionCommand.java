package androidx.compose.ui.text.input;

import defpackage.jb;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SetSelectionCommand implements EditCommand {
    public final int a;
    public final int b;

    public SetSelectionCommand(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int d = RangesKt.d(this.a, 0, editingBuffer.a.a());
        int d2 = RangesKt.d(this.b, 0, editingBuffer.a.a());
        if (d < d2) {
            editingBuffer.f(d, d2);
        } else {
            editingBuffer.f(d2, d);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        if (this.a == setSelectionCommand.a && this.b == setSelectionCommand.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + this.b;
    }

    public final String toString() {
        return jb.e("SetSelectionCommand(start=", this.a, ", end=", this.b, ")");
    }
}
