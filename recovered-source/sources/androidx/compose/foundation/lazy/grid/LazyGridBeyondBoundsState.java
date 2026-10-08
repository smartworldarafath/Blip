package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridBeyondBoundsState implements LazyLayoutBeyondBoundsState {
    public final LazyGridState a;

    public LazyGridBeyondBoundsState(LazyGridState lazyGridState) {
        this.a = lazyGridState;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int a() {
        return ((LazyGridMeasureResult) this.a.g()).q;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int b() {
        return ((LazyGridMeasuredItem) ((LazyGridItemInfo) CollectionsKt.z(((LazyGridMeasureResult) this.a.g()).n))).a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int c() {
        long i;
        boolean z;
        int i2;
        boolean z2;
        long j;
        LazyGridState lazyGridState = this.a;
        int i3 = 0;
        if (((LazyGridMeasureResult) lazyGridState.g()).n.isEmpty()) {
            return 0;
        }
        LazyGridLayoutInfo g = lazyGridState.g();
        Orientation orientation = ((LazyGridMeasureResult) g).r;
        Orientation orientation2 = Orientation.j;
        if (orientation == orientation2) {
            i = ((LazyGridMeasureResult) g).i() & 4294967295L;
        } else {
            i = ((LazyGridMeasureResult) g).i() >> 32;
        }
        int i4 = (int) i;
        LazyGridLayoutInfo g2 = lazyGridState.g();
        if (((LazyGridMeasureResult) g2).r == orientation2) {
            z = true;
        } else {
            z = false;
        }
        LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) g2;
        List list = lazyGridMeasureResult.n;
        if (!list.isEmpty()) {
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i5 < list.size()) {
                int a = LazyGridLayoutInfoKt.a(z, g2, i5);
                if (a == -1) {
                    i5++;
                } else {
                    int i8 = i3;
                    while (i5 < list.size() && LazyGridLayoutInfoKt.a(z, g2, i5) == a) {
                        if (z) {
                            z2 = z;
                            j = ((LazyGridMeasuredItem) ((LazyGridItemInfo) list.get(i5))).t & 4294967295L;
                        } else {
                            z2 = z;
                            j = ((LazyGridMeasuredItem) ((LazyGridItemInfo) list.get(i5))).t >> 32;
                        }
                        i8 = Math.max(i8, (int) j);
                        i5++;
                        z = z2;
                    }
                    i6 += i8;
                    i7++;
                    z = z;
                    i3 = 0;
                }
            }
            i3 = (i6 / i7) + lazyGridMeasureResult.t;
        }
        if (i3 == 0 || (i2 = i4 / i3) < 1) {
            return 1;
        }
        return i2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final boolean d() {
        return !((LazyGridMeasureResult) this.a.g()).n.isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState
    public final int e() {
        return this.a.d.a();
    }
}
