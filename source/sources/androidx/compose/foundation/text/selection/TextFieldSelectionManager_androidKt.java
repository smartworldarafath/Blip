package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldSelectionManager_androidKt {
    public static final boolean a(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        LayoutCoordinates c;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
        if (legacyTextFieldState != null && (c = legacyTextFieldState.c()) != null) {
            Rect a = SelectionManagerKt.a(c);
            long m = textFieldSelectionManager.m(z);
            float f = a.a;
            float f2 = a.c;
            float intBitsToFloat = Float.intBitsToFloat((int) (m >> 32));
            if (f <= intBitsToFloat && intBitsToFloat <= f2) {
                float f3 = a.b;
                float f4 = a.d;
                float intBitsToFloat2 = Float.intBitsToFloat((int) (m & 4294967295L));
                if (f3 <= intBitsToFloat2 && intBitsToFloat2 <= f4) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
