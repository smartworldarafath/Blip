package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import defpackage.q;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLayoutInput {
    public final AnnotatedString a;
    public final TextStyle b;
    public final List c;
    public final int d;
    public final boolean e;
    public final int f;
    public final Density g;
    public final LayoutDirection h;
    public final FontFamily.Resolver i;
    public final long j;

    public TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j) {
        this.a = annotatedString;
        this.b = textStyle;
        this.c = list;
        this.d = i;
        this.e = z;
        this.f = i2;
        this.g = density;
        this.h = layoutDirection;
        this.i = resolver;
        this.j = j;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TextLayoutInput) {
                TextLayoutInput textLayoutInput = (TextLayoutInput) obj;
                if (Intrinsics.a(this.a, textLayoutInput.a) && Intrinsics.a(this.b, textLayoutInput.b) && Intrinsics.a(this.c, textLayoutInput.c) && this.d == textLayoutInput.d && this.e == textLayoutInput.e && this.f == textLayoutInput.f && Intrinsics.a(this.g, textLayoutInput.g) && this.h == textLayoutInput.h && Intrinsics.a(this.i, textLayoutInput.i) && Constraints.b(this.j, textLayoutInput.j)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.j) + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + q.b(this.f, jb.b((((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31) + this.d) * 31, 31, this.e), 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String str;
        int i = this.f;
        if (i == 1) {
            str = "Clip";
        } else if (i == 2) {
            str = "Ellipsis";
        } else if (i == 5) {
            str = "MiddleEllipsis";
        } else if (i == 3) {
            str = "Visible";
        } else if (i == 4) {
            str = "StartEllipsis";
        } else {
            str = "Invalid";
        }
        return "TextLayoutInput(text=" + ((Object) this.a) + ", style=" + this.b + ", placeholders=" + this.c + ", maxLines=" + this.d + ", softWrap=" + this.e + ", overflow=" + str + ", density=" + this.g + ", layoutDirection=" + this.h + ", fontFamilyResolver=" + this.i + ", constraints=" + Constraints.l(this.j) + ")";
    }
}
