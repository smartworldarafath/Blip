package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.foundation.text.modifiers.MinLinesConstrainer;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParagraphLayoutCache {
    public String a;
    public TextStyle b;
    public FontFamily.Resolver c;
    public int d;
    public boolean e;
    public int f;
    public int g;
    public Density i;
    public AndroidParagraph j;
    public boolean k;
    public MinLinesConstrainer m;
    public ParagraphIntrinsics n;
    public LayoutDirection o;
    public long s;
    public long h = InlineDensity.a;
    public long l = 0;
    public long p = Constraints.Companion.c(0, 0);
    public int q = -1;
    public int r = -1;

    public ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3) {
        this.a = str;
        this.b = textStyle;
        this.c = resolver;
        this.d = i;
        this.e = z;
        this.f = i2;
        this.g = i3;
    }

    public static long e(ParagraphLayoutCache paragraphLayoutCache, long j, LayoutDirection layoutDirection) {
        TextStyle textStyle = paragraphLayoutCache.b;
        MinLinesConstrainer minLinesConstrainer = paragraphLayoutCache.m;
        Density density = paragraphLayoutCache.i;
        density.getClass();
        MinLinesConstrainer a = MinLinesConstrainer.Companion.a(minLinesConstrainer, layoutDirection, textStyle, density, paragraphLayoutCache.c);
        paragraphLayoutCache.m = a;
        return a.a(paragraphLayoutCache.g, j);
    }

    public final int a(int i, LayoutDirection layoutDirection) {
        int i2;
        int i3 = this.q;
        int i4 = this.r;
        if (i == i3 && i3 != -1) {
            return i4;
        }
        long a = ConstraintsKt.a(0, i, 0, Integer.MAX_VALUE);
        if (this.g > 1) {
            a = e(this, a, layoutDirection);
        }
        ParagraphIntrinsics d = d(layoutDirection);
        long a2 = LayoutUtilsKt.a(a, this.e, this.d, d.c());
        boolean z = this.e;
        int i5 = this.d;
        int i6 = this.f;
        if ((!z && (i5 == 2 || i5 == 4 || i5 == 5)) || i6 < 1) {
            i2 = 1;
        } else {
            i2 = i6;
        }
        int a3 = TextDelegateKt.a(new AndroidParagraph((AndroidParagraphIntrinsics) d, i2, i5, a2).f);
        int i7 = Constraints.i(a);
        if (a3 < i7) {
            a3 = i7;
        }
        this.q = i;
        this.r = a3;
        return a3;
    }

    public final boolean b(long j, LayoutDirection layoutDirection) {
        long j2;
        int i;
        ParagraphIntrinsics paragraphIntrinsics;
        this.s = (this.s << 2) | 3;
        boolean z = true;
        if (this.g > 1) {
            j2 = e(this, j, layoutDirection);
        } else {
            j2 = j;
        }
        AndroidParagraph androidParagraph = this.j;
        boolean z2 = false;
        if (androidParagraph != null && (paragraphIntrinsics = this.n) != null && !paragraphIntrinsics.a() && layoutDirection == this.o && (Constraints.b(j2, this.p) || (Constraints.h(j2) == Constraints.h(this.p) && Constraints.j(j2) == Constraints.j(this.p) && Constraints.g(j2) >= androidParagraph.f && !androidParagraph.d.d))) {
            if (!Constraints.b(j2, this.p)) {
                AndroidParagraph androidParagraph2 = this.j;
                androidParagraph2.getClass();
                this.l = ConstraintsKt.d(j2, (TextDelegateKt.a(Math.min(androidParagraph2.a.i.c(), androidParagraph2.d())) << 32) | (TextDelegateKt.a(androidParagraph2.f) & 4294967295L));
                if (this.d == 3 || (((int) (r12 >> 32)) >= androidParagraph2.d() && ((int) (4294967295L & r12)) >= androidParagraph2.f)) {
                    z = false;
                }
                this.k = z;
                this.p = j2;
            }
            return false;
        }
        ParagraphIntrinsics d = d(layoutDirection);
        long a = LayoutUtilsKt.a(j2, this.e, this.d, d.c());
        boolean z3 = this.e;
        int i2 = this.d;
        int i3 = this.f;
        if ((!z3 && (i2 == 2 || i2 == 4 || i2 == 5)) || i3 < 1) {
            i = 1;
        } else {
            i = i3;
        }
        AndroidParagraph androidParagraph3 = new AndroidParagraph((AndroidParagraphIntrinsics) d, i, i2, a);
        this.p = j2;
        int a2 = TextDelegateKt.a(androidParagraph3.d());
        float f = androidParagraph3.f;
        this.l = ConstraintsKt.d(j2, (TextDelegateKt.a(f) & 4294967295L) | (a2 << 32));
        if (this.d != 3 && (((int) (r3 >> 32)) < androidParagraph3.d() || ((int) (r3 & 4294967295L)) < f)) {
            z2 = true;
        }
        this.k = z2;
        this.j = androidParagraph3;
        return true;
    }

    public final void c(Density density) {
        long j;
        Density density2 = this.i;
        if (density != null) {
            int i = InlineDensity.b;
            j = InlineDensity.a(density.getDensity(), density.e0());
        } else {
            j = InlineDensity.a;
        }
        if (density2 == null) {
            this.i = density;
            this.h = j;
            return;
        }
        if (density != null && this.h == j) {
            return;
        }
        this.i = density;
        this.h = j;
        this.s = (this.s << 2) | 1;
        this.j = null;
        this.n = null;
        this.o = null;
        this.q = -1;
        this.r = -1;
        this.p = Constraints.Companion.c(0, 0);
        this.l = 0L;
        this.k = false;
    }

    public final ParagraphIntrinsics d(LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics = this.n;
        if (paragraphIntrinsics == null || layoutDirection != this.o || paragraphIntrinsics.a()) {
            this.o = layoutDirection;
            String str = this.a;
            TextStyle a = TextStyleKt.a(this.b, layoutDirection);
            Density density = this.i;
            density.getClass();
            FontFamily.Resolver resolver = this.c;
            boolean z = this.e;
            EmptyList emptyList = EmptyList.j;
            paragraphIntrinsics = new AndroidParagraphIntrinsics(str, a, emptyList, emptyList, resolver, density, z);
        }
        this.n = paragraphIntrinsics;
        return paragraphIntrinsics;
    }

    public final String toString() {
        String str;
        if (this.j != null) {
            str = "<paragraph>";
        } else {
            str = "null";
        }
        String b = InlineDensity.b(this.h);
        return q.k(q.o("ParagraphLayoutCache(paragraph=", str, ", lastDensity=", b, ", history="), this.s, ", constraints=$)");
    }
}
