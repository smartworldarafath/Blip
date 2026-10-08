package androidx.compose.foundation.lazy;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyListLayoutInfoKt {
    public static final int a(LazyListLayoutInfo lazyListLayoutInfo) {
        List list = ((LazyListMeasureResult) lazyListLayoutInfo).l;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((LazyListMeasuredItem) ((LazyListItemInfo) list.get(i2))).n;
        }
        return (i / list.size()) + ((LazyListMeasureResult) lazyListLayoutInfo).r;
    }
}
