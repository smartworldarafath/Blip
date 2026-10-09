package androidx.compose.foundation.pager;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerMeasureKt {
    public static final MeasuredPage a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Alignment.Vertical vertical, LayoutDirection layoutDirection, int i2, MutableIntObjectMap mutableIntObjectMap) {
        List list;
        Orientation orientation = Orientation.j;
        Object b = pagerLazyLayoutItemProvider.b(i);
        List list2 = (List) mutableIntObjectMap.b(i);
        if (list2 != null) {
            list = list2;
        } else {
            List a = lazyLayoutMeasureScopeImpl.a(i);
            int size = a.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(((Measurable) a.get(i3)).w(j));
            }
            mutableIntObjectMap.i(i, arrayList);
            list = arrayList;
        }
        return new MeasuredPage(i, i2, list, j2, b, vertical, layoutDirection);
    }
}
