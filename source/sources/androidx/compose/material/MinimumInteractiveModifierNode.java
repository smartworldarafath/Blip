package androidx.compose.material;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.DpSize;
import defpackage.w9;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MinimumInteractiveModifierNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, LayoutModifierNode {
    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        boolean z;
        Map map;
        if (this.w && ((Boolean) CompositionLocalConsumerModifierNodeKt.a(this, InteractiveComponentSizeKt.a)).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        long j2 = InteractiveComponentSizeKt.b;
        Placeable w = measurable.w(j);
        int i = w.j;
        if (z) {
            i = Math.max(i, measureScope.y0(DpSize.b(j2)));
        }
        int i2 = w.k;
        if (z) {
            i2 = Math.max(i2, measureScope.y0(DpSize.a(j2)));
        }
        w9 w9Var = new w9(i, w, i2);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, w9Var);
    }
}
