package androidx.media3.extractor;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlacSeekTableSeekMap implements SeekMap {
    public final FlacStreamMetadata a;
    public final long b;

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j) {
        this.a = flacStreamMetadata;
        this.b = j;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        long j2;
        FlacStreamMetadata flacStreamMetadata = this.a;
        flacStreamMetadata.k.getClass();
        FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.k;
        long[] jArr = seekTable.a;
        long[] jArr2 = seekTable.b;
        int d = Util.d(jArr, Util.h((flacStreamMetadata.e * j) / 1000000, 0L, flacStreamMetadata.j - 1), false);
        long j3 = 0;
        if (d == -1) {
            j2 = 0;
        } else {
            j2 = jArr[d];
        }
        if (d != -1) {
            j3 = jArr2[d];
        }
        int i = flacStreamMetadata.e;
        long j4 = (j2 * 1000000) / i;
        long j5 = this.b;
        SeekPoint seekPoint = new SeekPoint(j4, j3 + j5);
        if (j4 != j && d != jArr.length - 1) {
            int i2 = d + 1;
            return new SeekMap.SeekPoints(seekPoint, new SeekPoint((jArr[i2] * 1000000) / i, j5 + jArr2[i2]));
        }
        return new SeekMap.SeekPoints(seekPoint, seekPoint);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.a.b();
    }
}
