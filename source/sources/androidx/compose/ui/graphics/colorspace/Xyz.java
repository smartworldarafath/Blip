package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Xyz extends ColorSpace {
    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float a(int i) {
        return 2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float b(int i) {
        return -2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long d(float f, float f2, float f3) {
        if (f < -2.0f) {
            f = -2.0f;
        }
        float f4 = 2.0f;
        if (f > 2.0f) {
            f = 2.0f;
        }
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 <= 2.0f) {
            f4 = f2;
        }
        return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final float e(float f, float f2, float f3) {
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        if (f3 > 2.0f) {
            return 2.0f;
        }
        return f3;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public final long f(float f, float f2, float f3, float f4, ColorSpace colorSpace) {
        if (f < -2.0f) {
            f = -2.0f;
        }
        float f5 = 2.0f;
        if (f > 2.0f) {
            f = 2.0f;
        }
        if (f2 < -2.0f) {
            f2 = -2.0f;
        }
        if (f2 > 2.0f) {
            f2 = 2.0f;
        }
        if (f3 < -2.0f) {
            f3 = -2.0f;
        }
        if (f3 <= 2.0f) {
            f5 = f3;
        }
        return ColorKt.a(f, f2, f5, f4, colorSpace);
    }
}
