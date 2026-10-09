package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import defpackage.ge;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorKt {
    /* JADX WARN: Removed duplicated region for block: B:101:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long a(float f, float f2, float f3, float f4, ColorSpace colorSpace) {
        int i;
        int i2;
        int i3;
        float b;
        float a;
        int i4;
        int i5;
        int i6;
        int i7;
        float b2;
        float a2;
        int i8;
        int i9;
        int i10;
        float f5;
        float f6;
        float f7;
        float f8 = 1.0f;
        float f9 = 0.0f;
        if (colorSpace.c()) {
            if (f4 < 0.0f) {
                f5 = 0.0f;
            } else {
                f5 = f4;
            }
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            int i11 = ((int) ((f5 * 255.0f) + 0.5f)) << 24;
            if (f < 0.0f) {
                f6 = 0.0f;
            } else {
                f6 = f;
            }
            if (f6 > 1.0f) {
                f6 = 1.0f;
            }
            int i12 = i11 | (((int) ((f6 * 255.0f) + 0.5f)) << 16);
            if (f2 < 0.0f) {
                f7 = 0.0f;
            } else {
                f7 = f2;
            }
            if (f7 > 1.0f) {
                f7 = 1.0f;
            }
            int i13 = i12 | (((int) ((f7 * 255.0f) + 0.5f)) << 8);
            if (f3 >= 0.0f) {
                f9 = f3;
            }
            if (f9 <= 1.0f) {
                f8 = f9;
            }
            long j = (i13 | ((int) ((f8 * 255.0f) + 0.5f))) << 32;
            int i14 = Color.i;
            return j;
        }
        if (((int) (colorSpace.b >> 32)) != 3) {
            InlineClassHelperKt.a("Color only works with ColorSpaces with 3 components");
        }
        int i15 = colorSpace.c;
        if (i15 == -1) {
            InlineClassHelperKt.a("Unknown color space, please use a color space in ColorSpaces");
        }
        int i16 = 0;
        float b3 = colorSpace.b(0);
        float a3 = colorSpace.a(0);
        if (f >= b3) {
            b3 = f;
        }
        if (b3 <= a3) {
            a3 = b3;
        }
        int floatToRawIntBits = Float.floatToRawIntBits(a3);
        int i17 = floatToRawIntBits >>> 31;
        int i18 = (floatToRawIntBits >>> 23) & 255;
        int i19 = floatToRawIntBits & 8388607;
        if (i18 == 255) {
            if (i19 != 0) {
                i2 = 512;
            } else {
                i2 = 0;
            }
            i = 31;
        } else {
            i = i18 - 112;
            if (i >= 31) {
                i2 = 0;
                i = 49;
            } else if (i <= 0) {
                if (i >= -10) {
                    int i20 = (i19 | 8388608) >> (1 - i);
                    if ((i20 & 4096) != 0) {
                        i20 += 8192;
                    }
                    i2 = i20 >> 13;
                    i = 0;
                } else {
                    i2 = 0;
                    i = 0;
                }
            } else {
                int i21 = i19 >> 13;
                if ((floatToRawIntBits & 4096) != 0) {
                    i3 = (((i << 10) | i21) + 1) | (i17 << 15);
                    short s = (short) i3;
                    b = colorSpace.b(1);
                    a = colorSpace.a(1);
                    if (f2 >= b) {
                        b = f2;
                    }
                    if (b <= a) {
                        a = b;
                    }
                    int floatToRawIntBits2 = Float.floatToRawIntBits(a);
                    int i22 = floatToRawIntBits2 >>> 31;
                    i4 = (floatToRawIntBits2 >>> 23) & 255;
                    int i23 = floatToRawIntBits2 & 8388607;
                    if (i4 != 255) {
                        if (i23 != 0) {
                            i6 = 512;
                        } else {
                            i6 = 0;
                        }
                        i5 = 31;
                    } else {
                        i5 = i4 - 112;
                        if (i5 >= 31) {
                            i6 = 0;
                            i5 = 49;
                        } else if (i5 <= 0) {
                            if (i5 >= -10) {
                                int i24 = (i23 | 8388608) >> (1 - i5);
                                if ((i24 & 4096) != 0) {
                                    i24 += 8192;
                                }
                                i6 = i24 >> 13;
                                i5 = 0;
                            } else {
                                i6 = 0;
                                i5 = 0;
                            }
                        } else {
                            int i25 = i23 >> 13;
                            if ((floatToRawIntBits2 & 4096) != 0) {
                                i7 = (((i5 << 10) | i25) + 1) | (i22 << 15);
                                short s2 = (short) i7;
                                b2 = colorSpace.b(2);
                                a2 = colorSpace.a(2);
                                if (f3 >= b2) {
                                    b2 = f3;
                                }
                                if (b2 <= a2) {
                                    a2 = b2;
                                }
                                int floatToRawIntBits3 = Float.floatToRawIntBits(a2);
                                int i26 = floatToRawIntBits3 >>> 31;
                                i8 = (floatToRawIntBits3 >>> 23) & 255;
                                int i27 = 8388607 & floatToRawIntBits3;
                                if (i8 == 255) {
                                    if (i27 != 0) {
                                        i16 = 512;
                                    }
                                    i9 = i16;
                                    i16 = 31;
                                } else {
                                    int i28 = i8 - 112;
                                    if (i28 >= 31) {
                                        i9 = 0;
                                        i16 = 49;
                                    } else if (i28 <= 0) {
                                        if (i28 >= -10) {
                                            int i29 = (i27 | 8388608) >> (1 - i28);
                                            if ((i29 & 4096) != 0) {
                                                i29 += 8192;
                                            }
                                            i9 = i29 >> 13;
                                        } else {
                                            i9 = 0;
                                        }
                                    } else {
                                        int i30 = i27 >> 13;
                                        if ((floatToRawIntBits3 & 4096) != 0) {
                                            i10 = (((i28 << 10) | i30) + 1) | (i26 << 15);
                                            short s3 = (short) i10;
                                            if (f4 >= 0.0f) {
                                                f9 = f4;
                                            }
                                            if (f9 <= 1.0f) {
                                                f8 = f9;
                                            }
                                            long j2 = (i15 & 63) | ((s & 65535) << 48) | ((s2 & 65535) << 32) | ((65535 & s3) << 16) | ((((int) ((f8 * 1023.0f) + 0.5f)) & 1023) << 6);
                                            int i31 = Color.i;
                                            return j2;
                                        }
                                        i9 = i30;
                                        i16 = i28;
                                    }
                                }
                                i10 = i9 | (i26 << 15) | (i16 << 10);
                                short s32 = (short) i10;
                                if (f4 >= 0.0f) {
                                }
                                if (f9 <= 1.0f) {
                                }
                                long j22 = (i15 & 63) | ((s & 65535) << 48) | ((s2 & 65535) << 32) | ((65535 & s32) << 16) | ((((int) ((f8 * 1023.0f) + 0.5f)) & 1023) << 6);
                                int i312 = Color.i;
                                return j22;
                            }
                            i6 = i25;
                        }
                    }
                    i7 = i6 | (i22 << 15) | (i5 << 10);
                    short s22 = (short) i7;
                    b2 = colorSpace.b(2);
                    a2 = colorSpace.a(2);
                    if (f3 >= b2) {
                    }
                    if (b2 <= a2) {
                    }
                    int floatToRawIntBits32 = Float.floatToRawIntBits(a2);
                    int i262 = floatToRawIntBits32 >>> 31;
                    i8 = (floatToRawIntBits32 >>> 23) & 255;
                    int i272 = 8388607 & floatToRawIntBits32;
                    if (i8 == 255) {
                    }
                    i10 = i9 | (i262 << 15) | (i16 << 10);
                    short s322 = (short) i10;
                    if (f4 >= 0.0f) {
                    }
                    if (f9 <= 1.0f) {
                    }
                    long j222 = (i15 & 63) | ((s & 65535) << 48) | ((s22 & 65535) << 32) | ((65535 & s322) << 16) | ((((int) ((f8 * 1023.0f) + 0.5f)) & 1023) << 6);
                    int i3122 = Color.i;
                    return j222;
                }
                i2 = i21;
            }
        }
        i3 = i2 | (i17 << 15) | (i << 10);
        short s4 = (short) i3;
        b = colorSpace.b(1);
        a = colorSpace.a(1);
        if (f2 >= b) {
        }
        if (b <= a) {
        }
        int floatToRawIntBits22 = Float.floatToRawIntBits(a);
        int i222 = floatToRawIntBits22 >>> 31;
        i4 = (floatToRawIntBits22 >>> 23) & 255;
        int i232 = floatToRawIntBits22 & 8388607;
        if (i4 != 255) {
        }
        i7 = i6 | (i222 << 15) | (i5 << 10);
        short s222 = (short) i7;
        b2 = colorSpace.b(2);
        a2 = colorSpace.a(2);
        if (f3 >= b2) {
        }
        if (b2 <= a2) {
        }
        int floatToRawIntBits322 = Float.floatToRawIntBits(a2);
        int i2622 = floatToRawIntBits322 >>> 31;
        i8 = (floatToRawIntBits322 >>> 23) & 255;
        int i2722 = 8388607 & floatToRawIntBits322;
        if (i8 == 255) {
        }
        i10 = i9 | (i2622 << 15) | (i16 << 10);
        short s3222 = (short) i10;
        if (f4 >= 0.0f) {
        }
        if (f9 <= 1.0f) {
        }
        long j2222 = (i15 & 63) | ((s4 & 65535) << 48) | ((s222 & 65535) << 32) | ((65535 & s3222) << 16) | ((((int) ((f8 * 1023.0f) + 0.5f)) & 1023) << 6);
        int i31222 = Color.i;
        return j2222;
    }

    public static final long b(int i) {
        long j = i << 32;
        int i2 = Color.i;
        return j;
    }

    public static final long c(long j) {
        long j2 = j << 32;
        int i = Color.i;
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long d(long j, long j2) {
        float f;
        float f2;
        float f3;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        long a = Color.a(j, Color.f(j2));
        float d = Color.d(j2);
        float d2 = Color.d(a);
        float f4 = 1.0f - d2;
        float f5 = (d * f4) + d2;
        float h = Color.h(a);
        float h2 = Color.h(j2);
        if (f5 == 0.0f) {
            f = 0.0f;
        } else {
            f = (((h2 * d) * f4) + (h * d2)) / f5;
        }
        float g = Color.g(a);
        float g2 = Color.g(j2);
        if (f5 == 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = (((g2 * d) * f4) + (g * d2)) / f5;
        }
        float e = Color.e(a);
        float e2 = Color.e(j2);
        if (f5 == 0.0f) {
            f3 = 0.0f;
        } else {
            f3 = (((e2 * d) * f4) + (e * d2)) / f5;
        }
        if (Color.f(j2).c()) {
            long j3 = (((int) ((f3 * 255.0f) + 0.5f)) | (((((int) ((f5 * 255.0f) + 0.5f)) << 24) | (((int) ((f * 255.0f) + 0.5f)) << 16)) | (((int) ((f2 * 255.0f) + 0.5f)) << 8))) << 32;
            int i10 = Color.i;
            return j3;
        }
        int floatToRawIntBits = Float.floatToRawIntBits(f);
        int i11 = floatToRawIntBits >>> 31;
        int i12 = (floatToRawIntBits >>> 23) & 255;
        int i13 = floatToRawIntBits & 8388607;
        int i14 = 49;
        int i15 = 512;
        int i16 = 0;
        if (i12 == 255) {
            if (i13 != 0) {
                i2 = 512;
            } else {
                i2 = 0;
            }
            i = 31;
        } else {
            i = i12 - 112;
            if (i >= 31) {
                i = 49;
                i2 = 0;
            } else if (i <= 0) {
                if (i >= -10) {
                    int i17 = (i13 | 8388608) >> (1 - i);
                    if ((i17 & 4096) != 0) {
                        i17 += 8192;
                    }
                    i2 = i17 >> 13;
                    i = 0;
                } else {
                    i2 = 0;
                    i = 0;
                }
            } else {
                int i18 = i13 >> 13;
                if ((floatToRawIntBits & 4096) != 0) {
                    i3 = (((i << 10) | i18) + 1) | (i11 << 15);
                    short s = (short) i3;
                    int floatToRawIntBits2 = Float.floatToRawIntBits(f2);
                    int i19 = floatToRawIntBits2 >>> 31;
                    i4 = (floatToRawIntBits2 >>> 23) & 255;
                    int i20 = floatToRawIntBits2 & 8388607;
                    if (i4 != 255) {
                        if (i20 != 0) {
                            i6 = 512;
                        } else {
                            i6 = 0;
                        }
                        i5 = 31;
                    } else {
                        i5 = i4 - 112;
                        if (i5 >= 31) {
                            i5 = 49;
                            i6 = 0;
                        } else if (i5 <= 0) {
                            if (i5 >= -10) {
                                int i21 = (i20 | 8388608) >> (1 - i5);
                                if ((i21 & 4096) != 0) {
                                    i21 += 8192;
                                }
                                i6 = i21 >> 13;
                                i5 = 0;
                            } else {
                                i6 = 0;
                                i5 = 0;
                            }
                        } else {
                            int i22 = i20 >> 13;
                            if ((floatToRawIntBits2 & 4096) != 0) {
                                i7 = (((i5 << 10) | i22) + 1) | (i19 << 15);
                                short s2 = (short) i7;
                                int floatToRawIntBits3 = Float.floatToRawIntBits(f3);
                                int i23 = floatToRawIntBits3 >>> 31;
                                i8 = (floatToRawIntBits3 >>> 23) & 255;
                                int i24 = 8388607 & floatToRawIntBits3;
                                if (i8 == 255) {
                                    if (i24 == 0) {
                                        i15 = 0;
                                    }
                                    i14 = 31;
                                    i16 = i15;
                                } else {
                                    int i25 = i8 - 112;
                                    if (i25 < 31) {
                                        if (i25 <= 0) {
                                            if (i25 >= -10) {
                                                int i26 = (i24 | 8388608) >> (1 - i25);
                                                if ((i26 & 4096) != 0) {
                                                    i26 += 8192;
                                                }
                                                i14 = 0;
                                                i16 = i26 >> 13;
                                            } else {
                                                i14 = 0;
                                            }
                                        } else {
                                            i16 = i24 >> 13;
                                            if ((floatToRawIntBits3 & 4096) != 0) {
                                                i9 = (((i25 << 10) | i16) + 1) | (i23 << 15);
                                                long max = ((((short) i9) & 65535) << 16) | ((s & 65535) << 48) | ((s2 & 65535) << 32) | ((((int) ((Math.max(0.0f, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6) | (r0.c & 63);
                                                int i27 = Color.i;
                                                return max;
                                            }
                                            i14 = i25;
                                        }
                                    }
                                }
                                i9 = (i23 << 15) | (i14 << 10) | i16;
                                long max2 = ((((short) i9) & 65535) << 16) | ((s & 65535) << 48) | ((s2 & 65535) << 32) | ((((int) ((Math.max(0.0f, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6) | (r0.c & 63);
                                int i272 = Color.i;
                                return max2;
                            }
                            i6 = i22;
                        }
                    }
                    i7 = i6 | (i19 << 15) | (i5 << 10);
                    short s22 = (short) i7;
                    int floatToRawIntBits32 = Float.floatToRawIntBits(f3);
                    int i232 = floatToRawIntBits32 >>> 31;
                    i8 = (floatToRawIntBits32 >>> 23) & 255;
                    int i242 = 8388607 & floatToRawIntBits32;
                    if (i8 == 255) {
                    }
                    i9 = (i232 << 15) | (i14 << 10) | i16;
                    long max22 = ((((short) i9) & 65535) << 16) | ((s & 65535) << 48) | ((s22 & 65535) << 32) | ((((int) ((Math.max(0.0f, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6) | (r0.c & 63);
                    int i2722 = Color.i;
                    return max22;
                }
                i2 = i18;
            }
        }
        i3 = i2 | (i11 << 15) | (i << 10);
        short s3 = (short) i3;
        int floatToRawIntBits22 = Float.floatToRawIntBits(f2);
        int i192 = floatToRawIntBits22 >>> 31;
        i4 = (floatToRawIntBits22 >>> 23) & 255;
        int i202 = floatToRawIntBits22 & 8388607;
        if (i4 != 255) {
        }
        i7 = i6 | (i192 << 15) | (i5 << 10);
        short s222 = (short) i7;
        int floatToRawIntBits322 = Float.floatToRawIntBits(f3);
        int i2322 = floatToRawIntBits322 >>> 31;
        i8 = (floatToRawIntBits322 >>> 23) & 255;
        int i2422 = 8388607 & floatToRawIntBits322;
        if (i8 == 255) {
        }
        i9 = (i2322 << 15) | (i14 << 10) | i16;
        long max222 = ((((short) i9) & 65535) << 16) | ((s3 & 65535) << 48) | ((s222 & 65535) << 32) | ((((int) ((Math.max(0.0f, Math.min(f5, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6) | (r0.c & 63);
        int i27222 = Color.i;
        return max222;
    }

    public static final float e(long j) {
        ColorSpace f = Color.f(j);
        if (!ColorModel.a(f.b, 12884901888L)) {
            InlineClassHelperKt.a("The specified color must be encoded in an RGB color space. The supplied color space is ".concat(ColorModel.b(f.b)));
        }
        ge geVar = ((Rgb) f).p;
        double e = geVar.e(Color.h(j));
        float e2 = (float) ((geVar.e(Color.e(j)) * 0.0722d) + (geVar.e(Color.g(j)) * 0.7152d) + (e * 0.2126d));
        if (e2 < 0.0f) {
            e2 = 0.0f;
        }
        if (e2 > 1.0f) {
            return 1.0f;
        }
        return e2;
    }

    public static final int f(long j) {
        float[] fArr = ColorSpaces.a;
        return (int) (Color.a(j, ColorSpaces.e) >>> 32);
    }
}
