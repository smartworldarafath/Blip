package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.collection.MutableVector;
import kotlin.collections.CollectionsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultLazyGridPrefetchStrategy implements LazyGridPrefetchStrategy {
    public boolean c;
    public float e;
    public int a = -1;
    public final MutableVector b = new MutableVector(new LazyLayoutPrefetchState.PrefetchHandle[16]);
    public int d = -1;

    public static int a(LazyGridLayoutInfo lazyGridLayoutInfo, boolean z) {
        if (z) {
            return ((LazyGridMeasuredItem) ((LazyGridItemInfo) CollectionsKt.z(((LazyGridMeasureResult) lazyGridLayoutInfo).n))).a + 1;
        }
        return ((LazyGridMeasuredItem) ((LazyGridItemInfo) CollectionsKt.s(((LazyGridMeasureResult) lazyGridLayoutInfo).n))).a - 1;
    }

    public static int b(LazyGridLayoutInfo lazyGridLayoutInfo, boolean z) {
        int i;
        int i2;
        if (z) {
            LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) ((LazyGridItemInfo) CollectionsKt.z(((LazyGridMeasureResult) lazyGridLayoutInfo).n));
            if (((LazyGridMeasureResult) lazyGridLayoutInfo).r == Orientation.j) {
                i2 = lazyGridMeasuredItem.v;
            } else {
                i2 = lazyGridMeasuredItem.w;
            }
            return i2 + 1;
        }
        LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ((LazyGridItemInfo) CollectionsKt.s(((LazyGridMeasureResult) lazyGridLayoutInfo).n));
        if (((LazyGridMeasureResult) lazyGridLayoutInfo).r == Orientation.j) {
            i = lazyGridMeasuredItem2.v;
        } else {
            i = lazyGridMeasuredItem2.w;
        }
        return i - 1;
    }
}
