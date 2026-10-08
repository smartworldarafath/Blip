package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
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
@DebugMetadata(c = "androidx.compose.material.SliderDraggableState$drag$2", f = "Slider.kt", l = {1280}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SliderDraggableState$drag$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SliderDraggableState o;
    public final /* synthetic */ MutatePriority p;
    public final /* synthetic */ Function2 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderDraggableState$drag$2(SliderDraggableState sliderDraggableState, MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.o = sliderDraggableState;
        this.p = mutatePriority;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SliderDraggableState$drag$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SliderDraggableState$drag$2(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        SliderDraggableState sliderDraggableState = this.o;
        MutableState mutableState = sliderDraggableState.b;
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
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
            MutatorMutex mutatorMutex = sliderDraggableState.d;
            SliderDraggableState$dragScope$1 sliderDraggableState$dragScope$1 = sliderDraggableState.c;
            this.n = 1;
            if (mutatorMutex.c(sliderDraggableState$dragScope$1, this.p, this.q, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
        return Unit.a;
    }
}
