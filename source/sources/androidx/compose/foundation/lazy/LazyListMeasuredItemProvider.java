package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyListMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyListMeasuredItem> {
    public final LazyListItemProvider b;
    public final LazyLayoutMeasureScopeImpl c;
    public final long d;

    public LazyListMeasuredItemProvider(long j, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl) {
        this.b = lazyListItemProvider;
        this.c = lazyLayoutMeasureScopeImpl;
        this.d = ConstraintsKt.b(0, Constraints.h(j), 0, Integer.MAX_VALUE, 5);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    public final LazyLayoutMeasuredItem a(int i, int i2, int i3, long j) {
        return c(i, j);
    }

    public final LazyListMeasuredItem c(int i, long j) {
        int i2;
        LazyListItemProviderImpl lazyListItemProviderImpl = (LazyListItemProviderImpl) this.b;
        Object b = lazyListItemProviderImpl.b(i);
        Object d = lazyListItemProviderImpl.b.d(i);
        List b2 = b(this.c, i, j);
        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = (LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1) this;
        if (i == lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.f - 1) {
            i2 = 0;
        } else {
            i2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.g;
        }
        return new LazyListMeasuredItem(i, b2, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.h, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.e.k.getLayoutDirection(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.i, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.j, i2, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.k, b, d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.l.o, j);
    }
}
