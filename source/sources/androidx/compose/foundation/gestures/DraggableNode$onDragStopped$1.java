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
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$onDragStopped$1", f = "Draggable.kt", l = {345}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DraggableNode$onDragStopped$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ DraggableNode p;
    public final /* synthetic */ DragEvent.DragStopped q;
    public final /* synthetic */ Orientation r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$onDragStopped$1(DraggableNode draggableNode, DragEvent.DragStopped dragStopped, Orientation orientation, Continuation continuation) {
        super(2, continuation);
        this.p = draggableNode;
        this.q = dragStopped;
        this.r = orientation;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DraggableNode$onDragStopped$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DraggableNode$onDragStopped$1 draggableNode$onDragStopped$1 = new DraggableNode$onDragStopped$1(this.p, this.q, this.r, continuation);
        draggableNode$onDragStopped$1.o = obj;
        return draggableNode$onDragStopped$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
        float b;
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
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            DraggableNode draggableNode = this.p;
            Function3 function3 = draggableNode.V;
            long j = this.q.a;
            if (draggableNode.W) {
                f = -1.0f;
            } else {
                f = 1.0f;
            }
            long f2 = Velocity.f(j, f);
            Function3 function32 = DraggableKt.a;
            if (this.r == Orientation.j) {
                b = Velocity.c(f2);
            } else {
                b = Velocity.b(f2);
            }
            Float f3 = new Float(b);
            this.n = 1;
            if (function3.f(coroutineScope, f3, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
