package androidx.media3.extractor.ts;

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
public final class Ac4Extractor implements Extractor {
    public final Ac4Reader a = new Ac4Reader(null, 0, "audio/ac4");
    public final ParsableByteArray b = new ParsableByteArray(16384);
    public boolean c;

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
    
        return false;
     */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(ExtractorInput extractorInput) {
        DefaultExtractorInput defaultExtractorInput;
        int i;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i2 = 0;
        while (true) {
            defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.d(parsableByteArray.a, 0, 10, false);
            parsableByteArray.M(0);
            if (parsableByteArray.C() != 4801587) {
                break;
            }
            parsableByteArray.N(3);
            int y = parsableByteArray.y();
            i2 += y + 10;
            defaultExtractorInput.p(y, false);
        }
        defaultExtractorInput.f = 0;
        defaultExtractorInput.p(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            defaultExtractorInput.d(parsableByteArray.a, 0, 7, false);
            parsableByteArray.M(0);
            int G = parsableByteArray.G();
            if (G != 44096 && G != 44097) {
                defaultExtractorInput.f = 0;
                i4++;
                if (i4 - i2 >= 8192) {
                    break;
                }
                defaultExtractorInput.p(i4, false);
                i3 = 0;
            } else {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] bArr = parsableByteArray.a;
                if (bArr.length < 7) {
                    i = -1;
                } else {
                    int i6 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i6 == 65535) {
                        i6 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (G == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    break;
                }
                defaultExtractorInput.p(i - 7, false);
            }
        }
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
        int read = extractorInput.read(parsableByteArray.a, 0, 16384);
        if (read == -1) {
            return -1;
        }
        parsableByteArray.M(0);
        parsableByteArray.L(read);
        boolean z = this.c;
        Ac4Reader ac4Reader = this.a;
        if (!z) {
            ac4Reader.n = 0L;
            this.c = true;
        }
        ac4Reader.b(parsableByteArray);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
