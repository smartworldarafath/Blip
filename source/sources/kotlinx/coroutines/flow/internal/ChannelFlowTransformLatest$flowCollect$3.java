package kotlinx.coroutines.flow.internal;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {23}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ ChannelFlowTransformLatest p;
    public final /* synthetic */ FlowCollector q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1<T> implements FlowCollector {
        public final /* synthetic */ Ref$ObjectRef j;
        public final /* synthetic */ CoroutineScope k;
        public final /* synthetic */ ChannelFlowTransformLatest l;
        public final /* synthetic */ FlowCollector m;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {30}, m = "invokeSuspend", v = 1)
        /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int n;
            public final /* synthetic */ ChannelFlowTransformLatest o;
            public final /* synthetic */ FlowCollector p;
            public final /* synthetic */ Object q;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector, Object obj, Continuation continuation) {
                super(2, continuation);
                this.o = channelFlowTransformLatest;
                this.p = flowCollector;
                this.q = obj;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.o, this.p, this.q, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
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
                    Function3 function3 = this.o.n;
                    this.n = 1;
                    if (function3.f(this.p, this.q, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector) {
            this.j = ref$ObjectRef;
            this.k = coroutineScope;
            this.l = channelFlowTransformLatest;
            this.m = flowCollector;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            ChannelFlowTransformLatest$flowCollect$3$1$emit$1 channelFlowTransformLatest$flowCollect$3$1$emit$1;
            int i;
            if (continuation instanceof ChannelFlowTransformLatest$flowCollect$3$1$emit$1) {
                channelFlowTransformLatest$flowCollect$3$1$emit$1 = (ChannelFlowTransformLatest$flowCollect$3$1$emit$1) continuation;
                int i2 = channelFlowTransformLatest$flowCollect$3$1$emit$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.p = i2 - Integer.MIN_VALUE;
                    Object obj2 = channelFlowTransformLatest$flowCollect$3$1$emit$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = channelFlowTransformLatest$flowCollect$3$1$emit$1.p;
                    Ref$ObjectRef ref$ObjectRef = this.j;
                    if (i == 0) {
                        if (i == 1) {
                            obj = channelFlowTransformLatest$flowCollect$3$1$emit$1.m;
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        Job job = (Job) ref$ObjectRef.j;
                        if (job != null) {
                            job.n(new ChildCancelledException());
                            channelFlowTransformLatest$flowCollect$3$1$emit$1.m = obj;
                            channelFlowTransformLatest$flowCollect$3$1$emit$1.p = 1;
                            if (job.O(channelFlowTransformLatest$flowCollect$3$1$emit$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    }
                    ref$ObjectRef.j = BuildersKt.c(this.k, null, CoroutineStart.m, new AnonymousClass2(this.l, this.m, obj, null), 1);
                    return Unit.a;
                }
            }
            channelFlowTransformLatest$flowCollect$3$1$emit$1 = new ChannelFlowTransformLatest$flowCollect$3$1$emit$1(this, continuation);
            Object obj22 = channelFlowTransformLatest$flowCollect$3$1$emit$1.n;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = channelFlowTransformLatest$flowCollect$3$1$emit$1.p;
            Ref$ObjectRef ref$ObjectRef2 = this.j;
            if (i == 0) {
            }
            ref$ObjectRef2.j = BuildersKt.c(this.k, null, CoroutineStart.m, new AnonymousClass2(this.l, this.m, obj, null), 1);
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest channelFlowTransformLatest, FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.p = channelFlowTransformLatest;
        this.q = flowCollector;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ChannelFlowTransformLatest$flowCollect$3) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.p, this.q, continuation);
        channelFlowTransformLatest$flowCollect$3.o = obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.o;
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
            ?? obj2 = new Object();
            ChannelFlowTransformLatest channelFlowTransformLatest = this.p;
            Flow flow = channelFlowTransformLatest.m;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(obj2, coroutineScope, channelFlowTransformLatest, this.q);
            this.o = null;
            this.n = 1;
            if (flow.a(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
