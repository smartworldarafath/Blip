package androidx.media3.extractor.mp3;

import android.util.Pair;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MlltSeeker implements Seeker {
    public final long[] a;
    public final long[] b;
    public final long c;

    public MlltSeeker(long j, long[] jArr, long[] jArr2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j == -9223372036854775807L ? Util.D(jArr2[jArr2.length - 1]) : j;
    }

    public static Pair h(long j, long[] jArr, long[] jArr2) {
        double d;
        int d2 = Util.d(jArr, j, true);
        long j2 = jArr[d2];
        long j3 = jArr2[d2];
        int i = d2 + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            d = (j - j2) / (j4 - j2);
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) (d * (j5 - j3))) + j3));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return -1L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return true;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long c(long j) {
        return Util.D(((Long) h(j, this.a, this.b).second).longValue());
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        Pair h = h(Util.N(Util.h(j, 0L, this.c)), this.b, this.a);
        SeekPoint seekPoint = new SeekPoint(Util.D(((Long) h.first).longValue()), ((Long) h.second).longValue());
        return new SeekMap.SeekPoints(seekPoint, seekPoint);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int f() {
        return -2147483647;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.c;
    }
}
