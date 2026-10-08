package androidx.media3.extractor.heif;

import android.util.Pair;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HeifExtractor implements Extractor {
    public final SingleSampleExtractor a = new SingleSampleExtractor("image/heif", -1, -1);
    public final Extractor b = new HeicMotionPhotoExtractor();
    public ExtractorOutput c;
    public Extractor d;
    public Pair e;

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
        Extractor extractor = this.b;
        if (extractor != null) {
            ((HeicMotionPhotoExtractor) extractor).a();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        if (this.b != null && HeifSniffer.a(extractorInput, true)) {
            return true;
        }
        ((DefaultExtractorInput) extractorInput).f = 0;
        return HeifSniffer.a(extractorInput, false);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        Extractor extractor = this.d;
        if (extractor != null) {
            extractor.c(j, j2);
        } else {
            this.e = Pair.create(Long.valueOf(j), Long.valueOf(j2));
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.c = extractorOutput;
        if (this.b == null) {
            SingleSampleExtractor singleSampleExtractor = this.a;
            this.d = singleSampleExtractor;
            singleSampleExtractor.d(extractorOutput);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        Extractor extractor = this.d;
        if (extractor == null) {
            if (extractor == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            Extractor extractor2 = this.b;
            extractor2.getClass();
            if (!HeifSniffer.a(extractorInput, true)) {
                extractor2 = this.a;
            }
            this.d = extractor2;
            extractorInput.j();
            Pair pair = this.e;
            if (pair != null) {
                this.d.c(((Long) pair.first).longValue(), ((Long) this.e.second).longValue());
                this.e = null;
            }
            Extractor extractor3 = this.d;
            ExtractorOutput extractorOutput = this.c;
            extractorOutput.getClass();
            extractor3.d(extractorOutput);
        }
        return this.d.f(extractorInput, positionHolder);
    }
}
