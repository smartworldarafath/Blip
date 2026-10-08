package androidx.compose.foundation.lazy.grid;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridLayoutInfoKt {
    public static final int a(boolean z, LazyGridLayoutInfo lazyGridLayoutInfo, int i) {
        LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) lazyGridLayoutInfo;
        if (z) {
            return ((LazyGridMeasuredItem) ((LazyGridItemInfo) lazyGridMeasureResult.n.get(i))).v;
        }
        return ((LazyGridMeasuredItem) ((LazyGridItemInfo) lazyGridMeasureResult.n.get(i))).w;
    }
}
