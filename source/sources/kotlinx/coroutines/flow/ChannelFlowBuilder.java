package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ChannelFlowBuilder<T> extends ChannelFlow<T> {
    public final Function2 m;

    public ChannelFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.m = function2;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object c(ProducerScope producerScope, Continuation continuation) {
        Object n = this.m.n(producerScope, continuation);
        if (n == CoroutineSingletons.j) {
            return n;
        }
        return Unit.a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow d(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new ChannelFlowBuilder(this.m, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String toString() {
        return "block[" + this.m + "] -> " + super.toString();
    }
}
