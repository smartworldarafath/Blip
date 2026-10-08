package androidx.compose.foundation.text.contextmenu.data;

import defpackage.jb;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuItem extends TextContextMenuComponent {
    public final String b;
    public final int c;
    public final Function1 d;

    public TextContextMenuItem(Object obj, String str, int i, Function1 function1) {
        super(obj);
        this.b = str;
        this.c = i;
        this.d = function1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuItem(key=");
        sb.append(this.a);
        sb.append(", label=\"");
        sb.append(this.b);
        sb.append("\", leadingIcon=");
        return jb.i(sb, this.c, ")");
    }
}
