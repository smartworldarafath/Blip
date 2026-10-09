package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.MinLinesConstrainer;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiParagraphLayoutCache {
    public AnnotatedString a;
    public FontFamily.Resolver b;
    public int c;
    public boolean d;
    public int e;
    public int f;
    public List g;
    public MinLinesConstrainer h;
    public Density j;
    public TextStyle k;
    public MultiParagraphIntrinsics l;
    public LayoutDirection m;
    public TextLayoutResult n;
    public long q;
    public long i = InlineDensity.a;
    public int o = -1;
    public int p = -1;

    public MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List list) {
        this.a = annotatedString;
        this.b = resolver;
        this.c = i;
        this.d = z;
        this.e = i2;
        this.f = i3;
        this.g = list;
        this.k = textStyle;
    }

    public final int a(int i, LayoutDirection layoutDirection) {
        int i2 = this.o;
        int i3 = this.p;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long a = ConstraintsKt.a(0, i, 0, Integer.MAX_VALUE);
        if (this.f > 1) {
            MinLinesConstrainer minLinesConstrainer = this.h;
            TextStyle textStyle = this.k;
            Density density = this.j;
            density.getClass();
            MinLinesConstrainer a2 = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, this.b);
            this.h = a2;
            a = a2.a(this.f, a);
        }
        int a3 = TextDelegateKt.a(b(a, layoutDirection).e);
        int i4 = Constraints.i(a);
        if (a3 < i4) {
            a3 = i4;
        }
        this.o = i;
        this.p = a3;
        return a3;
    }

    public final MultiParagraph b(long j, LayoutDirection layoutDirection) {
        int i;
        MultiParagraphIntrinsics e = e(layoutDirection);
        long a = LayoutUtilsKt.a(j, this.d, this.c, e.c());
        boolean z = this.d;
        int i2 = this.c;
        int i3 = this.e;
        if ((!z && (i2 == 2 || i2 == 4 || i2 == 5)) || i3 < 1) {
            i = 1;
        } else {
            i = i3;
        }
        return new MultiParagraph(e, a, i, i2);
    }

    public final boolean c(long j, LayoutDirection layoutDirection) {
        this.q = (this.q << 2) | 3;
        if (this.f > 1) {
            MinLinesConstrainer minLinesConstrainer = this.h;
            TextStyle textStyle = this.k;
            Density density = this.j;
            density.getClass();
            MinLinesConstrainer a = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, this.b);
            this.h = a;
            j = a.a(this.f, j);
        }
        TextLayoutResult textLayoutResult = this.n;
        if (textLayoutResult != null) {
            MultiParagraph multiParagraph = textLayoutResult.b;
            TextLayoutInput textLayoutInput = textLayoutResult.a;
            if (!multiParagraph.a.a()) {
                LayoutDirection layoutDirection2 = textLayoutInput.h;
                long j2 = textLayoutInput.j;
                if (layoutDirection == layoutDirection2 && (Constraints.b(j, j2) || (Constraints.h(j) == Constraints.h(j2) && Constraints.j(j) == Constraints.j(j2) && Constraints.g(j) >= multiParagraph.e && !multiParagraph.c))) {
                    TextLayoutResult textLayoutResult2 = this.n;
                    textLayoutResult2.getClass();
                    if (Constraints.b(j, textLayoutResult2.a.j)) {
                        return false;
                    }
                    TextLayoutResult textLayoutResult3 = this.n;
                    textLayoutResult3.getClass();
                    this.n = f(layoutDirection, j, textLayoutResult3.b);
                    return true;
                }
            }
        }
        this.n = f(layoutDirection, j, b(j, layoutDirection));
        return true;
    }

    public final void d(Density density) {
        long j;
        Density density2 = this.j;
        if (density != null) {
            int i = InlineDensity.b;
            j = InlineDensity.a(density.getDensity(), density.e0());
        } else {
            j = InlineDensity.a;
        }
        if (density2 == null) {
            this.j = density;
            this.i = j;
        } else {
            if (density != null && this.i == j) {
                return;
            }
            this.j = density;
            this.i = j;
            this.q = (this.q << 2) | 1;
            this.l = null;
            this.n = null;
            this.p = -1;
            this.o = -1;
        }
    }

    public final MultiParagraphIntrinsics e(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.l;
        if (multiParagraphIntrinsics == null || layoutDirection != this.m || multiParagraphIntrinsics.a()) {
            this.m = layoutDirection;
            AnnotatedString annotatedString = this.a;
            TextStyle a = TextStyleKt.a(this.k, layoutDirection);
            Density density = this.j;
            density.getClass();
            FontFamily.Resolver resolver = this.b;
            List list = this.g;
            if (list == null) {
                list = EmptyList.j;
            }
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, a, list, density, resolver, this.d);
        }
        this.l = multiParagraphIntrinsics;
        return multiParagraphIntrinsics;
    }

    public final TextLayoutResult f(LayoutDirection layoutDirection, long j, MultiParagraph multiParagraph) {
        float min = Math.min(multiParagraph.a.c(), multiParagraph.d);
        AnnotatedString annotatedString = this.a;
        TextStyle textStyle = this.k;
        List list = this.g;
        if (list == null) {
            list = EmptyList.j;
        }
        int i = this.e;
        boolean z = this.d;
        int i2 = this.c;
        Density density = this.j;
        density.getClass();
        return new TextLayoutResult(new TextLayoutInput(annotatedString, textStyle, list, i, z, i2, density, layoutDirection, this.b, j), multiParagraph, ConstraintsKt.d(j, (TextDelegateKt.a(min) << 32) | (TextDelegateKt.a(multiParagraph.e) & 4294967295L)));
    }

    public final String toString() {
        String str;
        TextLayoutInput textLayoutInput;
        Object obj = "null";
        if (this.n == null) {
            str = "null";
        } else {
            str = "<TextLayoutResult>";
        }
        String b = InlineDensity.b(this.i);
        long j = this.q;
        TextLayoutResult textLayoutResult = this.n;
        if (textLayoutResult != null && (textLayoutInput = textLayoutResult.a) != null) {
            obj = new Constraints(textLayoutInput.j);
        }
        StringBuilder o = q.o("MultiParagraphLayoutCache(textLayoutResult=", str, ", lastDensity=", b, ", history=");
        o.append(j);
        o.append(", constraints=");
        o.append(obj);
        o.append(")");
        return o.toString();
    }
}
