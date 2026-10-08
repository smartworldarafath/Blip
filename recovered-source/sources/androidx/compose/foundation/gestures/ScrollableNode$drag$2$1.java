package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1;
import defpackage.ec;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$drag$2$1", f = "Scrollable.kt", l = {358}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ScrollableNode$drag$2$1 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function2 p;
    public final /* synthetic */ ScrollingLogic q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableNode$drag$2$1(ScrollingLogic scrollingLogic, Continuation continuation, Function2 function2) {
        super(2, continuation);
        this.p = function2;
        this.q = scrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ScrollableNode$drag$2$1) s((NestedScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ScrollableNode$drag$2$1 scrollableNode$drag$2$1 = new ScrollableNode$drag$2$1(this.q, continuation, this.p);
        scrollableNode$drag$2$1.o = obj;
        return scrollableNode$drag$2$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ec ecVar = new ec(11, (NestedScrollScope) this.o, this.q);
            this.n = 1;
            if (((DragGestureNode$startListeningForEvents$1.AnonymousClass1) this.p).n(ecVar, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
