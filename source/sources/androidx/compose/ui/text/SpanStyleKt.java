package androidx.compose.ui.text;

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
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SpanStyleKt {
    public static final long a = TextUnitKt.d(14);
    public static final long b = TextUnitKt.d(0);
    public static final long c = Color.g;
    public static final TextForegroundStyle d = TextForegroundStyle.Companion.b(Color.b);

    /* JADX WARN: Code restructure failed: missing block: B:88:0x00b8, code lost:
    
        if (r14.equals(r24.i) != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00c7, code lost:
    
        if (r39.equals(r24.j) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00d6, code lost:
    
        if (r13.equals(r24.k) != false) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final SpanStyle a(SpanStyle spanStyle, long j, Brush brush, float f, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        BaselineShift baselineShift2;
        LocaleList localeList2;
        Shadow shadow2;
        DrawStyle drawStyle2;
        TextForegroundStyle b2;
        TextForegroundStyle textForegroundStyle;
        long j5;
        long j6;
        long j7;
        FontFamily fontFamily2 = fontFamily;
        String str2 = str;
        long j8 = j3;
        TextDecoration textDecoration2 = textDecoration;
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        long j9 = j2 & 1095216660480L;
        if ((j9 == 0 || TextUnit.a(j2, spanStyle.b)) && ((brush != null || j == 16 || Color.c(j, spanStyle.a.b())) && ((fontStyle == null || fontStyle.equals(spanStyle.d)) && ((fontWeight == null || fontWeight.equals(spanStyle.c)) && ((fontFamily2 == null || fontFamily2 == spanStyle.f) && (((j8 & 1095216660480L) == 0 || TextUnit.a(j8, spanStyle.h)) && ((textDecoration2 == null || textDecoration2.equals(spanStyle.m)) && Intrinsics.a(brush, spanStyle.a.d()) && ((brush == null || f == spanStyle.a.a()) && ((fontSynthesis == null || fontSynthesis.equals(spanStyle.e)) && (str2 == null || str2.equals(spanStyle.g))))))))))) {
            if (baselineShift != null) {
                baselineShift2 = baselineShift;
            } else {
                baselineShift2 = baselineShift;
            }
            if (textGeometricTransform == null) {
            }
            if (localeList != null) {
                localeList2 = localeList;
            } else {
                localeList2 = localeList;
            }
            if (j4 == 16 || Color.c(j4, spanStyle.l)) {
                shadow2 = shadow;
                if (shadow2 == null || shadow2.equals(spanStyle.n)) {
                    drawStyle2 = drawStyle;
                    if (drawStyle2 == null || drawStyle2.equals(spanStyle.o)) {
                        return spanStyle;
                    }
                    if (brush == null) {
                        b2 = TextForegroundStyle.Companion.a(brush, f);
                    } else {
                        b2 = TextForegroundStyle.Companion.b(j);
                    }
                    TextForegroundStyle c2 = spanStyle.a.c(b2);
                    if (fontFamily2 == null) {
                        fontFamily2 = spanStyle.f;
                    }
                    if (j9 != 0) {
                        textForegroundStyle = c2;
                        j5 = spanStyle.b;
                    } else {
                        textForegroundStyle = c2;
                        j5 = j2;
                    }
                    FontWeight fontWeight2 = fontWeight != null ? spanStyle.c : fontWeight;
                    FontStyle fontStyle2 = fontStyle != null ? spanStyle.d : fontStyle;
                    FontSynthesis fontSynthesis2 = fontSynthesis != null ? spanStyle.e : fontSynthesis;
                    if (str2 == null) {
                        str2 = spanStyle.g;
                    }
                    if ((j8 & 1095216660480L) == 0) {
                        j8 = spanStyle.h;
                    }
                    if (baselineShift2 == null) {
                        baselineShift2 = spanStyle.i;
                    }
                    TextGeometricTransform textGeometricTransform2 = textGeometricTransform != null ? spanStyle.j : textGeometricTransform;
                    if (localeList2 == null) {
                        localeList2 = spanStyle.k;
                    }
                    if (j4 == 16) {
                        j6 = j5;
                        j7 = j4;
                    } else {
                        j6 = j5;
                        j7 = spanStyle.l;
                    }
                    if (textDecoration2 == null) {
                        textDecoration2 = spanStyle.m;
                    }
                    if (shadow2 == null) {
                        shadow2 = spanStyle.n;
                    }
                    return new SpanStyle(textForegroundStyle, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j7, textDecoration2, shadow2, platformSpanStyle, drawStyle2 != null ? spanStyle.o : drawStyle2);
                }
                drawStyle2 = drawStyle;
                if (brush == null) {
                }
                TextForegroundStyle c22 = spanStyle.a.c(b2);
                if (fontFamily2 == null) {
                }
                if (j9 != 0) {
                }
                if (fontWeight != null) {
                }
                if (fontStyle != null) {
                }
                if (fontSynthesis != null) {
                }
                if (str2 == null) {
                }
                if ((j8 & 1095216660480L) == 0) {
                }
                if (baselineShift2 == null) {
                }
                if (textGeometricTransform != null) {
                }
                if (localeList2 == null) {
                }
                if (j4 == 16) {
                }
                if (textDecoration2 == null) {
                }
                if (shadow2 == null) {
                }
                return new SpanStyle(textForegroundStyle, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j7, textDecoration2, shadow2, platformSpanStyle, drawStyle2 != null ? spanStyle.o : drawStyle2);
            }
            shadow2 = shadow;
            drawStyle2 = drawStyle;
            if (brush == null) {
            }
            TextForegroundStyle c222 = spanStyle.a.c(b2);
            if (fontFamily2 == null) {
            }
            if (j9 != 0) {
            }
            if (fontWeight != null) {
            }
            if (fontStyle != null) {
            }
            if (fontSynthesis != null) {
            }
            if (str2 == null) {
            }
            if ((j8 & 1095216660480L) == 0) {
            }
            if (baselineShift2 == null) {
            }
            if (textGeometricTransform != null) {
            }
            if (localeList2 == null) {
            }
            if (j4 == 16) {
            }
            if (textDecoration2 == null) {
            }
            if (shadow2 == null) {
            }
            return new SpanStyle(textForegroundStyle, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j7, textDecoration2, shadow2, platformSpanStyle, drawStyle2 != null ? spanStyle.o : drawStyle2);
        }
        baselineShift2 = baselineShift;
        localeList2 = localeList;
        shadow2 = shadow;
        drawStyle2 = drawStyle;
        if (brush == null) {
        }
        TextForegroundStyle c2222 = spanStyle.a.c(b2);
        if (fontFamily2 == null) {
        }
        if (j9 != 0) {
        }
        if (fontWeight != null) {
        }
        if (fontStyle != null) {
        }
        if (fontSynthesis != null) {
        }
        if (str2 == null) {
        }
        if ((j8 & 1095216660480L) == 0) {
        }
        if (baselineShift2 == null) {
        }
        if (textGeometricTransform != null) {
        }
        if (localeList2 == null) {
        }
        if (j4 == 16) {
        }
        if (textDecoration2 == null) {
        }
        if (shadow2 == null) {
        }
        return new SpanStyle(textForegroundStyle, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j8, baselineShift2, textGeometricTransform2, localeList2, j7, textDecoration2, shadow2, platformSpanStyle, drawStyle2 != null ? spanStyle.o : drawStyle2);
    }
}
