package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.selection.BaseTextPreparedSelection;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.style.ResolvedTextDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseTextPreparedSelection<T extends BaseTextPreparedSelection<T>> {
    public final AnnotatedString a;
    public final long b;
    public final TextLayoutResult c;
    public final OffsetMapping d;
    public final TextPreparedSelectionState e;
    public long f;
    public final AnnotatedString g;

    public BaseTextPreparedSelection(AnnotatedString annotatedString, long j, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState) {
        this.a = annotatedString;
        this.b = j;
        this.c = textLayoutResult;
        this.d = offsetMapping;
        this.e = textPreparedSelectionState;
        this.f = j;
        this.g = annotatedString;
    }

    public final Integer a() {
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.b;
            int e = TextRange.e(this.f);
            OffsetMapping offsetMapping = this.d;
            return Integer.valueOf(offsetMapping.a(multiParagraph.c(multiParagraph.d(offsetMapping.b(e)), true)));
        }
        return null;
    }

    public final Integer b() {
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            int f = TextRange.f(this.f);
            OffsetMapping offsetMapping = this.d;
            return Integer.valueOf(offsetMapping.a(textLayoutResult.f(textLayoutResult.b.d(offsetMapping.b(f)))));
        }
        return null;
    }

    public final Integer c() {
        int length;
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            int p = p();
            while (true) {
                AnnotatedString annotatedString = this.a;
                if (p >= annotatedString.k.length()) {
                    length = annotatedString.k.length();
                    break;
                }
                int length2 = this.g.k.length() - 1;
                if (p <= length2) {
                    length2 = p;
                }
                long i = textLayoutResult.i(length2);
                int i2 = TextRange.c;
                int i3 = (int) (i & 4294967295L);
                if (i3 <= p) {
                    p++;
                } else {
                    length = this.d.a(i3);
                    break;
                }
            }
            return Integer.valueOf(length);
        }
        return null;
    }

    public final Integer d() {
        int i;
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            int p = p();
            while (true) {
                if (p <= 0) {
                    i = 0;
                    break;
                }
                int length = this.g.k.length() - 1;
                if (p <= length) {
                    length = p;
                }
                long i2 = textLayoutResult.i(length);
                int i3 = TextRange.c;
                int i4 = (int) (i2 >> 32);
                if (i4 >= p) {
                    p--;
                } else {
                    i = this.d.a(i4);
                    break;
                }
            }
            return Integer.valueOf(i);
        }
        return null;
    }

    public final boolean e() {
        ResolvedTextDirection resolvedTextDirection;
        TextLayoutResult textLayoutResult = this.c;
        if (textLayoutResult != null) {
            resolvedTextDirection = textLayoutResult.g(p());
        } else {
            resolvedTextDirection = null;
        }
        if (resolvedTextDirection != ResolvedTextDirection.k) {
            return true;
        }
        return false;
    }

    public final int f(TextLayoutResult textLayoutResult, int i) {
        int p = p();
        TextPreparedSelectionState textPreparedSelectionState = this.e;
        if (textPreparedSelectionState.a == null) {
            textPreparedSelectionState.a = Float.valueOf(textLayoutResult.c(p).a);
        }
        MultiParagraph multiParagraph = textLayoutResult.b;
        int d = multiParagraph.d(p) + i;
        if (d < 0) {
            return 0;
        }
        if (d >= multiParagraph.f) {
            return this.g.k.length();
        }
        float b = multiParagraph.b(d) - 1.0f;
        Float f = textPreparedSelectionState.a;
        f.getClass();
        float floatValue = f.floatValue();
        if ((e() && floatValue >= textLayoutResult.e(d)) || (!e() && floatValue <= textLayoutResult.d(d))) {
            return multiParagraph.c(d, true);
        }
        return this.d.a(multiParagraph.g((Float.floatToRawIntBits(b) & 4294967295L) | (Float.floatToRawIntBits(f.floatValue()) << 32)));
    }

    public final void g() {
        TextPreparedSelectionState textPreparedSelectionState = this.e;
        textPreparedSelectionState.a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.k.length() > 0) {
            if (e()) {
                i();
                return;
            }
            textPreparedSelectionState.a = null;
            if (annotatedString.k.length() > 0) {
                String str = annotatedString.k;
                long j = this.f;
                int i = TextRange.c;
                int a = StringHelpers_androidKt.a((int) (j & 4294967295L), str);
                if (a != -1) {
                    o(a, a);
                }
            }
        }
    }

    public final void h() {
        this.e.a = null;
        AnnotatedString annotatedString = this.g;
        String str = annotatedString.k;
        String str2 = annotatedString.k;
        if (str.length() > 0) {
            int a = StringHelpersKt.a(str2, TextRange.e(this.f));
            if (a == TextRange.e(this.f) && a != str2.length()) {
                a = StringHelpersKt.a(str2, a + 1);
            }
            o(a, a);
        }
    }

    public final void i() {
        this.e.a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.k.length() > 0) {
            String str = annotatedString.k;
            long j = this.f;
            int i = TextRange.c;
            int b = StringHelpers_androidKt.b((int) (j & 4294967295L), str);
            if (b != -1) {
                o(b, b);
            }
        }
    }

    public final void j() {
        this.e.a = null;
        AnnotatedString annotatedString = this.g;
        String str = annotatedString.k;
        String str2 = annotatedString.k;
        if (str.length() > 0) {
            int b = StringHelpersKt.b(str2, TextRange.f(this.f));
            if (b == TextRange.f(this.f) && b != 0) {
                b = StringHelpersKt.b(str2, b - 1);
            }
            o(b, b);
        }
    }

    public final void k() {
        TextPreparedSelectionState textPreparedSelectionState = this.e;
        textPreparedSelectionState.a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.k.length() > 0) {
            if (e()) {
                textPreparedSelectionState.a = null;
                if (annotatedString.k.length() > 0) {
                    String str = annotatedString.k;
                    long j = this.f;
                    int i = TextRange.c;
                    int a = StringHelpers_androidKt.a((int) (j & 4294967295L), str);
                    if (a != -1) {
                        o(a, a);
                        return;
                    }
                    return;
                }
                return;
            }
            i();
        }
    }

    public final void l() {
        Integer a;
        this.e.a = null;
        if (this.g.k.length() > 0 && (a = a()) != null) {
            int intValue = a.intValue();
            o(intValue, intValue);
        }
    }

    public final void m() {
        Integer b;
        this.e.a = null;
        if (this.g.k.length() > 0 && (b = b()) != null) {
            int intValue = b.intValue();
            o(intValue, intValue);
        }
    }

    public final void n() {
        if (this.g.k.length() > 0) {
            int i = TextRange.c;
            this.f = TextRangeKt.a((int) (this.b >> 32), (int) (this.f & 4294967295L));
        }
    }

    public final void o(int i, int i2) {
        this.f = TextRangeKt.a(i, i2);
    }

    public final int p() {
        long j = this.f;
        int i = TextRange.c;
        return this.d.b((int) (j & 4294967295L));
    }
}
