package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import defpackage.a8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.Transition$animateTo$1$1$1", f = "Transition.kt", l = {1364}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class Transition$animateTo$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public float n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Transition q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transition$animateTo$1$1$1(Transition transition, Continuation continuation) {
        super(2, continuation);
        this.q = transition;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((Transition$animateTo$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        Transition$animateTo$1$1$1 transition$animateTo$1$1$1 = new Transition$animateTo$1$1$1(this.q, continuation);
        transition$animateTo$1$1$1.p = obj;
        return transition$animateTo$1$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float h;
        CoroutineScope coroutineScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i == 1) {
                h = this.n;
                coroutineScope = (CoroutineScope) this.p;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.p;
            h = SuspendAnimationKt.h(coroutineScope2.getCoroutineContext());
            coroutineScope = coroutineScope2;
        }
        while (CoroutineScopeKt.d(coroutineScope)) {
            a8 a8Var = new a8(this.q, h);
            this.p = coroutineScope;
            this.n = h;
            this.o = 1;
            CoroutineContext coroutineContext = this.k;
            coroutineContext.getClass();
            if (MonotonicFrameClockKt.a(coroutineContext).w(this, a8Var) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
