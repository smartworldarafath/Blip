package androidx.compose.ui.text.style;

import androidx.compose.ui.util.ListUtilsKt;
import defpackage.q;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextDecoration {
    public static final TextDecoration b = new TextDecoration(0);
    public static final TextDecoration c = new TextDecoration(1);
    public static final TextDecoration d = new TextDecoration(2);
    public final int a;

    public TextDecoration(int i) {
        this.a = i;
    }

    public final boolean a(TextDecoration textDecoration) {
        int i = textDecoration.a;
        int i2 = this.a;
        if ((i | i2) == i2) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextDecoration)) {
            return false;
        }
        if (this.a == ((TextDecoration) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        int i = this.a;
        if (i == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            arrayList.add("Underline");
        }
        if ((i & 2) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + arrayList.get(0);
        }
        return q.i("TextDecoration[", ListUtilsKt.a(arrayList, ", ", null, 62), "]");
    }
}
