package androidx.compose.foundation.gestures;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.OverscrollEffect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollingLogic$nestedScrollScope$1 implements NestedScrollScope {
    public final /* synthetic */ ScrollingLogic a;

    public ScrollingLogic$nestedScrollScope$1(ScrollingLogic scrollingLogic) {
        this.a = scrollingLogic;
    }

    public final long a(int i, long j) {
        ScrollingLogic scrollingLogic = this.a;
        scrollingLogic.j = i;
        OverscrollEffect overscrollEffect = scrollingLogic.b;
        if (overscrollEffect != null && scrollingLogic.b()) {
            return ((AndroidEdgeEffectOverscrollEffect) overscrollEffect).c(j, scrollingLogic.j, scrollingLogic.m);
        }
        return scrollingLogic.d(scrollingLogic.k, j, i);
    }
}
