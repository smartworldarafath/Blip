package androidx.compose.ui.window;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.c1;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AndroidDialog_androidKt$DialogLayout$1$1 implements MeasurePolicy {
    public static final AndroidDialog_androidKt$DialogLayout$1$1 a = new Object();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Placeable w = ((Measurable) list.get(i3)).w(j);
            i = Math.max(i, w.j);
            i2 = Math.max(i2, w.k);
            arrayList.add(w);
        }
        if (list.isEmpty()) {
            i = Constraints.j(j);
            i2 = Constraints.i(j);
        }
        return MeasureScope.h0(measureScope, i, i2, new c1(0, arrayList));
    }
}
