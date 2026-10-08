package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.FusibleFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReadonlySharedFlow<T> implements SharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public final /* synthetic */ SharedFlow j;
    private final Job job = null;

    public ReadonlySharedFlow(SharedFlowImpl sharedFlowImpl) {
        this.j = sharedFlowImpl;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        return this.j.a(flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return SharedFlowKt.c(this, coroutineContext, i, bufferOverflow);
    }
}
