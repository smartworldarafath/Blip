package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReadonlyStateFlow<T> implements StateFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public final /* synthetic */ StateFlow j;
    private final Job job;

    public ReadonlyStateFlow(StateFlow stateFlow, Job job) {
        this.j = stateFlow;
        this.job = job;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        ((StateFlowImpl) this.j).a(flowCollector, continuation);
        return CoroutineSingletons.j;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        if (((i < 0 || i >= 2) && i != -2) || bufferOverflow != BufferOverflow.k) {
            return SharedFlowKt.c(this, coroutineContext, i, bufferOverflow);
        }
        return this;
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        return ((StateFlowImpl) this.j).getValue();
    }
}
