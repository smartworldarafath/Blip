package kotlin.time;

import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnboundLocalDateTime {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;

    public UnboundLocalDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnboundLocalDateTime(");
        sb.append(this.a);
        sb.append('-');
        sb.append(this.b);
        sb.append('-');
        sb.append(this.c);
        sb.append(' ');
        sb.append(this.d);
        sb.append(':');
        sb.append(this.e);
        sb.append(':');
        sb.append(this.f);
        sb.append('.');
        return q.j(sb, this.g, ')');
    }
}
