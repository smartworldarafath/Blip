package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridSnapLayoutInfoProviderKt {
    public static final int a(LazyGridItemInfo lazyGridItemInfo, Orientation orientation) {
        long j;
        if (orientation == Orientation.j) {
            j = ((LazyGridMeasuredItem) lazyGridItemInfo).u & 4294967295L;
        } else {
            j = ((LazyGridMeasuredItem) lazyGridItemInfo).u >> 32;
        }
        return (int) j;
    }
}
