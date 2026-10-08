package net.blip.shared;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayerPainter extends Painter {
    public final Painter[] o;

    public LayerPainter(Painter... painterArr) {
        this.o = painterArr;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        Painter painter = (Painter) ArraysKt.q(this.o);
        if (painter != null) {
            return painter.i();
        }
        return 9205357640488583168L;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        for (Painter painter : this.o) {
            painter.g(layoutNodeDrawScope, layoutNodeDrawScope.j.i(), 1.0f, null);
        }
    }
}
