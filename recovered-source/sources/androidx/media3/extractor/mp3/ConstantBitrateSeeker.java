package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    public final long i;
    public final long j;

    public ConstantBitrateSeeker(long j, long j2, int i, int i2, boolean z, boolean z2, long j3) {
        super(j, j2, i, i2, z, z2);
        this.i = j3;
        this.j = j == -1 ? -1L : j;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.j;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long c(long j) {
        return (Math.max(0L, j - this.b) * 8000000) / this.e;
    }

    @Override // androidx.media3.extractor.ConstantBitrateSeekMap, androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        long j2 = this.i;
        if (j2 != -9223372036854775807L && j >= j2) {
            long j3 = this.j;
            if (j3 != -1) {
                long j4 = this.c;
                long j5 = this.b;
                SeekPoint seekPoint = new SeekPoint(Math.max(0L, j2 - ((Math.max(0L, (j4 + j5) - j5) * 8000000) / this.e)), Math.max(j5, j3 - j4));
                return new SeekMap.SeekPoints(seekPoint, seekPoint);
            }
        }
        return super.e(j);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int f() {
        return this.e;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        long j = this.i;
        if (j != -9223372036854775807L) {
            return j;
        }
        return this.f;
    }
}
