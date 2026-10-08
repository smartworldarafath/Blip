package androidx.compose.foundation.gestures;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2$reverseScope$1 implements ScrollScope {
    public final /* synthetic */ ScrollingLogic a;
    public final /* synthetic */ NestedScrollScope b;

    public ScrollingLogic$doFlingAnimation$2$reverseScope$1(ScrollingLogic scrollingLogic, NestedScrollScope nestedScrollScope) {
        this.a = scrollingLogic;
        this.b = nestedScrollScope;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float f(float f) {
        float abs = Math.abs(f);
        ScrollingLogic scrollingLogic = this.a;
        if (abs == 0.0f || ((Boolean) scrollingLogic.h.a()).booleanValue()) {
            return scrollingLogic.e(scrollingLogic.h(((ScrollingLogic$nestedScrollScope$1) this.b).a(2, scrollingLogic.f(scrollingLogic.i(f)))));
        }
        throw new CancellationException("The fling animation was cancelled");
    }
}
