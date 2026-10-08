package androidx.media3.container;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParsableNalUnitBitArray {
    public byte[] a;
    public int b;
    public int c;
    public int d;
    public int e = 0;

    public ParsableNalUnitBitArray(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.c = i;
        this.d = i;
        this.b = i2;
        a();
    }

    public final void a() {
        boolean z;
        int i;
        int i2 = this.d;
        if (i2 >= 0 && (i2 < (i = this.b) || (i2 == i && this.e == 0))) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
    }

    public final boolean b(int i) {
        int i2 = this.d;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.e + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 > this.b) {
                break;
            }
            if (h(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.b;
        if (i4 < i6 || (i4 == i6 && i5 == 0)) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        boolean z;
        int i = this.d;
        int i2 = this.e;
        int i3 = 0;
        while (this.d < this.b && !d()) {
            i3++;
        }
        if (this.d == this.b) {
            z = true;
        } else {
            z = false;
        }
        this.d = i;
        this.e = i2;
        if (z || !b((i3 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public final boolean d() {
        boolean z;
        if ((this.a[this.d] & (128 >> this.e)) != 0) {
            z = true;
        } else {
            z = false;
        }
        i();
        return z;
    }

    public final int e(int i) {
        int i2;
        int i3;
        this.e += i;
        int i4 = 0;
        while (true) {
            i2 = this.e;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.e = i5;
            byte[] bArr = this.a;
            int i6 = this.d;
            i4 |= (bArr[i6] & 255) << i5;
            if (!h(i6 + 1)) {
                i3 = 1;
            }
            this.d = i6 + i3;
        }
        byte[] bArr2 = this.a;
        int i7 = this.d;
        int i8 = ((-1) >>> (32 - i)) & (i4 | ((bArr2[i7] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.e = 0;
            if (!h(i7 + 1)) {
                i3 = 1;
            }
            this.d = i7 + i3;
        }
        a();
        return i8;
    }

    public final int f() {
        int i = 0;
        int i2 = 0;
        while (!d()) {
            i2++;
        }
        int i3 = (1 << i2) - 1;
        if (i2 > 0) {
            i = e(i2);
        }
        return i3 + i;
    }

    public final int g() {
        int i;
        int f = f();
        if (f % 2 == 0) {
            i = -1;
        } else {
            i = 1;
        }
        return ((f + 1) / 2) * i;
    }

    public final boolean h(int i) {
        int i2 = i - 2;
        if (this.c <= i2 && i < this.b) {
            byte[] bArr = this.a;
            if (bArr[i] == 3 && bArr[i2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void i() {
        int i = 1;
        int i2 = this.e + 1;
        this.e = i2;
        if (i2 == 8) {
            this.e = 0;
            int i3 = this.d;
            if (h(i3 + 1)) {
                i = 2;
            }
            this.d = i3 + i;
        }
        a();
    }

    public final void j(int i) {
        int i2 = this.d;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.d = i4;
        int i5 = (i - (i3 * 8)) + this.e;
        this.e = i5;
        if (i5 > 7) {
            this.d = i4 + 1;
            this.e = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.d) {
                if (h(i2)) {
                    this.d++;
                    i2 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}
