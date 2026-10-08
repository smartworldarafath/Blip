package androidx.media3.extractor.mp4;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SniffFailure;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Sniffer {
    public static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0159 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SniffFailure a(ExtractorInput extractorInput, boolean z) {
        SniffFailure sniffFailure;
        boolean z2;
        int i;
        long j;
        int i2;
        int i3;
        long j2;
        boolean z3;
        int[] iArr;
        long g = extractorInput.g();
        long j3 = -1;
        long j4 = 4096;
        if (g != -1 && g <= 4096) {
            j4 = g;
        }
        int i4 = (int) j4;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        int i5 = 0;
        int i6 = 0;
        boolean z4 = false;
        while (i6 < i4) {
            parsableByteArray.J(8);
            if (!extractorInput.d(parsableByteArray.a, i5, 8, true)) {
                break;
            }
            long B = parsableByteArray.B();
            int m = parsableByteArray.m();
            if (B == 1) {
                extractorInput.n(parsableByteArray.a, 8, 8);
                i2 = 16;
                parsableByteArray.L(16);
                i = i6;
                j = parsableByteArray.t();
            } else {
                if (B == 0) {
                    long g2 = extractorInput.g();
                    if (g2 != j3) {
                        B = (g2 - extractorInput.e()) + 8;
                    }
                }
                i = i6;
                j = B;
                i2 = 8;
            }
            long j5 = i2;
            if (j < j5) {
                sniffFailure = null;
                if (m == 1718773093 && i2 == 8) {
                    j = j5;
                } else {
                    return new AtomSizeTooSmallSniffFailure(m, i2, j);
                }
            } else {
                sniffFailure = null;
            }
            int i7 = i + i2;
            if (m != 1836019574 && m != 1970628964) {
                i3 = m;
            } else {
                i4 += (int) j;
                i3 = m;
                if (g != -1 && i4 > g) {
                    i4 = (int) g;
                }
                if (i3 == 1836019574) {
                    i6 = i7;
                    j3 = -1;
                    i5 = 0;
                }
            }
            if (i3 == 1953653099 || i3 == 1835297121 || i3 == 1835626086) {
                j2 = g;
                i6 = i7;
            } else if (i3 != 1836019558 && i3 != 1836475768) {
                if (i3 == 1835295092) {
                    z4 = true;
                }
                if (i3 == 1937007212 && j > 1000000) {
                    break;
                }
                j2 = g;
                if ((i7 + j) - j5 >= i4) {
                    break;
                }
                int i8 = (int) (j - j5);
                i6 = i7 + i8;
                if (i3 == 1718909296) {
                    if (i8 < 8) {
                        return new AtomSizeTooSmallSniffFailure(i3, 8, i8);
                    }
                    parsableByteArray.J(i8);
                    int i9 = 0;
                    extractorInput.n(parsableByteArray.a, 0, i8);
                    int m2 = parsableByteArray.m();
                    int i10 = m2 >>> 8;
                    int[] iArr2 = a;
                    if (i10 != 3368816) {
                        for (int i11 = 0; i11 < 29; i11++) {
                            if (iArr2[i11] != m2) {
                            }
                        }
                        parsableByteArray.N(4);
                        int a2 = parsableByteArray.a() / 4;
                        if (z4 && a2 > 0) {
                            int[] iArr3 = new int[a2];
                            int i12 = 0;
                            while (i12 < a2) {
                                int m3 = parsableByteArray.m();
                                iArr3[i12] = m3;
                                if ((m3 >>> 8) != 3368816) {
                                    for (int i13 = i9; i13 < 29; i13++) {
                                        if (iArr2[i13] != m3) {
                                        }
                                    }
                                    i12++;
                                    i9 = 0;
                                }
                                iArr = iArr3;
                                z3 = true;
                                break;
                            }
                            iArr = iArr3;
                            z3 = z4;
                        } else {
                            z3 = z4;
                            iArr = sniffFailure;
                        }
                        if (z3) {
                            return new UnsupportedBrandsSniffFailure(iArr, m2);
                        }
                        z4 = z3;
                    }
                    z4 = true;
                    parsableByteArray.N(4);
                    int a22 = parsableByteArray.a() / 4;
                    if (z4) {
                    }
                    z3 = z4;
                    iArr = sniffFailure;
                    if (z3) {
                    }
                } else if (i8 != 0) {
                    extractorInput.f(i8);
                }
            } else {
                z2 = true;
                break;
            }
            g = j2;
            j3 = -1;
            i5 = 0;
        }
        sniffFailure = null;
        z2 = false;
        if (!z4) {
            return NoDeclaredBrandSniffFailure.a;
        }
        if (z != z2) {
            if (z2) {
                return IncorrectFragmentationSniffFailure.b;
            }
            return IncorrectFragmentationSniffFailure.c;
        }
        return sniffFailure;
    }
}
