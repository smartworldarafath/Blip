package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpec;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior implements ScrollableDefaultFlingBehavior {
    public DecayAnimationSpec a;
    public final ScrollableKt$DefaultScrollMotionDurationScale$1 b;

    public DefaultFlingBehavior(DecayAnimationSpec decayAnimationSpec) {
        ScrollableKt$DefaultScrollMotionDurationScale$1 scrollableKt$DefaultScrollMotionDurationScale$1 = ScrollableKt.b;
        this.a = decayAnimationSpec;
        this.b = scrollableKt$DefaultScrollMotionDurationScale$1;
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public final Object a(ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, float f, Continuation continuation) {
        return BuildersKt.e(this.b, new DefaultFlingBehavior$performFling$2(f, this, scrollingLogic$doFlingAnimation$2$reverseScope$1, null), continuation);
    }
}
