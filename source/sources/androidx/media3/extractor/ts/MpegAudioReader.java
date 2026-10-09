package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MpegAudioReader implements ElementaryStreamReader {
    public final ParsableByteArray a;
    public final MpegAudioUtil.Header b;
    public final String c;
    public final int d;
    public final String e;
    public TrackOutput f;
    public String g;
    public int h = 0;
    public int i;
    public boolean j;
    public boolean k;
    public long l;
    public int m;
    public long n;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.extractor.MpegAudioUtil$Header, java.lang.Object] */
    public MpegAudioReader(String str, int i, String str2) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.a = parsableByteArray;
        parsableByteArray.a[0] = -1;
        this.b = new Object();
        this.n = -9223372036854775807L;
        this.c = str;
        this.d = i;
        this.e = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.h = 0;
        this.i = 0;
        this.k = false;
        this.n = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        boolean z;
        boolean z2;
        this.f.getClass();
        while (parsableByteArray.a() > 0) {
            int i = this.h;
            ParsableByteArray parsableByteArray2 = this.a;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(parsableByteArray.a(), this.m - this.i);
                        this.f.f(min, parsableByteArray);
                        int i2 = this.i + min;
                        this.i = i2;
                        if (i2 >= this.m) {
                            if (this.n == -9223372036854775807L) {
                                z3 = false;
                            }
                            Preconditions.n(z3);
                            this.f.g(this.n, 1, this.m, 0, null);
                            this.n += this.l;
                            this.i = 0;
                            this.h = 0;
                        }
                    } else {
                        d.d();
                        return;
                    }
                } else {
                    int min2 = Math.min(parsableByteArray.a(), 4 - this.i);
                    parsableByteArray.k(parsableByteArray2.a, this.i, min2);
                    int i3 = this.i + min2;
                    this.i = i3;
                    if (i3 >= 4) {
                        parsableByteArray2.M(0);
                        int m = parsableByteArray2.m();
                        MpegAudioUtil.Header header = this.b;
                        if (!header.a(m)) {
                            this.i = 0;
                            this.h = 1;
                        } else {
                            this.m = header.c;
                            if (!this.j) {
                                this.l = (header.g * 1000000) / header.d;
                                Format.Builder builder = new Format.Builder();
                                builder.a = this.g;
                                builder.n = MimeTypes.l(this.e);
                                builder.o = MimeTypes.l(header.b);
                                builder.p = 4096;
                                builder.I = header.e;
                                builder.K = header.d;
                                builder.d = this.c;
                                builder.f = this.d;
                                this.f.e(new Format(builder));
                                this.j = true;
                            }
                            parsableByteArray2.M(0);
                            this.f.f(4, parsableByteArray2);
                            this.h = 2;
                        }
                    }
                }
            } else {
                byte[] bArr = parsableByteArray.a;
                int i4 = parsableByteArray.b;
                int i5 = parsableByteArray.c;
                while (true) {
                    if (i4 < i5) {
                        byte b = bArr[i4];
                        if ((b & 255) == 255) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (this.k && (b & 224) == 224) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.k = z;
                        if (z2) {
                            parsableByteArray.M(i4 + 1);
                            this.k = false;
                            parsableByteArray2.a[1] = bArr[i4];
                            this.i = 2;
                            this.h = 1;
                            break;
                        }
                        i4++;
                    } else {
                        parsableByteArray.M(i5);
                        break;
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
        this.g = trackIdGenerator.e;
        trackIdGenerator.b();
        this.f = extractorOutput.s(trackIdGenerator.d, 1);
    }
}
