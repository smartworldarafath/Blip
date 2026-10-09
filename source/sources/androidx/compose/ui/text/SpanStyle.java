package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpanStyle implements AnnotatedString.Annotation {
    public final TextForegroundStyle a;
    public final long b;
    public final FontWeight c;
    public final FontStyle d;
    public final FontSynthesis e;
    public final FontFamily f;
    public final String g;
    public final long h;
    public final BaselineShift i;
    public final TextGeometricTransform j;
    public final LocaleList k;
    public final long l;
    public final TextDecoration m;
    public final Shadow n;
    public final DrawStyle o;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, int i) {
        this(r4, r6, r8, r9, r10, r11, r12, r13, r15, r16, r17, r18, r20, r21, (PlatformSpanStyle) null);
        long j5;
        long j6;
        FontWeight fontWeight2;
        FontStyle fontStyle2;
        FontSynthesis fontSynthesis2;
        FontFamily fontFamily2;
        String str2;
        long j7;
        BaselineShift baselineShift2;
        TextGeometricTransform textGeometricTransform2;
        LocaleList localeList2;
        long j8;
        TextDecoration textDecoration2;
        Shadow shadow2;
        if ((i & 1) != 0) {
            j5 = Color.h;
        } else {
            j5 = j;
        }
        if ((i & 2) != 0) {
            j6 = TextUnit.c;
        } else {
            j6 = j2;
        }
        if ((i & 4) != 0) {
            fontWeight2 = null;
        } else {
            fontWeight2 = fontWeight;
        }
        if ((i & 8) != 0) {
            fontStyle2 = null;
        } else {
            fontStyle2 = fontStyle;
        }
        if ((i & 16) != 0) {
            fontSynthesis2 = null;
        } else {
            fontSynthesis2 = fontSynthesis;
        }
        if ((i & 32) != 0) {
            fontFamily2 = null;
        } else {
            fontFamily2 = fontFamily;
        }
        if ((i & 64) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i & 128) != 0) {
            j7 = TextUnit.c;
        } else {
            j7 = j3;
        }
        if ((i & 256) != 0) {
            baselineShift2 = null;
        } else {
            baselineShift2 = baselineShift;
        }
        if ((i & 512) != 0) {
            textGeometricTransform2 = null;
        } else {
            textGeometricTransform2 = textGeometricTransform;
        }
        if ((i & 1024) != 0) {
            localeList2 = null;
        } else {
            localeList2 = localeList;
        }
        if ((i & 2048) != 0) {
            j8 = Color.h;
        } else {
            j8 = j4;
        }
        if ((i & 4096) != 0) {
            textDecoration2 = null;
        } else {
            textDecoration2 = textDecoration;
        }
        if ((i & 8192) != 0) {
            shadow2 = null;
        } else {
            shadow2 = shadow;
        }
    }

    public final boolean a(SpanStyle spanStyle) {
        if (this == spanStyle) {
            return true;
        }
        if (TextUnit.a(this.b, spanStyle.b) && Intrinsics.a(this.c, spanStyle.c) && Intrinsics.a(this.d, spanStyle.d) && Intrinsics.a(this.e, spanStyle.e) && Intrinsics.a(this.f, spanStyle.f) && Intrinsics.a(this.g, spanStyle.g) && TextUnit.a(this.h, spanStyle.h) && Intrinsics.a(this.i, spanStyle.i) && Intrinsics.a(this.j, spanStyle.j) && Intrinsics.a(this.k, spanStyle.k) && Color.c(this.l, spanStyle.l) && Intrinsics.a(null, null)) {
            return true;
        }
        return false;
    }

    public final boolean b(SpanStyle spanStyle) {
        if (!Intrinsics.a(this.a, spanStyle.a) || !Intrinsics.a(this.m, spanStyle.m) || !Intrinsics.a(this.n, spanStyle.n) || !Intrinsics.a(this.o, spanStyle.o)) {
            return false;
        }
        return true;
    }

    public final SpanStyle c(SpanStyle spanStyle) {
        if (spanStyle == null) {
            return this;
        }
        TextForegroundStyle textForegroundStyle = spanStyle.a;
        return SpanStyleKt.a(this, textForegroundStyle.b(), textForegroundStyle.d(), textForegroundStyle.a(), spanStyle.b, spanStyle.c, spanStyle.d, spanStyle.e, spanStyle.f, spanStyle.g, spanStyle.h, spanStyle.i, spanStyle.j, spanStyle.k, spanStyle.l, spanStyle.m, spanStyle.n, null, spanStyle.o);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanStyle)) {
            return false;
        }
        SpanStyle spanStyle = (SpanStyle) obj;
        if (a(spanStyle) && b(spanStyle)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        TextForegroundStyle textForegroundStyle = this.a;
        long b = textForegroundStyle.b();
        int i12 = Color.i;
        int hashCode = Long.hashCode(b) * 31;
        Brush d = textForegroundStyle.d();
        int i13 = 0;
        if (d != null) {
            i = d.hashCode();
        } else {
            i = 0;
        }
        int hashCode2 = (Float.hashCode(textForegroundStyle.a()) + ((hashCode + i) * 31)) * 31;
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        int a = jb.a(hashCode2, 31, this.b);
        FontWeight fontWeight = this.c;
        if (fontWeight != null) {
            i2 = fontWeight.j;
        } else {
            i2 = 0;
        }
        int i14 = (a + i2) * 31;
        FontStyle fontStyle = this.d;
        if (fontStyle != null) {
            i3 = Integer.hashCode(fontStyle.a);
        } else {
            i3 = 0;
        }
        int i15 = (i14 + i3) * 31;
        FontSynthesis fontSynthesis = this.e;
        if (fontSynthesis != null) {
            i4 = Integer.hashCode(fontSynthesis.a);
        } else {
            i4 = 0;
        }
        int i16 = (i15 + i4) * 31;
        FontFamily fontFamily = this.f;
        if (fontFamily != null) {
            i5 = fontFamily.hashCode();
        } else {
            i5 = 0;
        }
        int i17 = (i16 + i5) * 31;
        String str = this.g;
        if (str != null) {
            i6 = str.hashCode();
        } else {
            i6 = 0;
        }
        int a2 = jb.a((i17 + i6) * 31, 31, this.h);
        BaselineShift baselineShift = this.i;
        if (baselineShift != null) {
            i7 = Float.hashCode(baselineShift.a);
        } else {
            i7 = 0;
        }
        int i18 = (a2 + i7) * 31;
        TextGeometricTransform textGeometricTransform = this.j;
        if (textGeometricTransform != null) {
            i8 = textGeometricTransform.hashCode();
        } else {
            i8 = 0;
        }
        int i19 = (i18 + i8) * 31;
        LocaleList localeList = this.k;
        if (localeList != null) {
            i9 = localeList.j.hashCode();
        } else {
            i9 = 0;
        }
        int a3 = jb.a((i19 + i9) * 31, 31, this.l);
        TextDecoration textDecoration = this.m;
        if (textDecoration != null) {
            i10 = textDecoration.a;
        } else {
            i10 = 0;
        }
        int i20 = (a3 + i10) * 31;
        Shadow shadow = this.n;
        if (shadow != null) {
            i11 = shadow.hashCode();
        } else {
            i11 = 0;
        }
        int i21 = (((i20 + i11) * 31) + 0) * 31;
        DrawStyle drawStyle = this.o;
        if (drawStyle != null) {
            i13 = drawStyle.hashCode();
        }
        return i21 + i13;
    }

    public final String toString() {
        TextForegroundStyle textForegroundStyle = this.a;
        String i = Color.i(textForegroundStyle.b());
        Brush d = textForegroundStyle.d();
        float a = textForegroundStyle.a();
        String d2 = TextUnit.d(this.b);
        String d3 = TextUnit.d(this.h);
        String i2 = Color.i(this.l);
        StringBuilder sb = new StringBuilder("SpanStyle(color=");
        sb.append(i);
        sb.append(", brush=");
        sb.append(d);
        sb.append(", alpha=");
        sb.append(a);
        sb.append(", fontSize=");
        sb.append(d2);
        sb.append(", fontWeight=");
        sb.append(this.c);
        sb.append(", fontStyle=");
        sb.append(this.d);
        sb.append(", fontSynthesis=");
        sb.append(this.e);
        sb.append(", fontFamily=");
        sb.append(this.f);
        sb.append(", fontFeatureSettings=");
        q.B(sb, this.g, ", letterSpacing=", d3, ", baselineShift=");
        sb.append(this.i);
        sb.append(", textGeometricTransform=");
        sb.append(this.j);
        sb.append(", localeList=");
        sb.append(this.k);
        sb.append(", background=");
        sb.append(i2);
        sb.append(", textDecoration=");
        sb.append(this.m);
        sb.append(", shadow=");
        sb.append(this.n);
        sb.append(", platformStyle=");
        sb.append((Object) null);
        sb.append(", drawStyle=");
        sb.append(this.o);
        sb.append(")");
        return sb.toString();
    }

    public SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        this.a = textForegroundStyle;
        this.b = j;
        this.c = fontWeight;
        this.d = fontStyle;
        this.e = fontSynthesis;
        this.f = fontFamily;
        this.g = str;
        this.h = j2;
        this.i = baselineShift;
        this.j = textGeometricTransform;
        this.k = localeList;
        this.l = j3;
        this.m = textDecoration;
        this.n = shadow;
        this.o = drawStyle;
    }

    public SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextForegroundStyle.Companion.b(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, null);
    }
}
