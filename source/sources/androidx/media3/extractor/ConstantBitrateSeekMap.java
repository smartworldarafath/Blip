package androidx.media3.extractor;

import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConstantBitrateSeekMap implements SeekMap {
    public final long a;
    public final long b;
    public final int c;
    public final long d;
    public final int e;
    public final long f;
    public final boolean g;
    public final boolean h;

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2, boolean z, boolean z2) {
        this.a = j;
        this.b = j2;
        this.c = i2 == -1 ? 1 : i2;
        this.e = i;
        this.g = z;
        this.h = z2;
        if (j == -1) {
            this.d = -1L;
            this.f = -9223372036854775807L;
        } else {
            long j3 = j - j2;
            this.d = j3;
            this.f = (Math.max(0L, j3) * 8000000) / i;
        }
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        if (this.d == -1 && !this.g) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean d() {
        return this.h;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints e(long j) {
        long j2 = this.d;
        long j3 = this.b;
        if (j2 == -1 && !this.g) {
            SeekPoint seekPoint = new SeekPoint(0L, j3);
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }
        int i = this.e;
        long j4 = this.c;
        long j5 = (((i * j) / 8000000) / j4) * j4;
        if (j2 != -1) {
            j5 = Math.min(j5, j2 - j4);
        }
        long max = Math.max(j5, 0L) + j3;
        long max2 = (Math.max(0L, max - j3) * 8000000) / i;
        SeekPoint seekPoint2 = new SeekPoint(max2, max);
        if (j2 != -1 && max2 < j) {
            long j6 = max + j4;
            if (j6 < this.a) {
                return new SeekMap.SeekPoints(seekPoint2, new SeekPoint((Math.max(0L, j6 - j3) * 8000000) / i, j6));
            }
        }
        return new SeekMap.SeekPoints(seekPoint2, seekPoint2);
    }
}
