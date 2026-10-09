package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", l = {273}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class FlowKt__DelayKt$sample$2$values$1 extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1<T> implements FlowCollector {
        public final /* synthetic */ ProducerScope j;

        public AnonymousClass1(ProducerScope producerScope) {
            this.j = producerScope;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            FlowKt__DelayKt$sample$2$values$1$1$emit$1 flowKt__DelayKt$sample$2$values$1$1$emit$1;
            int i;
            if (continuation instanceof FlowKt__DelayKt$sample$2$values$1$1$emit$1) {
                flowKt__DelayKt$sample$2$values$1$1$emit$1 = (FlowKt__DelayKt$sample$2$values$1$1$emit$1) continuation;
                int i2 = flowKt__DelayKt$sample$2$values$1$1$emit$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    flowKt__DelayKt$sample$2$values$1$1$emit$1.o = i2 - Integer.MIN_VALUE;
                    Object obj2 = flowKt__DelayKt$sample$2$values$1$1$emit$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = flowKt__DelayKt$sample$2$values$1$1$emit$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        if (obj == null) {
                            obj = NullSurrogateKt.a;
                        }
                        flowKt__DelayKt$sample$2$values$1$1$emit$1.o = 1;
                        if (((ChannelCoroutine) this.j).m.k(obj, flowKt__DelayKt$sample$2$values$1$1$emit$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.a;
                }
            }
            flowKt__DelayKt$sample$2$values$1$1$emit$1 = new FlowKt__DelayKt$sample$2$values$1$1$emit$1(this, continuation);
            Object obj22 = flowKt__DelayKt$sample$2$values$1$1$emit$1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = flowKt__DelayKt$sample$2$values$1$1$emit$1.o;
            if (i == 0) {
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$values$1(FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 flowKt__LimitKt$drop$$inlined$unsafeFlow$1, Continuation continuation) {
        super(2, continuation);
        this.p = flowKt__LimitKt$drop$$inlined$unsafeFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FlowKt__DelayKt$sample$2$values$1) s((ProducerScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        FlowKt__DelayKt$sample$2$values$1 flowKt__DelayKt$sample$2$values$1 = new FlowKt__DelayKt$sample$2$values$1(this.p, continuation);
        flowKt__DelayKt$sample$2$values$1.o = obj;
        return flowKt__DelayKt$sample$2$values$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ProducerScope producerScope = (ProducerScope) this.o;
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(producerScope);
            this.o = null;
            this.n = 1;
            if (this.p.a(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
