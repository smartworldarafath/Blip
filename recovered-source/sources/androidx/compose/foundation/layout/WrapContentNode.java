package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WrapContentNode extends Modifier.Node implements LayoutModifierNode {
    public Direction x;
    public Function2 y;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(final MeasureScope measureScope, Measurable measurable, long j) {
        int j2;
        Map map;
        int i = 0;
        if (this.x != Direction.j) {
            j2 = 0;
        } else {
            j2 = Constraints.j(j);
        }
        if (this.x == Direction.k) {
            i = Constraints.i(j);
        }
        final Placeable w = measurable.w(ConstraintsKt.a(j2, Constraints.h(j), i, Constraints.g(j)));
        final int d = RangesKt.d(w.j, Constraints.j(j), Constraints.h(j));
        final int d2 = RangesKt.d(w.k, Constraints.i(j), Constraints.g(j));
        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.layout.e
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Function2 function2 = WrapContentNode.this.y;
                Placeable.PlacementScope.h((Placeable.PlacementScope) obj, w, ((IntOffset) function2.n(new IntSize(((d - r1.j) << 32) | ((d2 - r1.k) & 4294967295L)), measureScope.getLayoutDirection())).a);
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(d, d2, map, function1);
    }
}
