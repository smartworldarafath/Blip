package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextStyleKt {
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final TextStyle a(TextStyle textStyle, LayoutDirection layoutDirection) {
        int i;
        int i2;
        float f;
        long j;
        TextIndent textIndent;
        int i3;
        int i4;
        TextMotion textMotion;
        SpanStyle spanStyle = textStyle.a;
        TextForegroundStyle textForegroundStyle = SpanStyleKt.d;
        TextForegroundStyle textForegroundStyle2 = spanStyle.a;
        if (textForegroundStyle2.equals(TextForegroundStyle.Unspecified.a)) {
            textForegroundStyle2 = SpanStyleKt.d;
        }
        TextForegroundStyle textForegroundStyle3 = textForegroundStyle2;
        long j2 = spanStyle.b;
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        if ((j2 & 1095216660480L) == 0) {
            j2 = SpanStyleKt.a;
        }
        long j3 = j2;
        FontWeight fontWeight = spanStyle.c;
        if (fontWeight == null) {
            fontWeight = FontWeight.q;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle = spanStyle.d;
        if (fontStyle != null) {
            i = fontStyle.a;
        } else {
            i = 0;
        }
        FontStyle fontStyle2 = new FontStyle(i);
        FontSynthesis fontSynthesis = spanStyle.e;
        if (fontSynthesis != null) {
            i2 = fontSynthesis.a;
        } else {
            i2 = 65535;
        }
        FontSynthesis fontSynthesis2 = new FontSynthesis(i2);
        FontFamily fontFamily = spanStyle.f;
        if (fontFamily == null) {
            fontFamily = FontFamily.j;
        }
        FontFamily fontFamily2 = fontFamily;
        String str = spanStyle.g;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        long j4 = spanStyle.h;
        if ((j4 & 1095216660480L) == 0) {
            j4 = SpanStyleKt.b;
        }
        long j5 = j4;
        BaselineShift baselineShift = spanStyle.i;
        float f2 = 0.0f;
        if (baselineShift != null) {
            f = baselineShift.a;
        } else {
            f = 0.0f;
        }
        if (!Float.isNaN(f)) {
            f2 = f;
        }
        BaselineShift baselineShift2 = new BaselineShift(f2);
        TextGeometricTransform textGeometricTransform = spanStyle.j;
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.c;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.k;
        if (localeList == null) {
            LocaleList localeList2 = LocaleList.l;
            localeList = PlatformLocaleKt.a.a();
        }
        LocaleList localeList3 = localeList;
        long j6 = spanStyle.l;
        if (j6 == 16) {
            j6 = SpanStyleKt.c;
        }
        long j7 = j6;
        TextDecoration textDecoration = spanStyle.m;
        if (textDecoration == null) {
            textDecoration = TextDecoration.b;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.n;
        if (shadow == null) {
            shadow = Shadow.d;
        }
        Shadow shadow2 = shadow;
        DrawStyle drawStyle = spanStyle.o;
        if (drawStyle == null) {
            drawStyle = Fill.a;
        }
        SpanStyle spanStyle2 = new SpanStyle(textForegroundStyle3, j3, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j5, baselineShift2, textGeometricTransform2, localeList3, j7, textDecoration2, shadow2, null, drawStyle);
        ParagraphStyle paragraphStyle = textStyle.b;
        int i5 = ParagraphStyleKt.b;
        int i6 = paragraphStyle.a;
        int i7 = 5;
        if (i6 == 0) {
            i6 = 5;
        }
        int i8 = paragraphStyle.b;
        if (i8 == 3) {
            int ordinal = layoutDirection.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    k8.e();
                    return null;
                }
            } else {
                i7 = 4;
            }
        } else {
            if (i8 == 0) {
                int ordinal2 = layoutDirection.ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 == 1) {
                        i7 = 2;
                    } else {
                        k8.e();
                        return null;
                    }
                } else {
                    i8 = 1;
                }
            }
            j = paragraphStyle.c;
            if ((j & 1095216660480L) == 0) {
                j = ParagraphStyleKt.a;
            }
            textIndent = paragraphStyle.d;
            if (textIndent == null) {
                textIndent = TextIndent.c;
            }
            PlatformParagraphStyle platformParagraphStyle = paragraphStyle.e;
            LineHeightStyle lineHeightStyle = paragraphStyle.f;
            i3 = paragraphStyle.g;
            if (i3 == 0) {
                i3 = LineBreak.b;
            }
            i4 = paragraphStyle.h;
            if (i4 == 0) {
                i4 = 1;
            }
            textMotion = paragraphStyle.i;
            if (textMotion == null) {
                textMotion = TextMotion.c;
            }
            return new TextStyle(spanStyle2, new ParagraphStyle(i6, i8, j, textIndent, platformParagraphStyle, lineHeightStyle, i3, i4, textMotion), textStyle.c);
        }
        i8 = i7;
        j = paragraphStyle.c;
        if ((j & 1095216660480L) == 0) {
        }
        textIndent = paragraphStyle.d;
        if (textIndent == null) {
        }
        PlatformParagraphStyle platformParagraphStyle2 = paragraphStyle.e;
        LineHeightStyle lineHeightStyle2 = paragraphStyle.f;
        i3 = paragraphStyle.g;
        if (i3 == 0) {
        }
        i4 = paragraphStyle.h;
        if (i4 == 0) {
        }
        textMotion = paragraphStyle.i;
        if (textMotion == null) {
        }
        return new TextStyle(spanStyle2, new ParagraphStyle(i6, i8, j, textIndent, platformParagraphStyle2, lineHeightStyle2, i3, i4, textMotion), textStyle.c);
    }
}
