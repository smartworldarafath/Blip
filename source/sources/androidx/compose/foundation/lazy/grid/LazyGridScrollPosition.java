package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridScrollPosition {
    public final MutableIntState a;
    public final MutableIntState b;
    public boolean c;
    public Object d;
    public final LazyLayoutNearestRangeState e;

    public LazyGridScrollPosition(int i, int i2) {
        this.a = SnapshotIntStateKt.a(i);
        this.b = SnapshotIntStateKt.a(i2);
        this.e = new LazyLayoutNearestRangeState(i, 90, 200);
    }

    public final int a() {
        return ((SnapshotMutableIntStateImpl) this.a).j();
    }

    public final int b() {
        return ((SnapshotMutableIntStateImpl) this.b).j();
    }

    public final void c(int i, int i2) {
        if (i < 0.0f) {
            InlineClassHelperKt.a("Index should be non-negative");
        }
        ((SnapshotMutableIntStateImpl) this.a).k(i);
        this.e.b(i);
        ((SnapshotMutableIntStateImpl) this.b).k(i2);
    }
}
