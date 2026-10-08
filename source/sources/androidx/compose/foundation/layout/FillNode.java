package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.f;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FillNode extends Modifier.Node implements LayoutModifierNode {
    public Direction x;
    public float y;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        int j2;
        int h;
        int i;
        int i2;
        Map map;
        if (Constraints.d(j) && this.x != Direction.j) {
            int round = Math.round(Constraints.h(j) * this.y);
            int j3 = Constraints.j(j);
            j2 = Constraints.h(j);
            if (round < j3) {
                round = j3;
            }
            if (round <= j2) {
                j2 = round;
            }
            h = j2;
        } else {
            j2 = Constraints.j(j);
            h = Constraints.h(j);
        }
        if (Constraints.c(j) && this.x != Direction.k) {
            int round2 = Math.round(Constraints.g(j) * this.y);
            int i3 = Constraints.i(j);
            i = Constraints.g(j);
            if (round2 < i3) {
                round2 = i3;
            }
            if (round2 <= i) {
                i = round2;
            }
            i2 = i;
        } else {
            int i4 = Constraints.i(j);
            int g = Constraints.g(j);
            i = i4;
            i2 = g;
        }
        Placeable w = measurable.w(ConstraintsKt.a(j2, h, i, i2));
        int i5 = w.j;
        int i6 = w.k;
        f fVar = new f(w, 4);
        map = EmptyMap.j;
        return measureScope.B(i5, i6, map, fVar);
    }
}
