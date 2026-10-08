package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyGridMeasuredItem> {
    public final LazyGridItemProvider b;
    public final LazyLayoutMeasureScopeImpl c;
    public final int d;

    public LazyGridMeasuredItemProvider(LazyGridItemProvider lazyGridItemProvider, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i) {
        this.b = lazyGridItemProvider;
        this.c = lazyLayoutMeasureScopeImpl;
        this.d = i;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    public final LazyLayoutMeasuredItem a(int i, int i2, int i3, long j) {
        return c(i, j, i2, i3, this.d);
    }

    public final LazyGridMeasuredItem c(int i, long j, int i2, int i3, int i4) {
        int i5;
        LazyGridItemProviderImpl lazyGridItemProviderImpl = (LazyGridItemProviderImpl) this.b;
        Object b = lazyGridItemProviderImpl.b(i);
        Object d = lazyGridItemProviderImpl.b.d(i);
        List b2 = b(this.c, i, j);
        if (Constraints.f(j)) {
            i5 = Constraints.j(j);
        } else {
            if (!Constraints.e(j)) {
                InlineClassHelperKt.a("does not have fixed height");
            }
            i5 = Constraints.i(j);
        }
        LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) this;
        LayoutDirection layoutDirection = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.e.k.getLayoutDirection();
        LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.f.m;
        return new LazyGridMeasuredItem(i, b, i5, i4, layoutDirection, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.g, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.h, b2, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.i, d, lazyLayoutItemAnimator, j, i2, i3);
    }
}
