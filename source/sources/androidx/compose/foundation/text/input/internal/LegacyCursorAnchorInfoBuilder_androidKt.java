package androidx.compose.foundation.text.input.internal;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LegacyCursorAnchorInfoBuilder_androidKt {
    public static final boolean a(Rect rect, float f, float f2) {
        float f3 = rect.a;
        if (f <= rect.c && f3 <= f) {
            float f4 = rect.b;
            if (f2 <= rect.d && f4 <= f2) {
                return true;
            }
            return false;
        }
        return false;
    }
}
