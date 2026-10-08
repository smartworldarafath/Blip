package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import defpackage.ui;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ZIndexNode extends Modifier.Node implements LayoutModifierNode {
    public float x;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        ui uiVar = new ui(2, w, this);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, uiVar);
    }

    public final String toString() {
        return "ZIndexModifier(zIndex=" + this.x + ")";
    }
}
