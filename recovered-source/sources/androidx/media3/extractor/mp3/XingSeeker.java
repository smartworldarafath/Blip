package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class XingSeeker implements Seeker {
    public final long a;
    public final int b;
    public final long c;
    public final int d;
    public final long e;
    public final long f;
    public final long[] g;

    public XingSeeker(long j, int i, long j2, long j3, long[] jArr) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.d = Mp3Util.a(j3 - i, j2);
        this.e = j3;
        this.g = jArr;
        this.f = j3 != -1 ? j + j3 : -1L;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.f;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        if (this.g != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long c(long j) {
        long j2;
        double d;
        long j3 = j - this.a;
        if (b() && j3 > this.b) {
            long[] jArr = this.g;
            jArr.getClass();
            double d2 = (j3 * 256.0d) / this.e;
            int d3 = Util.d(jArr, (long) d2, true);
            long j4 = this.c;
            long j5 = (d3 * j4) / 100;
            long j6 = jArr[d3];
            int i = d3 + 1;
            long j7 = (j4 * i) / 100;
            if (d3 == 99) {
                j2 = 256;
            } else {
                j2 = jArr[i];
            }
            if (j6 == j2) {
                d = 0.0d;
            } else {
                d = (d2 - j6) / (j2 - j6);
            }
            return Math.round(d * (j7 - j5)) + j5;
        }
        return 0L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        double d;
        double d2;
        boolean b = b();
        int i = this.b;
        long j2 = this.a;
        if (!b) {
            SeekPoint seekPoint = new SeekPoint(0L, j2 + i);
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }
        long h = Util.h(j, 0L, this.c);
        double d3 = (h * 100.0d) / this.c;
        double d4 = 0.0d;
        if (d3 <= 0.0d) {
            d = 256.0d;
        } else if (d3 >= 100.0d) {
            d = 256.0d;
            d4 = 256.0d;
        } else {
            int i2 = (int) d3;
            long[] jArr = this.g;
            jArr.getClass();
            double d5 = jArr[i2];
            if (i2 == 99) {
                d = 256.0d;
                d2 = 256.0d;
            } else {
                d = 256.0d;
                d2 = jArr[i2 + 1];
            }
            d4 = ((d2 - d5) * (d3 - i2)) + d5;
        }
        long j3 = this.e;
        SeekPoint seekPoint2 = new SeekPoint(h, j2 + Util.h(Math.round((d4 / d) * j3), i, j3 - 1));
        return new SeekMap.SeekPoints(seekPoint2, seekPoint2);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int f() {
        return this.d;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.c;
    }
}
