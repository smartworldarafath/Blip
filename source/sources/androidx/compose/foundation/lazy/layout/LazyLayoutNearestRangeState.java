package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutNearestRangeState implements State<IntRange> {
    public final int j;
    public final int k;
    public final MutableState l;
    public int m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public LazyLayoutNearestRangeState(int i, int i2, int i3) {
        this.j = i2;
        this.k = i3;
        int i4 = (i / i2) * i2;
        this.l = SnapshotStateKt.f(RangesKt.j(Math.max(i4 - i3, 0), i4 + i2 + i3), SnapshotStateKt.m());
        this.m = i;
    }

    public final void b(int i) {
        if (i != this.m) {
            this.m = i;
            int i2 = this.j;
            int i3 = (i / i2) * i2;
            int i4 = this.k;
            ((SnapshotMutableStateImpl) this.l).setValue(RangesKt.j(Math.max(i3 - i4, 0), i3 + i2 + i4));
        }
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return (IntRange) ((SnapshotMutableStateImpl) this.l).getValue();
    }
}
