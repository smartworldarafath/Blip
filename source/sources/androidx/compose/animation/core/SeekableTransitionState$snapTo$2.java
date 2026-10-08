package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$snapTo$2", f = "Transition.kt", l = {579}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SeekableTransitionState$snapTo$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SeekableTransitionState o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Transition q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$snapTo$2(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
        super(1, continuation);
        this.o = seekableTransitionState;
        this.p = obj;
        this.q = transition;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Object obj2 = this.p;
        Transition transition = this.q;
        return new SeekableTransitionState$snapTo$2(this.o, obj2, transition, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
        SeekableTransitionState seekableTransitionState = this.o;
        MutableState mutableState = seekableTransitionState.b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Transition transition = this.q;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            seekableTransitionState.l();
            seekableTransitionState.m = Long.MIN_VALUE;
            seekableTransitionState.q(0.0f);
            Object value = ((SnapshotMutableStateImpl) seekableTransitionState.c).getValue();
            Object obj2 = this.p;
            if (obj2.equals(value)) {
                f = -4.0f;
            } else if (obj2.equals(((SnapshotMutableStateImpl) mutableState).getValue())) {
                f = -5.0f;
            } else {
                f = -3.0f;
            }
            transition.s(obj2);
            transition.o(0L);
            ((SnapshotMutableStateImpl) mutableState).setValue(obj2);
            seekableTransitionState.q(0.0f);
            seekableTransitionState.c(obj2);
            transition.k(f);
            if (f == -3.0f) {
                this.n = 1;
                if (SeekableTransitionState.i(seekableTransitionState, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        transition.j();
        return Unit.a;
    }
}
