package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.fe;
import defpackage.ge;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Rgb extends ColorSpace {
    public static final fe r = new fe(5);
    public final WhitePoint d;
    public final float e;
    public final float f;
    public final TransferParameters g;
    public final float[] h;
    public final float[] i;
    public final float[] j;
    public final DoubleFunction k;
    public final Function1 l;
    public final ge m;
    public final DoubleFunction n;
    public final Function1 o;
    public final ge p;
    public final boolean q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static float a(float[] fArr) {
            if (fArr.length < 6) {
                return 0.0f;
            }
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = fArr[5];
            float f7 = (((((f3 * f6) + ((f2 * f5) + (f * f4))) - (f4 * f5)) - (f2 * f3)) - (f * f6)) * 0.5f;
            if (f7 < 0.0f) {
                return -f7;
            }
            return f7;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x01e0, code lost:
    
        if ((((r25 - r12) * r3) - ((r1 - r15) * r10)) >= 0.0f) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r44v1 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r44v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, float[] fArr2, DoubleFunction doubleFunction, DoubleFunction doubleFunction2, float f, float f2, TransferParameters transferParameters, int i) {
        super(i, 12884901888L, str);
        ?? r44;
        float f3;
        float f4;
        boolean z;
        this.d = whitePoint;
        this.e = f;
        this.f = f2;
        this.g = transferParameters;
        this.k = doubleFunction;
        this.l = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$oetf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                return Double.valueOf(RangesKt.b(Rgb.this.k.e(((Number) obj).doubleValue()), r8.e, r8.f));
            }
        };
        this.m = new ge(this, 0);
        this.n = doubleFunction2;
        this.o = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$eotf$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                double doubleValue = ((Number) obj).doubleValue();
                return Double.valueOf(Rgb.this.n.e(RangesKt.b(doubleValue, r6.e, r6.f)));
            }
        };
        this.p = new ge(this, 1);
        if (fArr.length != 6 && fArr.length != 9) {
            u2.g("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
            throw null;
        }
        if (f < f2) {
            float[] fArr3 = new float[6];
            if (fArr.length == 9) {
                float f5 = fArr[0];
                float f6 = fArr[1];
                float f7 = f5 + f6 + fArr[2];
                fArr3[0] = f5 / f7;
                fArr3[1] = f6 / f7;
                float f8 = fArr[3];
                float f9 = fArr[4];
                float f10 = f8 + f9 + fArr[5];
                fArr3[2] = f8 / f10;
                fArr3[3] = f9 / f10;
                float f11 = fArr[6];
                float f12 = fArr[7];
                float f13 = f11 + f12 + fArr[8];
                fArr3[4] = f11 / f13;
                fArr3[5] = f12 / f13;
            } else {
                System.arraycopy(fArr, 0, fArr3, 0, 6);
            }
            this.h = fArr3;
            if (fArr2 == null) {
                float f14 = fArr3[0];
                float f15 = fArr3[1];
                float f16 = fArr3[2];
                float f17 = fArr3[3];
                float f18 = fArr3[4];
                float f19 = fArr3[5];
                f3 = 1.0f;
                float f20 = whitePoint.a;
                r44 = 0;
                float f21 = whitePoint.b;
                float f22 = 1.0f - f14;
                float f23 = f22 / f15;
                float f24 = 1.0f - f16;
                float f25 = 1.0f - f18;
                float f26 = (1.0f - f20) / f21;
                float f27 = f14 / f15;
                float f28 = (f16 / f17) - f27;
                float f29 = (f20 / f21) - f27;
                float f30 = (f24 / f17) - f23;
                float f31 = (f18 / f19) - f27;
                float f32 = (((f26 - f23) * f28) - (f29 * f30)) / ((((f25 / f19) - f23) * f28) - (f30 * f31));
                float f33 = (f29 - (f31 * f32)) / f28;
                float f34 = (1.0f - f33) - f32;
                float f35 = f34 / f15;
                float f36 = f33 / f17;
                float f37 = f32 / f19;
                this.i = new float[]{f14 * f35, f34, (f22 - f15) * f35, f16 * f36, f33, (f24 - f17) * f36, f18 * f37, f32, (f25 - f19) * f37};
            } else {
                r44 = 0;
                f3 = 1.0f;
                if (fArr2.length == 9) {
                    this.i = fArr2;
                } else {
                    u2.g(q.g(fArr2.length, "Transform must have 9 entries! Has "));
                    throw null;
                }
            }
            this.j = ColorSpaceKt.e(this.i);
            float a = Companion.a(fArr3);
            float[] fArr4 = ColorSpaces.a;
            if (a / Companion.a(ColorSpaces.b) > 0.9f) {
                float[] fArr5 = ColorSpaces.a;
                float f38 = fArr3[r44];
                float f39 = fArr5[r44];
                float f40 = fArr3[1];
                float f41 = fArr5[1];
                float f42 = fArr3[2];
                float f43 = fArr5[2];
                float f44 = fArr3[3];
                float f45 = fArr5[3];
                float f46 = fArr3[4];
                float f47 = fArr5[4];
                float f48 = fArr3[5];
                float f49 = fArr5[5];
                f4 = 0.0f;
                float[] fArr6 = new float[6];
                fArr6[r44] = f38 - f39;
                fArr6[1] = f40 - f41;
                fArr6[2] = f42 - f43;
                fArr6[3] = f44 - f45;
                fArr6[4] = f46 - f47;
                fArr6[5] = f48 - f49;
                float f50 = fArr6[r44];
                float f51 = fArr6[1];
                if (((f41 - f49) * f50) - ((f39 - f47) * f51) >= 0.0f && ((f39 - f43) * f51) - ((f41 - f45) * f50) >= 0.0f) {
                    float f52 = fArr6[2];
                    float f53 = fArr6[3];
                    if (((f45 - f41) * f52) - ((f43 - f39) * f53) >= 0.0f && ((f43 - f47) * f53) - ((f45 - f49) * f52) >= 0.0f) {
                        float f54 = fArr6[4];
                        float f55 = fArr6[5];
                        if (((f49 - f45) * f54) - ((f47 - f43) * f55) >= 0.0f) {
                        }
                    }
                }
            } else {
                f4 = 0.0f;
            }
            int i2 = (f > f4 ? 1 : (f == f4 ? 0 : -1));
            if (i != 0) {
                float[] fArr7 = ColorSpaces.a;
                if (fArr3 != fArr7) {
                    for (int i3 = r44; i3 < 6; i3++) {
                        if (Float.compare(fArr3[i3], fArr7[i3]) != 0 && Math.abs(fArr3[i3] - fArr7[i3]) > 0.001f) {
                            break;
                        }
                    }
                }
                if (ColorSpaceKt.c(whitePoint, Illuminant.d) && f == f4 && f2 == f3) {
                    float[] fArr8 = ColorSpaces.a;
                    Rgb rgb = ColorSpaces.e;
                    for (double d = 0.0d; d <= 1.0d; d += 0.00392156862745098d) {
                        if (Math.abs(doubleFunction.e(d) - rgb.k.e(d)) <= 0.001d && Math.abs(doubleFunction2.e(d) - rgb.n.e(d)) <= 0.001d) {
                        }
                    }
                }
                z = r44;
                this.q = z;
                return;
            }
            z = true;
            this.q = z;
            return;
        }
        throw new IllegalArgumentException("Invalid range: min=" + f + ", max=" + f2 + "; min must be strictly < max");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float a(int i) {
        return this.f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i) {
        return this.e;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final boolean c() {
        return this.q;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long d(float f, float f2, float f3) {
        double d = f;
        ge geVar = this.p;
        float e = (float) geVar.e(d);
        float e2 = (float) geVar.e(f2);
        float e3 = (float) geVar.e(f3);
        float[] fArr = this.i;
        if (fArr.length < 9) {
            return 0L;
        }
        float f4 = (fArr[6] * e3) + (fArr[3] * e2) + (fArr[0] * e);
        float f5 = (fArr[7] * e3) + (fArr[4] * e2) + (fArr[1] * e);
        return (Float.floatToRawIntBits(f4) << 32) | (4294967295L & Float.floatToRawIntBits(f5));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float e(float f, float f2, float f3) {
        double d = f;
        ge geVar = this.p;
        float e = (float) geVar.e(d);
        float e2 = (float) geVar.e(f2);
        float e3 = (float) geVar.e(f3);
        float[] fArr = this.i;
        return (fArr[8] * e3) + (fArr[5] * e2) + (fArr[2] * e);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Rgb.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.e, this.e) != 0 || Float.compare(rgb.f, this.f) != 0 || !Intrinsics.a(this.d, rgb.d) || !Arrays.equals(this.h, rgb.h)) {
            return false;
        }
        TransferParameters transferParameters = rgb.g;
        TransferParameters transferParameters2 = this.g;
        if (transferParameters2 != null) {
            return Intrinsics.a(transferParameters2, transferParameters);
        }
        if (transferParameters == null) {
            return true;
        }
        if (!Intrinsics.a(this.k, rgb.k)) {
            return false;
        }
        return Intrinsics.a(this.n, rgb.n);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long f(float f, float f2, float f3, float f4, ColorSpace colorSpace) {
        float[] fArr = this.j;
        float f5 = (fArr[6] * f3) + (fArr[3] * f2) + (fArr[0] * f);
        float f6 = (fArr[7] * f3) + (fArr[4] * f2) + (fArr[1] * f);
        float f7 = (fArr[8] * f3) + (fArr[5] * f2) + (fArr[2] * f);
        ge geVar = this.m;
        return ColorKt.a((float) geVar.e(f5), (float) geVar.e(f6), (float) geVar.e(f7), f4, colorSpace);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final int hashCode() {
        int floatToIntBits;
        int floatToIntBits2;
        int hashCode = (Arrays.hashCode(this.h) + ((this.d.hashCode() + (super.hashCode() * 31)) * 31)) * 31;
        float f = this.e;
        int i = 0;
        if (f == 0.0f) {
            floatToIntBits = 0;
        } else {
            floatToIntBits = Float.floatToIntBits(f);
        }
        int i2 = (hashCode + floatToIntBits) * 31;
        float f2 = this.f;
        if (f2 == 0.0f) {
            floatToIntBits2 = 0;
        } else {
            floatToIntBits2 = Float.floatToIntBits(f2);
        }
        int i3 = (i2 + floatToIntBits2) * 31;
        TransferParameters transferParameters = this.g;
        if (transferParameters != null) {
            i = transferParameters.hashCode();
        }
        int i4 = i3 + i;
        if (transferParameters == null) {
            return this.n.hashCode() + ((this.k.hashCode() + (i4 * 31)) * 31);
        }
        return i4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, final TransferParameters transferParameters, int i) {
        this(str, fArr, whitePoint, null, r4, r0, 0.0f, 1.0f, transferParameters, i);
        double d;
        DoubleFunction doubleFunction;
        DoubleFunction doubleFunction2;
        double d2 = transferParameters.a;
        final int i2 = 0;
        final int i3 = 1;
        boolean z = d2 == -3.0d;
        double d3 = transferParameters.g;
        double d4 = transferParameters.f;
        if (z) {
            d = -3.0d;
            final int i4 = 4;
            doubleFunction = new DoubleFunction() { // from class: ie
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d5) {
                    int i5 = i4;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i5) {
                        case 0:
                            float[] fArr2 = ColorSpaces.a;
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            float[] fArr3 = ColorSpaces.a;
                            return ColorSpaces.c(transferParameters2, d5);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            double d6 = transferParameters2.b;
                            double d7 = transferParameters2.c;
                            double d8 = transferParameters2.d;
                            double d9 = transferParameters2.e;
                            double d10 = transferParameters2.a;
                            if (d5 >= d9) {
                                return Math.pow((d6 * d5) + d7, d10);
                            }
                            return d8 * d5;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            double d11 = transferParameters2.b;
                            double d12 = transferParameters2.c;
                            double d13 = transferParameters2.d;
                            double d14 = transferParameters2.e;
                            double d15 = transferParameters2.f;
                            double d16 = transferParameters2.g;
                            double d17 = transferParameters2.a;
                            if (d5 >= d14) {
                                return Math.pow((d11 * d5) + d12, d17) + d15;
                            }
                            return (d13 * d5) + d16;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            float[] fArr4 = ColorSpaces.a;
                            return ColorSpaces.b(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            float[] fArr5 = ColorSpaces.a;
                            return ColorSpaces.d(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            double d18 = transferParameters2.b;
                            double d19 = transferParameters2.c;
                            double d20 = transferParameters2.d;
                            double d21 = transferParameters2.e;
                            double d22 = transferParameters2.a;
                            if (d5 >= d21 * d20) {
                                return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                            }
                            return d5 / d20;
                        default:
                            double d23 = transferParameters2.b;
                            double d24 = transferParameters2.c;
                            double d25 = transferParameters2.d;
                            double d26 = transferParameters2.e;
                            double d27 = transferParameters2.f;
                            double d28 = transferParameters2.g;
                            double d29 = transferParameters2.a;
                            if (d5 >= d26 * d25) {
                                return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                            }
                            return (d5 - d28) / d25;
                    }
                }
            };
        } else {
            d = -3.0d;
            if (d2 == -2.0d) {
                final int i5 = 5;
                doubleFunction = new DoubleFunction() { // from class: ie
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double e(double d5) {
                        int i52 = i5;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = ColorSpaces.a;
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                float[] fArr3 = ColorSpaces.a;
                                return ColorSpaces.c(transferParameters2, d5);
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                double d6 = transferParameters2.b;
                                double d7 = transferParameters2.c;
                                double d8 = transferParameters2.d;
                                double d9 = transferParameters2.e;
                                double d10 = transferParameters2.a;
                                if (d5 >= d9) {
                                    return Math.pow((d6 * d5) + d7, d10);
                                }
                                return d8 * d5;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                double d11 = transferParameters2.b;
                                double d12 = transferParameters2.c;
                                double d13 = transferParameters2.d;
                                double d14 = transferParameters2.e;
                                double d15 = transferParameters2.f;
                                double d16 = transferParameters2.g;
                                double d17 = transferParameters2.a;
                                if (d5 >= d14) {
                                    return Math.pow((d11 * d5) + d12, d17) + d15;
                                }
                                return (d13 * d5) + d16;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                float[] fArr4 = ColorSpaces.a;
                                return ColorSpaces.b(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                float[] fArr5 = ColorSpaces.a;
                                return ColorSpaces.d(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                double d18 = transferParameters2.b;
                                double d19 = transferParameters2.c;
                                double d20 = transferParameters2.d;
                                double d21 = transferParameters2.e;
                                double d22 = transferParameters2.a;
                                if (d5 >= d21 * d20) {
                                    return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                                }
                                return d5 / d20;
                            default:
                                double d23 = transferParameters2.b;
                                double d24 = transferParameters2.c;
                                double d25 = transferParameters2.d;
                                double d26 = transferParameters2.e;
                                double d27 = transferParameters2.f;
                                double d28 = transferParameters2.g;
                                double d29 = transferParameters2.a;
                                if (d5 >= d26 * d25) {
                                    return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                                }
                                return (d5 - d28) / d25;
                        }
                    }
                };
            } else if (d4 == 0.0d && d3 == 0.0d) {
                final int i6 = 6;
                doubleFunction = new DoubleFunction() { // from class: ie
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double e(double d5) {
                        int i52 = i6;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = ColorSpaces.a;
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                float[] fArr3 = ColorSpaces.a;
                                return ColorSpaces.c(transferParameters2, d5);
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                double d6 = transferParameters2.b;
                                double d7 = transferParameters2.c;
                                double d8 = transferParameters2.d;
                                double d9 = transferParameters2.e;
                                double d10 = transferParameters2.a;
                                if (d5 >= d9) {
                                    return Math.pow((d6 * d5) + d7, d10);
                                }
                                return d8 * d5;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                double d11 = transferParameters2.b;
                                double d12 = transferParameters2.c;
                                double d13 = transferParameters2.d;
                                double d14 = transferParameters2.e;
                                double d15 = transferParameters2.f;
                                double d16 = transferParameters2.g;
                                double d17 = transferParameters2.a;
                                if (d5 >= d14) {
                                    return Math.pow((d11 * d5) + d12, d17) + d15;
                                }
                                return (d13 * d5) + d16;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                float[] fArr4 = ColorSpaces.a;
                                return ColorSpaces.b(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                float[] fArr5 = ColorSpaces.a;
                                return ColorSpaces.d(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                double d18 = transferParameters2.b;
                                double d19 = transferParameters2.c;
                                double d20 = transferParameters2.d;
                                double d21 = transferParameters2.e;
                                double d22 = transferParameters2.a;
                                if (d5 >= d21 * d20) {
                                    return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                                }
                                return d5 / d20;
                            default:
                                double d23 = transferParameters2.b;
                                double d24 = transferParameters2.c;
                                double d25 = transferParameters2.d;
                                double d26 = transferParameters2.e;
                                double d27 = transferParameters2.f;
                                double d28 = transferParameters2.g;
                                double d29 = transferParameters2.a;
                                if (d5 >= d26 * d25) {
                                    return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                                }
                                return (d5 - d28) / d25;
                        }
                    }
                };
            } else {
                final int i7 = 7;
                doubleFunction = new DoubleFunction() { // from class: ie
                    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                    public final double e(double d5) {
                        int i52 = i7;
                        TransferParameters transferParameters2 = transferParameters;
                        switch (i52) {
                            case 0:
                                float[] fArr2 = ColorSpaces.a;
                                return ColorSpaces.a(transferParameters2, d5);
                            case 1:
                                float[] fArr3 = ColorSpaces.a;
                                return ColorSpaces.c(transferParameters2, d5);
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                double d6 = transferParameters2.b;
                                double d7 = transferParameters2.c;
                                double d8 = transferParameters2.d;
                                double d9 = transferParameters2.e;
                                double d10 = transferParameters2.a;
                                if (d5 >= d9) {
                                    return Math.pow((d6 * d5) + d7, d10);
                                }
                                return d8 * d5;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                double d11 = transferParameters2.b;
                                double d12 = transferParameters2.c;
                                double d13 = transferParameters2.d;
                                double d14 = transferParameters2.e;
                                double d15 = transferParameters2.f;
                                double d16 = transferParameters2.g;
                                double d17 = transferParameters2.a;
                                if (d5 >= d14) {
                                    return Math.pow((d11 * d5) + d12, d17) + d15;
                                }
                                return (d13 * d5) + d16;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                float[] fArr4 = ColorSpaces.a;
                                return ColorSpaces.b(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                float[] fArr5 = ColorSpaces.a;
                                return ColorSpaces.d(transferParameters2, d5);
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                double d18 = transferParameters2.b;
                                double d19 = transferParameters2.c;
                                double d20 = transferParameters2.d;
                                double d21 = transferParameters2.e;
                                double d22 = transferParameters2.a;
                                if (d5 >= d21 * d20) {
                                    return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                                }
                                return d5 / d20;
                            default:
                                double d23 = transferParameters2.b;
                                double d24 = transferParameters2.c;
                                double d25 = transferParameters2.d;
                                double d26 = transferParameters2.e;
                                double d27 = transferParameters2.f;
                                double d28 = transferParameters2.g;
                                double d29 = transferParameters2.a;
                                if (d5 >= d26 * d25) {
                                    return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                                }
                                return (d5 - d28) / d25;
                        }
                    }
                };
            }
        }
        if (d2 == d) {
            doubleFunction2 = new DoubleFunction() { // from class: ie
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d5) {
                    int i52 = i2;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = ColorSpaces.a;
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            float[] fArr3 = ColorSpaces.a;
                            return ColorSpaces.c(transferParameters2, d5);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            double d6 = transferParameters2.b;
                            double d7 = transferParameters2.c;
                            double d8 = transferParameters2.d;
                            double d9 = transferParameters2.e;
                            double d10 = transferParameters2.a;
                            if (d5 >= d9) {
                                return Math.pow((d6 * d5) + d7, d10);
                            }
                            return d8 * d5;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            double d11 = transferParameters2.b;
                            double d12 = transferParameters2.c;
                            double d13 = transferParameters2.d;
                            double d14 = transferParameters2.e;
                            double d15 = transferParameters2.f;
                            double d16 = transferParameters2.g;
                            double d17 = transferParameters2.a;
                            if (d5 >= d14) {
                                return Math.pow((d11 * d5) + d12, d17) + d15;
                            }
                            return (d13 * d5) + d16;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            float[] fArr4 = ColorSpaces.a;
                            return ColorSpaces.b(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            float[] fArr5 = ColorSpaces.a;
                            return ColorSpaces.d(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            double d18 = transferParameters2.b;
                            double d19 = transferParameters2.c;
                            double d20 = transferParameters2.d;
                            double d21 = transferParameters2.e;
                            double d22 = transferParameters2.a;
                            if (d5 >= d21 * d20) {
                                return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                            }
                            return d5 / d20;
                        default:
                            double d23 = transferParameters2.b;
                            double d24 = transferParameters2.c;
                            double d25 = transferParameters2.d;
                            double d26 = transferParameters2.e;
                            double d27 = transferParameters2.f;
                            double d28 = transferParameters2.g;
                            double d29 = transferParameters2.a;
                            if (d5 >= d26 * d25) {
                                return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                            }
                            return (d5 - d28) / d25;
                    }
                }
            };
        } else if (d2 == -2.0d) {
            doubleFunction2 = new DoubleFunction() { // from class: ie
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d5) {
                    int i52 = i3;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = ColorSpaces.a;
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            float[] fArr3 = ColorSpaces.a;
                            return ColorSpaces.c(transferParameters2, d5);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            double d6 = transferParameters2.b;
                            double d7 = transferParameters2.c;
                            double d8 = transferParameters2.d;
                            double d9 = transferParameters2.e;
                            double d10 = transferParameters2.a;
                            if (d5 >= d9) {
                                return Math.pow((d6 * d5) + d7, d10);
                            }
                            return d8 * d5;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            double d11 = transferParameters2.b;
                            double d12 = transferParameters2.c;
                            double d13 = transferParameters2.d;
                            double d14 = transferParameters2.e;
                            double d15 = transferParameters2.f;
                            double d16 = transferParameters2.g;
                            double d17 = transferParameters2.a;
                            if (d5 >= d14) {
                                return Math.pow((d11 * d5) + d12, d17) + d15;
                            }
                            return (d13 * d5) + d16;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            float[] fArr4 = ColorSpaces.a;
                            return ColorSpaces.b(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            float[] fArr5 = ColorSpaces.a;
                            return ColorSpaces.d(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            double d18 = transferParameters2.b;
                            double d19 = transferParameters2.c;
                            double d20 = transferParameters2.d;
                            double d21 = transferParameters2.e;
                            double d22 = transferParameters2.a;
                            if (d5 >= d21 * d20) {
                                return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                            }
                            return d5 / d20;
                        default:
                            double d23 = transferParameters2.b;
                            double d24 = transferParameters2.c;
                            double d25 = transferParameters2.d;
                            double d26 = transferParameters2.e;
                            double d27 = transferParameters2.f;
                            double d28 = transferParameters2.g;
                            double d29 = transferParameters2.a;
                            if (d5 >= d26 * d25) {
                                return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                            }
                            return (d5 - d28) / d25;
                    }
                }
            };
        } else if (d4 == 0.0d && d3 == 0.0d) {
            final int i8 = 2;
            doubleFunction2 = new DoubleFunction() { // from class: ie
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d5) {
                    int i52 = i8;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = ColorSpaces.a;
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            float[] fArr3 = ColorSpaces.a;
                            return ColorSpaces.c(transferParameters2, d5);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            double d6 = transferParameters2.b;
                            double d7 = transferParameters2.c;
                            double d8 = transferParameters2.d;
                            double d9 = transferParameters2.e;
                            double d10 = transferParameters2.a;
                            if (d5 >= d9) {
                                return Math.pow((d6 * d5) + d7, d10);
                            }
                            return d8 * d5;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            double d11 = transferParameters2.b;
                            double d12 = transferParameters2.c;
                            double d13 = transferParameters2.d;
                            double d14 = transferParameters2.e;
                            double d15 = transferParameters2.f;
                            double d16 = transferParameters2.g;
                            double d17 = transferParameters2.a;
                            if (d5 >= d14) {
                                return Math.pow((d11 * d5) + d12, d17) + d15;
                            }
                            return (d13 * d5) + d16;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            float[] fArr4 = ColorSpaces.a;
                            return ColorSpaces.b(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            float[] fArr5 = ColorSpaces.a;
                            return ColorSpaces.d(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            double d18 = transferParameters2.b;
                            double d19 = transferParameters2.c;
                            double d20 = transferParameters2.d;
                            double d21 = transferParameters2.e;
                            double d22 = transferParameters2.a;
                            if (d5 >= d21 * d20) {
                                return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                            }
                            return d5 / d20;
                        default:
                            double d23 = transferParameters2.b;
                            double d24 = transferParameters2.c;
                            double d25 = transferParameters2.d;
                            double d26 = transferParameters2.e;
                            double d27 = transferParameters2.f;
                            double d28 = transferParameters2.g;
                            double d29 = transferParameters2.a;
                            if (d5 >= d26 * d25) {
                                return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                            }
                            return (d5 - d28) / d25;
                    }
                }
            };
        } else {
            final int i9 = 3;
            doubleFunction2 = new DoubleFunction() { // from class: ie
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d5) {
                    int i52 = i9;
                    TransferParameters transferParameters2 = transferParameters;
                    switch (i52) {
                        case 0:
                            float[] fArr2 = ColorSpaces.a;
                            return ColorSpaces.a(transferParameters2, d5);
                        case 1:
                            float[] fArr3 = ColorSpaces.a;
                            return ColorSpaces.c(transferParameters2, d5);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            double d6 = transferParameters2.b;
                            double d7 = transferParameters2.c;
                            double d8 = transferParameters2.d;
                            double d9 = transferParameters2.e;
                            double d10 = transferParameters2.a;
                            if (d5 >= d9) {
                                return Math.pow((d6 * d5) + d7, d10);
                            }
                            return d8 * d5;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            double d11 = transferParameters2.b;
                            double d12 = transferParameters2.c;
                            double d13 = transferParameters2.d;
                            double d14 = transferParameters2.e;
                            double d15 = transferParameters2.f;
                            double d16 = transferParameters2.g;
                            double d17 = transferParameters2.a;
                            if (d5 >= d14) {
                                return Math.pow((d11 * d5) + d12, d17) + d15;
                            }
                            return (d13 * d5) + d16;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            float[] fArr4 = ColorSpaces.a;
                            return ColorSpaces.b(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            float[] fArr5 = ColorSpaces.a;
                            return ColorSpaces.d(transferParameters2, d5);
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            double d18 = transferParameters2.b;
                            double d19 = transferParameters2.c;
                            double d20 = transferParameters2.d;
                            double d21 = transferParameters2.e;
                            double d22 = transferParameters2.a;
                            if (d5 >= d21 * d20) {
                                return (Math.pow(d5, 1.0d / d22) - d19) / d18;
                            }
                            return d5 / d20;
                        default:
                            double d23 = transferParameters2.b;
                            double d24 = transferParameters2.c;
                            double d25 = transferParameters2.d;
                            double d26 = transferParameters2.e;
                            double d27 = transferParameters2.f;
                            double d28 = transferParameters2.g;
                            double d29 = transferParameters2.a;
                            if (d5 >= d26 * d25) {
                                return (Math.pow(d5 - d27, 1.0d / d29) - d24) / d23;
                            }
                            return (d5 - d28) / d25;
                    }
                }
            };
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, final double d, float f, float f2, int i) {
        this(str, fArr, whitePoint, null, r11, r12, f, f2, new TransferParameters(d, 1.0d, 0.0d, 0.0d, 0.0d), i);
        DoubleFunction doubleFunction;
        DoubleFunction doubleFunction2 = r;
        if (d == 1.0d) {
            doubleFunction = doubleFunction2;
        } else {
            final int i2 = 0;
            doubleFunction = new DoubleFunction() { // from class: he
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d2) {
                    switch (i2) {
                        case 0:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, 1.0d / d);
                        default:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, d);
                    }
                }
            };
        }
        if (d != 1.0d) {
            final int i3 = 1;
            doubleFunction2 = new DoubleFunction() { // from class: he
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double e(double d2) {
                    switch (i3) {
                        case 0:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, 1.0d / d);
                        default:
                            if (d2 < 0.0d) {
                                d2 = 0.0d;
                            }
                            return Math.pow(d2, d);
                    }
                }
            };
        }
        DoubleFunction doubleFunction3 = doubleFunction2;
    }
}
