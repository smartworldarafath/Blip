package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$2", f = "Delay.kt", l = {293}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class FlowKt__DelayKt$sample$2$1$2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Ref$ObjectRef o;
    public final /* synthetic */ FlowCollector p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$1$2(Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.o = ref$ObjectRef;
        this.p = flowCollector;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FlowKt__DelayKt$sample$2$1$2) s((Unit) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new FlowKt__DelayKt$sample$2$1$2(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        Object obj2 = null;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Ref$ObjectRef ref$ObjectRef = this.o;
        Object obj3 = ref$ObjectRef.j;
        if (obj3 != null) {
            ref$ObjectRef.j = null;
            if (obj3 != NullSurrogateKt.a) {
                obj2 = obj3;
            }
            this.n = 1;
            if (this.p.r(obj2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return unit;
    }
}
