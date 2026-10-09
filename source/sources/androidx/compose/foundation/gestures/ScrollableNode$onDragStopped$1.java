package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.ui.unit.Velocity;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$onDragStopped$1", f = "Scrollable.kt", l = {381}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ScrollableNode$onDragStopped$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ DragEvent.DragStopped o;
    public final /* synthetic */ ScrollableNode p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableNode$onDragStopped$1(DragEvent.DragStopped dragStopped, ScrollableNode scrollableNode, Continuation continuation) {
        super(2, continuation);
        this.o = dragStopped;
        this.p = scrollableNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ScrollableNode$onDragStopped$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ScrollableNode$onDragStopped$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
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
            DragEvent.DragStopped dragStopped = this.o;
            if (dragStopped.b) {
                f = -1.0f;
            } else {
                f = 1.0f;
            }
            ScrollingLogic scrollingLogic = this.p.a0;
            long f2 = Velocity.f(dragStopped.a, f);
            this.n = 1;
            if (scrollingLogic.c(f2, false, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
