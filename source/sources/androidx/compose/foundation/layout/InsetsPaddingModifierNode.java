package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.w9;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InsetsPaddingModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    public WindowInsets z;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets Y0(WindowInsets windowInsets) {
        return new UnionInsets(windowInsets, this.z);
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final void Z0() {
        super.Z0();
        LayoutModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        int d = this.y.d(measureScope, measureScope.getLayoutDirection()) - this.x.d(measureScope, measureScope.getLayoutDirection());
        int a = this.y.a(measureScope) - this.x.a(measureScope);
        int b = (this.y.b(measureScope, measureScope.getLayoutDirection()) - this.x.b(measureScope, measureScope.getLayoutDirection())) + d;
        int c = (this.y.c(measureScope) - this.x.c(measureScope)) + a;
        Placeable w = measurable.w(ConstraintsKt.i(-b, -c, j));
        int g = ConstraintsKt.g(w.j + b, j);
        int f = ConstraintsKt.f(w.k + c, j);
        w9 w9Var = new w9(w, d, a, 0);
        map = EmptyMap.j;
        return measureScope.B(g, f, map, w9Var);
    }
}
