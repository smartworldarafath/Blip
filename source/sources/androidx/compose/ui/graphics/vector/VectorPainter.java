package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.kb;
import defpackage.q;
import kotlin.Unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public final MutableState o = SnapshotStateKt.g(new Size(0));
    public final MutableState p = SnapshotStateKt.g(Boolean.FALSE);
    public final VectorComponent q;
    public final MutableState r;
    public float s;
    public ColorFilter t;

    public VectorPainter(GroupComponent groupComponent) {
        VectorComponent vectorComponent = new VectorComponent(groupComponent);
        vectorComponent.f = new kb(24, this);
        this.q = vectorComponent;
        this.r = SnapshotStateKt.f(Unit.a, SnapshotStateKt.h());
        this.s = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean d(float f) {
        this.s = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean e(ColorFilter colorFilter) {
        this.t = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long i() {
        return ((Size) ((SnapshotMutableStateImpl) this.o).getValue()).a;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
        ColorFilter colorFilter = this.t;
        VectorComponent vectorComponent = this.q;
        if (colorFilter == null) {
            colorFilter = (ColorFilter) ((SnapshotMutableStateImpl) vectorComponent.g).getValue();
        }
        if (((Boolean) ((SnapshotMutableStateImpl) this.p).getValue()).booleanValue() && layoutNodeDrawScope.getLayoutDirection() == LayoutDirection.k) {
            long B0 = canvasDrawScope.B0();
            CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
            long d = canvasDrawScope$drawContext$1.d();
            canvasDrawScope$drawContext$1.a().g();
            try {
                canvasDrawScope$drawContext$1.a.b(-1.0f, 1.0f, B0);
                vectorComponent.e(layoutNodeDrawScope, this.s, colorFilter);
            } finally {
                q.v(canvasDrawScope$drawContext$1, d);
            }
        } else {
            vectorComponent.e(layoutNodeDrawScope, this.s, colorFilter);
        }
        ((SnapshotMutableStateImpl) this.r).getValue();
    }
}
