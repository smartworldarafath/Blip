package androidx.compose.animation.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1", f = "Transition.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Function0 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.n = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1 transitionKt$rememberTransition$1$1$snapshotStateObserver$1$1 = (TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        transitionKt$rememberTransition$1$1$snapshotStateObserver$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1(this.n, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        this.n.a();
        return Unit.a;
    }
}
