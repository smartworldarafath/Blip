package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.util.MathHelpersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Oklab extends ColorSpace {
    public static final float[] d;
    public static final float[] e;
    public static final float[] f;
    public static final float[] g;

    static {
        float[] f2 = ColorSpaceKt.f(new float[]{0.818933f, 0.032984544f, 0.0482003f, 0.36186674f, 0.9293119f, 0.26436627f, -0.12885971f, 0.03614564f, 0.6338517f}, ColorSpaceKt.b(Adaptation.b.a, Illuminant.b.a(), Illuminant.d.a()));
        d = f2;
        float[] fArr = {0.21045426f, 1.9779985f, 0.025904037f, 0.7936178f, -2.4285922f, 0.78277177f, -0.004072047f, 0.4505937f, -0.80867577f};
        e = fArr;
        f = ColorSpaceKt.e(f2);
        g = ColorSpaceKt.e(fArr);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float a(int i) {
        if (i == 0) {
            return 1.0f;
        }
        return 0.5f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i) {
        if (i == 0) {
            return 0.0f;
        }
        return -0.5f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long d(float f2, float f3, float f4) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (f3 < -0.5f) {
            f3 = -0.5f;
        }
        float f5 = 0.5f;
        if (f3 > 0.5f) {
            f3 = 0.5f;
        }
        if (f4 < -0.5f) {
            f4 = -0.5f;
        }
        if (f4 <= 0.5f) {
            f5 = f4;
        }
        float[] fArr = g;
        float f6 = (fArr[6] * f5) + (fArr[3] * f3) + (fArr[0] * f2);
        float f7 = (fArr[7] * f5) + (fArr[4] * f3) + (fArr[1] * f2);
        float f8 = (fArr[8] * f5) + (fArr[5] * f3) + (fArr[2] * f2);
        float f9 = f6 * f6 * f6;
        float f10 = f7 * f7 * f7;
        float f11 = f8 * f8 * f8;
        float[] fArr2 = f;
        float f12 = (fArr2[6] * f11) + (fArr2[3] * f10) + (fArr2[0] * f9);
        float f13 = (fArr2[7] * f11) + (fArr2[4] * f10) + (fArr2[1] * f9);
        return (Float.floatToRawIntBits(f12) << 32) | (4294967295L & Float.floatToRawIntBits(f13));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float e(float f2, float f3, float f4) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (f3 < -0.5f) {
            f3 = -0.5f;
        }
        float f5 = 0.5f;
        if (f3 > 0.5f) {
            f3 = 0.5f;
        }
        if (f4 < -0.5f) {
            f4 = -0.5f;
        }
        if (f4 <= 0.5f) {
            f5 = f4;
        }
        float[] fArr = g;
        float f6 = (fArr[6] * f5) + (fArr[3] * f3) + (fArr[0] * f2);
        float f7 = (fArr[7] * f5) + (fArr[4] * f3) + (fArr[1] * f2);
        float f8 = (fArr[8] * f5) + (fArr[5] * f3) + (fArr[2] * f2);
        float f9 = f6 * f6 * f6;
        float f10 = f7 * f7 * f7;
        float f11 = f8 * f8 * f8;
        float[] fArr2 = f;
        return (fArr2[8] * f11) + (fArr2[5] * f10) + (fArr2[2] * f9);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long f(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        float[] fArr = d;
        float f6 = (fArr[6] * f4) + (fArr[3] * f3) + (fArr[0] * f2);
        float f7 = (fArr[7] * f4) + (fArr[4] * f3) + (fArr[1] * f2);
        float f8 = (fArr[8] * f4) + (fArr[5] * f3) + (fArr[2] * f2);
        float a = MathHelpersKt.a(f6);
        float a2 = MathHelpersKt.a(f7);
        float a3 = MathHelpersKt.a(f8);
        float[] fArr2 = e;
        return ColorKt.a((fArr2[6] * a3) + (fArr2[3] * a2) + (fArr2[0] * a), (fArr2[7] * a3) + (fArr2[4] * a2) + (fArr2[1] * a), (fArr2[8] * a3) + (fArr2[5] * a2) + (fArr2[2] * a), f5, colorSpace);
    }
}
