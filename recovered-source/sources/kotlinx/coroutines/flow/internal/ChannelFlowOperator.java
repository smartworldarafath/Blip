package kotlinx.coroutines.flow.internal;

import defpackage.e6;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {
    public final Flow m;

    public ChannelFlowOperator(Flow flow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.m = flow;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        CoroutineContext a;
        if (this.k == -3) {
            CoroutineContext o = continuation.o();
            Boolean bool = Boolean.FALSE;
            e6 e6Var = new e6(28);
            CoroutineContext coroutineContext = this.j;
            if (!((Boolean) coroutineContext.P0(bool, e6Var)).booleanValue()) {
                a = o.A(coroutineContext);
            } else {
                a = CoroutineContextKt.a(o, coroutineContext, false);
            }
            if (Intrinsics.a(a, o)) {
                Object i = i(flowCollector, continuation);
                if (i == CoroutineSingletons.j) {
                    return i;
                }
            } else {
                ContinuationInterceptor.Key key = ContinuationInterceptor.Key.j;
                if (Intrinsics.a(a.v(key), o.v(key))) {
                    CoroutineContext o2 = continuation.o();
                    if (!(flowCollector instanceof SendingCollector) && !(flowCollector instanceof NopCollector)) {
                        flowCollector = new UndispatchedContextCollector(flowCollector, o2);
                    }
                    Object a2 = ChannelFlowKt.a(a, flowCollector, ThreadContextKt.b(a), new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation);
                    if (a2 == CoroutineSingletons.j) {
                        return a2;
                    }
                }
            }
            return Unit.a;
        }
        Object a3 = super.a(flowCollector, continuation);
        if (a3 == CoroutineSingletons.j) {
            return a3;
        }
        return Unit.a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object c(ProducerScope producerScope, Continuation continuation) {
        Object i = i(new SendingCollector(producerScope), continuation);
        if (i == CoroutineSingletons.j) {
            return i;
        }
        return Unit.a;
    }

    public abstract Object i(FlowCollector flowCollector, Continuation continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String toString() {
        return this.m + " -> " + super.toString();
    }
}
