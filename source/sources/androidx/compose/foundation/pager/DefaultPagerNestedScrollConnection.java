package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultPagerNestedScrollConnection implements NestedScrollConnection {
    public final PagerState j;
    public final LayoutDirection k;

    public DefaultPagerNestedScrollConnection(PagerState pagerState, LayoutDirection layoutDirection) {
        Orientation orientation = Orientation.j;
        this.j = pagerState;
        this.k = layoutDirection;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long Q(int i, long j) {
        float f;
        Orientation orientation = Orientation.j;
        boolean z = true;
        if (i == 1) {
            PagerState pagerState = this.j;
            PagerScrollPosition pagerScrollPosition = pagerState.d;
            PagerScrollPosition pagerScrollPosition2 = pagerState.d;
            if (Math.abs(pagerScrollPosition.b()) > 1.0E-6d) {
                int i2 = (int) (j >> 32);
                if (Math.abs(Float.intBitsToFloat(i2)) > 0.0f) {
                    PagerLayoutInfo k = pagerState.k();
                    float b = pagerScrollPosition2.b() * pagerState.m();
                    float f2 = ((((PagerMeasureResult) k).b + ((PagerMeasureResult) k).c) * (-Math.signum(pagerScrollPosition2.b()))) + b;
                    if (pagerScrollPosition2.b() > 0.0f) {
                        b = f2;
                        f2 = b;
                    }
                    float c = RangesKt.c(Float.intBitsToFloat(i2), b, f2);
                    if (this.k != LayoutDirection.k) {
                        z = false;
                    }
                    ScrollableState scrollableState = pagerState.k;
                    if (z) {
                        f = scrollableState.e(c);
                    } else {
                        f = -scrollableState.e(-c);
                    }
                    Orientation orientation2 = Orientation.j;
                    float intBitsToFloat = Float.intBitsToFloat((int) (j & 4294967295L));
                    return (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
                }
                return 0L;
            }
            return 0L;
        }
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object u(long j, long j2, Continuation continuation) {
        Orientation orientation = Orientation.j;
        Orientation orientation2 = Orientation.j;
        return new Velocity(Velocity.a(j2, 0.0f, 0.0f, 1));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long w0(int i, long j, long j2) {
        if (i == 2) {
            Orientation orientation = Orientation.j;
            if (Float.intBitsToFloat((int) (j2 >> 32)) != 0.0f) {
                throw new CancellationException("Scroll cancelled");
            }
            return 0L;
        }
        return 0L;
    }
}
