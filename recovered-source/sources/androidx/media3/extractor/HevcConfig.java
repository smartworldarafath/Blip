package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HevcConfig {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final float l;
    public final int m;
    public final String n;
    public final NalUnitUtil.H265VpsData o;

    public HevcConfig(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f, int i11, String str, NalUnitUtil.H265VpsData h265VpsData) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        this.h = i7;
        this.i = i8;
        this.j = i9;
        this.k = i10;
        this.l = f;
        this.m = i11;
        this.n = str;
        this.o = h265VpsData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static HevcConfig a(ParsableByteArray parsableByteArray, boolean z, NalUnitUtil.H265VpsData h265VpsData) {
        String str;
        boolean z2;
        List singletonList;
        NalUnitUtil.H265Sei3dRefDisplayInfoData h;
        int i;
        int i2 = 4;
        try {
            if (z) {
                parsableByteArray.N(4);
            } else {
                parsableByteArray.N(21);
            }
            int z3 = parsableByteArray.z() & 3;
            int z4 = parsableByteArray.z();
            int i3 = parsableByteArray.b;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                z2 = true;
                if (i5 >= z4) {
                    break;
                }
                parsableByteArray.N(1);
                int G = parsableByteArray.G();
                for (int i7 = 0; i7 < G; i7++) {
                    int G2 = parsableByteArray.G();
                    i6 += G2 + 4;
                    parsableByteArray.N(G2);
                }
                i5++;
            }
            parsableByteArray.M(i3);
            byte[] bArr = new byte[i6];
            NalUnitUtil.H265VpsData h265VpsData2 = h265VpsData;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            float f = 1.0f;
            String str2 = null;
            int i18 = 0;
            int i19 = 0;
            while (i18 < z4) {
                int z5 = parsableByteArray.z() & 63;
                int G3 = parsableByteArray.G();
                int i20 = i4;
                NalUnitUtil.H265VpsData h265VpsData3 = h265VpsData2;
                while (i20 < G3) {
                    boolean z6 = z2;
                    int G4 = parsableByteArray.G();
                    int i21 = z3;
                    System.arraycopy(NalUnitUtil.a, i4, bArr, i19, i2);
                    int i22 = i19 + 4;
                    System.arraycopy(parsableByteArray.a, parsableByteArray.b, bArr, i22, G4);
                    if (z5 == 32 && i20 == 0) {
                        h265VpsData3 = NalUnitUtil.j(bArr, i22, i22 + G4);
                    } else {
                        if (z5 == 33 && i20 == 0) {
                            NalUnitUtil.H265SpsData i23 = NalUnitUtil.i(bArr, i22, i22 + G4, h265VpsData3);
                            i8 = i23.a + 1;
                            i9 = i23.g;
                            int i24 = i23.h;
                            i11 = i23.c + 8;
                            i12 = i23.d + 8;
                            int i25 = i23.k;
                            i10 = i24;
                            int i26 = i23.l;
                            int i27 = i23.m;
                            float f2 = i23.i;
                            int i28 = i23.j;
                            NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = i23.b;
                            if (h265ProfileTierLevel != null) {
                                i = i28;
                                str2 = CodecSpecificDataUtil.a(h265ProfileTierLevel.a, h265ProfileTierLevel.b, h265ProfileTierLevel.c, h265ProfileTierLevel.d, h265ProfileTierLevel.e, h265ProfileTierLevel.f);
                            } else {
                                i = i28;
                            }
                            i17 = i;
                            f = f2;
                            i15 = i27;
                            i14 = i26;
                            i13 = i25;
                        } else if (z5 == 39 && i20 == 0 && (h = NalUnitUtil.h(bArr, i22, i22 + G4)) != null && h265VpsData3 != null) {
                            i4 = 0;
                            if (h.a == ((NalUnitUtil.H265LayerInfo) h265VpsData3.a.get(0)).b) {
                                i16 = 4;
                            } else {
                                i16 = 5;
                            }
                        }
                        i4 = 0;
                    }
                    i19 = i22 + G4;
                    parsableByteArray.N(G4);
                    i20++;
                    z2 = z6;
                    z3 = i21;
                    i2 = 4;
                }
                i18++;
                h265VpsData2 = h265VpsData3;
                i2 = 4;
            }
            int i29 = z3;
            if (i6 == 0) {
                singletonList = Collections.EMPTY_LIST;
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new HevcConfig(singletonList, i29 + 1, i8, i9, i10, i11, i12, i13, i14, i15, i16, f, i17, str2, h265VpsData2);
        } catch (ArrayIndexOutOfBoundsException e) {
            if (z) {
                str = "L-HEVC config";
            } else {
                str = "HEVC config";
            }
            throw ParserException.a(e, "Error parsing".concat(str));
        }
    }
}
