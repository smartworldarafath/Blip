package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerScrollPosition {
    public final PagerState a;
    public final MutableIntState b;
    public final MutableFloatState c;
    public boolean d;
    public Object e;
    public final LazyLayoutNearestRangeState f;

    public PagerScrollPosition(int i, float f, PagerState pagerState) {
        this.a = pagerState;
        this.b = SnapshotIntStateKt.a(i);
        this.c = PrimitiveSnapshotStateKt.a(f);
        this.f = new LazyLayoutNearestRangeState(i, 30, 100);
    }

    public final int a() {
        return ((SnapshotMutableIntStateImpl) this.b).j();
    }

    public final float b() {
        return ((SnapshotMutableFloatStateImpl) this.c).j();
    }
}
