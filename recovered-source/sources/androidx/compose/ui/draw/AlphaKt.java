package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AlphaKt {
    public static final Modifier a(Modifier modifier, float f) {
        if (f == 1.0f) {
            return modifier;
        }
        return GraphicsLayerModifierKt.b(modifier, 0.0f, 0.0f, f, 0.0f, 0L, null, true, 0L, 0L, 0, 1044475);
    }
}
