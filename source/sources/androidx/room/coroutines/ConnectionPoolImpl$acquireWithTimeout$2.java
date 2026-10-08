package androidx.room.coroutines;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", l = {171}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ConnectionPoolImpl$acquireWithTimeout$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Ref$ObjectRef n;
    public int o;
    public final /* synthetic */ Ref$ObjectRef p;
    public final /* synthetic */ Pool q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPoolImpl$acquireWithTimeout$2(Ref$ObjectRef ref$ObjectRef, Pool pool, Continuation continuation) {
        super(2, continuation);
        this.p = ref$ObjectRef;
        this.q = pool;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ConnectionPoolImpl$acquireWithTimeout$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ConnectionPoolImpl$acquireWithTimeout$2(this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i == 1) {
                ref$ObjectRef = this.n;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = this.p;
            this.n = ref$ObjectRef2;
            this.o = 1;
            Object a = this.q.a(this);
            if (a == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = a;
            ref$ObjectRef = ref$ObjectRef2;
        }
        ref$ObjectRef.j = obj;
        return Unit.a;
    }
}
