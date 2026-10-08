package androidx.compose.ui.text.style;

import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextIndent {
    public static final TextIndent c = new TextIndent(TextUnitKt.d(0), TextUnitKt.d(0));
    public final long a;
    public final long b;

    public TextIndent(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextIndent)) {
            return false;
        }
        TextIndent textIndent = (TextIndent) obj;
        if (TextUnit.a(this.a, textIndent.a) && TextUnit.a(this.b, textIndent.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return jb.h("TextIndent(firstLine=", TextUnit.d(this.a), ", restLine=", TextUnit.d(this.b), ")");
    }
}
