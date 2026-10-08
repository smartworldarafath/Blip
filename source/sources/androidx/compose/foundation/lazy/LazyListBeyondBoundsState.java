package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyListState a;

    public LazyListBeyondBoundsState(LazyListState lazyListState) {
        this.a = lazyListState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int a() {
        return ((LazyListMeasureResult) this.a.h()).o;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return Math.min(a() - 1, ((LazyListMeasuredItem) ((LazyListItemInfo) CollectionsKt.z(((LazyListMeasureResult) this.a.h()).l))).a);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        long i;
        int i2;
        LazyListState lazyListState = this.a;
        if (((LazyListMeasureResult) lazyListState.h()).l.isEmpty()) {
            return 0;
        }
        LazyListLayoutInfo h = lazyListState.h();
        Orientation orientation = ((LazyListMeasureResult) h).p;
        LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) h;
        if (orientation == Orientation.j) {
            i = lazyListMeasureResult.i() & 4294967295L;
        } else {
            i = lazyListMeasureResult.i() >> 32;
        }
        int i3 = (int) i;
        int a = LazyListLayoutInfoKt.a(lazyListState.h());
        if (a == 0 || (i2 = i3 / a) < 1) {
            return 1;
        }
        return i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean d() {
        return !((LazyListMeasureResult) this.a.h()).l.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return Math.max(0, this.a.e.a());
    }
}
