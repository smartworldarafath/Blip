package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldDelegate$Companion {
    public static void a(Canvas canvas, long j, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, AndroidPaint androidPaint) {
        int b = offsetMapping.b(TextRange.f(j));
        int b2 = offsetMapping.b(TextRange.e(j));
        if (b != b2) {
            canvas.m(textLayoutResult.h(b, b2), androidPaint);
        }
    }

    public static void b(TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, TextInputSession textInputSession, boolean z, OffsetMapping offsetMapping) {
        Rect rect;
        if (z) {
            int b = offsetMapping.b(TextRange.e(textFieldValue.b));
            String str = TextFieldDelegateKt.a;
            if (b < textLayoutResult.a.a.k.length()) {
                rect = textLayoutResult.b(b);
            } else if (b != 0) {
                rect = textLayoutResult.b(b - 1);
            } else {
                rect = new Rect(0.0f, 0.0f, 1.0f, (int) (new IntSize(TextFieldDelegateKt.a(textDelegate.b, textDelegate.g, textDelegate.h)).a & 4294967295L));
            }
            float f = rect.b;
            float f2 = rect.a;
            long S = layoutCoordinates.S((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
            float intBitsToFloat = Float.intBitsToFloat((int) (S >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (S & 4294967295L));
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            float f3 = rect.c - f2;
            float f4 = rect.d - f;
            Rect a = RectKt.a(floatToRawIntBits, (Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L));
            if (Intrinsics.a((TextInputSession) textInputSession.a.b.get(), textInputSession)) {
                textInputSession.b.h(a);
            }
        }
    }
}
