package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.base.Preconditions;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleSampleExtractor implements Extractor {
    public final int a;
    public final int b;
    public final String c;
    public int d;
    public int e;
    public ExtractorOutput f;
    public TrackOutput g;

    public SingleSampleExtractor(String str, int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        boolean z;
        int i = this.b;
        int i2 = this.a;
        if (i2 != -1 && i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        ParsableByteArray parsableByteArray = new ParsableByteArray(i);
        ((DefaultExtractorInput) extractorInput).d(parsableByteArray.a, 0, i, false);
        if (parsableByteArray.G() == i2) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        if (j != 0 && this.e != 1) {
            return;
        }
        this.e = 1;
        this.d = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.media3.extractor.SeekMap, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.f = extractorOutput;
        TrackOutput s = extractorOutput.s(1024, 4);
        this.g = s;
        Format.Builder builder = new Format.Builder();
        String str = this.c;
        builder.n = MimeTypes.l(str);
        builder.o = MimeTypes.l(str);
        s.e(new Format(builder));
        this.f.n();
        this.f.f(new Object());
        this.e = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i = this.e;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            d.d();
            return 0;
        }
        TrackOutput trackOutput = this.g;
        trackOutput.getClass();
        int c = trackOutput.c(extractorInput, 1024, true);
        if (c == -1) {
            this.e = 2;
            this.g.g(0L, 1, this.d, 0, null);
            this.d = 0;
            return 0;
        }
        this.d += c;
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
