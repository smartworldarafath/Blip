package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BackgroundKt {
    public static Modifier a(Modifier modifier, ShaderBrush shaderBrush) {
        return modifier.l(new BackgroundElement(0L, shaderBrush, RectangleShapeKt.a, 1));
    }

    public static final Modifier b(Modifier modifier, long j, Shape shape) {
        return modifier.l(new BackgroundElement(j, null, shape, 2));
    }
}
