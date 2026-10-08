package androidx.media3.extractor.bmp;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BmpExtractor implements Extractor {
    public final SingleSampleExtractor a = new SingleSampleExtractor("image/bmp", 16973, 2);

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        return this.a.b(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.a.c(j, j2);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.a.d(extractorOutput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        return this.a.f(extractorInput, positionHolder);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
