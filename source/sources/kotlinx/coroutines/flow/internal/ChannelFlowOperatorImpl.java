package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChannelFlowOperatorImpl<T> extends ChannelFlowOperator<T, T> {
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow d(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new ChannelFlowOperator(this.m, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Flow f() {
        return this.m;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    public final Object i(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.m.a(flowCollector, continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
