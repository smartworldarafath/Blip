package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ Flow j;

    public FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(Flow flow) {
        this.j = flow;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.j.a(new FlowKt__LimitKt$drop$2$1(new Object(), flowCollector), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
