package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.TransitionKt$rememberTransition$2$1", f = "Transition.kt", l = {2422}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TransitionKt$rememberTransition$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public MutexImpl n;
    public TransitionState o;
    public int p;
    public final /* synthetic */ TransitionState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransitionKt$rememberTransition$2$1(TransitionState transitionState, Continuation continuation) {
        super(2, continuation);
        this.q = transitionState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransitionKt$rememberTransition$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransitionKt$rememberTransition$2$1(this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        TransitionState transitionState;
        MutexImpl mutexImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        if (i != 0) {
            if (i == 1) {
                transitionState = this.o;
                mutexImpl = this.n;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            TransitionState transitionState2 = this.q;
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) transitionState2;
            SnapshotStateObserver snapshotStateObserver = seekableTransitionState.h;
            if (snapshotStateObserver != null) {
                snapshotStateObserver.e(seekableTransitionState, TransitionKt.a, seekableTransitionState.g);
            }
            MutexImpl mutexImpl2 = seekableTransitionState.k;
            this.n = mutexImpl2;
            this.o = transitionState2;
            this.p = 1;
            if (mutexImpl2.a(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            transitionState = transitionState2;
            mutexImpl = mutexImpl2;
        }
        try {
            ((SeekableTransitionState) transitionState).d = ((SnapshotMutableStateImpl) ((SeekableTransitionState) transitionState).b).getValue();
            CancellableContinuationImpl cancellableContinuationImpl = ((SeekableTransitionState) transitionState).j;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.g(((SnapshotMutableStateImpl) ((SeekableTransitionState) transitionState).b).getValue());
            }
            ((SeekableTransitionState) transitionState).j = null;
            mutexImpl.h(null);
            return Unit.a;
        } catch (Throwable th) {
            mutexImpl.h(null);
            throw th;
        }
    }
}
