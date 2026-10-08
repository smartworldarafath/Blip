package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LatmReader implements ElementaryStreamReader {
    public final String a;
    public final int b;
    public final ParsableByteArray c;
    public final ParsableBitArray d;
    public TrackOutput e;
    public String f;
    public Format g;
    public int h;
    public int i;
    public int j;
    public int k;
    public long l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public long r;
    public int s;
    public long t;
    public int u;
    public String v;

    public LatmReader(String str, int i) {
        this.a = str;
        this.b = i;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.c = parsableByteArray;
        byte[] bArr = parsableByteArray.a;
        this.d = new ParsableBitArray(bArr.length, bArr);
        this.l = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.h = 0;
        this.l = -9223372036854775807L;
        this.m = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x019c, code lost:
    
        if (r23.m == false) goto L89;
     */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ParsableByteArray parsableByteArray) {
        int g;
        int i;
        boolean f;
        this.e.getClass();
        while (parsableByteArray.a() > 0) {
            int i2 = this.h;
            boolean z = true;
            if (i2 != 0) {
                if (i2 != 1) {
                    ParsableByteArray parsableByteArray2 = this.c;
                    ParsableBitArray parsableBitArray = this.d;
                    if (i2 != 2) {
                        if (i2 == 3) {
                            int min = Math.min(parsableByteArray.a(), this.j - this.i);
                            parsableByteArray.k(parsableBitArray.a, this.i, min);
                            int i3 = this.i + min;
                            this.i = i3;
                            if (i3 == this.j) {
                                parsableBitArray.m(0);
                                if (!parsableBitArray.f()) {
                                    this.m = true;
                                    int g2 = parsableBitArray.g(1);
                                    if (g2 == 1) {
                                        i = parsableBitArray.g(1);
                                    } else {
                                        i = 0;
                                    }
                                    this.n = i;
                                    if (i == 0) {
                                        if (g2 == 1) {
                                            parsableBitArray.g((parsableBitArray.g(2) + 1) * 8);
                                        }
                                        if (parsableBitArray.f()) {
                                            this.o = parsableBitArray.g(6);
                                            int g3 = parsableBitArray.g(4);
                                            int g4 = parsableBitArray.g(3);
                                            if (g3 == 0 && g4 == 0) {
                                                if (g2 == 0) {
                                                    int e = parsableBitArray.e();
                                                    int b = parsableBitArray.b();
                                                    AacUtil.Config b2 = AacUtil.b(parsableBitArray, true);
                                                    this.v = b2.c;
                                                    this.s = b2.a;
                                                    this.u = b2.b;
                                                    int b3 = b - parsableBitArray.b();
                                                    parsableBitArray.m(e);
                                                    byte[] bArr = new byte[(b3 + 7) / 8];
                                                    parsableBitArray.h(b3, bArr);
                                                    Format.Builder builder = new Format.Builder();
                                                    builder.a = this.f;
                                                    builder.n = MimeTypes.l("video/mp2t");
                                                    builder.o = MimeTypes.l("audio/mp4a-latm");
                                                    builder.k = this.v;
                                                    builder.I = this.u;
                                                    builder.K = this.s;
                                                    builder.r = Collections.singletonList(bArr);
                                                    builder.d = this.a;
                                                    builder.f = this.b;
                                                    Format format = new Format(builder);
                                                    if (!format.equals(this.g)) {
                                                        this.g = format;
                                                        this.t = 1024000000 / format.L;
                                                        this.e.e(format);
                                                    }
                                                } else {
                                                    int b4 = parsableBitArray.b();
                                                    AacUtil.Config b5 = AacUtil.b(parsableBitArray, true);
                                                    this.v = b5.c;
                                                    this.s = b5.a;
                                                    this.u = b5.b;
                                                    parsableBitArray.o(parsableBitArray.g((parsableBitArray.g(2) + 1) * 8) - (b4 - parsableBitArray.b()));
                                                }
                                                int g5 = parsableBitArray.g(3);
                                                this.p = g5;
                                                if (g5 != 0) {
                                                    if (g5 != 1) {
                                                        if (g5 != 3 && g5 != 4 && g5 != 5) {
                                                            if (g5 != 6 && g5 != 7) {
                                                                d.d();
                                                                return;
                                                            }
                                                            parsableBitArray.o(1);
                                                        } else {
                                                            parsableBitArray.o(6);
                                                        }
                                                    } else {
                                                        parsableBitArray.o(9);
                                                    }
                                                } else {
                                                    parsableBitArray.o(8);
                                                }
                                                boolean f2 = parsableBitArray.f();
                                                this.q = f2;
                                                this.r = 0L;
                                                if (f2) {
                                                    if (g2 == 1) {
                                                        this.r = parsableBitArray.g((parsableBitArray.g(2) + 1) * 8);
                                                    }
                                                    do {
                                                        f = parsableBitArray.f();
                                                        this.r = (this.r << 8) + parsableBitArray.g(8);
                                                    } while (f);
                                                }
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(8);
                                                }
                                            } else {
                                                throw ParserException.a(null, null);
                                            }
                                        } else {
                                            throw ParserException.a(null, null);
                                        }
                                    } else {
                                        throw ParserException.a(null, null);
                                    }
                                }
                                if (this.n == 0) {
                                    if (this.o == 0) {
                                        if (this.p == 0) {
                                            int i4 = 0;
                                            do {
                                                g = parsableBitArray.g(8);
                                                i4 += g;
                                            } while (g == 255);
                                            int e2 = parsableBitArray.e();
                                            if ((e2 & 7) == 0) {
                                                parsableByteArray2.M(e2 >> 3);
                                            } else {
                                                parsableBitArray.h(i4 * 8, parsableByteArray2.a);
                                                parsableByteArray2.M(0);
                                            }
                                            this.e.f(i4, parsableByteArray2);
                                            if (this.l == -9223372036854775807L) {
                                                z = false;
                                            }
                                            Preconditions.n(z);
                                            this.e.g(this.l, 1, i4, 0, null);
                                            this.l += this.t;
                                            if (this.q) {
                                                parsableBitArray.o((int) this.r);
                                            }
                                            this.h = 0;
                                        } else {
                                            throw ParserException.a(null, null);
                                        }
                                    } else {
                                        throw ParserException.a(null, null);
                                    }
                                } else {
                                    throw ParserException.a(null, null);
                                }
                            } else {
                                continue;
                            }
                        } else {
                            d.d();
                            return;
                        }
                    } else {
                        int z2 = ((this.k & (-225)) << 8) | parsableByteArray.z();
                        this.j = z2;
                        if (z2 > parsableByteArray2.a.length) {
                            parsableByteArray2.J(z2);
                            byte[] bArr2 = parsableByteArray2.a;
                            parsableBitArray.getClass();
                            parsableBitArray.k(bArr2.length, bArr2);
                        }
                        this.i = 0;
                        this.h = 3;
                    }
                } else {
                    int z3 = parsableByteArray.z();
                    if ((z3 & 224) == 224) {
                        this.k = z3;
                        this.h = 2;
                    } else if (z3 != 86) {
                        this.h = 0;
                    }
                }
            } else if (parsableByteArray.z() == 86) {
                this.h = 1;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.l = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.e = extractorOutput.s(trackIdGenerator.d, 1);
        trackIdGenerator.b();
        this.f = trackIdGenerator.e;
    }
}
