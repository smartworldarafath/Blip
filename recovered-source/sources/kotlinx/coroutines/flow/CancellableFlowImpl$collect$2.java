package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CancellableFlowImpl$collect$2<T> implements FlowCollector {
    public final /* synthetic */ FlowCollector j;

    public CancellableFlowImpl$collect$2(FlowCollector flowCollector) {
        this.j = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(Object obj, Continuation continuation) {
        CancellableFlowImpl$collect$2$emit$1 cancellableFlowImpl$collect$2$emit$1;
        int i;
        if (continuation instanceof CancellableFlowImpl$collect$2$emit$1) {
            cancellableFlowImpl$collect$2$emit$1 = (CancellableFlowImpl$collect$2$emit$1) continuation;
            int i2 = cancellableFlowImpl$collect$2$emit$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cancellableFlowImpl$collect$2$emit$1.o = i2 - Integer.MIN_VALUE;
                Object obj2 = cancellableFlowImpl$collect$2$emit$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = cancellableFlowImpl$collect$2$emit$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj2);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    CoroutineContext coroutineContext = cancellableFlowImpl$collect$2$emit$1.k;
                    coroutineContext.getClass();
                    JobKt.c(coroutineContext);
                    cancellableFlowImpl$collect$2$emit$1.o = 1;
                    if (this.j.r(obj, cancellableFlowImpl$collect$2$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        cancellableFlowImpl$collect$2$emit$1 = new CancellableFlowImpl$collect$2$emit$1(this, continuation);
        Object obj22 = cancellableFlowImpl$collect$2$emit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = cancellableFlowImpl$collect$2$emit$1.o;
        if (i == 0) {
        }
        return Unit.a;
    }
}
