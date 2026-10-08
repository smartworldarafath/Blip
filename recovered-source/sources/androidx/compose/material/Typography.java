package androidx.compose.material;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Typography {
    public final TextStyle a;
    public final TextStyle b;
    public final TextStyle c;
    public final TextStyle d;
    public final TextStyle e;
    public final TextStyle f;
    public final TextStyle g;
    public final TextStyle h;
    public final TextStyle i;
    public final TextStyle j;
    public final TextStyle k;
    public final TextStyle l;
    public final TextStyle m;

    public Typography() {
        TextStyle textStyle = TypographyKt.a;
        FontWeight fontWeight = FontWeight.p;
        TextStyle a = TextStyle.a(textStyle, 0L, TextUnitKt.d(96), fontWeight, TextUnitKt.c(-1.5d), TextUnitKt.d(112), null, 0, 16646009);
        TextStyle a2 = TextStyle.a(textStyle, 0L, TextUnitKt.d(60), fontWeight, TextUnitKt.c(-0.5d), TextUnitKt.d(72), null, 0, 16646009);
        FontWeight fontWeight2 = FontWeight.q;
        TextStyle a3 = TextStyle.a(textStyle, 0L, TextUnitKt.d(48), fontWeight2, TextUnitKt.d(0), TextUnitKt.d(56), null, 0, 16646009);
        TextStyle a4 = TextStyle.a(textStyle, 0L, TextUnitKt.d(34), fontWeight2, TextUnitKt.c(0.25d), TextUnitKt.d(36), null, 0, 16646009);
        TextStyle a5 = TextStyle.a(textStyle, 0L, TextUnitKt.d(24), fontWeight2, TextUnitKt.d(0), TextUnitKt.d(24), null, 0, 16646009);
        FontWeight fontWeight3 = FontWeight.r;
        TextStyle a6 = TextStyle.a(textStyle, 0L, TextUnitKt.d(20), fontWeight3, TextUnitKt.c(0.15d), TextUnitKt.d(24), null, 0, 16646009);
        TextStyle a7 = TextStyle.a(textStyle, 0L, TextUnitKt.d(16), fontWeight2, TextUnitKt.c(0.15d), TextUnitKt.d(24), null, 0, 16646009);
        TextStyle a8 = TextStyle.a(textStyle, 0L, TextUnitKt.d(14), fontWeight3, TextUnitKt.c(0.1d), TextUnitKt.d(24), null, 0, 16646009);
        TextStyle a9 = TextStyle.a(textStyle, 0L, TextUnitKt.d(16), fontWeight2, TextUnitKt.c(0.5d), TextUnitKt.d(24), null, 0, 16646009);
        TextStyle a10 = TextStyle.a(textStyle, 0L, TextUnitKt.d(14), fontWeight2, TextUnitKt.c(0.25d), TextUnitKt.d(20), null, 0, 16646009);
        TextStyle a11 = TextStyle.a(textStyle, 0L, TextUnitKt.d(14), fontWeight3, TextUnitKt.c(1.25d), TextUnitKt.d(16), null, 0, 16646009);
        TextStyle a12 = TextStyle.a(textStyle, 0L, TextUnitKt.d(12), fontWeight2, TextUnitKt.c(0.4d), TextUnitKt.d(16), null, 0, 16646009);
        TextStyle a13 = TextStyle.a(textStyle, 0L, TextUnitKt.d(10), fontWeight2, TextUnitKt.c(1.5d), TextUnitKt.d(16), null, 0, 16646009);
        TextStyle a14 = TypographyKt.a(a);
        TextStyle a15 = TypographyKt.a(a2);
        TextStyle a16 = TypographyKt.a(a3);
        TextStyle a17 = TypographyKt.a(a4);
        TextStyle a18 = TypographyKt.a(a5);
        TextStyle a19 = TypographyKt.a(a6);
        TextStyle a20 = TypographyKt.a(a7);
        TextStyle a21 = TypographyKt.a(a8);
        TextStyle a22 = TypographyKt.a(a9);
        TextStyle a23 = TypographyKt.a(a10);
        TextStyle a24 = TypographyKt.a(a11);
        TextStyle a25 = TypographyKt.a(a12);
        TextStyle a26 = TypographyKt.a(a13);
        this.a = a14;
        this.b = a15;
        this.c = a16;
        this.d = a17;
        this.e = a18;
        this.f = a19;
        this.g = a20;
        this.h = a21;
        this.i = a22;
        this.j = a23;
        this.k = a24;
        this.l = a25;
        this.m = a26;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        if (Intrinsics.a(this.a, typography.a) && Intrinsics.a(this.b, typography.b) && Intrinsics.a(this.c, typography.c) && Intrinsics.a(this.d, typography.d) && Intrinsics.a(this.e, typography.e) && Intrinsics.a(this.f, typography.f) && Intrinsics.a(this.g, typography.g) && Intrinsics.a(this.h, typography.h) && Intrinsics.a(this.i, typography.i) && Intrinsics.a(this.j, typography.j) && Intrinsics.a(this.k, typography.k) && Intrinsics.a(this.l, typography.l) && Intrinsics.a(this.m, typography.m)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Typography(h1=" + this.a + ", h2=" + this.b + ", h3=" + this.c + ", h4=" + this.d + ", h5=" + this.e + ", h6=" + this.f + ", subtitle1=" + this.g + ", subtitle2=" + this.h + ", body1=" + this.i + ", body2=" + this.j + ", button=" + this.k + ", caption=" + this.l + ", overline=" + this.m + ")";
    }
}
