package androidx.compose.ui.text.input;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeleteAllCommand implements EditCommand {
    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        editingBuffer.d("", 0, editingBuffer.a.a());
    }

    public final boolean equals(Object obj) {
        return obj instanceof DeleteAllCommand;
    }

    public final int hashCode() {
        return Reflection.a(DeleteAllCommand.class).hashCode();
    }

    public final String toString() {
        return "DeleteAllCommand()";
    }
}
