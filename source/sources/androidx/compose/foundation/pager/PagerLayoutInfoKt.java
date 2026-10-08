package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerLayoutInfoKt {
    public static final int a(PagerLayoutInfo pagerLayoutInfo) {
        long i;
        Orientation orientation = ((PagerMeasureResult) pagerLayoutInfo).e;
        PagerMeasureResult pagerMeasureResult = (PagerMeasureResult) pagerLayoutInfo;
        if (orientation == Orientation.j) {
            i = pagerMeasureResult.i() & 4294967295L;
        } else {
            i = pagerMeasureResult.i() >> 32;
        }
        return (int) i;
    }
}
