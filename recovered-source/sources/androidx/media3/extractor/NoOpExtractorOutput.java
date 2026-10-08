package androidx.media3.extractor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpExtractorOutput implements ExtractorOutput {
    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput s(int i, int i2) {
        return new DiscardingTrackOutput();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void f(SeekMap seekMap) {
    }
}
