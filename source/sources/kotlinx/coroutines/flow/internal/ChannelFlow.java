package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ChannelFlow<T> implements FusibleFlow<T> {
    public final CoroutineContext j;
    public final int k;
    public final BufferOverflow l;

    public ChannelFlow(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        this.j = coroutineContext;
        this.k = i;
        this.l = bufferOverflow;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object a(FlowCollector flowCollector, Continuation continuation) {
        Object c = CoroutineScopeKt.c(new ChannelFlow$collect$2(flowCollector, this, null), continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        CoroutineContext coroutineContext2 = this.j;
        CoroutineContext A = coroutineContext.A(coroutineContext2);
        BufferOverflow bufferOverflow2 = BufferOverflow.j;
        BufferOverflow bufferOverflow3 = this.l;
        int i2 = this.k;
        if (bufferOverflow == bufferOverflow2) {
            if (i2 != -3) {
                if (i != -3) {
                    if (i2 != -2) {
                        if (i != -2) {
                            i += i2;
                            if (i < 0) {
                                i = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i = i2;
            }
            bufferOverflow = bufferOverflow3;
        }
        if (Intrinsics.a(A, coroutineContext2) && i == i2 && bufferOverflow == bufferOverflow3) {
            return this;
        }
        return d(A, i, bufferOverflow);
    }

    public abstract Object c(ProducerScope producerScope, Continuation continuation);

    public abstract ChannelFlow d(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow);

    public Flow f() {
        return null;
    }

    public ReceiveChannel g(CoroutineScope coroutineScope) {
        int i = this.k;
        if (i == -3) {
            i = -2;
        }
        CoroutineStart coroutineStart = CoroutineStart.l;
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this, null);
        return ProduceKt.b(coroutineScope, this.j, i, this.l, coroutineStart, channelFlow$collectToFun$1);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
        CoroutineContext coroutineContext = this.j;
        if (coroutineContext != emptyCoroutineContext) {
            arrayList.add("context=" + coroutineContext);
        }
        int i = this.k;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        BufferOverflow bufferOverflow = BufferOverflow.j;
        BufferOverflow bufferOverflow2 = this.l;
        if (bufferOverflow2 != bufferOverflow) {
            arrayList.add("onBufferOverflow=" + bufferOverflow2);
        }
        return getClass().getSimpleName() + '[' + CollectionsKt.y(arrayList, ", ", null, null, null, 62) + ']';
    }
}
