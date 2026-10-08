package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.ts.TsPayloadReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Ac3Extractor implements Extractor {
    public final Ac3Reader a = new Ac3Reader("audio/ac3");
    public final ParsableByteArray b = new ParsableByteArray(2786);
    public boolean c;

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        DefaultExtractorInput defaultExtractorInput;
        int a;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i = 0;
        while (true) {
            defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.d(parsableByteArray.a, 0, 10, false);
            parsableByteArray.M(0);
            if (parsableByteArray.C() != 4801587) {
                break;
            }
            parsableByteArray.N(3);
            int y = parsableByteArray.y();
            i += y + 10;
            defaultExtractorInput.p(y, false);
        }
        defaultExtractorInput.f = 0;
        defaultExtractorInput.p(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            defaultExtractorInput.d(parsableByteArray.a, 0, 6, false);
            parsableByteArray.M(0);
            if (parsableByteArray.G() != 2935) {
                defaultExtractorInput.f = 0;
                i3++;
                if (i3 - i >= 8192) {
                    break;
                }
                defaultExtractorInput.p(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                byte[] bArr = parsableByteArray.a;
                if (bArr.length < 6) {
                    a = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    a = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                } else {
                    byte b = bArr[4];
                    a = Ac3Util.a((b & 192) >> 6, b & 63);
                }
                if (a == -1) {
                    break;
                }
                defaultExtractorInput.p(a - 6, false);
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.c = false;
        this.a.a();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.a.f(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.n();
        extractorOutput.f(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        ParsableByteArray parsableByteArray = this.b;
        int read = extractorInput.read(parsableByteArray.a, 0, 2786);
        if (read == -1) {
            return -1;
        }
        parsableByteArray.M(0);
        parsableByteArray.L(read);
        boolean z = this.c;
        Ac3Reader ac3Reader = this.a;
        if (!z) {
            ac3Reader.n = 0L;
            this.c = true;
        }
        ac3Reader.b(parsableByteArray);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
