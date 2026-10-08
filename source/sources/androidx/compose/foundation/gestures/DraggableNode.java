package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragEvent;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DraggableNode extends DragGestureNode {
    public DraggableState S;
    public boolean T;
    public Function3 U;
    public Function3 V;
    public boolean W;

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object f1(Function2 function2, Continuation continuation) {
        Object a;
        Orientation orientation = this.z;
        if (orientation != null && (a = this.S.a(MutatePriority.k, new DraggableNode$drag$2(function2, this, orientation, null), (SuspendLambda) continuation)) == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void k1(long j) {
        if (this.w && !Intrinsics.a(this.U, DraggableKt.a)) {
            BuildersKt.c(M0(), null, CoroutineStart.m, new DraggableNode$onDragStarted$1(this, j, null), 1);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void l1(DragEvent.DragStopped dragStopped) {
        Orientation orientation;
        if (this.w && !Intrinsics.a(this.V, DraggableKt.b) && (orientation = this.z) != null) {
            BuildersKt.c(M0(), null, CoroutineStart.m, new DraggableNode$onDragStopped$1(this, dragStopped, orientation, null), 1);
        }
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final boolean q1() {
        return this.T;
    }
}
