package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectableInfo {
    public final int a;
    public final int b;
    public final int c;
    public final TextLayoutResult d;

    public SelectableInfo(int i, int i2, int i3, TextLayoutResult textLayoutResult) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = textLayoutResult;
    }

    public final Selection.AnchorInfo a(int i) {
        return new Selection.AnchorInfo(SelectionHelpersKt.a(this.d, i), i, 1L);
    }

    public final String toString() {
        TextLayoutResult textLayoutResult = this.d;
        int i = this.a;
        ResolvedTextDirection a = SelectionHelpersKt.a(textLayoutResult, i);
        int i2 = this.b;
        ResolvedTextDirection a2 = SelectionHelpersKt.a(textLayoutResult, i2);
        StringBuilder sb = new StringBuilder("SelectionInfo(id=1, range=(");
        sb.append(i);
        sb.append("-");
        sb.append(a);
        sb.append(",");
        sb.append(i2);
        sb.append("-");
        sb.append(a2);
        sb.append("), prevOffset=");
        return jb.i(sb, this.c, ")");
    }
}
