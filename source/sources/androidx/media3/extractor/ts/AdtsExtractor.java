package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.ts.TsPayloadReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AdtsExtractor implements Extractor {
    public final ParsableByteArray c;
    public final ParsableBitArray d;
    public ExtractorOutput e;
    public long f;
    public boolean h;
    public boolean i;
    public final AdtsReader a = new AdtsReader(0, null, "audio/mp4a-latm", true);
    public final ParsableByteArray b = new ParsableByteArray(2048);
    public long g = -1;

    public AdtsExtractor() {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        this.c = parsableByteArray;
        byte[] bArr = parsableByteArray.a;
        this.d = new ParsableBitArray(bArr.length, bArr);
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray;
        int i = 0;
        while (true) {
            parsableByteArray = this.c;
            extractorInput.n(parsableByteArray.a, 0, 10);
            parsableByteArray.M(0);
            if (parsableByteArray.C() != 4801587) {
                break;
            }
            parsableByteArray.N(3);
            int y = parsableByteArray.y();
            i += y + 10;
            extractorInput.f(y);
        }
        extractorInput.j();
        extractorInput.f(i);
        if (this.g == -1) {
            this.g = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.d(parsableByteArray.a, 0, 2, false);
            parsableByteArray.M(0);
            if ((parsableByteArray.G() & 65526) == 65520) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
                ParsableBitArray parsableBitArray = this.d;
                parsableBitArray.m(14);
                int g = parsableBitArray.g(13);
                if (g <= 6) {
                    i4++;
                    defaultExtractorInput.f = 0;
                    defaultExtractorInput.p(i4, false);
                } else {
                    defaultExtractorInput.p(g - 6, false);
                    i3 += g;
                }
            } else {
                i4++;
                defaultExtractorInput.f = 0;
                defaultExtractorInput.p(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.h = false;
        this.a.a();
        this.f = j2;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.e = extractorOutput;
        this.a.f(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        this.e.getClass();
        extractorInput.g();
        ParsableByteArray parsableByteArray = this.b;
        int read = extractorInput.read(parsableByteArray.a, 0, 2048);
        if (read == -1) {
            z = true;
        } else {
            z = false;
        }
        if (!this.i) {
            this.e.f(new SeekMap.Unseekable(-9223372036854775807L));
            this.i = true;
        }
        if (z) {
            return -1;
        }
        parsableByteArray.M(0);
        parsableByteArray.L(read);
        boolean z2 = this.h;
        AdtsReader adtsReader = this.a;
        if (!z2) {
            adtsReader.u = this.f;
            this.h = true;
        }
        adtsReader.b(parsableByteArray);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
