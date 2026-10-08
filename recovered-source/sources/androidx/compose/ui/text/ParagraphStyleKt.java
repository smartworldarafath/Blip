package androidx.compose.ui.text;

import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ParagraphStyleKt {
    public static final long a;
    public static final /* synthetic */ int b = 0;

    static {
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        a = TextUnit.c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0033, code lost:
    
        if (androidx.compose.ui.unit.TextUnit.a(r3, r17.c) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ParagraphStyle a(ParagraphStyle paragraphStyle, int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        long j2;
        int i5 = i;
        int i6 = i2;
        long j3 = j;
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformParagraphStyle2 = platformParagraphStyle;
        LineHeightStyle lineHeightStyle2 = lineHeightStyle;
        int i7 = i3;
        int i8 = i4;
        TextMotion textMotion2 = textMotion;
        if (i5 == 0 || i5 == paragraphStyle.a) {
            TextUnitType[] textUnitTypeArr = TextUnit.b;
            if ((j3 & 1095216660480L) == 0) {
                j2 = 0;
            } else {
                j2 = 0;
            }
            if ((textIndent2 == null || textIndent2.equals(paragraphStyle.d)) && ((i6 == 0 || i6 == paragraphStyle.b) && ((platformParagraphStyle2 == null || platformParagraphStyle2.equals(paragraphStyle.e)) && ((lineHeightStyle2 == null || lineHeightStyle2.equals(paragraphStyle.f)) && ((i7 == 0 || i7 == paragraphStyle.g) && ((i8 == 0 || i8 == paragraphStyle.h) && (textMotion2 == null || textMotion2.equals(paragraphStyle.i)))))))) {
                return paragraphStyle;
            }
        } else {
            j2 = 0;
        }
        TextUnitType[] textUnitTypeArr2 = TextUnit.b;
        if ((j3 & 1095216660480L) == j2) {
            j3 = paragraphStyle.c;
        }
        if (textIndent2 == null) {
            textIndent2 = paragraphStyle.d;
        }
        if (i5 == 0) {
            i5 = paragraphStyle.a;
        }
        if (i6 == 0) {
            i6 = paragraphStyle.b;
        }
        PlatformParagraphStyle platformParagraphStyle3 = paragraphStyle.e;
        if (platformParagraphStyle3 != null && platformParagraphStyle2 == null) {
            platformParagraphStyle2 = platformParagraphStyle3;
        }
        if (lineHeightStyle2 == null) {
            lineHeightStyle2 = paragraphStyle.f;
        }
        if (i7 == 0) {
            i7 = paragraphStyle.g;
        }
        if (i8 == 0) {
            i8 = paragraphStyle.h;
        }
        if (textMotion2 == null) {
            textMotion2 = paragraphStyle.i;
        }
        return new ParagraphStyle(i5, i6, j3, textIndent2, platformParagraphStyle2, lineHeightStyle2, i7, i8, textMotion2);
    }
}
