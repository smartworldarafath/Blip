package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CacheTextLayoutInput {
    public final TextLayoutInput a;

    public CacheTextLayoutInput(TextLayoutInput textLayoutInput) {
        this.a = textLayoutInput;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CacheTextLayoutInput) {
                TextLayoutInput textLayoutInput = this.a;
                AnnotatedString annotatedString = textLayoutInput.a;
                TextLayoutInput textLayoutInput2 = ((CacheTextLayoutInput) obj).a;
                if (Intrinsics.a(annotatedString, textLayoutInput2.a) && textLayoutInput.b.c(textLayoutInput2.b) && Intrinsics.a(textLayoutInput.c, textLayoutInput2.c) && textLayoutInput.d == textLayoutInput2.d && textLayoutInput.e == textLayoutInput2.e && textLayoutInput.f == textLayoutInput2.f && Intrinsics.a(textLayoutInput.g, textLayoutInput2.g) && textLayoutInput.h == textLayoutInput2.h && textLayoutInput.i == textLayoutInput2.i && Constraints.b(textLayoutInput.j, textLayoutInput2.j)) {
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
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        TextLayoutInput textLayoutInput = this.a;
        int hashCode = textLayoutInput.a.hashCode() * 31;
        TextStyle textStyle = textLayoutInput.b;
        SpanStyle spanStyle = textStyle.a;
        long j = spanStyle.b;
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        int hashCode2 = Long.hashCode(j) * 31;
        FontWeight fontWeight = spanStyle.c;
        int i9 = 0;
        if (fontWeight != null) {
            i = fontWeight.j;
        } else {
            i = 0;
        }
        int i10 = (hashCode2 + i) * 31;
        FontStyle fontStyle = spanStyle.d;
        if (fontStyle != null) {
            i2 = Integer.hashCode(fontStyle.a);
        } else {
            i2 = 0;
        }
        int i11 = (i10 + i2) * 31;
        FontSynthesis fontSynthesis = spanStyle.e;
        if (fontSynthesis != null) {
            i3 = Integer.hashCode(fontSynthesis.a);
        } else {
            i3 = 0;
        }
        int i12 = (i11 + i3) * 31;
        FontFamily fontFamily = spanStyle.f;
        if (fontFamily != null) {
            i4 = fontFamily.hashCode();
        } else {
            i4 = 0;
        }
        int i13 = (i12 + i4) * 31;
        String str = spanStyle.g;
        if (str != null) {
            i5 = str.hashCode();
        } else {
            i5 = 0;
        }
        int a = jb.a((i13 + i5) * 31, 31, spanStyle.h);
        BaselineShift baselineShift = spanStyle.i;
        if (baselineShift != null) {
            i6 = Float.hashCode(baselineShift.a);
        } else {
            i6 = 0;
        }
        int i14 = (a + i6) * 31;
        TextGeometricTransform textGeometricTransform = spanStyle.j;
        if (textGeometricTransform != null) {
            i7 = textGeometricTransform.hashCode();
        } else {
            i7 = 0;
        }
        int i15 = (i14 + i7) * 31;
        LocaleList localeList = spanStyle.k;
        if (localeList != null) {
            i8 = localeList.j.hashCode();
        } else {
            i8 = 0;
        }
        long j2 = spanStyle.l;
        int i16 = Color.i;
        int hashCode3 = (textStyle.b.hashCode() + ((jb.a((i15 + i8) * 31, 31, j2) + 0) * 31)) * 31;
        PlatformTextStyle platformTextStyle = textStyle.c;
        if (platformTextStyle != null) {
            i9 = platformTextStyle.hashCode();
        }
        return Long.hashCode(textLayoutInput.j) + ((textLayoutInput.i.hashCode() + ((textLayoutInput.h.hashCode() + ((textLayoutInput.g.hashCode() + q.b(textLayoutInput.f, jb.b((((textLayoutInput.c.hashCode() + ((hashCode3 + i9 + hashCode) * 31)) * 31) + textLayoutInput.d) * 31, 31, textLayoutInput.e), 31)) * 31)) * 31)) * 31);
    }
}
