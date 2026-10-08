package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextDrawStyleKt {
    public static final long a(long j, float f) {
        if (!Float.isNaN(f) && f < 1.0f) {
            return Color.b(j, Color.d(j) * f);
        }
        return j;
    }
}
