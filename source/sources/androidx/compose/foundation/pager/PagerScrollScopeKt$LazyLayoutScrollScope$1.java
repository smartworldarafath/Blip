package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import kotlin.collections.CollectionsKt;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerScrollScopeKt$LazyLayoutScrollScope$1 implements LazyLayoutScrollScope, ScrollScope {
    public final /* synthetic */ ScrollScope a;
    public final /* synthetic */ PagerState b;

    public PagerScrollScopeKt$LazyLayoutScrollScope$1(ScrollScope scrollScope, PagerState pagerState) {
        this.b = pagerState;
        this.a = scrollScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int a() {
        return this.b.l();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int b() {
        return ((MeasuredPage) ((PageInfo) CollectionsKt.z(((PagerMeasureResult) this.b.k()).a))).a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final void c(int i, int i2) {
        PagerState pagerState = this.b;
        float n = pagerState.n();
        float f = 0.0f;
        if (n != 0.0f) {
            f = i2 / n;
        }
        pagerState.r(i, f, true);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int d() {
        return this.b.f;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int e(int i) {
        PagerState pagerState = this.b;
        return (int) (RangesKt.e(PagerScrollPositionKt.a(pagerState) + MathKt.b(((pagerState.n() * (i - pagerState.d.a())) - (pagerState.d.b() * pagerState.n())) + 0.0f), pagerState.h, pagerState.g) - PagerScrollPositionKt.a(pagerState));
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float f(float f) {
        return this.a.f(f);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int g() {
        return this.b.e;
    }
}
