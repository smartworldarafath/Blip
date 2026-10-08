package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayerImpl$Companion$DefaultDrawBlock$1 extends Lambda implements Function1<DrawScope, Unit> {
    public static final GraphicsLayerImpl$Companion$DefaultDrawBlock$1 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        DrawScope.r0((DrawScope) obj, Color.g, 0L, 0.0f, null, 126);
        return Unit.a;
    }
}
