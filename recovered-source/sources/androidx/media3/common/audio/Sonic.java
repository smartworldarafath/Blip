package androidx.media3.common.audio;

import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Sonic {
    public final int a;
    public final int b;
    public final float c;
    public final float d;
    public final float e;
    public final int f;
    public final int g;
    public final int h;
    public final SonicImpl i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public double q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SonicFloatImpl implements SonicImpl<float[]> {
        public final float[] a;
        public float[] b;
        public float[] c;
        public float[] d;
        public double e;
        public double f;
        public double g;

        public SonicFloatImpl() {
            int i = Sonic.this.h;
            this.a = new float[i];
            int i2 = i * Sonic.this.b;
            this.b = new float[i2];
            this.c = new float[i2];
            this.d = new float[i2];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void a(int i, ByteBuffer byteBuffer) {
            FloatBuffer asFloatBuffer = byteBuffer.asFloatBuffer();
            float[] fArr = this.b;
            Sonic sonic = Sonic.this;
            asFloatBuffer.get(fArr, sonic.j * sonic.b, i / 4);
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void b(int i, ByteBuffer byteBuffer) {
            FloatBuffer asFloatBuffer = byteBuffer.asFloatBuffer();
            float[] fArr = this.c;
            int i2 = Sonic.this.b;
            asFloatBuffer.put(fArr, 0, i * i2);
            byteBuffer.position((i * 4 * i2) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void c(int i, long j, long j2) {
            int i2 = 0;
            while (true) {
                Sonic sonic = Sonic.this;
                int i3 = sonic.b;
                if (i2 < i3) {
                    float[] fArr = this.c;
                    int i4 = (sonic.k * i3) + i2;
                    float[] fArr2 = this.d;
                    int i5 = (i * i3) + i2;
                    float f = fArr2[i5];
                    float f2 = fArr2[i5 + i3];
                    long j3 = sonic.n * j;
                    long j4 = (r1 + 1) * j2;
                    long j5 = j4 - j3;
                    long j6 = j4 - (sonic.m * j2);
                    fArr[i4] = ((((float) (j6 - j5)) * f2) + (((float) j5) * f)) / ((float) j6);
                    i2++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void d(int i, int i2) {
            for (int i3 = 0; i3 < Sonic.this.b * i2; i3++) {
                this.b[i + i3] = 0.0f;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void e(int i, int i2) {
            Sonic sonic = Sonic.this;
            int i3 = sonic.h / i2;
            int i4 = sonic.b;
            int i5 = i2 * i4;
            int i6 = i * i4;
            for (int i7 = 0; i7 < i3; i7++) {
                double d = 0.0d;
                for (int i8 = 0; i8 < i5; i8++) {
                    d += this.b[(i7 * i5) + i6 + i8];
                }
                this.a[i7] = (float) (d / i5);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int f(int i, int i2, int i3) {
            return s(i, i2, i3, this.b);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void flush() {
            this.g = 0.0d;
            this.e = 0.0d;
            this.f = 0.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void g() {
            this.g = this.e;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object h() {
            return this.b;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object i() {
            return this.c;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void j(int i) {
            this.c = r(Sonic.this.k, i, this.c);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final boolean k() {
            double d = this.e;
            if (d != 0.0d && Sonic.this.p != 0 && this.f <= d * 3.0d && d * 2.0d > this.g * 3.0d) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object l() {
            return this.d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void m(int i, int i2, int i3, int i4, int i5) {
            float[] fArr = this.c;
            float[] fArr2 = this.b;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = (i3 * i2) + i6;
                int i8 = (i5 * i2) + i6;
                int i9 = (i4 * i2) + i6;
                for (int i10 = 0; i10 < i; i10++) {
                    fArr[i7] = ((fArr2[i8] * i10) + (fArr2[i9] * (i - i10))) / i;
                    i7 += i2;
                    i9 += i2;
                    i8 += i2;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void n(int i) {
            this.d = r(Sonic.this.l, i, this.d);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int o() {
            return 4;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void p(int i) {
            this.b = r(Sonic.this.j, i, this.b);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int q(int i, int i2) {
            return s(0, i, i2, this.a);
        }

        public final float[] r(int i, int i2, float[] fArr) {
            int length = fArr.length;
            int i3 = Sonic.this.b;
            int i4 = length / i3;
            if (i + i2 <= i4) {
                return fArr;
            }
            return Arrays.copyOf(fArr, (((i4 * 3) / 2) + i2) * i3);
        }

        public final int s(int i, int i2, int i3, float[] fArr) {
            int i4 = Sonic.this.b * i;
            double d = 1.0d;
            int i5 = 0;
            double d2 = 0.0d;
            int i6 = 255;
            int i7 = i2;
            while (i7 <= i3) {
                double d3 = 0.0d;
                for (int i8 = 0; i8 < i7; i8++) {
                    d3 += Math.abs(fArr[i4 + i8] - fArr[(i4 + i7) + i8]);
                }
                int i9 = i4;
                double d4 = i7;
                if (i5 * d3 < d * d4) {
                    i5 = i7;
                    d = d3;
                }
                if (i6 * d3 > d4 * d2) {
                    i6 = i7;
                    d2 = d3;
                }
                i7++;
                i4 = i9;
            }
            this.e = d / i5;
            this.f = d2 / i6;
            return i5;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SonicImpl<T> {
        void a(int i, ByteBuffer byteBuffer);

        void b(int i, ByteBuffer byteBuffer);

        void c(int i, long j, long j2);

        void d(int i, int i2);

        void e(int i, int i2);

        int f(int i, int i2, int i3);

        void flush();

        void g();

        Object h();

        Object i();

        void j(int i);

        boolean k();

        Object l();

        void m(int i, int i2, int i3, int i4, int i5);

        void n(int i);

        int o();

        void p(int i);

        int q(int i, int i2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SonicShortImpl implements SonicImpl<short[]> {
        public final short[] a;
        public short[] b;
        public short[] c;
        public short[] d;
        public int e;
        public int f;
        public int g;

        public SonicShortImpl() {
            int i = Sonic.this.h;
            this.a = new short[i];
            int i2 = i * Sonic.this.b;
            this.b = new short[i2];
            this.c = new short[i2];
            this.d = new short[i2];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void a(int i, ByteBuffer byteBuffer) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            short[] sArr = this.b;
            Sonic sonic = Sonic.this;
            asShortBuffer.get(sArr, sonic.j * sonic.b, i / 2);
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void b(int i, ByteBuffer byteBuffer) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            short[] sArr = this.c;
            int i2 = Sonic.this.b;
            asShortBuffer.put(sArr, 0, i * i2);
            byteBuffer.position((i * 2 * i2) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void c(int i, long j, long j2) {
            int i2 = 0;
            while (true) {
                Sonic sonic = Sonic.this;
                int i3 = sonic.b;
                if (i2 < i3) {
                    short[] sArr = this.c;
                    int i4 = (sonic.k * i3) + i2;
                    short[] sArr2 = this.d;
                    int i5 = (i * i3) + i2;
                    short s = sArr2[i5];
                    short s2 = sArr2[i5 + i3];
                    long j3 = sonic.n * j;
                    long j4 = (r1 + 1) * j2;
                    long j5 = j4 - j3;
                    long j6 = j4 - (sonic.m * j2);
                    sArr[i4] = (short) ((((j6 - j5) * s2) + (s * j5)) / j6);
                    i2++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void d(int i, int i2) {
            for (int i3 = 0; i3 < Sonic.this.b * i2; i3++) {
                this.b[i + i3] = 0;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void e(int i, int i2) {
            short[] sArr = this.b;
            Sonic sonic = Sonic.this;
            int i3 = sonic.h / i2;
            int i4 = sonic.b;
            int i5 = i2 * i4;
            int i6 = i * i4;
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = 0;
                for (int i9 = 0; i9 < i5; i9++) {
                    i8 += sArr[(i7 * i5) + i6 + i9];
                }
                this.a[i7] = (short) (i8 / i5);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int f(int i, int i2, int i3) {
            return s(this.b, i, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void flush() {
            this.g = 0;
            this.e = 0;
            this.f = 0;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void g() {
            this.g = this.e;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object h() {
            return this.b;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object i() {
            return this.c;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void j(int i) {
            this.c = r(this.c, Sonic.this.k, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final boolean k() {
            int i = this.e;
            if (i != 0 && Sonic.this.p != 0 && this.f <= i * 3 && i * 2 > this.g * 3) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object l() {
            return this.d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void m(int i, int i2, int i3, int i4, int i5) {
            short[] sArr = this.c;
            short[] sArr2 = this.b;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = (i3 * i2) + i6;
                int i8 = (i5 * i2) + i6;
                int i9 = (i4 * i2) + i6;
                for (int i10 = 0; i10 < i; i10++) {
                    sArr[i7] = (short) (((sArr2[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                    i7 += i2;
                    i9 += i2;
                    i8 += i2;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void n(int i) {
            this.d = r(this.d, Sonic.this.l, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int o() {
            return 2;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void p(int i) {
            this.b = r(this.b, Sonic.this.j, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int q(int i, int i2) {
            return s(this.a, 0, i, i2);
        }

        public final short[] r(short[] sArr, int i, int i2) {
            int length = sArr.length;
            int i3 = Sonic.this.b;
            int i4 = length / i3;
            if (i + i2 <= i4) {
                return sArr;
            }
            return Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
        }

        public final int s(short[] sArr, int i, int i2, int i3) {
            int i4 = i * Sonic.this.b;
            int i5 = 255;
            int i6 = 1;
            int i7 = 0;
            int i8 = 0;
            while (i2 <= i3) {
                int i9 = 0;
                for (int i10 = 0; i10 < i2; i10++) {
                    i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
                }
                if (i9 * i7 < i6 * i2) {
                    i7 = i2;
                    i6 = i9;
                }
                if (i9 * i5 > i8 * i2) {
                    i5 = i2;
                    i8 = i9;
                }
                i2++;
            }
            this.e = i6 / i7;
            this.f = i8 / i5;
            return i7;
        }
    }

    public Sonic(int i, int i2, float f, float f2, int i3, boolean z) {
        SonicImpl sonicShortImpl;
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = f2;
        this.e = i / i3;
        this.f = i / 400;
        int i4 = i / 65;
        this.g = i4;
        this.h = i4 * 2;
        if (z) {
            sonicShortImpl = new SonicFloatImpl();
        } else {
            sonicShortImpl = new SonicShortImpl();
        }
        this.i = sonicShortImpl;
    }

    public final void a(int i, int i2) {
        SonicImpl sonicImpl = this.i;
        sonicImpl.j(i2);
        Object h = sonicImpl.h();
        int i3 = this.b;
        System.arraycopy(h, i * i3, sonicImpl.i(), this.k * i3, i3 * i2);
        this.k += i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        int i;
        float f;
        int i2;
        int i3;
        double d;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        long j;
        long j2;
        boolean z;
        int i11 = this.k;
        float f2 = this.c;
        float f3 = this.d;
        double d2 = f2 / f3;
        float f4 = this.e * f3;
        int i12 = this.a;
        int i13 = 1;
        SonicImpl sonicImpl = this.i;
        int i14 = this.b;
        if (d2 <= 1.0000100135803223d && d2 >= 0.9999899864196777d) {
            a(0, this.j);
            this.j = 0;
        } else {
            int i15 = this.j;
            int i16 = this.h;
            if (i15 >= i16) {
                int i17 = 0;
                while (true) {
                    int i18 = this.o;
                    if (i18 > 0) {
                        int min = Math.min(i16, i18);
                        a(i17, min);
                        this.o -= min;
                        i17 += min;
                        f = f4;
                        d = d2;
                        i6 = i13;
                        i4 = i16;
                    } else {
                        if (i12 > 4000) {
                            i = i12 / 4000;
                        } else {
                            i = i13;
                        }
                        int i19 = this.g;
                        int i20 = this.f;
                        if (i14 == i13 && i == i13) {
                            i2 = sonicImpl.f(i17, i20, i19);
                            f = f4;
                        } else {
                            sonicImpl.e(i17, i);
                            f = f4;
                            int q = sonicImpl.q(i20 / i, i19 / i);
                            if (i != i13) {
                                int i21 = q * i;
                                int i22 = i * 4;
                                int i23 = i21 - i22;
                                int i24 = i21 + i22;
                                if (i23 >= i20) {
                                    i20 = i23;
                                }
                                if (i24 <= i19) {
                                    i19 = i24;
                                }
                                if (i14 == i13) {
                                    i2 = sonicImpl.f(i17, i20, i19);
                                } else {
                                    sonicImpl.e(i17, i13);
                                    i2 = sonicImpl.q(i20, i19);
                                }
                            } else {
                                i2 = q;
                            }
                        }
                        if (sonicImpl.k()) {
                            i3 = this.p;
                        } else {
                            i3 = i2;
                        }
                        sonicImpl.g();
                        this.p = i2;
                        double d3 = this.q;
                        if (d2 > 1.0d) {
                            if (d2 >= 2.0d) {
                                i7 = i13;
                                double d4 = (i3 / (d2 - 1.0d)) + d3;
                                i8 = (int) Math.round(d4);
                                d = d2;
                                this.q = d4 - i8;
                                sonicImpl = sonicImpl;
                            } else {
                                d = d2;
                                i7 = i13;
                                double d5 = (((2.0d - d) * i3) / (d - 1.0d)) + d3;
                                int round = (int) Math.round(d5);
                                this.o = round;
                                this.q = d5 - round;
                                i8 = i3;
                            }
                            sonicImpl.j(i8);
                            int i25 = i16;
                            int i26 = i8;
                            sonicImpl.m(i26, this.b, this.k, i17, i17 + i3);
                            this.k += i26;
                            i17 = i3 + i26 + i17;
                            i4 = i25;
                            i6 = i7;
                        } else {
                            d = d2;
                            int i27 = i13;
                            int i28 = i16;
                            if (d < 0.5d) {
                                i4 = i28;
                                double d6 = ((i3 * d) / (1.0d - d)) + d3;
                                i5 = (int) Math.round(d6);
                                this.q = d6 - i5;
                            } else {
                                i4 = i28;
                                double d7 = ((((2.0d * d) - 1.0d) * i3) / (1.0d - d)) + d3;
                                int round2 = (int) Math.round(d7);
                                this.o = round2;
                                this.q = d7 - round2;
                                i5 = i3;
                            }
                            int i29 = i3 + i5;
                            sonicImpl.j(i29);
                            i6 = i27;
                            System.arraycopy(sonicImpl.h(), i17 * i14, sonicImpl.i(), this.k * i14, i3 * i14);
                            int i30 = i17;
                            sonicImpl.m(i5, this.b, this.k + i3, i3 + i17, i30);
                            this.k += i29;
                            i17 = i30 + i5;
                        }
                    }
                    if (i17 + i4 > i15) {
                        break;
                    }
                    i16 = i4;
                    f4 = f;
                    i13 = i6;
                    d2 = d;
                }
                int i31 = this.j - i17;
                System.arraycopy(sonicImpl.h(), i17 * i14, sonicImpl.h(), 0, i31 * i14);
                this.j = i31;
                if (f == 1.0f && this.k != i11) {
                    long j3 = i12 / f;
                    long j4 = i12;
                    while (j3 != 0 && j4 != 0 && j3 % 2 == 0 && j4 % 2 == 0) {
                        j3 /= 2;
                        j4 /= 2;
                    }
                    int i32 = this.k - i11;
                    sonicImpl.n(i32);
                    System.arraycopy(sonicImpl.i(), i11 * i14, sonicImpl.l(), this.l * i14, i32 * i14);
                    this.k = i11;
                    this.l += i32;
                    int i33 = 0;
                    while (true) {
                        i9 = this.l - 1;
                        if (i33 >= i9) {
                            break;
                        }
                        while (true) {
                            i10 = this.m + 1;
                            j = i10;
                            long j5 = j * j3;
                            j2 = this.n;
                            if (j5 <= j2 * j4) {
                                break;
                            }
                            int i34 = i6;
                            sonicImpl.j(i34);
                            sonicImpl.c(i33, j4, j3);
                            this.n += i34;
                            this.k += i34;
                        }
                        int i35 = i6;
                        this.m = i10;
                        if (j == j4) {
                            this.m = 0;
                            if (j2 == j3) {
                                z = i35;
                            } else {
                                z = 0;
                            }
                            Preconditions.n(z);
                            this.n = 0;
                        }
                        i33++;
                        i6 = i35;
                    }
                    if (i9 != 0) {
                        System.arraycopy(sonicImpl.l(), i9 * i14, sonicImpl.l(), 0, (this.l - i9) * i14);
                        this.l -= i9;
                        return;
                    }
                    return;
                }
            }
        }
        f = f4;
        i6 = 1;
        if (f == 1.0f) {
        }
    }
}
