package androidx.media3.extractor.ts;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.MpeghUtil;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.LongMath;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MpeghReader implements ElementaryStreamReader {
    public String e;
    public TrackOutput f;
    public boolean i;
    public int k;
    public int l;
    public int n;
    public int o;
    public int s;
    public boolean u;
    public int d = 0;
    public final ParsableByteArray a = new ParsableByteArray(2, new byte[15]);
    public final ParsableBitArray b = new ParsableBitArray();
    public final ParsableByteArray c = new ParsableByteArray();
    public final MpeghUtil.MhasPacketHeader p = new Object();
    public int q = -2147483647;
    public int r = -1;
    public long t = -1;
    public boolean j = true;
    public boolean m = true;
    public double g = -9.223372036854776E18d;
    public double h = -9.223372036854776E18d;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.d = 0;
        this.l = 0;
        this.a.J(2);
        this.n = 0;
        this.o = 0;
        this.q = -2147483647;
        this.r = -1;
        this.s = 0;
        this.t = -1L;
        this.u = false;
        this.i = false;
        this.m = true;
        this.j = true;
        this.g = -9.223372036854776E18d;
        this.h = -9.223372036854776E18d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:213:0x028c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0481 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0468 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x041b  */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char c;
        byte[] bArr;
        long j;
        long j2;
        ImmutableList immutableList;
        int i6;
        boolean z;
        long j3;
        boolean z2;
        int i7;
        this.f.getClass();
        while (parsableByteArray.a() > 0) {
            int i8 = this.d;
            int i9 = 8;
            int i10 = 3;
            int i11 = 1;
            if (i8 != 0) {
                ParsableByteArray parsableByteArray2 = this.c;
                MpeghUtil.MhasPacketHeader mhasPacketHeader = this.p;
                if (i8 != 1) {
                    if (i8 == 2) {
                        int i12 = mhasPacketHeader.a;
                        if (i12 == 1 || i12 == 17) {
                            int i13 = parsableByteArray.b;
                            int min = Math.min(parsableByteArray.a(), parsableByteArray2.a());
                            parsableByteArray.k(parsableByteArray2.a, parsableByteArray2.b, min);
                            parsableByteArray2.N(min);
                            parsableByteArray.M(i13);
                        }
                        int min2 = Math.min(parsableByteArray.a(), mhasPacketHeader.c - this.n);
                        this.f.f(min2, parsableByteArray);
                        int i14 = this.n + min2;
                        this.n = i14;
                        if (i14 != mhasPacketHeader.c) {
                            continue;
                        } else {
                            int i15 = mhasPacketHeader.a;
                            if (i15 == 1) {
                                byte[] bArr2 = parsableByteArray2.a;
                                ParsableBitArray parsableBitArray = new ParsableBitArray(bArr2.length, bArr2);
                                int g = parsableBitArray.g(8);
                                int g2 = parsableBitArray.g(5);
                                if (g2 == 31) {
                                    i4 = parsableBitArray.g(24);
                                } else {
                                    switch (g2) {
                                        case 0:
                                            i4 = 96000;
                                            break;
                                        case 1:
                                            i4 = 88200;
                                            break;
                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                            i4 = 64000;
                                            break;
                                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                            i4 = 48000;
                                            break;
                                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                            i4 = 44100;
                                            break;
                                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                            i4 = 32000;
                                            break;
                                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                            i4 = 24000;
                                            break;
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            i4 = 22050;
                                            break;
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            i4 = 16000;
                                            break;
                                        case KeyModifiers.a /* 9 */:
                                            i4 = 12000;
                                            break;
                                        case KeyModifiers.b /* 10 */:
                                            i4 = 11025;
                                            break;
                                        case 11:
                                            i4 = 8000;
                                            break;
                                        case KeyModifiers.c /* 12 */:
                                            i4 = 7350;
                                            break;
                                        case 13:
                                        case 14:
                                        default:
                                            throw ParserException.b("Unsupported sampling rate index " + g2);
                                        case 15:
                                            i4 = 57600;
                                            break;
                                        case 16:
                                            i4 = 51200;
                                            break;
                                        case 17:
                                            i4 = 40000;
                                            break;
                                        case 18:
                                            i4 = 38400;
                                            break;
                                        case 19:
                                            i4 = 34150;
                                            break;
                                        case 20:
                                            i4 = 28800;
                                            break;
                                        case 21:
                                            i4 = 25600;
                                            break;
                                        case 22:
                                            i4 = 20000;
                                            break;
                                        case 23:
                                            i4 = 19200;
                                            break;
                                        case 24:
                                            i4 = 17075;
                                            break;
                                        case 25:
                                            i4 = 14400;
                                            break;
                                        case 26:
                                            i4 = 12800;
                                            break;
                                        case 27:
                                            i4 = 9600;
                                            break;
                                    }
                                }
                                int g3 = parsableBitArray.g(3);
                                if (g3 != 0) {
                                    if (g3 != 1) {
                                        if (g3 != 2 && g3 != 3) {
                                            if (g3 == 4) {
                                                i5 = 4096;
                                            } else {
                                                throw ParserException.b("Unsupported coreSbrFrameLengthIndex " + g3);
                                            }
                                        } else {
                                            i5 = 2048;
                                        }
                                    } else {
                                        i5 = 1024;
                                    }
                                } else {
                                    i5 = 768;
                                }
                                int i16 = i5;
                                if (g3 != 0 && g3 != 1) {
                                    if (g3 != 2) {
                                        if (g3 != 3) {
                                            if (g3 == 4) {
                                                c = 1;
                                            } else {
                                                throw ParserException.b("Unsupported coreSbrFrameLengthIndex " + g3);
                                            }
                                        } else {
                                            c = 3;
                                        }
                                    } else {
                                        c = 2;
                                    }
                                } else {
                                    c = 0;
                                }
                                parsableBitArray.o(2);
                                MpeghUtil.c(parsableBitArray);
                                int g4 = parsableBitArray.g(5);
                                int i17 = 0;
                                int i18 = 0;
                                while (true) {
                                    int i19 = i11;
                                    int i20 = 16;
                                    if (i17 < g4 + 1) {
                                        int g5 = parsableBitArray.g(3);
                                        i18 = MpeghUtil.a(parsableBitArray, 5, 8, 16) + 1 + i18;
                                        if ((g5 == 0 || g5 == 2) && parsableBitArray.f()) {
                                            MpeghUtil.c(parsableBitArray);
                                        }
                                        i17++;
                                        i11 = i19;
                                    } else {
                                        int a = MpeghUtil.a(parsableBitArray, 4, 8, 16) + 1;
                                        parsableBitArray.n();
                                        int i21 = 0;
                                        while (true) {
                                            double d = 2.0d;
                                            if (i21 < a) {
                                                int g6 = parsableBitArray.g(2);
                                                if (g6 != 0) {
                                                    if (g6 != i19) {
                                                        if (g6 == i10) {
                                                            MpeghUtil.a(parsableBitArray, 4, i9, i20);
                                                            int a2 = MpeghUtil.a(parsableBitArray, 4, i9, i20);
                                                            if (parsableBitArray.f()) {
                                                                MpeghUtil.a(parsableBitArray, i9, i20, 0);
                                                            }
                                                            parsableBitArray.n();
                                                            if (a2 > 0) {
                                                                parsableBitArray.o(a2 * 8);
                                                            }
                                                        }
                                                    } else {
                                                        parsableBitArray.o(i10);
                                                        boolean f = parsableBitArray.f();
                                                        if (f) {
                                                            parsableBitArray.o(13);
                                                        }
                                                        if (f) {
                                                            parsableBitArray.n();
                                                        }
                                                        if (c > 0) {
                                                            MpeghUtil.b(parsableBitArray);
                                                            i6 = parsableBitArray.g(2);
                                                        } else {
                                                            i6 = 0;
                                                        }
                                                        if (i6 > 0) {
                                                            parsableBitArray.o(6);
                                                            int g7 = parsableBitArray.g(2);
                                                            parsableBitArray.o(4);
                                                            if (parsableBitArray.f()) {
                                                                parsableBitArray.o(5);
                                                            }
                                                            if (i6 == 2 || i6 == i10) {
                                                                parsableBitArray.o(6);
                                                            }
                                                            if (g7 == 2) {
                                                                parsableBitArray.n();
                                                            }
                                                        }
                                                        int floor = ((int) Math.floor(Math.log(i18 - 1) / Math.log(2.0d))) + 1;
                                                        int g8 = parsableBitArray.g(2);
                                                        if (g8 > 0 && parsableBitArray.f()) {
                                                            parsableBitArray.o(floor);
                                                        }
                                                        if (parsableBitArray.f()) {
                                                            parsableBitArray.o(floor);
                                                        }
                                                        if (c == 0 && g8 == 0) {
                                                            parsableBitArray.n();
                                                        }
                                                    }
                                                } else {
                                                    parsableBitArray.o(i10);
                                                    if (parsableBitArray.f()) {
                                                        parsableBitArray.o(13);
                                                    }
                                                    if (c > 0) {
                                                        MpeghUtil.b(parsableBitArray);
                                                    }
                                                }
                                                i21++;
                                                i9 = 8;
                                                i10 = 3;
                                                i20 = 16;
                                                i19 = 1;
                                            } else {
                                                if (parsableBitArray.f()) {
                                                    int i22 = 8;
                                                    int a3 = MpeghUtil.a(parsableBitArray, 2, 4, 8) + 1;
                                                    int i23 = 0;
                                                    bArr = null;
                                                    while (i23 < a3) {
                                                        int a4 = MpeghUtil.a(parsableBitArray, 4, i22, 16);
                                                        int a5 = MpeghUtil.a(parsableBitArray, 4, i22, 16);
                                                        if (a4 == 7) {
                                                            int g9 = parsableBitArray.g(4) + 1;
                                                            parsableBitArray.o(4);
                                                            byte[] bArr3 = new byte[g9];
                                                            for (int i24 = 0; i24 < g9; i24++) {
                                                                bArr3[i24] = (byte) parsableBitArray.g(i22);
                                                            }
                                                            bArr = bArr3;
                                                        } else {
                                                            parsableBitArray.o(a5 * i22);
                                                        }
                                                        i23++;
                                                        i22 = 8;
                                                    }
                                                } else {
                                                    bArr = null;
                                                }
                                                switch (i4) {
                                                    case 14700:
                                                    case 16000:
                                                        d = 3.0d;
                                                        this.q = (int) (i4 * d);
                                                        this.r = (int) (i16 * d);
                                                        j = this.t;
                                                        j2 = mhasPacketHeader.b;
                                                        if (j != j2) {
                                                            this.t = j2;
                                                            String str = "mhm1";
                                                            if (g != -1) {
                                                                str = "mhm1".concat(String.format(".%02X", Integer.valueOf(g)));
                                                            }
                                                            if (bArr != null && bArr.length > 0) {
                                                                immutableList = ImmutableList.u(Util.b, bArr);
                                                            } else {
                                                                immutableList = null;
                                                            }
                                                            Format.Builder builder = new Format.Builder();
                                                            builder.a = this.e;
                                                            builder.n = MimeTypes.l("video/mp2t");
                                                            builder.o = MimeTypes.l("audio/mhm1");
                                                            builder.K = this.q;
                                                            builder.k = str;
                                                            builder.r = immutableList;
                                                            this.f.e(new Format(builder));
                                                        }
                                                        i2 = 1;
                                                        this.u = true;
                                                        break;
                                                    case 22050:
                                                    case 24000:
                                                        this.q = (int) (i4 * d);
                                                        this.r = (int) (i16 * d);
                                                        j = this.t;
                                                        j2 = mhasPacketHeader.b;
                                                        if (j != j2) {
                                                        }
                                                        i2 = 1;
                                                        this.u = true;
                                                        break;
                                                    case 29400:
                                                    case 32000:
                                                    case 58800:
                                                    case 64000:
                                                        d = 1.5d;
                                                        this.q = (int) (i4 * d);
                                                        this.r = (int) (i16 * d);
                                                        j = this.t;
                                                        j2 = mhasPacketHeader.b;
                                                        if (j != j2) {
                                                        }
                                                        i2 = 1;
                                                        this.u = true;
                                                        break;
                                                    case 44100:
                                                    case 48000:
                                                    case 88200:
                                                    case 96000:
                                                        d = 1.0d;
                                                        this.q = (int) (i4 * d);
                                                        this.r = (int) (i16 * d);
                                                        j = this.t;
                                                        j2 = mhasPacketHeader.b;
                                                        if (j != j2) {
                                                        }
                                                        i2 = 1;
                                                        this.u = true;
                                                        break;
                                                    default:
                                                        throw ParserException.b("Unsupported sampling rate " + i4);
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                if (i15 == 17) {
                                    byte[] bArr4 = parsableByteArray2.a;
                                    ParsableBitArray parsableBitArray2 = new ParsableBitArray(bArr4.length, bArr4);
                                    if (parsableBitArray2.f()) {
                                        parsableBitArray2.o(2);
                                        i3 = parsableBitArray2.g(13);
                                    } else {
                                        i3 = 0;
                                    }
                                    this.s = i3;
                                } else if (i15 == 2) {
                                    if (this.u) {
                                        this.j = false;
                                        i = 1;
                                    } else {
                                        i = 0;
                                    }
                                    double d2 = ((this.r - this.s) * 1000000.0d) / this.q;
                                    long round = Math.round(this.g);
                                    if (this.i) {
                                        this.i = false;
                                        this.g = this.h;
                                    } else {
                                        this.g += d2;
                                    }
                                    this.f.g(round, i, this.o, 0, null);
                                    this.u = false;
                                    this.s = 0;
                                    this.o = 0;
                                }
                                i2 = 1;
                            }
                            this.d = i2;
                        }
                    } else {
                        d.d();
                        return;
                    }
                } else {
                    int a6 = parsableByteArray.a();
                    ParsableByteArray parsableByteArray3 = this.a;
                    int min3 = Math.min(a6, parsableByteArray3.a());
                    parsableByteArray.k(parsableByteArray3.a, parsableByteArray3.b, min3);
                    parsableByteArray3.N(min3);
                    if (parsableByteArray3.a() == 0) {
                        int i25 = parsableByteArray3.c;
                        byte[] bArr5 = parsableByteArray3.a;
                        ParsableBitArray parsableBitArray3 = this.b;
                        parsableBitArray3.k(i25, bArr5);
                        parsableBitArray3.d();
                        int a7 = MpeghUtil.a(parsableBitArray3, 3, 8, 8);
                        mhasPacketHeader.a = a7;
                        if (a7 != -1) {
                            if (Math.max(Math.max(2, 8), 32) <= 63) {
                                z = true;
                            } else {
                                z = false;
                            }
                            Preconditions.e(z);
                            LongMath.a(LongMath.a(3L, 255L), 4294967296L);
                            if (parsableBitArray3.b() >= 2) {
                                long i26 = parsableBitArray3.i(2);
                                if (i26 == 3) {
                                    if (parsableBitArray3.b() >= 8) {
                                        long i27 = parsableBitArray3.i(8);
                                        i26 += i27;
                                        if (i27 == 255) {
                                            if (parsableBitArray3.b() >= 32) {
                                                i26 = parsableBitArray3.i(32) + i26;
                                            }
                                        }
                                    }
                                }
                                j3 = i26;
                                mhasPacketHeader.b = j3;
                                if (j3 != -1) {
                                    if (j3 <= 16) {
                                        if (j3 == 0) {
                                            int i28 = mhasPacketHeader.a;
                                            if (i28 != 1) {
                                                if (i28 != 2) {
                                                    if (i28 == 17) {
                                                        throw ParserException.a(null, "AudioTruncation packet with invalid packet label 0");
                                                    }
                                                } else {
                                                    throw ParserException.a(null, "Mpegh3daFrame packet with invalid packet label 0");
                                                }
                                            } else {
                                                throw ParserException.a(null, "Mpegh3daConfig packet with invalid packet label 0");
                                            }
                                        }
                                        int a8 = MpeghUtil.a(parsableBitArray3, 11, 24, 24);
                                        mhasPacketHeader.c = a8;
                                        if (a8 != -1) {
                                            z2 = true;
                                            if (!z2) {
                                                i7 = 0;
                                                this.n = 0;
                                                this.o = mhasPacketHeader.c + i25 + this.o;
                                            } else {
                                                i7 = 0;
                                            }
                                            if (!z2) {
                                                parsableByteArray3.M(i7);
                                                this.f.f(parsableByteArray3.c, parsableByteArray3);
                                                parsableByteArray3.J(2);
                                                parsableByteArray2.J(mhasPacketHeader.c);
                                                this.m = true;
                                                this.d = 2;
                                            } else {
                                                int i29 = parsableByteArray3.c;
                                                if (i29 < 15) {
                                                    parsableByteArray3.L(i29 + 1);
                                                    this.m = false;
                                                }
                                            }
                                        }
                                    } else {
                                        throw ParserException.b("Contains sub-stream with an invalid packet label " + mhasPacketHeader.b);
                                    }
                                }
                            }
                            j3 = -1;
                            mhasPacketHeader.b = j3;
                            if (j3 != -1) {
                            }
                        }
                        z2 = false;
                        if (!z2) {
                        }
                        if (!z2) {
                        }
                    } else {
                        this.m = false;
                    }
                }
            } else {
                int i30 = this.k;
                if ((i30 & 2) == 0) {
                    parsableByteArray.M(parsableByteArray.c);
                } else {
                    if ((i30 & 4) == 0) {
                        while (parsableByteArray.a() > 0) {
                            int i31 = this.l << 8;
                            this.l = i31;
                            int z3 = i31 | parsableByteArray.z();
                            this.l = z3;
                            if ((z3 & 16777215) == 12583333) {
                                parsableByteArray.M(parsableByteArray.b - 3);
                                this.l = 0;
                            }
                        }
                    }
                    this.d = 1;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.k = i;
        if (!this.j && (this.o != 0 || !this.m)) {
            this.i = true;
        }
        if (j != -9223372036854775807L) {
            if (this.i) {
                this.h = j;
            } else {
                this.g = j;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.e = trackIdGenerator.e;
        trackIdGenerator.b();
        this.f = extractorOutput.s(trackIdGenerator.d, 1);
    }
}
