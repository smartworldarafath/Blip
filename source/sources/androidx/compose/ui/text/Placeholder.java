package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Placeholder {
    public final long a;
    public final long b;
    public final int c;

    public Placeholder(int i, long j, long j2) {
        this.a = j;
        this.b = j2;
        this.c = i;
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        if ((j & 1095216660480L) == 0) {
            InlineClassHelperKt.a("width cannot be TextUnit.Unspecified");
        }
        if ((1095216660480L & j2) == 0) {
            InlineClassHelperKt.a("height cannot be TextUnit.Unspecified");
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Placeholder) {
                Placeholder placeholder = (Placeholder) obj;
                if (TextUnit.a(this.a, placeholder.a) && TextUnit.a(this.b, placeholder.b) && this.c == placeholder.c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        return Integer.hashCode(this.c) + jb.a(Long.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        String str;
        String d = TextUnit.d(this.a);
        String d2 = TextUnit.d(this.b);
        int i = this.c;
        if (i == 1) {
            str = "AboveBaseline";
        } else if (i == 2) {
            str = "Top";
        } else if (i == 3) {
            str = "Bottom";
        } else if (i == 4) {
            str = "Center";
        } else if (i == 5) {
            str = "TextTop";
        } else if (i == 6) {
            str = "TextBottom";
        } else if (i == 7) {
            str = "TextCenter";
        } else {
            str = "Invalid";
        }
        return q.l(q.o("Placeholder(width=", d, ", height=", d2, ", placeholderVerticalAlign="), str, ")");
    }
}
