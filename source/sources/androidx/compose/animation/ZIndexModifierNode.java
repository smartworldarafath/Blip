package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ZIndexModifierNode extends Modifier.Node implements LayoutModifierNode {
    public float x;
    public Object y;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        final Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        Function1<Placeable.PlacementScope, Unit> function1 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.ZIndexModifierNode$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                ((Placeable.PlacementScope) obj).e(Placeable.this, 0, 0, this.x);
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, function1);
    }
}
