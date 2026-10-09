package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DtsUtil {
    public static final int[] a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    public static final int[] b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    public static final int[] c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    public static final int[] d = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};
    public static final int[] e = {5, 8, 10, 12};
    public static final int[] f = {6, 9, 12, 15};
    public static final int[] g = {2, 4, 6, 8};
    public static final int[] h = {9, 11, 13, 16};
    public static final int[] i = {5, 8, 10, 12};

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DtsHeader {
        public final String a;
        public final int b;
        public final int c;
        public final int d;
        public final long e;

        public DtsHeader(String str, int i, int i2, int i3, long j) {
            this.a = str;
            this.c = i;
            this.b = i2;
            this.d = i3;
            this.e = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(byte[] bArr) {
        int i2;
        byte b2;
        int i3;
        int i4;
        byte b3;
        boolean z = false;
        byte b4 = bArr[0];
        if (b4 != -2) {
            if (b4 != -1) {
                if (b4 != 31) {
                    i2 = ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4);
                    b2 = bArr[7];
                } else {
                    i4 = ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4);
                    b3 = bArr[8];
                }
            } else {
                i4 = ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4);
                b3 = bArr[9];
            }
            i3 = (((b3 & 60) >> 2) | i4) + 1;
            z = true;
            if (!z) {
                return (i3 * 16) / 14;
            }
            return i3;
        }
        i2 = ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4);
        b2 = bArr[6];
        i3 = (((b2 & 240) >> 4) | i2) + 1;
        if (!z) {
        }
    }

    public static int b(int i2) {
        if (i2 != 2147385345 && i2 != -25230976 && i2 != 536864768 && i2 != -14745368) {
            if (i2 != 1683496997 && i2 != 622876772) {
                if (i2 != 1078008818 && i2 != -233094848) {
                    if (i2 != 1908687592 && i2 != -398277519) {
                        return 0;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    public static ParsableBitArray c(byte[] bArr) {
        byte[] bArr2;
        byte b2 = bArr[0];
        if (b2 != Byte.MAX_VALUE && b2 != 100 && b2 != 64 && b2 != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b3 = copyOf[0];
            if (b3 == -2 || b3 == -1 || b3 == 37 || b3 == -14 || b3 == -24) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b4 = copyOf[i2];
                    int i3 = i2 + 1;
                    copyOf[i2] = copyOf[i3];
                    copyOf[i3] = b4;
                }
            }
            ParsableBitArray parsableBitArray = new ParsableBitArray(copyOf.length, copyOf);
            if (copyOf[0] == 31) {
                ParsableBitArray parsableBitArray2 = new ParsableBitArray(copyOf.length, copyOf);
                while (parsableBitArray2.b() >= 16) {
                    parsableBitArray2.o(2);
                    int g2 = parsableBitArray2.g(14) & 16383;
                    int min = Math.min(8 - parsableBitArray.c, 14);
                    int i4 = parsableBitArray.c;
                    int i5 = (8 - i4) - min;
                    byte[] bArr3 = parsableBitArray.a;
                    int i6 = parsableBitArray.b;
                    byte b5 = (byte) (((65280 >> i4) | ((1 << i5) - 1)) & bArr3[i6]);
                    bArr3[i6] = b5;
                    int i7 = 14 - min;
                    bArr3[i6] = (byte) (b5 | ((g2 >>> i7) << i5));
                    int i8 = i6 + 1;
                    while (true) {
                        bArr2 = parsableBitArray.a;
                        if (i7 > 8) {
                            bArr2[i8] = (byte) (g2 >>> (i7 - 8));
                            i7 -= 8;
                            i8++;
                        }
                    }
                    int i9 = 8 - i7;
                    byte b6 = (byte) (bArr2[i8] & ((1 << i9) - 1));
                    bArr2[i8] = b6;
                    bArr2[i8] = (byte) (((g2 & ((1 << i7) - 1)) << i9) | b6);
                    parsableBitArray.o(14);
                    parsableBitArray.a();
                }
            }
            parsableBitArray.k(copyOf.length, copyOf);
            return parsableBitArray;
        }
        return new ParsableBitArray(bArr.length, bArr);
    }

    public static int d(int i2) {
        int i3;
        if ((i2 & 1) != 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        if ((i2 & 2) != 0) {
            i3 += 2;
        }
        if ((i2 & 4) != 0) {
            i3 += 2;
        }
        if ((i2 & 8) != 0) {
            i3++;
        }
        if ((i2 & 16) != 0) {
            i3++;
        }
        if ((i2 & 32) != 0) {
            i3 += 2;
        }
        if ((i2 & 64) != 0) {
            i3 += 2;
        }
        if ((i2 & 128) != 0) {
            i3++;
        }
        if ((i2 & 256) != 0) {
            i3++;
        }
        if ((i2 & 512) != 0) {
            i3 += 2;
        }
        if ((i2 & 1024) != 0) {
            i3 += 2;
        }
        if ((i2 & 2048) != 0) {
            i3 += 2;
        }
        if ((i2 & 4096) != 0) {
            i3++;
        }
        if ((i2 & 8192) != 0) {
            i3 += 2;
        }
        if ((i2 & 16384) != 0) {
            i3++;
        }
        if ((i2 & 32768) != 0) {
            return i3 + 2;
        }
        return i3;
    }

    public static boolean e(String str) {
        if (!Objects.equals(str, "audio/vnd.dts") && !Objects.equals(str, "audio/vnd.dts.hd")) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x0241, code lost:
    
        if ((r0.g(12) & 256) != 0) goto L107;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DtsHeader f(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        String str;
        int i8;
        long j;
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
        int i19;
        ParsableBitArray c2 = c(bArr);
        c2.o(40);
        int g2 = c2.g(2);
        if (!c2.f()) {
            i2 = 16;
            i3 = 8;
        } else {
            i2 = 20;
            i3 = 12;
        }
        c2.o(i3);
        int g3 = c2.g(i2) + 1;
        boolean f2 = c2.f();
        if (f2) {
            i6 = c2.g(2);
            i5 = (c2.g(3) + 1) * 512;
            if (c2.f()) {
                c2.o(36);
            }
            int g4 = c2.g(3) + 1;
            int g5 = c2.g(3) + 1;
            if (g4 == 1 && g5 == 1) {
                int i20 = g2 + 1;
                int g6 = c2.g(i20);
                for (int i21 = 0; i21 < i20; i21++) {
                    if (((g6 >> i21) & 1) == 1) {
                        c2.o(8);
                    }
                }
                i4 = 0;
                z = c2.f();
                if (z) {
                    c2.o(2);
                    int g7 = (c2.g(2) + 1) << 2;
                    int g8 = c2.g(2) + 1;
                    iArr = new int[g8];
                    for (int i22 = 0; i22 < g8; i22++) {
                        iArr[i22] = d(c2.g(g7));
                    }
                    c2.o(i2);
                    c2.o(12);
                    if (!f2) {
                        if (c2.f()) {
                            c2.o(4);
                        }
                        if (c2.f()) {
                            c2.o(24);
                        }
                        if (c2.f()) {
                            c2.p(c2.g(10) + 1);
                        }
                        int i23 = 5;
                        c2.o(5);
                        i7 = d[c2.g(4)];
                        int g9 = c2.g(8) + 1;
                        if (c2.f()) {
                            if (g9 > 2) {
                                i17 = c2.f();
                            } else {
                                i17 = i4;
                            }
                            if (g9 > 6) {
                                i18 = c2.f();
                            } else {
                                i18 = i4;
                            }
                            if (c2.f()) {
                                i12 = 1;
                                i19 = (c2.g(2) + 1) << 2;
                                c2.o(i19);
                            } else {
                                i12 = 1;
                                i19 = i4;
                            }
                            i11 = 6;
                            int g10 = c2.g(3);
                            int[] iArr2 = new int[g10];
                            for (int i24 = i4; i24 < g10; i24++) {
                                iArr2[i24] = c2.g(i19);
                            }
                            int i25 = i4;
                            while (i25 < g10) {
                                int d2 = d(iArr2[i25]);
                                int i26 = i23;
                                int g11 = c2.g(i23) + 1;
                                int i27 = i4;
                                while (i27 < d2) {
                                    c2.o(Integer.bitCount(c2.g(g11)) * 5);
                                    i27++;
                                    iArr2 = iArr2;
                                }
                                i25++;
                                i23 = i26;
                            }
                            i10 = i23;
                            i14 = i17;
                            i13 = i18;
                        } else {
                            i10 = 5;
                            i11 = 6;
                            i12 = 1;
                            c2.o(3);
                            int i28 = i4;
                            i13 = i28 == true ? 1 : 0;
                            i14 = i28;
                        }
                        boolean f3 = c2.f();
                        if (f3) {
                            c2.o(8);
                        }
                        if (c2.f()) {
                            c2.o(i10);
                        }
                        if (f3 && i14 != 0) {
                            c2.o(8);
                        }
                        if (z && c2.f()) {
                            iArr.getClass();
                            c2.o(7);
                            if (c2.g(2) < 3) {
                                c2.o(3);
                            } else {
                                c2.o(8);
                            }
                            boolean f4 = c2.f();
                            int length = iArr.length;
                            int i29 = i4;
                            while (i29 < length) {
                                int i30 = iArr[i29];
                                if (f4) {
                                    c2.o(i30 * 6);
                                    i16 = i11;
                                } else {
                                    i16 = i11;
                                    c2.o(i16);
                                }
                                i29++;
                                i11 = i16;
                            }
                            int i31 = i11;
                            int[] iArr3 = new int[3];
                            iArr3[i4] = g9;
                            if (i13 != 0) {
                                iArr3[i12] = i31;
                                i15 = 2;
                            } else {
                                i15 = i12;
                            }
                            if (i14 != 0) {
                                iArr3[i15] = 2;
                                i15++;
                            }
                            int length2 = iArr.length;
                            for (int i32 = i4; i32 < length2; i32++) {
                                int i33 = iArr[i32];
                                for (int i34 = i4; i34 < i15; i34++) {
                                    int i35 = iArr3[i34];
                                    int i36 = i4;
                                    while (i36 < i35) {
                                        c2.o(Integer.bitCount(c2.g(i33)) * 6);
                                        i36++;
                                        iArr3 = iArr3;
                                    }
                                }
                            }
                        }
                        int g12 = c2.g(2);
                        String str2 = "audio/vnd.dts.hd";
                        if (g12 != 0) {
                            if (g12 != i12) {
                                if (g12 != 2) {
                                    throw ParserException.a(null, "Unsupported coding mode in DTS HD header: " + g12);
                                }
                                str2 = "audio/vnd.dts.hd;profile=lbr";
                            }
                            i8 = g9;
                            str = str2;
                        }
                    } else {
                        i7 = -2147483647;
                        str = null;
                        i8 = -1;
                    }
                    int i37 = i7;
                    if (!f2) {
                        if (i6 != 0) {
                            if (i6 != 1) {
                                if (i6 == 2) {
                                    i9 = 48000;
                                } else {
                                    throw ParserException.a(null, "Unsupported reference clock code in DTS HD header: " + i6);
                                }
                            } else {
                                i9 = 44100;
                            }
                        } else {
                            i9 = 32000;
                        }
                        long j2 = i9;
                        String str3 = Util.a;
                        j = Util.J(i5, 1000000L, j2, RoundingMode.DOWN);
                    } else {
                        j = -9223372036854775807L;
                    }
                    return new DtsHeader(str, i8, i37, g3, j);
                }
            } else {
                throw ParserException.b("Multiple audio presentations or assets not supported");
            }
        } else {
            i4 = 0;
            z = false;
            i5 = 0;
            i6 = -1;
        }
        iArr = null;
        c2.o(i2);
        c2.o(12);
        if (!f2) {
        }
        int i372 = i7;
        if (!f2) {
        }
        return new DtsHeader(str, i8, i372, g3, j);
    }

    public static int g(ParsableBitArray parsableBitArray, int[] iArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && parsableBitArray.f(); i3++) {
            i2++;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += 1 << iArr[i5];
        }
        return parsableBitArray.g(iArr[i2]) + i4;
    }

    public static Format h(ExtractorInput extractorInput, int i2, Format format) {
        int i3;
        ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
        if (extractorInput.d(parsableByteArray.a, 0, i2, true)) {
            extractorInput.j();
            int i4 = parsableByteArray.i();
            if (b(i4) == 1) {
                if (parsableByteArray.a() >= 10) {
                    byte[] bArr = new byte[10];
                    parsableByteArray.k(bArr, 0, 10);
                    int a2 = a(bArr);
                    if (a2 > 0 && parsableByteArray.c >= a2 + 4) {
                        parsableByteArray.M(a2);
                        i4 = parsableByteArray.i();
                    }
                }
            }
            if (b(i4) == 2 && parsableByteArray.a() >= 7) {
                int i5 = parsableByteArray.b;
                byte[] bArr2 = new byte[7];
                parsableByteArray.k(bArr2, 0, 7);
                parsableByteArray.M(i5);
                ParsableBitArray c2 = c(bArr2);
                c2.o(42);
                if (c2.f()) {
                    i3 = 12;
                } else {
                    i3 = 8;
                }
                int g2 = c2.g(i3) + 1;
                if (g2 > 0 && parsableByteArray.a() >= g2) {
                    byte[] bArr3 = new byte[g2];
                    parsableByteArray.k(bArr3, 0, g2);
                    String str = f(bArr3).a;
                    if (str == null) {
                        str = "audio/vnd.dts.hd";
                    }
                    if (Objects.equals(format.p, str)) {
                        return format;
                    }
                    Format.Builder a3 = format.a();
                    a3.o = MimeTypes.l(str);
                    return new Format(a3);
                }
            }
        }
        return format;
    }
}
