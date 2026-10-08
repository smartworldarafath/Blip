package okio;

import defpackage.fe;
import defpackage.u2;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Segment {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public final boolean e;
    public Segment f;
    public Segment g;

    public Segment(byte[] bArr, int i, int i2, boolean z) {
        bArr.getClass();
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = false;
    }

    public final Segment a() {
        Segment segment = this.f;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.g;
        segment2.getClass();
        segment2.f = this.f;
        Segment segment3 = this.f;
        segment3.getClass();
        segment3.g = this.g;
        this.f = null;
        this.g = null;
        return segment;
    }

    public final void b(Segment segment) {
        segment.getClass();
        segment.g = this;
        segment.f = this.f;
        Segment segment2 = this.f;
        segment2.getClass();
        segment2.g = segment;
        this.f = segment;
    }

    public final Segment c() {
        this.d = true;
        return new Segment(this.a, this.b, this.c, true);
    }

    public final void d(Segment segment, int i) {
        segment.getClass();
        byte[] bArr = segment.a;
        if (segment.e) {
            int i2 = segment.c;
            int i3 = i2 + i;
            if (i3 > 8192) {
                if (!segment.d) {
                    int i4 = segment.b;
                    if (i3 - i4 <= 8192) {
                        ArraysKt.e(0, i4, i2, bArr, bArr);
                        segment.c -= segment.b;
                        segment.b = 0;
                    } else {
                        fe.h();
                        return;
                    }
                } else {
                    fe.h();
                    return;
                }
            }
            int i5 = segment.c;
            int i6 = this.b;
            ArraysKt.e(i5, i6, i6 + i, this.a, bArr);
            segment.c += i;
            this.b += i;
            return;
        }
        u2.l("only owner can write");
    }

    public Segment() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }
}
