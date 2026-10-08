package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParagraphStyle implements AnnotatedString.Annotation {
    public final int a;
    public final int b;
    public final long c;
    public final TextIndent d;
    public final PlatformParagraphStyle e;
    public final LineHeightStyle f;
    public final int g;
    public final int h;
    public final TextMotion i;

    public ParagraphStyle(int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = textIndent;
        this.e = platformParagraphStyle;
        this.f = lineHeightStyle;
        this.g = i3;
        this.h = i4;
        this.i = textMotion;
        if (!TextUnit.a(j, TextUnit.c) && TextUnit.c(j) < 0.0f) {
            InlineClassHelperKt.c("lineHeight can't be negative (" + TextUnit.c(j) + ")");
        }
    }

    public final ParagraphStyle a(ParagraphStyle paragraphStyle) {
        if (paragraphStyle == null) {
            return this;
        }
        return ParagraphStyleKt.a(this, paragraphStyle.a, paragraphStyle.b, paragraphStyle.c, paragraphStyle.d, paragraphStyle.e, paragraphStyle.f, paragraphStyle.g, paragraphStyle.h, paragraphStyle.i);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ParagraphStyle) {
                ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
                if (this.a == paragraphStyle.a && this.b == paragraphStyle.b && TextUnit.a(this.c, paragraphStyle.c) && Intrinsics.a(this.d, paragraphStyle.d) && Intrinsics.a(this.e, paragraphStyle.e) && Intrinsics.a(this.f, paragraphStyle.f) && this.g == paragraphStyle.g && this.h == paragraphStyle.h && Intrinsics.a(this.i, paragraphStyle.i)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int b = q.b(this.b, Integer.hashCode(this.a) * 31, 31);
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        int a = jb.a(b, 31, this.c);
        int i4 = 0;
        TextIndent textIndent = this.d;
        if (textIndent != null) {
            i = textIndent.hashCode();
        } else {
            i = 0;
        }
        int i5 = (a + i) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.e;
        if (platformParagraphStyle != null) {
            i2 = platformParagraphStyle.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        LineHeightStyle lineHeightStyle = this.f;
        if (lineHeightStyle != null) {
            i3 = lineHeightStyle.hashCode();
        } else {
            i3 = 0;
        }
        int b2 = q.b(this.h, q.b(this.g, (i6 + i3) * 31, 31), 31);
        TextMotion textMotion = this.i;
        if (textMotion != null) {
            i4 = textMotion.hashCode();
        }
        return b2 + i4;
    }

    public final String toString() {
        String a = TextAlign.a(this.a);
        String a2 = TextDirection.a(this.b);
        String d = TextUnit.d(this.c);
        String a3 = LineBreak.a(this.g);
        String a4 = Hyphens.a(this.h);
        StringBuilder o = q.o("ParagraphStyle(textAlign=", a, ", textDirection=", a2, ", lineHeight=");
        o.append(d);
        o.append(", textIndent=");
        o.append(this.d);
        o.append(", platformStyle=");
        o.append(this.e);
        o.append(", lineHeightStyle=");
        o.append(this.f);
        o.append(", lineBreak=");
        q.B(o, a3, ", hyphens=", a4, ", textMotion=");
        o.append(this.i);
        o.append(")");
        return o.toString();
    }
}
