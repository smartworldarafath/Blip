package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HandwritingGesture_androidKt {
    public static final int a(LegacyTextFieldState legacyTextFieldState, long j, ViewConfiguration viewConfiguration) {
        long R;
        int e;
        TextLayoutResultProxy d = legacyTextFieldState.d();
        if (d != null) {
            MultiParagraph multiParagraph = d.a.b;
            LayoutCoordinates c = legacyTextFieldState.c();
            if (c != null && (e = e(multiParagraph, (R = c.R(j)), viewConfiguration)) != -1) {
                return multiParagraph.g(Offset.a(R, (multiParagraph.b(e) + multiParagraph.f(e)) / 2.0f, 1));
            }
        }
        return -1;
    }

    public static final long b(LegacyTextFieldState legacyTextFieldState, Rect rect, Rect rect2, int i) {
        long f = f(legacyTextFieldState, rect, i);
        if (TextRange.c(f)) {
            return TextRange.b;
        }
        long f2 = f(legacyTextFieldState, rect2, i);
        if (TextRange.c(f2)) {
            return TextRange.b;
        }
        int i2 = (int) (f >> 32);
        int i3 = (int) (f2 & 4294967295L);
        return TextRangeKt.a(Math.min(i2, i2), Math.max(i3, i3));
    }

    public static final boolean c(TextLayoutResult textLayoutResult, int i) {
        MultiParagraph multiParagraph = textLayoutResult.b;
        int d = multiParagraph.d(i);
        if (i == textLayoutResult.f(d) || i == multiParagraph.c(d, false) ? textLayoutResult.g(i) != textLayoutResult.a(i) : textLayoutResult.a(i) != textLayoutResult.a(i - 1)) {
            return true;
        }
        return false;
    }

    public static final long d(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
    }

    public static final int e(MultiParagraph multiParagraph, long j, ViewConfiguration viewConfiguration) {
        float f;
        if (viewConfiguration != null) {
            f = viewConfiguration.g();
        } else {
            f = 0.0f;
        }
        int i = (int) (4294967295L & j);
        int e = multiParagraph.e(Float.intBitsToFloat(i));
        if (Float.intBitsToFloat(i) >= multiParagraph.f(e) - f && Float.intBitsToFloat(i) <= multiParagraph.b(e) + f) {
            int i2 = (int) (j >> 32);
            if (Float.intBitsToFloat(i2) >= (-f) && Float.intBitsToFloat(i2) <= multiParagraph.d + f) {
                return e;
            }
            return -1;
        }
        return -1;
    }

    public static final long f(LegacyTextFieldState legacyTextFieldState, Rect rect, int i) {
        MultiParagraph multiParagraph;
        TextLayoutResultProxy d = legacyTextFieldState.d();
        if (d != null) {
            multiParagraph = d.a.b;
        } else {
            multiParagraph = null;
        }
        LayoutCoordinates c = legacyTextFieldState.c();
        if (multiParagraph != null && c != null) {
            return multiParagraph.h(rect.i(c.R(0L)), i, TextInclusionStrategy.Companion.b);
        }
        return TextRange.b;
    }

    public static final boolean g(int i) {
        int type = Character.getType(i);
        if (type != 23 && type != 20 && type != 22 && type != 30 && type != 29 && type != 24 && type != 21) {
            return false;
        }
        return true;
    }

    public static final boolean h(int i) {
        if (!Character.isWhitespace(i) && i != 160) {
            return false;
        }
        return true;
    }

    public static final boolean i(int i) {
        int type;
        if (h(i) && (type = Character.getType(i)) != 14 && type != 13 && i != 10) {
            return true;
        }
        return false;
    }
}
