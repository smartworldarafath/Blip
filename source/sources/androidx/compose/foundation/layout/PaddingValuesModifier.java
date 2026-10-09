package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.w9;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    public PaddingValues x;

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        Map map;
        float b = this.x.b(measureScope.getLayoutDirection());
        float d = this.x.d();
        float c = this.x.c(measureScope.getLayoutDirection());
        float a = this.x.a();
        boolean z4 = false;
        if (Dp.a(b, 0.0f) >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (Dp.a(d, 0.0f) >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z5 = z & z2;
        if (Dp.a(c, 0.0f) >= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z6 = z5 & z3;
        if (Dp.a(a, 0.0f) >= 0) {
            z4 = true;
        }
        if (!(z6 & z4)) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
        int y0 = measureScope.y0(b);
        int y02 = measureScope.y0(c) + y0;
        int y03 = measureScope.y0(d);
        int y04 = measureScope.y0(a) + y03;
        Placeable w = measurable.w(ConstraintsKt.i(-y02, -y04, j));
        int g = ConstraintsKt.g(w.j + y02, j);
        int f = ConstraintsKt.f(w.k + y04, j);
        w9 w9Var = new w9(w, y0, y03, 2);
        map = EmptyMap.j;
        return measureScope.B(g, f, map, w9Var);
    }
}
