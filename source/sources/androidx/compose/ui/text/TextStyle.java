package androidx.compose.ui.text;

import androidx.compose.material.DefaultPlatformTextStyle_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextStyle {
    public static final TextStyle d = new TextStyle(0, 0, null, null, 0, 0, 0, 0, 16777215);
    public final SpanStyle a;
    public final ParagraphStyle b;
    public final PlatformTextStyle c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextStyle(long j, long j2, FontWeight fontWeight, FontFamily fontFamily, long j3, int i, long j4, int i2, int i3) {
        this(new SpanStyle(r4, r6, r8, (FontStyle) null, (FontSynthesis) null, r11, (String) null, r13, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, r18, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null), new ParagraphStyle(r1, 0, r23, null, null, null, (i3 & 2097152) == 0 ? i2 : 0, 0, null), null);
        long j5;
        long j6;
        FontWeight fontWeight2;
        FontFamily fontFamily2;
        long j7;
        int i4;
        long j8;
        if ((i3 & 1) != 0) {
            j5 = Color.h;
        } else {
            j5 = j;
        }
        if ((i3 & 2) != 0) {
            j6 = TextUnit.c;
        } else {
            j6 = j2;
        }
        if ((i3 & 4) != 0) {
            fontWeight2 = null;
        } else {
            fontWeight2 = fontWeight;
        }
        if ((i3 & 32) != 0) {
            fontFamily2 = null;
        } else {
            fontFamily2 = fontFamily;
        }
        if ((i3 & 128) != 0) {
            j7 = TextUnit.c;
        } else {
            j7 = j3;
        }
        long j9 = Color.h;
        if ((32768 & i3) != 0) {
            i4 = 0;
        } else {
            i4 = i;
        }
        if ((131072 & i3) != 0) {
            j8 = TextUnit.c;
        } else {
            j8 = j4;
        }
    }

    public static TextStyle a(TextStyle textStyle, long j, long j2, FontWeight fontWeight, long j3, long j4, LineHeightStyle lineHeightStyle, int i, int i2) {
        long j5;
        long j6;
        FontWeight fontWeight2;
        FontFamily fontFamily;
        String str;
        long j7;
        int i3;
        int i4;
        long j8;
        long j9;
        PlatformTextStyle platformTextStyle;
        LineHeightStyle lineHeightStyle2;
        int i5;
        TextForegroundStyle b;
        PlatformParagraphStyle platformParagraphStyle;
        if ((i2 & 1) != 0) {
            j5 = textStyle.a.a.b();
        } else {
            j5 = j;
        }
        if ((i2 & 2) != 0) {
            j6 = textStyle.a.b;
        } else {
            j6 = j2;
        }
        if ((i2 & 4) != 0) {
            fontWeight2 = textStyle.a.c;
        } else {
            fontWeight2 = fontWeight;
        }
        SpanStyle spanStyle = textStyle.a;
        FontStyle fontStyle = spanStyle.d;
        FontSynthesis fontSynthesis = spanStyle.e;
        if ((i2 & 32) != 0) {
            fontFamily = spanStyle.f;
        } else {
            fontFamily = FontFamily.j;
        }
        FontFamily fontFamily2 = fontFamily;
        if ((i2 & 64) != 0) {
            str = spanStyle.g;
        } else {
            str = "tnum";
        }
        String str2 = str;
        if ((i2 & 128) != 0) {
            j7 = spanStyle.h;
        } else {
            j7 = j3;
        }
        BaselineShift baselineShift = spanStyle.i;
        TextGeometricTransform textGeometricTransform = spanStyle.j;
        LocaleList localeList = spanStyle.k;
        long j10 = spanStyle.l;
        TextDecoration textDecoration = spanStyle.m;
        Shadow shadow = spanStyle.n;
        DrawStyle drawStyle = spanStyle.o;
        if ((i2 & 32768) != 0) {
            i3 = textStyle.b.a;
        } else {
            i3 = 3;
        }
        int i6 = i3;
        if ((i2 & 65536) != 0) {
            i4 = textStyle.b.b;
        } else {
            i4 = 1;
        }
        int i7 = i4;
        if ((i2 & 131072) != 0) {
            j8 = j10;
            j9 = textStyle.b.c;
        } else {
            j8 = j10;
            j9 = j4;
        }
        ParagraphStyle paragraphStyle = textStyle.b;
        TextIndent textIndent = paragraphStyle.d;
        if ((i2 & 524288) != 0) {
            platformTextStyle = textStyle.c;
        } else {
            platformTextStyle = DefaultPlatformTextStyle_androidKt.a;
        }
        if ((i2 & 1048576) != 0) {
            lineHeightStyle2 = paragraphStyle.f;
        } else {
            lineHeightStyle2 = lineHeightStyle;
        }
        if ((i2 & 2097152) != 0) {
            i5 = paragraphStyle.g;
        } else {
            i5 = i;
        }
        int i8 = paragraphStyle.h;
        TextMotion textMotion = paragraphStyle.i;
        if (Color.c(j5, spanStyle.a.b())) {
            b = spanStyle.a;
        } else {
            b = TextForegroundStyle.Companion.b(j5);
        }
        SpanStyle spanStyle2 = new SpanStyle(b, j6, fontWeight2, fontStyle, fontSynthesis, fontFamily2, str2, j7, baselineShift, textGeometricTransform, localeList, j8, textDecoration, shadow, null, drawStyle);
        if (platformTextStyle != null) {
            platformParagraphStyle = platformTextStyle.a;
        } else {
            platformParagraphStyle = null;
        }
        return new TextStyle(spanStyle2, new ParagraphStyle(i6, i7, j9, textIndent, platformParagraphStyle, lineHeightStyle2, i5, i8, textMotion), platformTextStyle);
    }

    public static TextStyle e(TextStyle textStyle, long j, long j2, long j3, int i, long j4, int i2) {
        long j5;
        long j6;
        long j7;
        int i3;
        long j8;
        if ((i2 & 1) != 0) {
            j5 = Color.h;
        } else {
            j5 = j;
        }
        if ((i2 & 2) != 0) {
            j6 = TextUnit.c;
        } else {
            j6 = j2;
        }
        if ((i2 & 128) != 0) {
            j7 = TextUnit.c;
        } else {
            j7 = j3;
        }
        long j9 = Color.h;
        if ((32768 & i2) != 0) {
            i3 = 0;
        } else {
            i3 = i;
        }
        if ((i2 & 131072) != 0) {
            j8 = TextUnit.c;
        } else {
            j8 = j4;
        }
        SpanStyle a = SpanStyleKt.a(textStyle.a, j5, null, Float.NaN, j6, null, null, null, null, null, j7, null, null, null, j9, null, null, null, null);
        ParagraphStyle a2 = ParagraphStyleKt.a(textStyle.b, i3, 0, j8, null, null, null, 0, 0, null);
        if (textStyle.a == a && textStyle.b == a2) {
            return textStyle;
        }
        return new TextStyle(a, a2);
    }

    public final long b() {
        return this.a.a.b();
    }

    public final boolean c(TextStyle textStyle) {
        if (this != textStyle) {
            if (!Intrinsics.a(this.b, textStyle.b) || !this.a.a(textStyle.a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final TextStyle d(TextStyle textStyle) {
        if (textStyle != null && !textStyle.equals(d)) {
            return new TextStyle(this.a.c(textStyle.a), this.b.a(textStyle.b));
        }
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        if (Intrinsics.a(this.a, textStyle.a) && Intrinsics.a(this.b, textStyle.b) && Intrinsics.a(this.c, textStyle.c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        PlatformTextStyle platformTextStyle = this.c;
        if (platformTextStyle != null) {
            i = platformTextStyle.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public final String toString() {
        String i = Color.i(b());
        SpanStyle spanStyle = this.a;
        Brush d2 = spanStyle.a.d();
        float a = spanStyle.a.a();
        String d3 = TextUnit.d(spanStyle.b);
        FontWeight fontWeight = spanStyle.c;
        FontStyle fontStyle = spanStyle.d;
        FontSynthesis fontSynthesis = spanStyle.e;
        FontFamily fontFamily = spanStyle.f;
        String str = spanStyle.g;
        String d4 = TextUnit.d(spanStyle.h);
        BaselineShift baselineShift = spanStyle.i;
        TextGeometricTransform textGeometricTransform = spanStyle.j;
        LocaleList localeList = spanStyle.k;
        String i2 = Color.i(spanStyle.l);
        TextDecoration textDecoration = spanStyle.m;
        Shadow shadow = spanStyle.n;
        DrawStyle drawStyle = spanStyle.o;
        ParagraphStyle paragraphStyle = this.b;
        String a2 = TextAlign.a(paragraphStyle.a);
        String a3 = TextDirection.a(paragraphStyle.b);
        String d5 = TextUnit.d(paragraphStyle.c);
        TextIndent textIndent = paragraphStyle.d;
        LineHeightStyle lineHeightStyle = paragraphStyle.f;
        String a4 = LineBreak.a(paragraphStyle.g);
        String a5 = Hyphens.a(paragraphStyle.h);
        TextMotion textMotion = paragraphStyle.i;
        StringBuilder sb = new StringBuilder("TextStyle(color=");
        sb.append(i);
        sb.append(", brush=");
        sb.append(d2);
        sb.append(", alpha=");
        sb.append(a);
        sb.append(", fontSize=");
        sb.append(d3);
        sb.append(", fontWeight=");
        sb.append(fontWeight);
        sb.append(", fontStyle=");
        sb.append(fontStyle);
        sb.append(", fontSynthesis=");
        sb.append(fontSynthesis);
        sb.append(", fontFamily=");
        sb.append(fontFamily);
        sb.append(", fontFeatureSettings=");
        q.B(sb, str, ", letterSpacing=", d4, ", baselineShift=");
        sb.append(baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(textGeometricTransform);
        sb.append(", localeList=");
        sb.append(localeList);
        sb.append(", background=");
        sb.append(i2);
        sb.append(", textDecoration=");
        sb.append(textDecoration);
        sb.append(", shadow=");
        sb.append(shadow);
        sb.append(", drawStyle=");
        sb.append(drawStyle);
        sb.append(", textAlign=");
        sb.append(a2);
        sb.append(", textDirection=");
        q.B(sb, a3, ", lineHeight=", d5, ", textIndent=");
        sb.append(textIndent);
        sb.append(", platformStyle=");
        sb.append(this.c);
        sb.append(", lineHeightStyle=");
        sb.append(lineHeightStyle);
        sb.append(", lineBreak=");
        sb.append(a4);
        sb.append(", hyphens=");
        sb.append(a5);
        sb.append(", textMotion=");
        sb.append(textMotion);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle) {
        this(spanStyle, paragraphStyle, r0 != null ? new PlatformTextStyle(null, r0) : null);
        spanStyle.getClass();
        PlatformParagraphStyle platformParagraphStyle = paragraphStyle.e;
    }

    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle) {
        this.a = spanStyle;
        this.b = paragraphStyle;
        this.c = platformTextStyle;
    }
}
