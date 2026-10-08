package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.spherical.Projection;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ProjectionDecoder {
    public static final double a = Math.log(2.0d);
    public static final /* synthetic */ int b = 0;

    /* JADX WARN: Code restructure failed: missing block: B:88:0x003c, code lost:
    
        if (r3 != 1918990112) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ac A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList a(ParsableByteArray parsableByteArray) {
        char c;
        ArrayList arrayList;
        boolean z;
        Object obj;
        ParsableByteArray parsableByteArray2 = parsableByteArray;
        ArrayList arrayList2 = null;
        if (parsableByteArray2.z() == 0) {
            char c2 = 7;
            parsableByteArray2.N(7);
            int m = parsableByteArray2.m();
            boolean z2 = true;
            if (m == 1684433976) {
                ParsableByteArray parsableByteArray3 = new ParsableByteArray();
                Inflater inflater = new Inflater(true);
                try {
                    if (!Util.y(parsableByteArray2, parsableByteArray3, inflater)) {
                        return null;
                    }
                    inflater.end();
                    parsableByteArray2 = parsableByteArray3;
                } finally {
                    inflater.end();
                }
            }
            ArrayList arrayList3 = new ArrayList();
            int i = parsableByteArray2.b;
            int i2 = parsableByteArray2.c;
            while (i < i2) {
                int m2 = parsableByteArray2.m() + i;
                if (m2 > i && m2 <= i2) {
                    if (parsableByteArray2.m() == 1835365224) {
                        int m3 = parsableByteArray2.m();
                        if (m3 > 0 && m3 <= 10000) {
                            float[] fArr = new float[m3];
                            for (int i3 = 0; i3 < m3; i3++) {
                                fArr[i3] = Float.intBitsToFloat(parsableByteArray2.m());
                            }
                            int m4 = parsableByteArray2.m();
                            if (m4 > 0 && m4 <= 32000) {
                                double log = Math.log(m3 * 2.0d);
                                double d = a;
                                int ceil = (int) Math.ceil(log / d);
                                c = c2;
                                byte[] bArr = parsableByteArray2.a;
                                arrayList = arrayList2;
                                ParsableBitArray parsableBitArray = new ParsableBitArray(bArr.length, bArr);
                                parsableBitArray.m(parsableByteArray2.b * 8);
                                float[] fArr2 = new float[m4 * 5];
                                z = z2;
                                int i4 = 5;
                                int[] iArr = new int[5];
                                int i5 = 0;
                                int i6 = 0;
                                while (true) {
                                    if (i5 < m4) {
                                        int i7 = 0;
                                        while (i7 < i4) {
                                            int i8 = iArr[i7];
                                            int g = parsableBitArray.g(ceil);
                                            int i9 = i8 + ((g >> 1) ^ (-(g & 1)));
                                            if (i9 >= m3 || i9 < 0) {
                                                break;
                                            }
                                            fArr2[i6] = fArr[i9];
                                            iArr[i7] = i9;
                                            i7++;
                                            i6++;
                                            i4 = 5;
                                        }
                                        i5++;
                                        i4 = 5;
                                    } else {
                                        parsableBitArray.m((parsableBitArray.e() + 7) & (-8));
                                        int i10 = 32;
                                        int g2 = parsableBitArray.g(32);
                                        if (g2 > 0) {
                                            Projection.SubMesh[] subMeshArr = new Projection.SubMesh[g2];
                                            int i11 = 0;
                                            while (i11 < g2) {
                                                int g3 = parsableBitArray.g(8);
                                                int g4 = parsableBitArray.g(8);
                                                int g5 = parsableBitArray.g(i10);
                                                if (g5 > 0 && g5 <= 128000) {
                                                    float[] fArr3 = fArr2;
                                                    int ceil2 = (int) Math.ceil(Math.log(m4 * 2.0d) / d);
                                                    float[] fArr4 = new float[g5 * 3];
                                                    float[] fArr5 = new float[g5 * 2];
                                                    int i12 = g2;
                                                    int i13 = 0;
                                                    int i14 = 0;
                                                    while (i13 < g5) {
                                                        int g6 = parsableBitArray.g(ceil2);
                                                        int i15 = ceil2;
                                                        int i16 = i14 + ((g6 >> 1) ^ (-(g6 & 1)));
                                                        if (i16 >= 0 && i16 < m4) {
                                                            int i17 = i13 * 3;
                                                            int i18 = i16 * 5;
                                                            fArr4[i17] = fArr3[i18];
                                                            fArr4[i17 + 1] = fArr3[i18 + 1];
                                                            fArr4[i17 + 2] = fArr3[i18 + 2];
                                                            int i19 = i13 * 2;
                                                            fArr5[i19] = fArr3[i18 + 3];
                                                            fArr5[i19 + 1] = fArr3[i18 + 4];
                                                            i13++;
                                                            i14 = i16;
                                                            ceil2 = i15;
                                                        }
                                                    }
                                                    subMeshArr[i11] = new Projection.SubMesh(g3, g4, fArr4, fArr5);
                                                    i11++;
                                                    fArr2 = fArr3;
                                                    g2 = i12;
                                                    i10 = 32;
                                                }
                                            }
                                            obj = new Projection.Mesh(subMeshArr);
                                        }
                                    }
                                }
                                if (obj == null) {
                                    arrayList3.add(obj);
                                } else {
                                    return arrayList;
                                }
                            }
                        }
                        c = c2;
                        arrayList = arrayList2;
                        z = z2;
                        obj = arrayList;
                        if (obj == null) {
                        }
                    } else {
                        c = c2;
                        arrayList = arrayList2;
                        z = z2;
                    }
                    parsableByteArray2.M(m2);
                    i = m2;
                    c2 = c;
                    arrayList2 = arrayList;
                    z2 = z;
                }
            }
            return arrayList3;
        }
        return arrayList2;
    }
}
