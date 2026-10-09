package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TransformedText;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldScrollKt {
    public static final Rect a(Placeable.PlacementScope placementScope, int i, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z, int i2) {
        Rect rect;
        float f;
        float f2;
        if (textLayoutResult != null) {
            rect = textLayoutResult.c(transformedText.b.b(i));
        } else {
            rect = Rect.e;
        }
        float f3 = rect.a;
        int y0 = placementScope.y0(2.0f);
        if (z) {
            f = (i2 - f3) - y0;
        } else {
            f = f3;
        }
        if (z) {
            f2 = i2 - f3;
        } else {
            f2 = y0 + f3;
        }
        return new Rect(f, rect.b, f2, rect.d);
    }
}
