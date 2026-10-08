package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.ui.Alignment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 extends LazyListMeasuredItemProvider {
    public final /* synthetic */ LazyLayoutMeasureScopeImpl e;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;
    public final /* synthetic */ Alignment.Horizontal h;
    public final /* synthetic */ int i;
    public final /* synthetic */ int j;
    public final /* synthetic */ long k;
    public final /* synthetic */ LazyListState l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(long j, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, int i, int i2, Alignment.Horizontal horizontal, int i3, int i4, long j2, LazyListState lazyListState) {
        super(j, lazyListItemProvider, lazyLayoutMeasureScopeImpl);
        this.e = lazyLayoutMeasureScopeImpl;
        this.f = i;
        this.g = i2;
        this.h = horizontal;
        this.i = i3;
        this.j = i4;
        this.k = j2;
        this.l = lazyListState;
    }
}
