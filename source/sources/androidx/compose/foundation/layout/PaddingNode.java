package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PaddingNode extends Modifier.Node implements LayoutModifierNode {
    public float A;
    public boolean B;
    public float x;
    public float y;
    public float z;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        int y0 = measureScope.y0(this.z) + measureScope.y0(this.x);
        int y02 = measureScope.y0(this.A) + measureScope.y0(this.y);
        Placeable w = measurable.w(ConstraintsKt.i(-y0, -y02, j));
        int g = ConstraintsKt.g(w.j + y0, j);
        int f = ConstraintsKt.f(w.k + y02, j);
        d dVar = new d(this, w, 2);
        map = EmptyMap.j;
        return measureScope.B(g, f, map, dVar);
    }
}
