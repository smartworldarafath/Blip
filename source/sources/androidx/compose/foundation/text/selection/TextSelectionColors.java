package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Color;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextSelectionColors {
    public final long a;
    public final long b;

    public TextSelectionColors(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        if (Color.c(this.a, textSelectionColors.a) && Color.c(this.b, textSelectionColors.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return jb.h("SelectionColors(selectionHandleColor=", Color.i(this.a), ", selectionBackgroundColor=", Color.i(this.b), ")");
    }
}
