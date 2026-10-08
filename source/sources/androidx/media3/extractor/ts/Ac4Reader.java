package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Ac4Reader implements ElementaryStreamReader {
    public final ParsableBitArray a;
    public final ParsableByteArray b;
    public final String c;
    public final int d;
    public final String e;
    public String f;
    public TrackOutput g;
    public int h;
    public int i;
    public boolean j;
    public long k;
    public Format l;
    public int m;
    public long n;

    public Ac4Reader(String str, int i, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(16, new byte[16]);
        this.a = parsableBitArray;
        this.b = new ParsableByteArray(parsableBitArray.a);
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = -9223372036854775807L;
        this.c = str;
        this.d = i;
        this.e = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        boolean z;
        boolean z2;
        boolean z3;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i = this.h;
            ParsableByteArray parsableByteArray2 = this.b;
            boolean z4 = true;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(parsableByteArray.a(), this.m - this.i);
                        this.g.f(min, parsableByteArray);
                        int i2 = this.i + min;
                        this.i = i2;
                        if (i2 == this.m) {
                            if (this.n == -9223372036854775807L) {
                                z4 = false;
                            }
                            Preconditions.n(z4);
                            this.g.g(this.n, 1, this.m, 0, null);
                            this.n += this.k;
                            this.h = 0;
                        }
                    }
                } else {
                    byte[] bArr = parsableByteArray2.a;
                    int min2 = Math.min(parsableByteArray.a(), 16 - this.i);
                    parsableByteArray.k(bArr, this.i, min2);
                    int i3 = this.i + min2;
                    this.i = i3;
                    if (i3 == 16) {
                        ParsableBitArray parsableBitArray = this.a;
                        parsableBitArray.m(0);
                        Ac4Util.SyncFrameInfo c = Ac4Util.c(parsableBitArray);
                        int i4 = c.a;
                        Format format = this.l;
                        if (format == null || 2 != format.J || i4 != format.L || !"audio/ac4".equals(format.p)) {
                            Format.Builder builder = new Format.Builder();
                            builder.a = this.f;
                            builder.n = MimeTypes.l(this.e);
                            builder.o = MimeTypes.l("audio/ac4");
                            builder.I = 2;
                            builder.K = i4;
                            builder.d = this.c;
                            builder.f = this.d;
                            Format format2 = new Format(builder);
                            this.l = format2;
                            this.g.e(format2);
                        }
                        this.m = c.b;
                        this.k = (c.c * 1000000) / this.l.L;
                        parsableByteArray2.M(0);
                        this.g.f(16, parsableByteArray2);
                        this.h = 2;
                    }
                }
            } else {
                while (parsableByteArray.a() > 0) {
                    if (!this.j) {
                        if (parsableByteArray.z() == 172) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.j = z;
                    } else {
                        int z5 = parsableByteArray.z();
                        if (z5 == 172) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.j = z2;
                        int i5 = 64;
                        if (z5 == 64 || z5 == 65) {
                            if (z5 == 65) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            this.h = 1;
                            byte[] bArr2 = parsableByteArray2.a;
                            bArr2[0] = -84;
                            if (z3) {
                                i5 = 65;
                            }
                            bArr2[1] = (byte) i5;
                            this.i = 2;
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.n = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f = trackIdGenerator.e;
        trackIdGenerator.b();
        this.g = extractorOutput.s(trackIdGenerator.d, 1);
    }
}
