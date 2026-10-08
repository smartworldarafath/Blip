package androidx.compose.foundation.pager;

import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Map;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PagerBringIntoViewSpec implements BringIntoViewSpec {
    public final PagerState b;
    public final BringIntoViewSpec c;
    public final LayoutDirection d;

    public PagerBringIntoViewSpec(PagerState pagerState, BringIntoViewSpec bringIntoViewSpec, LayoutDirection layoutDirection) {
        this.b = pagerState;
        this.c = bringIntoViewSpec;
        this.d = layoutDirection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((r8 + r9) > r10) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x001b, code lost:
    
        if (r8 <= 1.0f) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
    
        r3 = true;
     */
    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float a(float f, float f2, float f3) {
        int i;
        int n;
        int i2;
        float a = this.c.a(f, f2, f3);
        boolean z = false;
        if (f <= 0.0f) {
            float f4 = f + f2;
            Map map = VisibilityThresholdsKt.a;
        }
        float abs = Math.abs(a);
        LayoutDirection layoutDirection = this.d;
        PagerState pagerState = this.b;
        if (abs != 0.0f && z) {
            if (layoutDirection == LayoutDirection.k && ((PagerMeasureResult) pagerState.k()).e == Orientation.k) {
                i2 = pagerState.n() + (-pagerState.f);
            } else {
                i2 = pagerState.f;
            }
            float f5 = i2 * (-1.0f);
            while (a > 0.0f && f5 < a) {
                f5 += pagerState.n();
            }
            while (a < 0.0f && f5 > a) {
                f5 -= pagerState.n();
            }
            return f5;
        }
        int i3 = pagerState.f;
        MutableState mutableState = pagerState.D;
        if (Math.abs(i3) < 1.0E-6d) {
            return 0.0f;
        }
        LayoutDirection layoutDirection2 = LayoutDirection.k;
        if (layoutDirection == layoutDirection2 && ((PagerMeasureResult) pagerState.k()).e == Orientation.k) {
            i = pagerState.n() + (-pagerState.f);
        } else {
            i = pagerState.f;
        }
        float f6 = i * (-1.0f);
        if (layoutDirection == layoutDirection2 && ((PagerMeasureResult) pagerState.k()).e == Orientation.k) {
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
                n = pagerState.n();
                f6 += n;
            }
            return RangesKt.c(f6, -f3, f3);
        }
        if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
            n = pagerState.n();
            f6 += n;
        }
        return RangesKt.c(f6, -f3, f3);
    }
}
