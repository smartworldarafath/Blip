package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CancellableFlowImpl<T> implements CancellableFlow<T> {
    public final Flow j;

    public CancellableFlowImpl(Flow flow) {
        this.j = flow;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.j.a(new CancellableFlowImpl$collect$2(flowCollector), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
