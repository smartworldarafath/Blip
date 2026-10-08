package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DistinctFlowImpl<T> implements Flow<T> {
    public final Flow j;
    public final Function1 k;
    public final Function2 l;

    public DistinctFlowImpl(Flow flow, Function1 function1, Function2 function2) {
        this.j = flow;
        this.k = function1;
        this.l = function2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        ?? obj = new Object();
        obj.j = NullSurrogateKt.a;
        Object a = this.j.a(new DistinctFlowImpl$collect$2(this, obj, flowCollector), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
