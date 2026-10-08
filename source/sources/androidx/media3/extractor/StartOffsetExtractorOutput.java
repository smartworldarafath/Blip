package androidx.media3.extractor;

import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StartOffsetExtractorOutput implements ExtractorOutput {
    public final long j;
    public final ExtractorOutput k;

    public StartOffsetExtractorOutput(long j, ExtractorOutput extractorOutput) {
        this.j = j;
        this.k = extractorOutput;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void f(final SeekMap seekMap) {
        this.k.f(new ForwardingSeekMap(seekMap) { // from class: androidx.media3.extractor.StartOffsetExtractorOutput.1
            @Override // androidx.media3.extractor.ForwardingSeekMap, androidx.media3.extractor.SeekMap
            public final SeekMap.SeekPoints e(long j) {
                SeekMap.SeekPoints e = seekMap.e(j);
                SeekPoint seekPoint = e.a;
                long j2 = seekPoint.a;
                long j3 = seekPoint.b;
                long j4 = StartOffsetExtractorOutput.this.j;
                SeekPoint seekPoint2 = new SeekPoint(j2, j3 + j4);
                SeekPoint seekPoint3 = e.b;
                return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(seekPoint3.a, seekPoint3.b + j4));
            }
        });
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.k.n();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput s(int i, int i2) {
        return this.k.s(i, i2);
    }
}
