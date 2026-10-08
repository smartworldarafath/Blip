package androidx.media3.extractor.webp;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WebpExtractor implements Extractor {
    public final ParsableByteArray a = new ParsableByteArray(4);
    public final SingleSampleExtractor b = new SingleSampleExtractor("image/webp", -1, -1);

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = this.a;
        parsableByteArray.J(4);
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
        if (parsableByteArray.B() == 1380533830) {
            defaultExtractorInput.p(4, false);
            parsableByteArray.J(4);
            defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
            if (parsableByteArray.B() == 1464156752) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.b.c(j, j2);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.b.d(extractorOutput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        return this.b.f(extractorInput, positionHolder);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
