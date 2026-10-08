package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.a7;
import defpackage.c1;
import defpackage.f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final RootMeasurePolicy b = new LayoutNode.NoIntrinsicsMeasurePolicy("Undefined intrinsics block and it is required");

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < size2; i3++) {
                    Placeable w = ((Measurable) list.get(i3)).w(j);
                    i = Math.max(w.j, i);
                    i2 = Math.max(w.k, i2);
                    arrayList.add(w);
                }
                return MeasureScope.h0(measureScope, ConstraintsKt.g(i, j), ConstraintsKt.f(i2, j), new c1(3, arrayList));
            }
            Placeable w2 = ((Measurable) list.get(0)).w(j);
            return MeasureScope.h0(measureScope, ConstraintsKt.g(w2.j, j), ConstraintsKt.f(w2.k, j), new f(w2, 10));
        }
        return MeasureScope.h0(measureScope, Constraints.j(j), Constraints.i(j), new a7(15));
    }
}
