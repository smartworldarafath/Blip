package androidx.media3.extractor;

import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndexSeekMap implements SeekMap {
    public final LongArray a;
    public final LongArray b;
    public long c;

    public IndexSeekMap(long j, long[] jArr, long[] jArr2) {
        boolean z;
        if (jArr.length == jArr2.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        int length = jArr2.length;
        if (length > 0 && jArr2[0] > 0) {
            int i = length + 1;
            LongArray longArray = new LongArray(i);
            this.a = longArray;
            LongArray longArray2 = new LongArray(i);
            this.b = longArray2;
            longArray.a(0L);
            longArray2.a(0L);
        } else {
            this.a = new LongArray(length);
            this.b = new LongArray(length);
        }
        this.a.b(jArr);
        this.b.b(jArr2);
        this.c = j;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        if (this.b.a > 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        LongArray longArray = this.b;
        if (longArray.a == 0) {
            SeekPoint seekPoint = SeekPoint.c;
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }
        int b = Util.b(longArray, j);
        long c = longArray.c(b);
        LongArray longArray2 = this.a;
        SeekPoint seekPoint2 = new SeekPoint(c, longArray2.c(b));
        if (c != j && b != longArray.a - 1) {
            int i = b + 1;
            return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(longArray.c(i), longArray2.c(i)));
        }
        return new SeekMap.SeekPoints(seekPoint2, seekPoint2);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return this.c;
    }
}
