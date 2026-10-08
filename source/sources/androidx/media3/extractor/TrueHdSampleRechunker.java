package androidx.media3.extractor;

import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrueHdSampleRechunker {
    public final byte[] a = new byte[10];
    public boolean b;
    public int c;
    public long d;
    public int e;
    public int f;
    public int g;

    public final void a(TrackOutput trackOutput, TrackOutput.CryptoData cryptoData) {
        if (this.c > 0) {
            trackOutput.g(this.d, this.e, this.f, this.g, cryptoData);
            this.c = 0;
        }
    }

    public final void b(TrackOutput trackOutput, long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
        boolean z;
        if (this.g <= i2 + i3) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.m("TrueHD chunk samples must be contiguous in the sample queue.", z);
        if (this.b) {
            int i4 = this.c;
            int i5 = i4 + 1;
            this.c = i5;
            if (i4 == 0) {
                this.d = j;
                this.e = i;
                this.f = 0;
            }
            this.f += i2;
            this.g = i3;
            if (i5 >= 16) {
                a(trackOutput, cryptoData);
            }
        }
    }

    public final void c(ExtractorInput extractorInput) {
        char c;
        if (!this.b) {
            byte[] bArr = this.a;
            int i = 0;
            extractorInput.n(bArr, 0, 10);
            extractorInput.j();
            if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
                byte b = bArr[7];
                if ((b & 254) == 186) {
                    if ((b & 255) == 187) {
                        i = 1;
                    }
                    if (i != 0) {
                        c = '\t';
                    } else {
                        c = '\b';
                    }
                    i = 40 << ((bArr[c] >> 4) & 7);
                }
            }
            if (i == 0) {
                return;
            }
            this.b = true;
        }
    }
}
