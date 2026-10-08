package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AvcConfig {
    public final ArrayList a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final float k;
    public final String l;

    public AvcConfig(ArrayList arrayList, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, String str) {
        this.a = arrayList;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        this.h = i7;
        this.i = i8;
        this.j = i9;
        this.k = f;
        this.l = str;
    }

    public static AvcConfig a(ParsableByteArray parsableByteArray) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        try {
            parsableByteArray.N(4);
            int z = (parsableByteArray.z() & 3) + 1;
            if (z != 3) {
                ArrayList arrayList = new ArrayList();
                int z2 = parsableByteArray.z() & 31;
                for (int i9 = 0; i9 < z2; i9++) {
                    int G = parsableByteArray.G();
                    int i10 = parsableByteArray.b;
                    parsableByteArray.N(G);
                    byte[] bArr = parsableByteArray.a;
                    byte[] bArr2 = new byte[G + 4];
                    System.arraycopy(CodecSpecificDataUtil.a, 0, bArr2, 0, 4);
                    System.arraycopy(bArr, i10, bArr2, 4, G);
                    arrayList.add(bArr2);
                }
                int z3 = parsableByteArray.z();
                for (int i11 = 0; i11 < z3; i11++) {
                    int G2 = parsableByteArray.G();
                    int i12 = parsableByteArray.b;
                    parsableByteArray.N(G2);
                    byte[] bArr3 = parsableByteArray.a;
                    byte[] bArr4 = new byte[G2 + 4];
                    System.arraycopy(CodecSpecificDataUtil.a, 0, bArr4, 0, 4);
                    System.arraycopy(bArr3, i12, bArr4, 4, G2);
                    arrayList.add(bArr4);
                }
                if (z2 > 0) {
                    NalUnitUtil.SpsData k = NalUnitUtil.k((byte[]) arrayList.get(0), 4, ((byte[]) arrayList.get(0)).length);
                    int i13 = k.e;
                    int i14 = k.f;
                    int i15 = k.h + 8;
                    int i16 = k.i + 8;
                    int i17 = k.p;
                    int i18 = k.q;
                    int i19 = k.r;
                    int i20 = k.s;
                    float f2 = k.g;
                    int i21 = k.a;
                    int i22 = k.b;
                    int i23 = k.c;
                    byte[] bArr5 = CodecSpecificDataUtil.a;
                    str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i21), Integer.valueOf(i22), Integer.valueOf(i23));
                    i4 = i18;
                    i5 = i19;
                    i6 = i20;
                    f = f2;
                    i2 = i14;
                    i3 = i15;
                    i7 = i16;
                    i8 = i17;
                    i = i13;
                } else {
                    str = null;
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = 16;
                    f = 1.0f;
                    i7 = -1;
                    i8 = -1;
                }
                return new AvcConfig(arrayList, z, i, i2, i3, i7, i8, i4, i5, i6, f, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.a(e, "Error parsing AVC config");
        }
    }
}
