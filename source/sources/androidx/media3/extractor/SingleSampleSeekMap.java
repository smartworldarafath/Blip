package androidx.media3.extractor;

import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleSampleSeekMap implements SeekMap {
    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints e(long j) {
        SeekPoint seekPoint = new SeekPoint(j, 0L);
        return new SeekMap.SeekPoints(seekPoint, seekPoint);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long g() {
        return -9223372036854775807L;
    }
}
