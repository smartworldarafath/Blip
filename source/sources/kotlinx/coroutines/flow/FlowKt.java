package kotlinx.coroutines.flow;

import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import defpackage.z6;
import java.io.Serializable;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NopCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1;

/* loaded from: classes.dex */
public abstract class FlowKt {
    public static final SharedFlow a(SharedFlowImpl sharedFlowImpl) {
        return new ReadonlySharedFlow(sharedFlowImpl);
    }

    public static final StateFlow b(MutableStateFlow mutableStateFlow) {
        return new ReadonlyStateFlow(mutableStateFlow, null);
    }

    public static Flow c(Flow flow, int i) {
        BufferOverflow bufferOverflow = BufferOverflow.j;
        if (i < 0 && i != -2 && i != -1) {
            fe.l(q.g(i, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        if (i == -1) {
            bufferOverflow = BufferOverflow.k;
            i = 0;
        }
        boolean z = flow instanceof FusibleFlow;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
        if (z) {
            return ((FusibleFlow) flow).b(emptyCoroutineContext, i, bufferOverflow);
        }
        return new ChannelFlowOperator(flow, emptyCoroutineContext, i, bufferOverflow);
    }

    public static final Flow d(Function2 function2) {
        return new CallbackFlowBuilder(function2, EmptyCoroutineContext.j, -2, BufferOverflow.j);
    }

    public static final CancellableFlow e(CancellableFlow cancellableFlow) {
        if (cancellableFlow != null) {
            return cancellableFlow;
        }
        return new CancellableFlowImpl(cancellableFlow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Serializable f(FlowUtil$createFlow$$inlined$map$1 flowUtil$createFlow$$inlined$map$1, FlowCollector flowCollector, ContinuationImpl continuationImpl) {
        FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$1;
        int i;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        Job job;
        CancellationException R;
        if (continuationImpl instanceof FlowKt__ErrorsKt$catchImpl$1) {
            FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$12 = (FlowKt__ErrorsKt$catchImpl$1) continuationImpl;
            int i2 = flowKt__ErrorsKt$catchImpl$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$12.o = i2 - Integer.MIN_VALUE;
                flowKt__ErrorsKt$catchImpl$1 = flowKt__ErrorsKt$catchImpl$12;
                Object obj = flowKt__ErrorsKt$catchImpl$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = flowKt__ErrorsKt$catchImpl$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ref$ObjectRef = flowKt__ErrorsKt$catchImpl$1.m;
                        try {
                            ResultKt.b(obj);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    try {
                        FlowCollector flowKt__ErrorsKt$catchImpl$2 = new FlowKt__ErrorsKt$catchImpl$2(flowCollector, obj2);
                        flowKt__ErrorsKt$catchImpl$1.m = obj2;
                        flowKt__ErrorsKt$catchImpl$1.o = 1;
                        if (flowUtil$createFlow$$inlined$map$1.a(flowKt__ErrorsKt$catchImpl$2, flowKt__ErrorsKt$catchImpl$1) != coroutineSingletons) {
                            return null;
                        }
                        return coroutineSingletons;
                    } catch (Throwable th3) {
                        th = th3;
                        ref$ObjectRef = obj2;
                    }
                }
                th = (Throwable) ref$ObjectRef.j;
                if (th != null || !th.equals(th)) {
                    CoroutineContext coroutineContext = flowKt__ErrorsKt$catchImpl$1.k;
                    coroutineContext.getClass();
                    job = (Job) coroutineContext.v(Job.Key.j);
                    if (job != null || !job.isCancelled() || (R = job.R()) == null || !R.equals(th)) {
                        if (th != null) {
                            return th;
                        }
                        if (th instanceof CancellationException) {
                            ExceptionsKt.a(th, th);
                            throw th;
                        }
                        ExceptionsKt.a(th, th);
                        throw th;
                    }
                }
                throw th;
            }
        }
        flowKt__ErrorsKt$catchImpl$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = flowKt__ErrorsKt$catchImpl$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__ErrorsKt$catchImpl$1.o;
        if (i == 0) {
        }
        th = (Throwable) ref$ObjectRef.j;
        if (th != null) {
        }
        CoroutineContext coroutineContext2 = flowKt__ErrorsKt$catchImpl$1.k;
        coroutineContext2.getClass();
        job = (Job) coroutineContext2.v(Job.Key.j);
        if (job != null) {
        }
        if (th != null) {
        }
    }

    public static final Flow g(Function2 function2) {
        return new ChannelFlowBuilder(function2, EmptyCoroutineContext.j, -2, BufferOverflow.j);
    }

    public static final Object h(Flow flow, Function2 function2, ContinuationImpl continuationImpl) {
        int i = FlowKt__MergeKt.a;
        Object a = c(w(flow, new FlowKt__MergeKt$mapLatest$1(function2, null)), 0).a(NopCollector.j, continuationImpl);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        Unit unit = Unit.a;
        if (a != coroutineSingletons) {
            a = unit;
        }
        if (a == coroutineSingletons) {
            return a;
        }
        return unit;
    }

    public static final Flow i(Flow flow) {
        if (flow instanceof StateFlow) {
            return flow;
        }
        return FlowKt__DistinctKt.a(flow, FlowKt__DistinctKt.a, FlowKt__DistinctKt.b);
    }

    public static final Flow j(NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1 notificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1, z6 z6Var) {
        TypeIntrinsics.c(2, z6Var);
        return FlowKt__DistinctKt.a(notificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1, FlowKt__DistinctKt.a, z6Var);
    }

    public static final Flow k(Flow flow, Function1 function1) {
        return FlowKt__DistinctKt.a(flow, function1, FlowKt__DistinctKt.b);
    }

    public static final Object l(FlowCollector flowCollector, ReceiveChannel receiveChannel, Continuation continuation) {
        Object a = FlowKt__ChannelsKt.a(flowCollector, receiveChannel, true, (ContinuationImpl) continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m(CancellableFlow cancellableFlow, Function2 function2, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        int i;
        Symbol symbol;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$2;
        Object obj;
        if (continuationImpl instanceof FlowKt__ReduceKt$first$3) {
            FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$32 = (FlowKt__ReduceKt$first$3) continuationImpl;
            int i2 = flowKt__ReduceKt$first$32.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$32.p = i2 - Integer.MIN_VALUE;
                flowKt__ReduceKt$first$3 = flowKt__ReduceKt$first$32;
                Object obj2 = flowKt__ReduceKt$first$3.o;
                Object obj3 = CoroutineSingletons.j;
                i = flowKt__ReduceKt$first$3.p;
                symbol = NullSurrogateKt.a;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__ReduceKt$first$$inlined$collectWhile$2 = flowKt__ReduceKt$first$3.n;
                        ref$ObjectRef = flowKt__ReduceKt$first$3.m;
                        try {
                            ResultKt.b(obj2);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            if (e.j != flowKt__ReduceKt$first$$inlined$collectWhile$2) {
                                CoroutineContext coroutineContext = flowKt__ReduceKt$first$3.k;
                                coroutineContext.getClass();
                                JobKt.c(coroutineContext);
                                obj = ref$ObjectRef.j;
                                if (obj != symbol) {
                                }
                            } else {
                                throw e;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    ?? obj4 = new Object();
                    obj4.j = symbol;
                    FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$22 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, obj4);
                    try {
                        flowKt__ReduceKt$first$3.m = obj4;
                        flowKt__ReduceKt$first$3.n = flowKt__ReduceKt$first$$inlined$collectWhile$22;
                        flowKt__ReduceKt$first$3.p = 1;
                        if (cancellableFlow.a(flowKt__ReduceKt$first$$inlined$collectWhile$22, flowKt__ReduceKt$first$3) == obj3) {
                            return obj3;
                        }
                        ref$ObjectRef = obj4;
                    } catch (AbortFlowException e3) {
                        ref$ObjectRef = obj4;
                        e = e3;
                        flowKt__ReduceKt$first$$inlined$collectWhile$2 = flowKt__ReduceKt$first$$inlined$collectWhile$22;
                        if (e.j != flowKt__ReduceKt$first$$inlined$collectWhile$2) {
                        }
                    }
                }
                obj = ref$ObjectRef.j;
                if (obj != symbol) {
                    return obj;
                }
                fe.o("Expected at least one element matching the predicate");
                return null;
            }
        }
        flowKt__ReduceKt$first$3 = new ContinuationImpl(continuationImpl);
        Object obj22 = flowKt__ReduceKt$first$3.o;
        Object obj32 = CoroutineSingletons.j;
        i = flowKt__ReduceKt$first$3.p;
        symbol = NullSurrogateKt.a;
        if (i == 0) {
        }
        obj = ref$ObjectRef.j;
        if (obj != symbol) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object n(Flow flow, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        int i;
        Symbol symbol;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$first$$inlined$collectWhile$1 flowKt__ReduceKt$first$$inlined$collectWhile$1;
        Object obj;
        if (continuationImpl instanceof FlowKt__ReduceKt$first$1) {
            FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$12 = (FlowKt__ReduceKt$first$1) continuationImpl;
            int i2 = flowKt__ReduceKt$first$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$12.p = i2 - Integer.MIN_VALUE;
                flowKt__ReduceKt$first$1 = flowKt__ReduceKt$first$12;
                Object obj2 = flowKt__ReduceKt$first$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = flowKt__ReduceKt$first$1.p;
                symbol = NullSurrogateKt.a;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__ReduceKt$first$$inlined$collectWhile$1 = flowKt__ReduceKt$first$1.n;
                        ref$ObjectRef = flowKt__ReduceKt$first$1.m;
                        try {
                            ResultKt.b(obj2);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            if (e.j != flowKt__ReduceKt$first$$inlined$collectWhile$1) {
                                CoroutineContext coroutineContext = flowKt__ReduceKt$first$1.k;
                                coroutineContext.getClass();
                                JobKt.c(coroutineContext);
                                obj = ref$ObjectRef.j;
                                if (obj != symbol) {
                                }
                            } else {
                                throw e;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    final ?? obj3 = new Object();
                    obj3.j = symbol;
                    ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object r(Object obj4, Continuation continuation) {
                            Ref$ObjectRef.this.j = obj4;
                            throw new AbortFlowException(this);
                        }
                    };
                    try {
                        flowKt__ReduceKt$first$1.m = obj3;
                        flowKt__ReduceKt$first$1.n = r2;
                        flowKt__ReduceKt$first$1.p = 1;
                        if (flow.a(r2, flowKt__ReduceKt$first$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        ref$ObjectRef = obj3;
                    } catch (AbortFlowException e3) {
                        ref$ObjectRef = obj3;
                        e = e3;
                        flowKt__ReduceKt$first$$inlined$collectWhile$1 = r2;
                        if (e.j != flowKt__ReduceKt$first$$inlined$collectWhile$1) {
                        }
                    }
                }
                obj = ref$ObjectRef.j;
                if (obj != symbol) {
                    return obj;
                }
                fe.o("Expected at least one element");
                return null;
            }
        }
        flowKt__ReduceKt$first$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = flowKt__ReduceKt$first$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__ReduceKt$first$1.p;
        symbol = NullSurrogateKt.a;
        if (i == 0) {
        }
        obj = ref$ObjectRef.j;
        if (obj != symbol) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object o(Flow flow, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        int i;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
        if (continuationImpl instanceof FlowKt__ReduceKt$firstOrNull$1) {
            FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$12 = (FlowKt__ReduceKt$firstOrNull$1) continuationImpl;
            int i2 = flowKt__ReduceKt$firstOrNull$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$12.p = i2 - Integer.MIN_VALUE;
                flowKt__ReduceKt$firstOrNull$1 = flowKt__ReduceKt$firstOrNull$12;
                Object obj = flowKt__ReduceKt$firstOrNull$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = flowKt__ReduceKt$firstOrNull$1.p;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 = flowKt__ReduceKt$firstOrNull$1.n;
                        ref$ObjectRef = flowKt__ReduceKt$firstOrNull$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            if (e.j != flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) {
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    final ?? obj2 = new Object();
                    ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object r(Object obj3, Continuation continuation) {
                            Ref$ObjectRef.this.j = obj3;
                            throw new AbortFlowException(this);
                        }
                    };
                    try {
                        flowKt__ReduceKt$firstOrNull$1.m = obj2;
                        flowKt__ReduceKt$firstOrNull$1.n = r2;
                        flowKt__ReduceKt$firstOrNull$1.p = 1;
                        if (flow.a(r2, flowKt__ReduceKt$firstOrNull$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        ref$ObjectRef = obj2;
                    } catch (AbortFlowException e3) {
                        ref$ObjectRef = obj2;
                        e = e3;
                        flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 = r2;
                        if (e.j != flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) {
                            CoroutineContext coroutineContext = flowKt__ReduceKt$firstOrNull$1.k;
                            coroutineContext.getClass();
                            JobKt.c(coroutineContext);
                            return ref$ObjectRef.j;
                        }
                        throw e;
                    }
                }
                return ref$ObjectRef.j;
            }
        }
        flowKt__ReduceKt$firstOrNull$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = flowKt__ReduceKt$firstOrNull$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__ReduceKt$firstOrNull$1.p;
        if (i == 0) {
        }
        return ref$ObjectRef.j;
    }

    public static final Flow p(Function2 function2) {
        return new SafeFlow(function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object q(Flow flow, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$last$1 flowKt__ReduceKt$last$1;
        int i;
        Symbol symbol;
        Ref$ObjectRef ref$ObjectRef;
        Object obj;
        if (continuationImpl instanceof FlowKt__ReduceKt$last$1) {
            FlowKt__ReduceKt$last$1 flowKt__ReduceKt$last$12 = (FlowKt__ReduceKt$last$1) continuationImpl;
            int i2 = flowKt__ReduceKt$last$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$last$12.o = i2 - Integer.MIN_VALUE;
                flowKt__ReduceKt$last$1 = flowKt__ReduceKt$last$12;
                Object obj2 = flowKt__ReduceKt$last$1.n;
                Object obj3 = CoroutineSingletons.j;
                i = flowKt__ReduceKt$last$1.o;
                symbol = NullSurrogateKt.a;
                if (i == 0) {
                    if (i == 1) {
                        ref$ObjectRef = flowKt__ReduceKt$last$1.m;
                        ResultKt.b(obj2);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    final ?? obj4 = new Object();
                    obj4.j = symbol;
                    FlowCollector flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$last$2
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object r(Object obj5, Continuation continuation) {
                            Ref$ObjectRef.this.j = obj5;
                            return Unit.a;
                        }
                    };
                    flowKt__ReduceKt$last$1.m = obj4;
                    flowKt__ReduceKt$last$1.o = 1;
                    if (flow.a(flowCollector, flowKt__ReduceKt$last$1) == obj3) {
                        return obj3;
                    }
                    ref$ObjectRef = obj4;
                }
                obj = ref$ObjectRef.j;
                if (obj == symbol) {
                    return obj;
                }
                fe.o("Expected at least one element");
                return null;
            }
        }
        flowKt__ReduceKt$last$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = flowKt__ReduceKt$last$1.n;
        Object obj32 = CoroutineSingletons.j;
        i = flowKt__ReduceKt$last$1.o;
        symbol = NullSurrogateKt.a;
        if (i == 0) {
        }
        obj = ref$ObjectRef.j;
        if (obj == symbol) {
        }
    }

    public static final void r(FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, ContextScope contextScope) {
        BuildersKt.c(contextScope, null, null, new FlowKt__CollectKt$launchIn$1(flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, null), 3);
    }

    public static final ChannelLimitedFlowMerge s(Flow... flowArr) {
        Iterable arraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
        int i = FlowKt__MergeKt.a;
        if (flowArr.length == 0) {
            arraysKt___ArraysKt$asIterable$$inlined$Iterable$1 = EmptyList.j;
        } else {
            arraysKt___ArraysKt$asIterable$$inlined$Iterable$1 = new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(flowArr);
        }
        return new ChannelLimitedFlowMerge(arraysKt___ArraysKt$asIterable$$inlined$Iterable$1, EmptyCoroutineContext.j, -2, BufferOverflow.j);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1] */
    public static final FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1 t(FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 flowKt__LimitKt$drop$$inlined$unsafeFlow$1) {
        final FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(flowKt__LimitKt$drop$$inlined$unsafeFlow$1, null);
        return new Flow<Object>() { // from class: kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public final Object a(FlowCollector flowCollector, Continuation continuation) {
                FlowCoroutineKt$scopedFlow$1$1 flowCoroutineKt$scopedFlow$1$1 = new FlowCoroutineKt$scopedFlow$1$1(Function3.this, flowCollector, null);
                ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation, continuation.o());
                Object a = UndispatchedKt.a(scopeCoroutine, true, scopeCoroutine, flowCoroutineKt$scopedFlow$1$1);
                if (a == CoroutineSingletons.j) {
                    return a;
                }
                return Unit.a;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object u(Flow flow, CoroutineScope coroutineScope, ContinuationImpl continuationImpl) {
        FlowKt__ShareKt$stateIn$1 flowKt__ShareKt$stateIn$1;
        int i;
        if (continuationImpl instanceof FlowKt__ShareKt$stateIn$1) {
            FlowKt__ShareKt$stateIn$1 flowKt__ShareKt$stateIn$12 = (FlowKt__ShareKt$stateIn$1) continuationImpl;
            int i2 = flowKt__ShareKt$stateIn$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ShareKt$stateIn$12.n = i2 - Integer.MIN_VALUE;
                flowKt__ShareKt$stateIn$1 = flowKt__ShareKt$stateIn$12;
                Object obj = flowKt__ShareKt$stateIn$1.m;
                Object obj2 = CoroutineSingletons.j;
                i = flowKt__ShareKt$stateIn$1.n;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    SharingConfig a = FlowKt__ShareKt.a(flow);
                    CompletableDeferred a2 = CompletableDeferredKt.a((Job) coroutineScope.getCoroutineContext().v(Job.Key.j));
                    BuildersKt.c(coroutineScope, a.b, null, new FlowKt__ShareKt$launchSharingDeferred$1(a.a, a2, null), 2);
                    flowKt__ShareKt$stateIn$1.n = 1;
                    obj = a2.Z(flowKt__ShareKt$stateIn$1);
                    if (obj == obj2) {
                        return obj2;
                    }
                }
                Object obj3 = ((Result) obj).j;
                ResultKt.b(obj3);
                return obj3;
            }
        }
        flowKt__ShareKt$stateIn$1 = new ContinuationImpl(continuationImpl);
        Object obj4 = flowKt__ShareKt$stateIn$1.m;
        Object obj22 = CoroutineSingletons.j;
        i = flowKt__ShareKt$stateIn$1.n;
        if (i == 0) {
        }
        Object obj32 = ((Result) obj4).j;
        ResultKt.b(obj32);
        return obj32;
    }

    public static final StateFlow v(Flow flow, ContextScope contextScope, SharingStarted sharingStarted, Float f) {
        CoroutineStart coroutineStart;
        SharingConfig a = FlowKt__ShareKt.a(flow);
        MutableStateFlow a2 = StateFlowKt.a(f);
        CoroutineContext coroutineContext = a.b;
        Flow flow2 = a.a;
        if (sharingStarted.equals(SharingStarted.Companion.a)) {
            coroutineStart = CoroutineStart.j;
        } else {
            coroutineStart = CoroutineStart.m;
        }
        return new ReadonlyStateFlow(a2, BuildersKt.b(contextScope, coroutineContext, coroutineStart, new FlowKt__ShareKt$launchSharing$1(sharingStarted, flow2, a2, f, null)));
    }

    public static final ChannelFlowTransformLatest w(Flow flow, Function3 function3) {
        int i = FlowKt__MergeKt.a;
        return new ChannelFlowTransformLatest(function3, flow, EmptyCoroutineContext.j, -2, BufferOverflow.j);
    }
}
