package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AdtsReader implements ElementaryStreamReader {
    public static final byte[] x = {73, 68, 51};
    public final boolean a;
    public final String d;
    public final int e;
    public final String f;
    public String g;
    public TrackOutput h;
    public TrackOutput i;
    public boolean m;
    public boolean n;
    public int q;
    public boolean r;
    public int t;
    public TrackOutput v;
    public long w;
    public final ParsableBitArray b = new ParsableBitArray(7, new byte[7]);
    public final ParsableByteArray c = new ParsableByteArray(Arrays.copyOf(x, 10));
    public int o = -1;
    public int p = -1;
    public long s = -9223372036854775807L;
    public long u = -9223372036854775807L;
    public int j = 0;
    public int k = 0;
    public int l = 256;

    public AdtsReader(int i, String str, String str2, boolean z) {
        this.a = z;
        this.d = str;
        this.e = i;
        this.f = str2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.u = -9223372036854775807L;
        this.n = false;
        this.j = 0;
        this.k = 0;
        this.l = 256;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        int i3;
        byte b;
        char c;
        ?? r4;
        int i4;
        char c2;
        int i5;
        char c3;
        boolean z;
        int i6;
        this.h.getClass();
        String str = Util.a;
        while (parsableByteArray.a() > 0) {
            int i7 = this.j;
            char c4 = 65535;
            ParsableByteArray parsableByteArray2 = this.c;
            int i8 = 3;
            ParsableBitArray parsableBitArray = this.b;
            int i9 = 0;
            int i10 = 4;
            boolean z2 = true;
            int i11 = 1;
            if (i7 != 0) {
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            if (i7 == 4) {
                                int min = Math.min(parsableByteArray.a(), this.t - this.k);
                                this.v.f(min, parsableByteArray);
                                int i12 = this.k + min;
                                this.k = i12;
                                if (i12 == this.t) {
                                    if (this.u == -9223372036854775807L) {
                                        z2 = false;
                                    }
                                    Preconditions.n(z2);
                                    this.v.g(this.u, 1, this.t, 0, null);
                                    this.u += this.w;
                                    this.j = 0;
                                    this.k = 0;
                                    this.l = 256;
                                }
                            } else {
                                d.d();
                                return;
                            }
                        } else {
                            if (this.m) {
                                i = 7;
                            } else {
                                i = 5;
                            }
                            byte[] bArr = parsableBitArray.a;
                            int min2 = Math.min(parsableByteArray.a(), i - this.k);
                            parsableByteArray.k(bArr, this.k, min2);
                            int i13 = this.k + min2;
                            this.k = i13;
                            if (i13 == i) {
                                parsableBitArray.m(0);
                                if (!this.r) {
                                    int g = parsableBitArray.g(2) + 1;
                                    if (g != 2) {
                                        Log.f("AdtsReader", "Detected audio object type: " + g + ", but assuming AAC LC.");
                                        g = 2;
                                    }
                                    parsableBitArray.o(5);
                                    int g2 = parsableBitArray.g(3);
                                    int i14 = this.p;
                                    byte[] bArr2 = {(byte) (((g << 3) & 248) | ((i14 >> 1) & 7)), (byte) (((g2 << 3) & 120) | ((i14 << 7) & 128))};
                                    AacUtil.Config b2 = AacUtil.b(new ParsableBitArray(2, bArr2), false);
                                    Format.Builder builder = new Format.Builder();
                                    builder.a = this.g;
                                    builder.n = MimeTypes.l(this.f);
                                    builder.o = MimeTypes.l("audio/mp4a-latm");
                                    builder.k = b2.c;
                                    builder.I = b2.b;
                                    builder.K = b2.a;
                                    builder.r = Collections.singletonList(bArr2);
                                    builder.d = this.d;
                                    builder.f = this.e;
                                    Format format = new Format(builder);
                                    this.s = 1024000000 / format.L;
                                    this.h.e(format);
                                    this.r = true;
                                } else {
                                    parsableBitArray.o(10);
                                }
                                parsableBitArray.o(4);
                                int g3 = parsableBitArray.g(13);
                                int i15 = g3 - 7;
                                if (this.m) {
                                    i15 = g3 - 9;
                                }
                                TrackOutput trackOutput = this.h;
                                long j = this.s;
                                this.j = 4;
                                this.k = 0;
                                this.v = trackOutput;
                                this.w = j;
                                this.t = i15;
                            }
                        }
                    } else {
                        byte[] bArr3 = parsableByteArray2.a;
                        int min3 = Math.min(parsableByteArray.a(), 10 - this.k);
                        parsableByteArray.k(bArr3, this.k, min3);
                        int i16 = this.k + min3;
                        this.k = i16;
                        if (i16 == 10) {
                            this.i.f(10, parsableByteArray2);
                            parsableByteArray2.M(6);
                            TrackOutput trackOutput2 = this.i;
                            int y = parsableByteArray2.y() + 10;
                            this.j = 4;
                            this.k = 10;
                            this.v = trackOutput2;
                            this.w = 0L;
                            this.t = y;
                        }
                    }
                } else if (parsableByteArray.a() != 0) {
                    parsableBitArray.a[0] = parsableByteArray.a[parsableByteArray.b];
                    parsableBitArray.m(2);
                    int g4 = parsableBitArray.g(4);
                    int i17 = this.p;
                    if (i17 != -1 && g4 != i17) {
                        this.n = false;
                        this.j = 0;
                        this.k = 0;
                        this.l = 256;
                    } else {
                        if (!this.n) {
                            this.n = true;
                            this.o = this.q;
                            this.p = g4;
                        }
                        this.j = 3;
                        this.k = 0;
                    }
                }
            } else {
                byte[] bArr4 = parsableByteArray.a;
                int i18 = parsableByteArray.b;
                int i19 = parsableByteArray.c;
                while (true) {
                    if (i18 < i19) {
                        i2 = i18 + 1;
                        i3 = i8;
                        b = bArr4[i18];
                        int i20 = b & 255;
                        if (this.l == 512 && (((65280 | ((((byte) i20) & 255) == true ? 1 : 0)) == true ? 1 : 0) & 65526) == 65520) {
                            if (this.n) {
                                break;
                            }
                            int i21 = i18 - 1;
                            parsableByteArray.M(i18);
                            byte[] bArr5 = parsableBitArray.a;
                            if (parsableByteArray.a() >= i11) {
                                parsableByteArray.k(bArr5, i9, i11);
                                parsableBitArray.m(i10);
                                int g5 = parsableBitArray.g(i11);
                                int i22 = this.o;
                                if (i22 != -1 && g5 != i22) {
                                    c = 65535;
                                } else {
                                    if (this.p != -1) {
                                        byte[] bArr6 = parsableBitArray.a;
                                        if (parsableByteArray.a() < i11) {
                                            break;
                                        }
                                        parsableByteArray.k(bArr6, i9, i11);
                                        parsableBitArray.m(2);
                                        i6 = 4;
                                        if (parsableBitArray.g(4) == this.p) {
                                            parsableByteArray.M(i2);
                                        }
                                    } else {
                                        i6 = 4;
                                    }
                                    byte[] bArr7 = parsableBitArray.a;
                                    if (parsableByteArray.a() >= i6) {
                                        parsableByteArray.k(bArr7, i9, i6);
                                        parsableBitArray.m(14);
                                        int g6 = parsableBitArray.g(13);
                                        if (g6 >= 7) {
                                            byte[] bArr8 = parsableByteArray.a;
                                            int i23 = parsableByteArray.c;
                                            int i24 = i21 + g6;
                                            if (i24 < i23) {
                                                byte b3 = bArr8[i24];
                                                c = 65535;
                                                if (b3 == -1) {
                                                    int i25 = i24 + 1;
                                                    if (i25 != i23) {
                                                        byte b4 = bArr8[i25];
                                                        if ((((65280 | ((b4 & 255) == true ? 1 : 0)) == true ? 1 : 0) & 65526) == 65520 && ((b4 & 8) >> 3) == g5) {
                                                            break;
                                                        }
                                                    } else {
                                                        break;
                                                    }
                                                } else if (b3 == 73) {
                                                    int i26 = i24 + 1;
                                                    if (i26 != i23) {
                                                        if (bArr8[i26] == 68) {
                                                            int i27 = i24 + 2;
                                                            if (i27 != i23) {
                                                                if (bArr8[i27] == 51) {
                                                                    break;
                                                                }
                                                            } else {
                                                                break;
                                                            }
                                                        }
                                                    } else {
                                                        break;
                                                    }
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                r4 = true;
                            }
                            c = 65535;
                            r4 = true;
                        } else {
                            c = c4;
                            r4 = i11;
                        }
                        int i28 = this.l;
                        int i29 = i20 | i28;
                        if (i29 != 329) {
                            if (i29 != 511) {
                                if (i29 != 836) {
                                    if (i29 != 1075) {
                                        c2 = 256;
                                        if (i28 != 256) {
                                            this.l = 256;
                                            i4 = 3;
                                            i5 = 0;
                                            c3 = 2;
                                            i11 = r4;
                                            c4 = c;
                                            i10 = 4;
                                            i9 = i5;
                                            i8 = i4;
                                        } else {
                                            i4 = 3;
                                            i5 = 0;
                                            c3 = 2;
                                        }
                                    } else {
                                        this.j = 2;
                                        this.k = 3;
                                        this.t = 0;
                                        parsableByteArray2.M(0);
                                        parsableByteArray.M(i2);
                                        break;
                                    }
                                } else {
                                    i4 = 3;
                                    c2 = 256;
                                    i5 = 0;
                                    c3 = 2;
                                    this.l = 1024;
                                }
                            } else {
                                i4 = 3;
                                c2 = 256;
                                i5 = 0;
                                c3 = 2;
                                this.l = 512;
                            }
                        } else {
                            i4 = 3;
                            c2 = 256;
                            i5 = 0;
                            c3 = 2;
                            this.l = 768;
                        }
                        i18 = i2;
                        i11 = r4;
                        c4 = c;
                        i10 = 4;
                        i9 = i5;
                        i8 = i4;
                    } else {
                        parsableByteArray.M(i18);
                        break;
                    }
                }
                this.q = (b & 8) >> 3;
                if ((b & 1) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.m = z;
                if (!this.n) {
                    this.j = 1;
                    this.k = 0;
                } else {
                    this.j = i3;
                    this.k = 0;
                }
                parsableByteArray.M(i2);
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.u = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.g = trackIdGenerator.e;
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 1);
        this.h = s;
        this.v = s;
        if (this.a) {
            trackIdGenerator.a();
            trackIdGenerator.b();
            TrackOutput s2 = extractorOutput.s(trackIdGenerator.d, 5);
            this.i = s2;
            Format.Builder builder = new Format.Builder();
            trackIdGenerator.b();
            builder.a = trackIdGenerator.e;
            builder.n = MimeTypes.l(this.f);
            builder.o = MimeTypes.l("application/id3");
            s2.e(new Format(builder));
            return;
        }
        this.i = new DiscardingTrackOutput();
    }
}
