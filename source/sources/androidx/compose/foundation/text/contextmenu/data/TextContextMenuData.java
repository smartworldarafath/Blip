package androidx.compose.foundation.text.contextmenu.data;

import androidx.compose.ui.util.ListUtilsKt;
import defpackage.q;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuData {
    public static final TextContextMenuData b = new TextContextMenuData(EmptyList.j);
    public final List a;

    public TextContextMenuData(List list) {
        this.a = list;
    }

    public final String toString() {
        return q.i("TextContextMenuData(components=", ListUtilsKt.a(this.a, "\n\t", null, 56), ")");
    }
}
