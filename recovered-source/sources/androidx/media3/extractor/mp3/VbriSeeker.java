package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VbriSeeker implements Seeker {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final long d;
    public final int e;

    public VbriSeeker(long[] jArr, long[] jArr2, long j, long j2, long j3) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j3;
        this.e = Mp3Util.a(j3 - j2, j);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.d;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return true;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long c(long j) {
        return this.a[Util.d(this.b, j, true)];
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        long[] jArr = this.a;
        int d = Util.d(jArr, j, true);
        long j2 = jArr[d];
        long[] jArr2 = this.b;
        SeekPoint seekPoint = new SeekPoint(j2, jArr2[d]);
        if (j2 < j && d != jArr.length - 1) {
            int i = d + 1;
            return new SeekMap.SeekPoints(seekPoint, new SeekPoint(jArr[i], jArr2[i]));
        }
        return new SeekMap.SeekPoints(seekPoint, seekPoint);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int f() {
        return this.e;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.c;
    }
}
