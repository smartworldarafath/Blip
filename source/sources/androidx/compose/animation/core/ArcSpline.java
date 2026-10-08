package androidx.compose.animation.core;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArcSpline {
    public final Arc[][] a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Arc {
        public final float a;
        public final float b;
        public final float c;
        public final float d;
        public final float e;
        public final float f;
        public final float g;
        public float h;
        public float i;
        public final float[] j;
        public final float k;
        public final float l;
        public final float m;
        public final float n;
        public final float o;
        public final boolean p;
        public final float q;
        public final float r;

        public Arc(int i, float f, float f2, float f3, float f4, float f5, float f6) {
            boolean z;
            float f7;
            boolean z2;
            boolean z3;
            float f8;
            float f9;
            int i2;
            float[] fArr;
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = f4;
            this.e = f5;
            this.f = f6;
            float f10 = f5 - f3;
            float f11 = f6 - f4;
            int i3 = 1;
            if (i != 1 && (i == 4 ? f11 <= 0.0f : i != 5 || f11 >= 0.0f)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                f7 = -1.0f;
            } else {
                f7 = 1.0f;
            }
            this.m = f7;
            float f12 = 1.0f / (f2 - f);
            this.k = f12;
            float[] fArr2 = new float[101];
            this.j = fArr2;
            if (i == 3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 && Math.abs(f10) >= 0.001f && Math.abs(f11) >= 0.001f) {
                this.n = f10 * f7;
                this.o = f11 * (-f7);
                if (z) {
                    f8 = f5;
                } else {
                    f8 = f3;
                }
                this.q = f8;
                if (z) {
                    f9 = f4;
                } else {
                    f9 = f6;
                }
                this.r = f9;
                float f13 = f5 - f3;
                float f14 = f4 - f6;
                float f15 = f14;
                float f16 = 0.0f;
                float f17 = 0.0f;
                int i4 = 1;
                while (true) {
                    double d = (float) (((i4 * 90.0d) / 90.0d) * 0.017453292519943295d);
                    i2 = i3;
                    float sin = ((float) Math.sin(d)) * f13;
                    float cos = ((float) Math.cos(d)) * f14;
                    f16 += (float) Math.hypot(sin - f17, cos - f15);
                    fArr = ArcSplineKt.a;
                    fArr[i4] = f16;
                    if (i4 == 90) {
                        break;
                    }
                    i4++;
                    f17 = sin;
                    f15 = cos;
                    i3 = i2;
                }
                this.g = f16;
                int i5 = i2;
                while (true) {
                    fArr[i5] = fArr[i5] / f16;
                    if (i5 == 90) {
                        break;
                    } else {
                        i5++;
                    }
                }
                int length = fArr2.length;
                for (int i6 = 0; i6 < length; i6++) {
                    float f18 = i6 / 100.0f;
                    int binarySearch = Arrays.binarySearch(fArr, 0, 91, f18);
                    if (binarySearch >= 0) {
                        fArr2[i6] = binarySearch / 90.0f;
                    } else if (binarySearch == -1) {
                        fArr2[i6] = 0.0f;
                    } else {
                        int i7 = -binarySearch;
                        int i8 = i7 - 2;
                        float f19 = i8;
                        float f20 = fArr[i8];
                        fArr2[i6] = (((f18 - f20) / (fArr[i7 - i2] - f20)) + f19) / 90.0f;
                    }
                }
                this.l = this.g * this.k;
                z3 = z2;
            } else {
                float hypot = (float) Math.hypot(f11, f10);
                this.g = hypot;
                this.l = hypot * f12;
                this.q = f10 * f12;
                this.r = f11 * f12;
                this.n = Float.NaN;
                this.o = Float.NaN;
                z3 = true;
            }
            this.p = z3;
        }

        public final float a() {
            float f = this.n * this.i;
            return f * this.m * (this.l / ((float) Math.hypot(f, (-this.o) * this.h)));
        }

        public final float b() {
            float f = this.n * this.i;
            float f2 = (-this.o) * this.h;
            return f2 * this.m * (this.l / ((float) Math.hypot(f, f2)));
        }

        public final void c(float f) {
            float f2;
            if (this.m == -1.0f) {
                f2 = this.b - f;
            } else {
                f2 = f - this.a;
            }
            float f3 = f2 * this.k;
            float f4 = 0.0f;
            if (f3 > 0.0f) {
                f4 = 1.0f;
                if (f3 < 1.0f) {
                    float f5 = f3 * 100.0f;
                    int i = (int) f5;
                    float[] fArr = this.j;
                    float f6 = fArr[i];
                    f4 = ((fArr[i + 1] - f6) * (f5 - i)) + f6;
                }
            }
            double d = f4 * 1.5707964f;
            this.h = (float) Math.sin(d);
            this.i = (float) Math.cos(d);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
    
        if (r6 == 1) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0044 A[LOOP:1: B:14:0x0042->B:15:0x0044, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArcSpline(int[] iArr, float[] fArr, float[][] fArr2) {
        int i;
        int length;
        int i2;
        int length2 = fArr.length - 1;
        Arc[][] arcArr = new Arc[length2];
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i5 < length2) {
            int i6 = iArr[i5];
            int i7 = 3;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            i7 = 4;
                            if (i6 != 4) {
                                i7 = 5;
                                if (i6 != 5) {
                                    i = i4;
                                    float[] fArr3 = fArr2[i5];
                                    int i8 = i5 + 1;
                                    float[] fArr4 = fArr2[i8];
                                    float f = fArr[i5];
                                    float f2 = fArr[i8];
                                    length = (fArr3.length % 2) + (fArr3.length / 2);
                                    Arc[] arcArr2 = new Arc[length];
                                    i2 = 0;
                                    while (i2 < length) {
                                        int i9 = i2 * 2;
                                        Arc[] arcArr3 = arcArr2;
                                        int i10 = i2;
                                        int i11 = i9 + 1;
                                        arcArr3[i10] = new Arc(i, f, f2, fArr3[i9], fArr3[i11], fArr4[i9], fArr4[i11]);
                                        i2 = i10 + 1;
                                        arcArr2 = arcArr3;
                                    }
                                    arcArr[i5] = arcArr2;
                                    i5 = i8;
                                    i4 = i;
                                }
                            }
                        }
                    }
                    i3 = 2;
                    i = i3;
                    float[] fArr32 = fArr2[i5];
                    int i82 = i5 + 1;
                    float[] fArr42 = fArr2[i82];
                    float f3 = fArr[i5];
                    float f22 = fArr[i82];
                    length = (fArr32.length % 2) + (fArr32.length / 2);
                    Arc[] arcArr22 = new Arc[length];
                    i2 = 0;
                    while (i2 < length) {
                    }
                    arcArr[i5] = arcArr22;
                    i5 = i82;
                    i4 = i;
                }
                i3 = 1;
                i = i3;
                float[] fArr322 = fArr2[i5];
                int i822 = i5 + 1;
                float[] fArr422 = fArr2[i822];
                float f32 = fArr[i5];
                float f222 = fArr[i822];
                length = (fArr322.length % 2) + (fArr322.length / 2);
                Arc[] arcArr222 = new Arc[length];
                i2 = 0;
                while (i2 < length) {
                }
                arcArr[i5] = arcArr222;
                i5 = i822;
                i4 = i;
            }
            i = i7;
            float[] fArr3222 = fArr2[i5];
            int i8222 = i5 + 1;
            float[] fArr4222 = fArr2[i8222];
            float f322 = fArr[i5];
            float f2222 = fArr[i8222];
            length = (fArr3222.length % 2) + (fArr3222.length / 2);
            Arc[] arcArr2222 = new Arc[length];
            i2 = 0;
            while (i2 < length) {
            }
            arcArr[i5] = arcArr2222;
            i5 = i8222;
            i4 = i;
        }
        this.a = arcArr;
    }
}
