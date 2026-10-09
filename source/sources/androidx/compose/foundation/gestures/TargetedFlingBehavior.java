package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TargetedFlingBehavior extends FlingBehavior {
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    default Object a(ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, float f, Continuation continuation) {
        return ((SnapFlingBehavior) this).d(scrollingLogic$doFlingAnimation$2$reverseScope$1, f, TargetedFlingBehaviorKt.a, (ContinuationImpl) continuation);
    }
}
