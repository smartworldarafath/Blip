package androidx.compose.foundation.pager;

import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerScrollPositionKt {
    public static final long a(PagerState pagerState) {
        return MathKt.c(pagerState.d.b() * pagerState.n()) + (pagerState.d.a() * pagerState.n());
    }
}
