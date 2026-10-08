package androidx.media3.extractor.avi;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ChunkReader {
    public final AviStreamHeaderChunk a;
    public final TrackOutput b;
    public final int c;
    public final int d;
    public final long e;
    public final boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public long m;
    public long[] n;
    public int[] o;

    public ChunkReader(int i, AviStreamHeaderChunk aviStreamHeaderChunk, TrackOutput trackOutput, boolean z) {
        int i2;
        int i3;
        int i4 = aviStreamHeaderChunk.d;
        this.a = aviStreamHeaderChunk;
        this.f = z;
        int b = aviStreamHeaderChunk.b();
        boolean z2 = true;
        if (b != 1 && b != 2) {
            z2 = false;
        }
        Preconditions.e(z2);
        if (b == 2) {
            i2 = 1667497984;
        } else {
            i2 = 1651965952;
        }
        int i5 = (((i % 10) + 48) << 8) | ((i / 10) + 48);
        this.c = i2 | i5;
        long j = aviStreamHeaderChunk.b * 1000000;
        long j2 = aviStreamHeaderChunk.c;
        String str = Util.a;
        this.e = Util.J(i4, j, j2, RoundingMode.DOWN);
        this.b = trackOutput;
        if (b == 2) {
            i3 = i5 | 1650720768;
        } else {
            i3 = -1;
        }
        this.d = i3;
        this.m = -1L;
        this.n = new long[512];
        this.o = new int[512];
        this.g = i4;
    }

    public final SeekPoint a(int i) {
        return new SeekPoint((this.e / this.g) * this.o[i], this.n[i]);
    }

    public final SeekMap.SeekPoints b(long j) {
        if (this.l == 0) {
            SeekPoint seekPoint = new SeekPoint(0L, this.m);
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }
        int i = (int) (j / (this.e / this.g));
        int c = Util.c(this.o, i, true, true);
        if (this.o[c] == i) {
            SeekPoint a = a(c);
            return new SeekMap.SeekPoints(a, a);
        }
        SeekPoint a2 = a(c);
        int i2 = c + 1;
        if (i2 < this.n.length) {
            return new SeekMap.SeekPoints(a2, a(i2));
        }
        return new SeekMap.SeekPoints(a2, a2);
    }
}
