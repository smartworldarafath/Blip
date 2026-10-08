package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Ac3Reader implements ElementaryStreamReader {
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

    public Ac3Reader(String str, int i, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(128, new byte[128]);
        this.a = parsableBitArray;
        this.b = new ParsableByteArray(parsableBitArray.a);
        this.h = 0;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x028d  */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ParsableByteArray parsableByteArray) {
        Object[] objArr;
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        String str2;
        int i5;
        int i6;
        int i7;
        char c;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z;
        boolean z2;
        this.g.getClass();
        while (parsableByteArray.a() > 0) {
            int i19 = this.h;
            ParsableByteArray parsableByteArray2 = this.b;
            boolean z3 = true;
            if (i19 == 0) {
                while (true) {
                    if (parsableByteArray.a() <= 0) {
                        break;
                    }
                    if (!this.j) {
                        if (parsableByteArray.z() == 11) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.j = z;
                    } else {
                        int z4 = parsableByteArray.z();
                        if (z4 == 119) {
                            this.j = false;
                            this.h = 1;
                            byte[] bArr = parsableByteArray2.a;
                            bArr[0] = 11;
                            bArr[1] = 119;
                            this.i = 2;
                            break;
                        }
                        if (z4 == 11) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.j = z2;
                    }
                }
            } else if (i19 != 1) {
                if (i19 == 2) {
                    int min = Math.min(parsableByteArray.a(), this.m - this.i);
                    this.g.f(min, parsableByteArray);
                    int i20 = this.i + min;
                    this.i = i20;
                    if (i20 == this.m) {
                        if (this.n == -9223372036854775807L) {
                            z3 = false;
                        }
                        Preconditions.n(z3);
                        this.g.g(this.n, 1, this.m, 0, null);
                        this.n += this.k;
                        this.h = 0;
                    }
                }
            } else {
                byte[] bArr2 = parsableByteArray2.a;
                int min2 = Math.min(parsableByteArray.a(), 128 - this.i);
                parsableByteArray.k(bArr2, this.i, min2);
                int i21 = this.i + min2;
                this.i = i21;
                if (i21 == 128) {
                    ParsableBitArray parsableBitArray = this.a;
                    parsableBitArray.m(0);
                    int e = parsableBitArray.e();
                    parsableBitArray.o(40);
                    if (parsableBitArray.g(5) > 10) {
                        objArr = true;
                    } else {
                        objArr = false;
                    }
                    parsableBitArray.m(e);
                    int[] iArr = Ac3Util.d;
                    int[] iArr2 = Ac3Util.b;
                    if (objArr != false) {
                        parsableBitArray.o(16);
                        int g = parsableBitArray.g(2);
                        if (g != 0) {
                            if (g != 1) {
                                if (g != 2) {
                                    c = 65535;
                                } else {
                                    c = 2;
                                }
                            } else {
                                c = 1;
                            }
                        } else {
                            c = 0;
                        }
                        parsableBitArray.o(3);
                        i6 = (parsableBitArray.g(11) + 1) * 2;
                        int g2 = parsableBitArray.g(2);
                        if (g2 == 3) {
                            i7 = Ac3Util.c[parsableBitArray.g(2)];
                            i8 = 3;
                            i9 = 6;
                        } else {
                            int g3 = parsableBitArray.g(2);
                            int i22 = Ac3Util.a[g3];
                            i7 = iArr2[g2];
                            i8 = g3;
                            i9 = i22;
                        }
                        i4 = i9 * 256;
                        int i23 = (i6 * i7) / (i9 * 32);
                        int g4 = parsableBitArray.g(3);
                        boolean f = parsableBitArray.f();
                        i3 = iArr[g4] + (f ? 1 : 0);
                        parsableBitArray.o(10);
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(8);
                        }
                        if (g4 == 0) {
                            parsableBitArray.o(5);
                            if (parsableBitArray.f()) {
                                parsableBitArray.o(8);
                            }
                        }
                        if (c == 1 && parsableBitArray.f()) {
                            parsableBitArray.o(16);
                        }
                        if (parsableBitArray.f()) {
                            if (g4 > 2) {
                                parsableBitArray.o(2);
                            }
                            if ((g4 & 1) != 0 && g4 > 2) {
                                i14 = 6;
                                parsableBitArray.o(6);
                            } else {
                                i14 = 6;
                            }
                            if ((g4 & 4) != 0) {
                                parsableBitArray.o(i14);
                            }
                            if (f && parsableBitArray.f()) {
                                parsableBitArray.o(5);
                            }
                            if (c == 0) {
                                if (parsableBitArray.f()) {
                                    i15 = 6;
                                    parsableBitArray.o(6);
                                } else {
                                    i15 = 6;
                                }
                                if (g4 == 0 && parsableBitArray.f()) {
                                    parsableBitArray.o(i15);
                                }
                                if (parsableBitArray.f()) {
                                    parsableBitArray.o(i15);
                                }
                                int g5 = parsableBitArray.g(2);
                                if (g5 == 1) {
                                    parsableBitArray.o(5);
                                    i17 = 2;
                                } else {
                                    if (g5 == 2) {
                                        parsableBitArray.o(12);
                                    } else if (g5 == 3) {
                                        int g6 = parsableBitArray.g(5);
                                        if (parsableBitArray.f()) {
                                            parsableBitArray.o(5);
                                            if (parsableBitArray.f()) {
                                                i18 = 4;
                                                parsableBitArray.o(4);
                                            } else {
                                                i18 = 4;
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(i18);
                                            }
                                            if (parsableBitArray.f()) {
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(i18);
                                                }
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(i18);
                                                }
                                            }
                                        }
                                        if (parsableBitArray.f()) {
                                            parsableBitArray.o(5);
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(7);
                                                if (parsableBitArray.f()) {
                                                    i16 = 8;
                                                    parsableBitArray.o(8);
                                                    i17 = 2;
                                                    parsableBitArray.o((g6 + 2) * i16);
                                                    parsableBitArray.c();
                                                }
                                            }
                                        }
                                        i16 = 8;
                                        i17 = 2;
                                        parsableBitArray.o((g6 + 2) * i16);
                                        parsableBitArray.c();
                                    }
                                    i17 = 2;
                                }
                                if (g4 < i17) {
                                    if (parsableBitArray.f()) {
                                        parsableBitArray.o(14);
                                    }
                                    if (g4 == 0 && parsableBitArray.f()) {
                                        parsableBitArray.o(14);
                                    }
                                }
                                if (parsableBitArray.f()) {
                                    i10 = i8;
                                    if (i10 == 0) {
                                        parsableBitArray.o(5);
                                    } else {
                                        for (int i24 = 0; i24 < i9; i24++) {
                                            if (parsableBitArray.f()) {
                                                parsableBitArray.o(5);
                                            }
                                        }
                                    }
                                    if (!parsableBitArray.f()) {
                                        parsableBitArray.o(5);
                                        if (g4 == 2) {
                                            parsableBitArray.o(4);
                                        }
                                        if (g4 >= 6) {
                                            parsableBitArray.o(2);
                                        }
                                        if (parsableBitArray.f()) {
                                            i13 = 8;
                                            parsableBitArray.o(8);
                                        } else {
                                            i13 = 8;
                                        }
                                        if (g4 == 0 && parsableBitArray.f()) {
                                            parsableBitArray.o(i13);
                                        }
                                        i11 = 3;
                                        if (g2 < 3) {
                                            parsableBitArray.n();
                                        }
                                    } else {
                                        i11 = 3;
                                    }
                                    if (c == 0 && i10 != i11) {
                                        parsableBitArray.n();
                                    }
                                    if (c != 2 && (i10 == i11 || parsableBitArray.f())) {
                                        i12 = 6;
                                        parsableBitArray.o(6);
                                    } else {
                                        i12 = 6;
                                    }
                                    if (!parsableBitArray.f() && parsableBitArray.g(i12) == 1 && parsableBitArray.g(8) == 1) {
                                        str2 = "audio/eac3-joc";
                                    } else {
                                        str2 = "audio/eac3";
                                    }
                                    i5 = i23;
                                }
                            }
                        }
                        i10 = i8;
                        if (!parsableBitArray.f()) {
                        }
                        if (c == 0) {
                            parsableBitArray.n();
                        }
                        if (c != 2) {
                        }
                        i12 = 6;
                        if (!parsableBitArray.f()) {
                        }
                        str2 = "audio/eac3";
                        i5 = i23;
                    } else {
                        parsableBitArray.o(32);
                        int g7 = parsableBitArray.g(2);
                        if (g7 != 3) {
                            str = "audio/ac3";
                        } else {
                            str = null;
                        }
                        int g8 = parsableBitArray.g(6);
                        int i25 = Ac3Util.e[g8 / 2] * 1000;
                        int a = Ac3Util.a(g7, g8);
                        parsableBitArray.o(8);
                        int g9 = parsableBitArray.g(3);
                        if ((g9 & 1) != 0 && g9 != 1) {
                            i = 2;
                            parsableBitArray.o(2);
                        } else {
                            i = 2;
                        }
                        if ((g9 & 4) != 0) {
                            parsableBitArray.o(i);
                        }
                        if (g9 == i) {
                            parsableBitArray.o(i);
                        }
                        if (g7 < 3) {
                            i2 = iArr2[g7];
                        } else {
                            i2 = -1;
                        }
                        i3 = iArr[g9] + (parsableBitArray.f() ? 1 : 0);
                        i4 = 1536;
                        str2 = str;
                        i5 = i25;
                        i6 = a;
                        i7 = i2;
                    }
                    Format format = this.l;
                    if (format == null || i3 != format.J || i7 != format.L || !Objects.equals(str2, format.p)) {
                        Format.Builder builder = new Format.Builder();
                        builder.a = this.f;
                        builder.n = MimeTypes.l(this.e);
                        builder.o = MimeTypes.l(str2);
                        builder.I = i3;
                        builder.K = i7;
                        builder.d = this.c;
                        builder.f = this.d;
                        builder.j = i5;
                        if ("audio/ac3".equals(str2)) {
                            builder.i = i5;
                        }
                        Format format2 = new Format(builder);
                        this.l = format2;
                        this.g.e(format2);
                    }
                    this.m = i6;
                    this.k = (i4 * 1000000) / this.l.L;
                    parsableByteArray2.M(0);
                    this.g.f(128, parsableByteArray2);
                    this.h = 2;
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

    public Ac3Reader(String str) {
        this(null, 0, str);
    }
}
