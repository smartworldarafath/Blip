package io.sentry.vendor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Base64 {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Coder {
        public byte[] a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Encoder extends Coder {
        public static final byte[] d = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        public final byte[] b;
        public int c;

        public Encoder() {
            this.a = null;
            this.b = new byte[2];
            this.c = 0;
        }
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2;
        byte b;
        byte b2;
        int i;
        byte b3;
        int length = bArr.length;
        Encoder encoder = new Encoder();
        int i2 = (length / 3) * 4;
        int i3 = length % 3;
        int i4 = 1;
        if (i3 != 1) {
            if (i3 == 2) {
                i2 += 3;
            }
        } else {
            i2 += 2;
        }
        byte[] bArr3 = new byte[i2];
        encoder.a = bArr3;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i6 + 3;
            bArr2 = Encoder.d;
            if (i8 > length) {
                break;
            }
            int i9 = (bArr[i6 + 2] & 255) | ((bArr[i6] & 255) << 16) | ((bArr[i6 + 1] & 255) << 8);
            bArr3[i7] = bArr2[(i9 >> 18) & 63];
            bArr3[i7 + 1] = bArr2[(i9 >> 12) & 63];
            bArr3[i7 + 2] = bArr2[(i9 >> 6) & 63];
            bArr3[i7 + 3] = bArr2[i9 & 63];
            i7 += 4;
            i5--;
            if (i5 == 0) {
                bArr3[i7] = 10;
                i5 = 19;
                i7++;
            }
            i6 = i8;
        }
        int i10 = encoder.c;
        int i11 = i6 - i10;
        int i12 = length - 1;
        byte[] bArr4 = encoder.b;
        if (i11 == i12) {
            if (i10 > 0) {
                b3 = bArr4[0];
            } else {
                b3 = bArr[i6];
                i4 = 0;
            }
            int i13 = (b3 & 255) << 4;
            encoder.c = i10 - i4;
            bArr3[i7] = bArr2[(i13 >> 6) & 63];
            bArr3[i7 + 1] = bArr2[i13 & 63];
        } else if (i11 == length - 2) {
            if (i10 > 1) {
                b = bArr4[0];
            } else {
                byte b4 = bArr[i6];
                i6++;
                b = b4;
                i4 = 0;
            }
            int i14 = (b & 255) << 10;
            if (i10 > 0) {
                i = i4 + 1;
                b2 = bArr4[i4];
            } else {
                int i15 = i4;
                b2 = bArr[i6];
                i = i15;
            }
            int i16 = i14 | ((b2 & 255) << 2);
            encoder.c = i10 - i;
            bArr3[i7] = bArr2[(i16 >> 12) & 63];
            bArr3[i7 + 1] = bArr2[(i16 >> 6) & 63];
            bArr3[i7 + 2] = bArr2[i16 & 63];
        }
        return encoder.a;
    }
}
