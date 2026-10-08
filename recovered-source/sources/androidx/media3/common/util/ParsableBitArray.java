package androidx.media3.common.util;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParsableBitArray {
    public byte[] a;
    public int b;
    public int c;
    public int d;

    public ParsableBitArray() {
        this.a = Util.b;
    }

    public final void a() {
        boolean z;
        int i;
        int i2 = this.b;
        if (i2 >= 0 && (i2 < (i = this.d) || (i2 == i && this.c == 0))) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
    }

    public final int b() {
        return ((this.d - this.b) * 8) - this.c;
    }

    public final void c() {
        if (this.c == 0) {
            return;
        }
        this.c = 0;
        this.b++;
        a();
    }

    public final int d() {
        boolean z;
        if (this.c == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        return this.b;
    }

    public final int e() {
        return (this.b * 8) + this.c;
    }

    public final boolean f() {
        boolean z;
        if ((this.a[this.b] & (128 >> this.c)) != 0) {
            z = true;
        } else {
            z = false;
        }
        n();
        return z;
    }

    public final int g(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.c += i;
        int i3 = 0;
        while (true) {
            i2 = this.c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.c = i4;
            byte[] bArr = this.a;
            int i5 = this.b;
            this.b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.a;
        int i6 = this.b;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.c = 0;
            this.b = i6 + 1;
        }
        a();
        return i7;
    }

    public final void h(int i, byte[] bArr) {
        int i2 = i >> 3;
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.a;
            int i4 = this.b;
            int i5 = i4 + 1;
            this.b = i5;
            byte b = bArr2[i4];
            int i6 = this.c;
            byte b2 = (byte) (b << i6);
            bArr[i3] = b2;
            bArr[i3] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | b2);
        }
        int i7 = i & 7;
        if (i7 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i2] & (255 >> i7));
        bArr[i2] = b3;
        int i8 = this.c;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.a;
            int i9 = this.b;
            this.b = i9 + 1;
            bArr[i2] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
            this.c = i8 - 8;
        }
        int i10 = this.c + i7;
        this.c = i10;
        byte[] bArr4 = this.a;
        int i11 = this.b;
        bArr[i2] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i2]);
        if (i10 == 8) {
            this.c = 0;
            this.b = i11 + 1;
        }
        a();
    }

    public final long i(int i) {
        if (i <= 32) {
            int g = g(i);
            String str = Util.a;
            return g & 4294967295L;
        }
        int g2 = g(i - 32);
        int g3 = g(32);
        String str2 = Util.a;
        return (g3 & 4294967295L) | ((g2 & 4294967295L) << 32);
    }

    public final void j(int i, byte[] bArr) {
        boolean z;
        if (this.c == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        System.arraycopy(this.a, this.b, bArr, 0, i);
        this.b += i;
        a();
    }

    public final void k(int i, byte[] bArr) {
        this.a = bArr;
        this.b = 0;
        this.c = 0;
        this.d = i;
    }

    public final void l(ParsableByteArray parsableByteArray) {
        k(parsableByteArray.c, parsableByteArray.a);
        m(parsableByteArray.b * 8);
    }

    public final void m(int i) {
        int i2 = i / 8;
        this.b = i2;
        this.c = i - (i2 * 8);
        a();
    }

    public final void n() {
        int i = this.c + 1;
        this.c = i;
        if (i == 8) {
            this.c = 0;
            this.b++;
        }
        a();
    }

    public final void o(int i) {
        int i2 = i / 8;
        int i3 = this.b + i2;
        this.b = i3;
        int i4 = (i - (i2 * 8)) + this.c;
        this.c = i4;
        if (i4 > 7) {
            this.b = i3 + 1;
            this.c = i4 - 8;
        }
        a();
    }

    public final void p(int i) {
        boolean z;
        if (this.c == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        this.b += i;
        a();
    }

    public ParsableBitArray(int i, byte[] bArr) {
        this.a = bArr;
        this.d = i;
    }
}
