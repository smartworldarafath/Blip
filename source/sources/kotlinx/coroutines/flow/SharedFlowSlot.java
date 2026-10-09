package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SharedFlowSlot extends AbstractSharedFlowSlot<SharedFlowImpl<?>> {
    public long a;
    public CancellableContinuationImpl b;

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final boolean a(AbstractSharedFlow abstractSharedFlow) {
        SharedFlowImpl sharedFlowImpl = (SharedFlowImpl) abstractSharedFlow;
        if (this.a >= 0) {
            return false;
        }
        long j = sharedFlowImpl.r;
        if (j < sharedFlowImpl.s) {
            sharedFlowImpl.s = j;
        }
        this.a = j;
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final Continuation[] b(AbstractSharedFlow abstractSharedFlow) {
        long j = this.a;
        this.a = -1L;
        this.b = null;
        return ((SharedFlowImpl) abstractSharedFlow).w(j);
    }
}
