package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutModifierImpl extends Modifier.Node implements LayoutModifierNode {
    public Function3 x;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        return (MeasureResult) this.x.f(measureScope, measurable, new Constraints(j));
    }

    public final String toString() {
        return "LayoutModifierImpl(measureBlock=" + this.x + ")";
    }
}
