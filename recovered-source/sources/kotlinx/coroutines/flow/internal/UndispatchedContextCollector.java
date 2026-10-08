package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UndispatchedContextCollector<T> implements FlowCollector<T> {
    public final CoroutineContext j;
    public final Object k;
    public final Function2 l;

    public UndispatchedContextCollector(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        this.j = coroutineContext;
        this.k = ThreadContextKt.b(coroutineContext);
        this.l = new UndispatchedContextCollector$emitRef$1(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        Object a = ChannelFlowKt.a(this.j, obj, this.k, this.l, continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
