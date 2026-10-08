package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final PagerState a;

    public PagerBeyondBoundsState(PagerState pagerState) {
        this.a = pagerState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int a() {
        return this.a.l();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return Math.min(r1.l() - 1, ((MeasuredPage) ((PageInfo) CollectionsKt.z(((PagerMeasureResult) this.a.k()).a))).a);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        int i;
        PagerState pagerState = this.a;
        if (((PagerMeasureResult) pagerState.k()).a.size() == 0) {
            return 0;
        }
        int a = PagerLayoutInfoKt.a(pagerState.k());
        int i2 = ((PagerMeasureResult) pagerState.k()).b + ((PagerMeasureResult) pagerState.k()).c;
        if (i2 == 0 || (i = a / i2) < 1) {
            return 1;
        }
        return i;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean d() {
        return !((PagerMeasureResult) this.a.k()).a.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return Math.max(0, this.a.e);
    }
}
