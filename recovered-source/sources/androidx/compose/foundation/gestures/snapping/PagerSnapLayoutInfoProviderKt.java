package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerSnapLayoutInfoProviderKt {
    public static final float a(PagerState pagerState) {
        if (((PagerMeasureResult) pagerState.k()).e == Orientation.k) {
            return Float.intBitsToFloat((int) (pagerState.o() >> 32));
        }
        return Float.intBitsToFloat((int) (pagerState.o() & 4294967295L));
    }

    public static final boolean b(PagerState pagerState, float f) {
        float a;
        boolean z;
        ((PagerMeasureResult) pagerState.k()).getClass();
        if (pagerState.p()) {
            a = -f;
        } else {
            a = a(pagerState);
        }
        if (a > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return true;
    }
}
