package androidx.media3.extractor.wav;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class WavSeekMap implements SeekMap {
    public final WavFormat a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;

    public WavSeekMap(WavFormat wavFormat, int i, long j, long j2) {
        this.a = wavFormat;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / wavFormat.c;
        this.d = j3;
        this.e = h(j3);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        WavFormat wavFormat = this.a;
        long j2 = this.d - 1;
        long h = Util.h((wavFormat.b * j) / (this.b * 1000000), 0L, j2);
        int i = wavFormat.c;
        long j3 = this.c;
        long h2 = h(h);
        SeekPoint seekPoint = new SeekPoint(h2, (i * h) + j3);
        if (h2 < j && h != j2) {
            long j4 = h + 1;
            return new SeekMap.SeekPoints(seekPoint, new SeekPoint(h(j4), (i * j4) + j3));
        }
        return new SeekMap.SeekPoints(seekPoint, seekPoint);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.e;
    }

    public final long h(long j) {
        long j2 = j * this.b;
        long j3 = this.a.b;
        String str = Util.a;
        return Util.J(j2, 1000000L, j3, RoundingMode.DOWN);
    }
}
