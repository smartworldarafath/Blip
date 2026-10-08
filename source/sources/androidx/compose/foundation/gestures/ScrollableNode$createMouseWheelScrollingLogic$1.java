package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class ScrollableNode$createMouseWheelScrollingLogic$1 extends AdaptedFunctionReference implements Function2<Velocity, Continuation<? super Unit>, Object> {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        long j = ((Velocity) obj).a;
        ScrollableNode scrollableNode = (ScrollableNode) this.j;
        BuildersKt.c(scrollableNode.S.c(), null, null, new ScrollableNode$onMouseWheelScrollStopped$1(scrollableNode, j, null), 3);
        return Unit.a;
    }
}
