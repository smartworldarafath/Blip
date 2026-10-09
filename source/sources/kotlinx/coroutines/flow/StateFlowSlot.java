package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StateFlowSlot extends AbstractSharedFlowSlot<StateFlowImpl<?>> {
    public final AtomicReference a = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final boolean a(AbstractSharedFlow abstractSharedFlow) {
        AtomicReference atomicReference = this.a;
        if (atomicReference.get() != null) {
            return false;
        }
        atomicReference.set(StateFlowKt.a);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final Continuation[] b(AbstractSharedFlow abstractSharedFlow) {
        this.a.set(null);
        return AbstractSharedFlowKt.a;
    }
}
