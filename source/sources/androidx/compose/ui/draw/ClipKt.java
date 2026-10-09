package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ClipKt {
    public static final Modifier a(Modifier modifier, Shape shape) {
        return GraphicsLayerModifierKt.b(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0L, shape, true, 0L, 0L, 0, 1042431);
    }

    public static final Modifier b(Modifier modifier) {
        return GraphicsLayerModifierKt.b(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, true, 0L, 0L, 0, 1044479);
    }
}
