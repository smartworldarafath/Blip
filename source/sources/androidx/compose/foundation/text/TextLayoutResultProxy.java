package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLayoutResultProxy {
    public final TextLayoutResult a;
    public LayoutCoordinates b = null;
    public LayoutCoordinates c;

    public TextLayoutResultProxy(TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates) {
        this.a = textLayoutResult;
        this.c = layoutCoordinates;
    }

    public final long a(long j) {
        Rect rect;
        LayoutCoordinates layoutCoordinates = this.b;
        Rect rect2 = Rect.e;
        if (layoutCoordinates != null) {
            if (layoutCoordinates.o()) {
                LayoutCoordinates layoutCoordinates2 = this.c;
                if (layoutCoordinates2 != null) {
                    rect = layoutCoordinates2.l(layoutCoordinates, true);
                } else {
                    rect = null;
                }
            } else {
                rect = rect2;
            }
            if (rect != null) {
                rect2 = rect;
            }
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat(i);
        float f = rect2.a;
        if (intBitsToFloat >= f) {
            float intBitsToFloat2 = Float.intBitsToFloat(i);
            f = rect2.c;
            if (intBitsToFloat2 <= f) {
                f = Float.intBitsToFloat(i);
            }
        }
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat3 = Float.intBitsToFloat(i2);
        float f2 = rect2.b;
        if (intBitsToFloat3 >= f2) {
            float intBitsToFloat4 = Float.intBitsToFloat(i2);
            f2 = rect2.d;
            if (intBitsToFloat4 <= f2) {
                f2 = Float.intBitsToFloat(i2);
            }
        }
        return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
    }

    public final int b(long j, boolean z) {
        if (z) {
            j = a(j);
        }
        return this.a.b.g(d(j));
    }

    public final boolean c(long j) {
        long d = d(a(j));
        float intBitsToFloat = Float.intBitsToFloat((int) (4294967295L & d));
        TextLayoutResult textLayoutResult = this.a;
        int e = textLayoutResult.b.e(intBitsToFloat);
        int i = (int) (d >> 32);
        if (Float.intBitsToFloat(i) >= textLayoutResult.d(e) && Float.intBitsToFloat(i) <= textLayoutResult.e(e)) {
            return true;
        }
        return false;
    }

    public final long d(long j) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.b;
        if (layoutCoordinates2 != null) {
            LayoutCoordinates layoutCoordinates3 = null;
            if (!layoutCoordinates2.o()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.c) != null) {
                if (layoutCoordinates.o()) {
                    layoutCoordinates3 = layoutCoordinates;
                }
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates2.g(layoutCoordinates3, j);
                }
            }
        }
        return j;
    }

    public final long e(long j) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.b;
        if (layoutCoordinates2 != null) {
            LayoutCoordinates layoutCoordinates3 = null;
            if (!layoutCoordinates2.o()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.c) != null) {
                if (layoutCoordinates.o()) {
                    layoutCoordinates3 = layoutCoordinates;
                }
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates3.g(layoutCoordinates2, j);
                }
            }
        }
        return j;
    }
}
