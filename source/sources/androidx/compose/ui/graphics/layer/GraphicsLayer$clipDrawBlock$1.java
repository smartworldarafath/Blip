package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphicsLayer$clipDrawBlock$1 extends Lambda implements Function1<DrawScope, Unit> {
    public final /* synthetic */ GraphicsLayer k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayer$clipDrawBlock$1(GraphicsLayer graphicsLayer) {
        super(1);
        this.k = graphicsLayer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        DrawScope drawScope = (DrawScope) obj;
        GraphicsLayer graphicsLayer = this.k;
        Path path = graphicsLayer.l;
        if (graphicsLayer.n && graphicsLayer.A && path != null) {
            CanvasDrawScope$drawContext$1 l0 = drawScope.l0();
            long d = l0.d();
            l0.a().g();
            try {
                l0.a.a.a().j(path);
                graphicsLayer.c(drawScope);
            } finally {
                q.v(l0, d);
            }
        } else {
            graphicsLayer.c(drawScope);
        }
        return Unit.a;
    }
}
