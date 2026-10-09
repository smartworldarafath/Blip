package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
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
@DebugMetadata(c = "androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1", f = "Draggable.kt", l = {337}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DraggableNode$onDragStarted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ DraggableNode p;
    public final /* synthetic */ long q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$onDragStarted$1(DraggableNode draggableNode, long j, Continuation continuation) {
        super(2, continuation);
        this.p = draggableNode;
        this.q = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DraggableNode$onDragStarted$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DraggableNode$onDragStarted$1 draggableNode$onDragStarted$1 = new DraggableNode$onDragStarted$1(this.p, this.q, continuation);
        draggableNode$onDragStarted$1.o = obj;
        return draggableNode$onDragStarted$1;
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
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            Function3 function3 = this.p.U;
            Offset offset = new Offset(this.q);
            this.n = 1;
            if (function3.f(coroutineScope, offset, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
