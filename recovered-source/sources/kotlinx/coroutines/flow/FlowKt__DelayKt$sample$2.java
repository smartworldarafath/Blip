package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectImplementation;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", l = {412}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class FlowKt__DelayKt$sample$2 extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<Object>, Continuation<? super Unit>, Object> {
    public ReceiveChannel n;
    public Ref$ObjectRef o;
    public ReceiveChannel p;
    public int q;
    public /* synthetic */ CoroutineScope r;
    public /* synthetic */ FlowCollector s;
    public final /* synthetic */ FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2(FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 flowKt__LimitKt$drop$$inlined$unsafeFlow$1, Continuation continuation) {
        super(3, continuation);
        this.t = flowKt__LimitKt$drop$$inlined$unsafeFlow$1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.t, (Continuation) obj3);
        flowKt__DelayKt$sample$2.r = (CoroutineScope) obj;
        flowKt__DelayKt$sample$2.s = (FlowCollector) obj2;
        return flowKt__DelayKt$sample$2.v(Unit.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ReceiveChannel b;
        ReceiveChannel receiveChannel;
        Ref$ObjectRef ref$ObjectRef;
        Object d;
        CoroutineScope coroutineScope = this.r;
        FlowCollector flowCollector = this.s;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.q;
        if (i != 0) {
            if (i == 1) {
                b = this.p;
                Ref$ObjectRef ref$ObjectRef2 = this.o;
                receiveChannel = this.n;
                ResultKt.b(obj);
                ref$ObjectRef = ref$ObjectRef2;
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            FlowKt__DelayKt$sample$2$values$1 flowKt__DelayKt$sample$2$values$1 = new FlowKt__DelayKt$sample$2$values$1(this.t, null);
            BufferOverflow bufferOverflow = BufferOverflow.j;
            CoroutineStart coroutineStart = CoroutineStart.j;
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
            ReceiveChannel b2 = ProduceKt.b(coroutineScope, emptyCoroutineContext, -1, bufferOverflow, coroutineStart, flowKt__DelayKt$sample$2$values$1);
            Object obj2 = new Object();
            b = ProduceKt.b(coroutineScope, emptyCoroutineContext, 0, bufferOverflow, coroutineStart, new SuspendLambda(2, null));
            receiveChannel = b2;
            ref$ObjectRef = obj2;
        }
        while (ref$ObjectRef.j != NullSurrogateKt.c) {
            CoroutineContext coroutineContext = this.k;
            coroutineContext.getClass();
            SelectImplementation selectImplementation = new SelectImplementation(coroutineContext);
            SelectClause1 b3 = receiveChannel.b();
            FlowKt__DelayKt$sample$2$1$1 flowKt__DelayKt$sample$2$1$1 = new FlowKt__DelayKt$sample$2$1$1(ref$ObjectRef, b, null);
            BufferedChannel bufferedChannel = ((SelectClause1Impl) b3).a;
            SelectClause1Impl selectClause1Impl = (SelectClause1Impl) b3;
            selectImplementation.f(new SelectImplementation.ClauseData(bufferedChannel, selectClause1Impl.b, selectClause1Impl.c, flowKt__DelayKt$sample$2$1$1, selectClause1Impl.d), false);
            SelectClause1 a = b.a();
            FlowKt__DelayKt$sample$2$1$2 flowKt__DelayKt$sample$2$1$2 = new FlowKt__DelayKt$sample$2$1$2(ref$ObjectRef, flowCollector, null);
            BufferedChannel bufferedChannel2 = ((SelectClause1Impl) a).a;
            SelectClause1Impl selectClause1Impl2 = (SelectClause1Impl) a;
            selectImplementation.f(new SelectImplementation.ClauseData(bufferedChannel2, selectClause1Impl2.b, selectClause1Impl2.c, flowKt__DelayKt$sample$2$1$2, selectClause1Impl2.d), false);
            this.r = null;
            this.s = flowCollector;
            this.n = receiveChannel;
            this.o = ref$ObjectRef;
            this.p = b;
            this.q = 1;
            if (SelectImplementation.o.get(selectImplementation) instanceof SelectImplementation.ClauseData) {
                d = selectImplementation.c(this);
            } else {
                d = selectImplementation.d(this);
            }
            if (d == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
