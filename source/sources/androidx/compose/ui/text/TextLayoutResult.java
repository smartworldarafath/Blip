package androidx.compose.ui.text;

import android.graphics.RectF;
import android.text.Layout;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.selection.WordIterator;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import defpackage.jb;
import defpackage.q;
import defpackage.w9;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLayoutResult {
    public final TextLayoutInput a;
    public final MultiParagraph b;
    public final long c;
    public final float d;
    public final float e;
    public final ArrayList f;

    public TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j) {
        float e;
        this.a = textLayoutInput;
        this.b = multiParagraph;
        this.c = j;
        ArrayList arrayList = multiParagraph.h;
        float f = 0.0f;
        if (arrayList.isEmpty()) {
            e = 0.0f;
        } else {
            e = ((ParagraphInfo) arrayList.get(0)).a.d.e(0) + 0.0f;
        }
        this.d = e;
        if (!arrayList.isEmpty()) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.z(arrayList);
            f = paragraphInfo.a.d.e(r4.g - 1) + 0.0f + paragraphInfo.f;
        }
        this.e = f;
        this.f = multiParagraph.g;
    }

    public final ResolvedTextDirection a(int i) {
        int a;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.l(i);
        int length = multiParagraph.a.a.k.length();
        ArrayList arrayList = multiParagraph.h;
        if (i == length) {
            a = CollectionsKt.u(arrayList);
        } else {
            a = MultiParagraphKt.a(i, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
        AndroidParagraph androidParagraph = paragraphInfo.a;
        if (androidParagraph.d.f.isRtlCharAt(paragraphInfo.d(i))) {
            return ResolvedTextDirection.k;
        }
        return ResolvedTextDirection.j;
    }

    public final Rect b(int i) {
        boolean z;
        float l;
        float l2;
        float k;
        float k2;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.k(i);
        ArrayList arrayList = multiParagraph.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.a(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int d = paragraphInfo.d(i);
        CharSequence charSequence = androidParagraph.e;
        if (d < 0 || d >= charSequence.length()) {
            InlineClassHelperKt.a("offset(" + d + ") is out of bounds [0," + charSequence.length() + ")");
        }
        TextLayout textLayout = androidParagraph.d;
        int h = textLayout.h(d);
        float j = textLayout.j(h);
        float f = textLayout.f(h);
        Layout layout = textLayout.f;
        if (layout.getParagraphDirection(h) == 1) {
            z = true;
        } else {
            z = false;
        }
        boolean isRtlCharAt = layout.isRtlCharAt(d);
        if (z && !isRtlCharAt) {
            l = textLayout.k(d, false);
            l2 = textLayout.k(d + 1, true);
        } else {
            if (z && isRtlCharAt) {
                k = textLayout.l(d, false);
                k2 = textLayout.l(d + 1, true);
            } else if (isRtlCharAt) {
                k = textLayout.k(d, false);
                k2 = textLayout.k(d + 1, true);
            } else {
                l = textLayout.l(d, false);
                l2 = textLayout.l(d + 1, true);
            }
            float f2 = k;
            l = k2;
            l2 = f2;
        }
        RectF rectF = new RectF(l, j, l2, f);
        return paragraphInfo.a(new Rect(rectF.left, rectF.top + 0.0f, rectF.right, rectF.bottom + 0.0f));
    }

    public final Rect c(int i) {
        int a;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.l(i);
        int length = multiParagraph.a.a.k.length();
        ArrayList arrayList = multiParagraph.h;
        if (i == length) {
            a = CollectionsKt.u(arrayList);
        } else {
            a = MultiParagraphKt.a(i, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int d = paragraphInfo.d(i);
        CharSequence charSequence = androidParagraph.e;
        TextLayout textLayout = androidParagraph.d;
        if (d < 0 || d > charSequence.length()) {
            InlineClassHelperKt.a("offset(" + d + ") is out of bounds [0," + charSequence.length() + "]");
        }
        float k = textLayout.k(d, false);
        int h = textLayout.h(d);
        return paragraphInfo.a(new Rect(k, textLayout.j(h) + 0.0f, k, textLayout.f(h) + 0.0f));
    }

    public final float d(int i) {
        float f;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.m(i);
        ArrayList arrayList = multiParagraph.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int i2 = i - paragraphInfo.d;
        TextLayout textLayout = androidParagraph.d;
        float lineLeft = textLayout.f.getLineLeft(i2);
        if (i2 == textLayout.g - 1) {
            f = textLayout.j;
        } else {
            f = 0.0f;
        }
        return lineLeft + f;
    }

    public final float e(int i) {
        float f;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.m(i);
        ArrayList arrayList = multiParagraph.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int i2 = i - paragraphInfo.d;
        TextLayout textLayout = androidParagraph.d;
        float lineRight = textLayout.f.getLineRight(i2);
        if (i2 == textLayout.g - 1) {
            f = textLayout.k;
        } else {
            f = 0.0f;
        }
        return lineRight + f;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TextLayoutResult) {
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                if (Intrinsics.a(this.a, textLayoutResult.a) && this.b == textLayoutResult.b && IntSize.a(this.c, textLayoutResult.c) && this.d == textLayoutResult.d && this.e == textLayoutResult.e && Intrinsics.a(this.f, textLayoutResult.f)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int f(int i) {
        MultiParagraph multiParagraph = this.b;
        multiParagraph.m(i);
        ArrayList arrayList = multiParagraph.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        return androidParagraph.d.f.getLineStart(i - paragraphInfo.d) + paragraphInfo.b;
    }

    public final ResolvedTextDirection g(int i) {
        int a;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.l(i);
        int length = multiParagraph.a.a.k.length();
        ArrayList arrayList = multiParagraph.h;
        if (i == length) {
            a = CollectionsKt.u(arrayList);
        } else {
            a = MultiParagraphKt.a(i, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int d = paragraphInfo.d(i);
        TextLayout textLayout = androidParagraph.d;
        if (textLayout.f.getParagraphDirection(textLayout.h(d)) == 1) {
            return ResolvedTextDirection.j;
        }
        return ResolvedTextDirection.k;
    }

    public final AndroidPath h(int i, int i2) {
        MultiParagraph multiParagraph = this.b;
        AnnotatedString annotatedString = multiParagraph.a.a;
        if (i < 0 || i > i2 || i2 > annotatedString.k.length()) {
            int length = annotatedString.k.length();
            StringBuilder k = jb.k("Start(", i, ") or End(", i2, ") is out of range [0..");
            k.append(length);
            k.append("), or start > end!");
            InlineClassHelperKt.a(k.toString());
        }
        if (i == i2) {
            return AndroidPath_androidKt.a();
        }
        AndroidPath a = AndroidPath_androidKt.a();
        MultiParagraphKt.d(multiParagraph.h, TextRangeKt.a(i, i2), new w9(a, i, i2, 3));
        return a;
    }

    public final int hashCode() {
        return this.f.hashCode() + q.a(this.e, q.a(this.d, jb.a((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c), 31), 31);
    }

    public final long i(int i) {
        int a;
        int i2;
        int i3;
        int h;
        MultiParagraph multiParagraph = this.b;
        multiParagraph.l(i);
        int length = multiParagraph.a.a.k.length();
        ArrayList arrayList = multiParagraph.h;
        if (i == length) {
            a = CollectionsKt.u(arrayList);
        } else {
            a = MultiParagraphKt.a(i, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int d = paragraphInfo.d(i);
        WordIterator m = androidParagraph.d.m();
        if (m.g(m.i(d))) {
            m.a(d);
            i2 = d;
            while (i2 != -1 && (!m.g(i2) || m.c(i2))) {
                i2 = m.i(i2);
            }
        } else {
            m.a(d);
            if (m.f(d)) {
                if (m.d(d) && !m.b(d)) {
                    i2 = d;
                } else {
                    i2 = m.i(d);
                }
            } else if (m.b(d)) {
                i2 = m.i(d);
            } else {
                i2 = -1;
            }
        }
        if (i2 == -1) {
            i2 = d;
        }
        if (m.c(m.h(d))) {
            m.a(d);
            i3 = d;
            while (i3 != -1 && (m.g(i3) || !m.c(i3))) {
                i3 = m.h(i3);
            }
        } else {
            m.a(d);
            if (m.b(d)) {
                if (m.d(d) && !m.f(d)) {
                    i3 = d;
                } else {
                    h = m.h(d);
                    i3 = h;
                }
            } else if (m.f(d)) {
                h = m.h(d);
                i3 = h;
            } else {
                i3 = -1;
            }
        }
        if (i3 != -1) {
            d = i3;
        }
        return paragraphInfo.b(TextRangeKt.a(i2, d), false);
    }

    public final String toString() {
        return "TextLayoutResult(layoutInput=" + this.a + ", multiParagraph=" + this.b + ", size=" + IntSize.b(this.c) + ", firstBaseline=" + this.d + ", lastBaseline=" + this.e + ", placeholderRects=" + this.f + ")";
    }
}
