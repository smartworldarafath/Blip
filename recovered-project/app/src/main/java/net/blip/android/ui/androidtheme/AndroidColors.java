package net.blip.android.ui.androidtheme;

import androidx.compose.ui.graphics.Color;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final long l;
    public final long m;
    public final long n;
    public final long o;
    public final long p;

    public AndroidColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
        this.j = j10;
        this.k = j11;
        this.l = j12;
        this.m = j13;
        this.n = j14;
        this.o = j15;
        this.p = j16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidColors)) {
            return false;
        }
        AndroidColors androidColors = (AndroidColors) obj;
        if (Color.c(this.a, androidColors.a) && Color.c(this.b, androidColors.b) && Color.c(this.c, androidColors.c) && Color.c(this.d, androidColors.d) && Color.c(this.e, androidColors.e) && Color.c(this.f, androidColors.f) && Color.c(this.g, androidColors.g) && Color.c(this.h, androidColors.h) && Color.c(this.i, androidColors.i) && Color.c(this.j, androidColors.j) && Color.c(this.k, androidColors.k) && Color.c(this.l, androidColors.l) && Color.c(this.m, androidColors.m) && Color.c(this.n, androidColors.n) && Color.c(this.o, androidColors.o) && Color.c(this.p, androidColors.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.p) + jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i), 31, this.j), 31, this.k), 31, this.l), 31, this.m), 31, this.n), 31, this.o);
    }

    public final String toString() {
        String i = Color.i(this.a);
        String i2 = Color.i(this.b);
        String i3 = Color.i(this.c);
        String i4 = Color.i(this.d);
        String i5 = Color.i(this.e);
        String i6 = Color.i(this.f);
        String i7 = Color.i(this.g);
        String i8 = Color.i(this.h);
        String i9 = Color.i(this.i);
        String i10 = Color.i(this.j);
        String i11 = Color.i(this.k);
        String i12 = Color.i(this.l);
        String i13 = Color.i(this.m);
        String i14 = Color.i(this.n);
        String i15 = Color.i(this.o);
        String i16 = Color.i(this.p);
        StringBuilder o = q.o("AndroidColors(primary=", i, ", accent=", i2, ", secondaryAccent=");
        q.B(o, i3, ", primaryText=", i4, ", secondaryText=");
        q.B(o, i5, ", tertiaryText=", i6, ", destructiveText=");
        q.B(o, i7, ", primaryTextOnTint=", i8, ", background=");
        q.B(o, i9, ", backgroundWash=", i10, ", placeholder=");
        q.B(o, i11, ", separator=", i12, ", galleryBackground=");
        q.B(o, i13, ", popupBackground=", i14, ", rippleOnBackground=");
        o.append(i15);
        o.append(", appBackground=");
        o.append(i16);
        o.append(")");
        return o.toString();
    }
}
