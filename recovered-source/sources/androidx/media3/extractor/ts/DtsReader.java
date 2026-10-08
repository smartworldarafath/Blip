package androidx.media3.extractor.ts;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import io.sentry.d;
import java.math.RoundingMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DtsReader implements ElementaryStreamReader {
    public final ParsableByteArray a;
    public final String c;
    public final int d;
    public String f;
    public TrackOutput g;
    public int i;
    public int j;
    public int k;
    public long l;
    public Format m;
    public int n;
    public int o;
    public int p;
    public boolean s;
    public boolean v;
    public boolean w;
    public int h = 0;
    public long t = -9223372036854775807L;
    public long u = -9223372036854775807L;
    public final AtomicInteger b = new AtomicInteger();
    public int q = -1;
    public int r = -1;
    public final String e = "video/mp2t";

    public DtsReader(String str, int i, int i2) {
        this.a = new ParsableByteArray(new byte[i2]);
        this.c = str;
        this.d = i;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.h = 0;
        this.i = 0;
        this.k = 0;
        this.j = 0;
        this.o = 0;
        this.t = -9223372036854775807L;
        this.u = -9223372036854775807L;
        this.b.set(0);
        this.s = false;
        this.w = this.v;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        boolean z;
        char c;
        char c2;
        int i;
        byte b;
        int i2;
        byte b2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j;
        int i7;
        long j2;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        int i12;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i13 = this.h;
            ParsableByteArray parsableByteArray2 = this.a;
            switch (i13) {
                case 0:
                    while (true) {
                        if (parsableByteArray.a() > 0) {
                            int i14 = this.k << 8;
                            this.k = i14;
                            int z3 = i14 | parsableByteArray.z();
                            this.k = z3;
                            int b3 = DtsUtil.b(z3);
                            this.p = b3;
                            if (b3 != 0) {
                                h(this.k);
                                this.k = 0;
                                if (this.w && this.p == 2) {
                                    this.i = 0;
                                    break;
                                } else {
                                    int i15 = this.p;
                                    if (i15 == 1) {
                                        this.w = false;
                                    }
                                    if (i15 != 3 && i15 != 4) {
                                        if (i15 == 1) {
                                            this.h = 1;
                                            break;
                                        } else {
                                            this.h = 2;
                                            break;
                                        }
                                    } else {
                                        this.h = 4;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 1:
                    if (!g(parsableByteArray, parsableByteArray2.a, 18)) {
                        break;
                    } else {
                        this.v = true;
                        byte[] bArr = parsableByteArray2.a;
                        if (this.m == null) {
                            String str = this.f;
                            ParsableBitArray c3 = DtsUtil.c(bArr);
                            c3.o(60);
                            int i16 = DtsUtil.a[c3.g(6)];
                            int i17 = DtsUtil.b[c3.g(4)];
                            c2 = 7;
                            int g = c3.g(5);
                            c = 5;
                            if (g >= 29) {
                                i3 = -1;
                            } else {
                                i3 = (DtsUtil.c[g] * 1000) / 2;
                            }
                            c3.o(10);
                            if (c3.g(2) > 0) {
                                i4 = 1;
                            } else {
                                i4 = 0;
                            }
                            int i18 = i16 + i4;
                            Format.Builder builder = new Format.Builder();
                            builder.a = str;
                            builder.n = MimeTypes.l(this.e);
                            builder.o = MimeTypes.l("audio/vnd.dts");
                            builder.i = i3;
                            builder.I = i18;
                            builder.K = i17;
                            builder.s = null;
                            builder.d = this.c;
                            builder.f = this.d;
                            this.m = new Format(builder);
                            this.s = true;
                        } else {
                            c = 5;
                            c2 = 7;
                        }
                        this.n = DtsUtil.a(bArr);
                        byte b4 = bArr[0];
                        if (b4 != -2) {
                            if (b4 != -1) {
                                if (b4 != 31) {
                                    i = (bArr[4] & 1) << 6;
                                    b = bArr[c];
                                } else {
                                    i = (bArr[c] & 7) << 4;
                                    b2 = bArr[6];
                                }
                            } else {
                                i = (bArr[4] & 7) << 4;
                                b2 = bArr[c2];
                            }
                            i2 = b2 & 60;
                            this.l = Ints.b(Util.H(this.m.L, (((i2 >> 2) | i) + 1) * 32));
                            parsableByteArray2.M(0);
                            this.g.f(18, parsableByteArray2);
                            this.h = 6;
                            break;
                        } else {
                            i = (bArr[c] & 1) << 6;
                            b = bArr[4];
                        }
                        i2 = b & 252;
                        this.l = Ints.b(Util.H(this.m.L, (((i2 >> 2) | i) + 1) * 32));
                        parsableByteArray2.M(0);
                        this.g.f(18, parsableByteArray2);
                        this.h = 6;
                    }
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    if (g(parsableByteArray, parsableByteArray2.a, 7)) {
                        ParsableBitArray c4 = DtsUtil.c(parsableByteArray2.a);
                        c4.o(42);
                        if (c4.f()) {
                            i5 = 12;
                        } else {
                            i5 = 8;
                        }
                        this.q = c4.g(i5) + 1;
                        this.h = 3;
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    if (g(parsableByteArray, parsableByteArray2.a, this.q)) {
                        DtsUtil.DtsHeader f = DtsUtil.f(parsableByteArray2.a);
                        i(f);
                        this.n = f.d;
                        long j3 = f.e;
                        if (j3 != -9223372036854775807L) {
                            this.l = j3;
                        }
                        parsableByteArray2.M(0);
                        this.g.f(this.q, parsableByteArray2);
                        this.h = 6;
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    if (g(parsableByteArray, parsableByteArray2.a, 6)) {
                        ParsableBitArray c5 = DtsUtil.c(parsableByteArray2.a);
                        c5.o(32);
                        int g2 = DtsUtil.g(c5, DtsUtil.i) + 1;
                        this.r = g2;
                        int i19 = this.i;
                        if (i19 > g2) {
                            int i20 = i19 - g2;
                            this.i = i19 - i20;
                            parsableByteArray.M(parsableByteArray.b - i20);
                        }
                        this.h = 5;
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (g(parsableByteArray, parsableByteArray2.a, this.r)) {
                        byte[] bArr2 = parsableByteArray2.a;
                        ParsableBitArray c6 = DtsUtil.c(bArr2);
                        if (c6.g(32) == 1078008818) {
                            i6 = 1;
                        } else {
                            i6 = 0;
                        }
                        int g3 = DtsUtil.g(c6, DtsUtil.e);
                        int i21 = g3 + 1;
                        if (i6 != 0) {
                            if (c6.f()) {
                                j = -9223372036854775807L;
                                int i22 = g3 - 1;
                                int i23 = (bArr2[g3] & 255) | ((bArr2[i22] << 8) & 65535);
                                String str2 = Util.a;
                                int i24 = 65535;
                                for (int i25 = 0; i25 < i22; i25++) {
                                    byte b5 = bArr2[i25];
                                    int i26 = (((b5 & 255) >> 4) ^ ((i24 >> 12) & 255)) & 255;
                                    int i27 = (i24 << 4) & 65535;
                                    int[] iArr = Util.h;
                                    int i28 = (iArr[i26] ^ i27) & 65535;
                                    i24 = (((i28 << 4) & 65535) ^ iArr[((b5 & 15) ^ ((i28 >> 12) & 255)) & 255]) & 65535;
                                }
                                if (i23 == i24) {
                                    int g4 = c6.g(2);
                                    if (g4 != 0) {
                                        if (g4 != 1) {
                                            if (g4 == 2) {
                                                i9 = 384;
                                            } else {
                                                throw ParserException.a(null, "Unsupported base duration index in DTS UHD header: " + g4);
                                            }
                                        } else {
                                            i9 = 480;
                                        }
                                    } else {
                                        i9 = 512;
                                    }
                                    int g5 = (c6.g(3) + 1) * i9;
                                    int g6 = c6.g(2);
                                    if (g6 != 0) {
                                        if (g6 != 1) {
                                            if (g6 == 2) {
                                                i10 = 48000;
                                            } else {
                                                throw ParserException.a(null, "Unsupported clock rate index in DTS UHD header: " + g6);
                                            }
                                        } else {
                                            i10 = 44100;
                                        }
                                    } else {
                                        i10 = 32000;
                                    }
                                    if (c6.f()) {
                                        c6.o(36);
                                    }
                                    i7 = (1 << c6.g(2)) * i10;
                                    j2 = Util.J(g5, 1000000L, i10, RoundingMode.DOWN);
                                } else {
                                    throw ParserException.a(null, "CRC check failed");
                                }
                            } else {
                                throw ParserException.b("Only supports full channel mask-based audio presentation");
                            }
                        } else {
                            j = -9223372036854775807L;
                            i7 = -2147483647;
                            j2 = -9223372036854775807L;
                        }
                        int i29 = i7;
                        int i30 = 0;
                        for (int i31 = 0; i31 < i6; i31++) {
                            i30 += DtsUtil.g(c6, DtsUtil.f);
                        }
                        AtomicInteger atomicInteger = this.b;
                        if (i6 != 0) {
                            atomicInteger.set(DtsUtil.g(c6, DtsUtil.g));
                        }
                        if (atomicInteger.get() != 0) {
                            i8 = DtsUtil.g(c6, DtsUtil.h);
                        } else {
                            i8 = 0;
                        }
                        int i32 = i30 + i8 + i21;
                        DtsUtil.DtsHeader dtsHeader = new DtsUtil.DtsHeader("audio/vnd.dts.uhd;profile=p2", 2, i29, i32, j2);
                        if (this.p == 3) {
                            i(dtsHeader);
                        }
                        this.n = i32;
                        if (j2 == j) {
                            j2 = 0;
                        }
                        this.l = j2;
                        parsableByteArray2.M(0);
                        this.g.f(this.r, parsableByteArray2);
                        this.h = 6;
                        break;
                    } else {
                        continue;
                    }
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    int min = Math.min(parsableByteArray.a(), this.n - this.i);
                    this.g.f(min, parsableByteArray);
                    int i33 = this.i + min;
                    this.i = i33;
                    int i34 = this.n;
                    if (i33 != i34) {
                        break;
                    } else if (this.p == 1) {
                        this.o = i34;
                        this.i = 0;
                        this.j = 0;
                        this.h = 7;
                        break;
                    } else {
                        if (this.t != -9223372036854775807L) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.n(z2);
                        int i35 = this.n;
                        int i36 = this.p;
                        if (i36 == 2) {
                            i11 = this.o;
                        } else {
                            i11 = 0;
                        }
                        int i37 = i35 + i11;
                        long j4 = this.t;
                        TrackOutput trackOutput = this.g;
                        if (i36 == 4) {
                            i12 = 0;
                        } else {
                            i12 = 1;
                        }
                        trackOutput.g(j4, i12, i37, 0, null);
                        this.t += this.l;
                        long j5 = this.u;
                        if (j5 != -9223372036854775807L) {
                            if (j5 != j4) {
                                this.t = j5;
                            }
                            this.u = -9223372036854775807L;
                        }
                        this.o = 0;
                        this.h = 0;
                        break;
                    }
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    while (parsableByteArray.a() > 0 && this.i < 4) {
                        int i38 = this.j << 8;
                        this.j = i38;
                        this.j = i38 | parsableByteArray.z();
                        this.i++;
                    }
                    if (this.i != 4) {
                        break;
                    } else if (DtsUtil.b(this.j) == 2) {
                        h(this.j);
                        this.p = 2;
                        this.j = 0;
                        this.h = 2;
                        break;
                    } else {
                        if (this.s) {
                            TrackOutput trackOutput2 = this.g;
                            Format format = this.m;
                            format.getClass();
                            trackOutput2.e(format);
                            this.s = false;
                        }
                        if (this.t != -9223372036854775807L) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Preconditions.n(z);
                        long j6 = this.t;
                        this.g.g(j6, 1, this.o, 0, null);
                        this.t += this.l;
                        long j7 = this.u;
                        if (j7 != -9223372036854775807L) {
                            if (j7 != j6) {
                                this.t = j7;
                            }
                            this.u = -9223372036854775807L;
                        }
                        this.o = 0;
                        int i39 = this.j;
                        this.k = i39;
                        this.j = 0;
                        int b6 = DtsUtil.b(i39);
                        this.p = b6;
                        if (b6 != 3 && b6 != 4) {
                            if (b6 == 1) {
                                h(this.k);
                                this.k = 0;
                                this.h = 1;
                                break;
                            } else {
                                this.i = 0;
                                this.h = 0;
                                break;
                            }
                        } else {
                            h(this.k);
                            this.k = 0;
                            this.h = 4;
                            break;
                        }
                    }
                default:
                    d.d();
                    return;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d() {
        if (this.h == 7) {
            this.g.getClass();
            if (this.s) {
                TrackOutput trackOutput = this.g;
                Format format = this.m;
                format.getClass();
                trackOutput.e(format);
                this.s = false;
            }
            long j = this.t;
            if (j != -9223372036854775807L) {
                this.g.g(j, 1, this.o, 0, null);
                this.t += this.l;
            }
            this.o = 0;
            this.i = 0;
            this.k = 0;
            this.j = 0;
            this.h = 0;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        if (j != -9223372036854775807L) {
            if (this.h != 0) {
                this.u = j;
            } else {
                this.t = j;
                this.u = -9223372036854775807L;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f = trackIdGenerator.e;
        trackIdGenerator.b();
        this.g = extractorOutput.s(trackIdGenerator.d, 1);
    }

    public final boolean g(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.a(), i - this.i);
        parsableByteArray.k(bArr, this.i, min);
        int i2 = this.i + min;
        this.i = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    public final void h(int i) {
        byte[] bArr = this.a.a;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        this.i = 4;
    }

    public final void i(DtsUtil.DtsHeader dtsHeader) {
        Format.Builder a;
        int i = dtsHeader.b;
        int i2 = dtsHeader.c;
        if (i != -2147483647 && i2 != -1) {
            String str = dtsHeader.a;
            if (str == null) {
                Format format = this.m;
                if (format != null) {
                    str = format.p;
                } else {
                    str = null;
                }
            }
            Format format2 = this.m;
            if (format2 == null || this.s || i2 != format2.J || i != format2.L || !Objects.equals(str, format2.p)) {
                Format format3 = this.m;
                if (format3 == null) {
                    a = new Format.Builder();
                } else {
                    a = format3.a();
                }
                a.a = this.f;
                a.n = MimeTypes.l(this.e);
                a.o = MimeTypes.l(str);
                a.I = i2;
                a.K = i;
                a.d = this.c;
                a.f = this.d;
                Format format4 = new Format(a);
                this.m = format4;
                this.g.e(format4);
                this.s = false;
            }
        }
    }
}
