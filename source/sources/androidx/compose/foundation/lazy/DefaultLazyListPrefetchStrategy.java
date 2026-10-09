package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import kotlin.collections.CollectionsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultLazyListPrefetchStrategy implements LazyListPrefetchStrategy {
    public int a;
    public LazyLayoutPrefetchState.PrefetchHandle b;
    public boolean c;
    public int d;
    public float e;

    public static int a(LazyListLayoutInfo lazyListLayoutInfo, boolean z) {
        if (z) {
            return ((LazyListMeasuredItem) ((LazyListItemInfo) CollectionsKt.z(((LazyListMeasureResult) lazyListLayoutInfo).l))).a + 1;
        }
        return ((LazyListMeasuredItem) ((LazyListItemInfo) CollectionsKt.s(((LazyListMeasureResult) lazyListLayoutInfo).l))).a - 1;
    }
}
