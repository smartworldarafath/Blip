package androidx.compose.ui.layout;

import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MeasurePolicy {
    MeasureResult a(MeasureScope measureScope, List list, long j);

    default int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list.get(i2), IntrinsicMinMax.k, IntrinsicWidthHeight.j));
        }
        return a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, 0, 0, i, 7)).b();
    }

    default int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list.get(i2), IntrinsicMinMax.j, IntrinsicWidthHeight.k));
        }
        return a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, i, 0, 0, 13)).a();
    }

    default int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list.get(i2), IntrinsicMinMax.j, IntrinsicWidthHeight.j));
        }
        return a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, 0, 0, i, 7)).b();
    }

    default int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable((IntrinsicMeasurable) list.get(i2), IntrinsicMinMax.k, IntrinsicWidthHeight.k));
        }
        return a(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, ConstraintsKt.b(0, i, 0, 0, 13)).a();
    }
}
