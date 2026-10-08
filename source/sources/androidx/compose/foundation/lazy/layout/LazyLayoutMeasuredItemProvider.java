package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.layout.Measurable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutMeasuredItemProvider<T extends LazyLayoutMeasuredItem> {
    public final MutableIntObjectMap a;

    public LazyLayoutMeasuredItemProvider() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.a = new MutableIntObjectMap();
    }

    public abstract LazyLayoutMeasuredItem a(int i, int i2, int i3, long j);

    public final List b(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, long j) {
        MutableIntObjectMap mutableIntObjectMap = this.a;
        List list = (List) mutableIntObjectMap.b(i);
        if (list != null) {
            return list;
        }
        List a = lazyLayoutMeasureScopeImpl.a(i);
        int size = a.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(((Measurable) a.get(i2)).w(j));
        }
        mutableIntObjectMap.i(i, arrayList);
        return arrayList;
    }
}
