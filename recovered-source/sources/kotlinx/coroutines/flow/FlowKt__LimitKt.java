package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__LimitKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(FlowCollector flowCollector, Object obj, Object obj2, ContinuationImpl continuationImpl) {
        FlowKt__LimitKt$emitAbort$1 flowKt__LimitKt$emitAbort$1;
        int i;
        if (continuationImpl instanceof FlowKt__LimitKt$emitAbort$1) {
            FlowKt__LimitKt$emitAbort$1 flowKt__LimitKt$emitAbort$12 = (FlowKt__LimitKt$emitAbort$1) continuationImpl;
            int i2 = flowKt__LimitKt$emitAbort$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$emitAbort$12.o = i2 - Integer.MIN_VALUE;
                flowKt__LimitKt$emitAbort$1 = flowKt__LimitKt$emitAbort$12;
                Object obj3 = flowKt__LimitKt$emitAbort$1.n;
                Object obj4 = CoroutineSingletons.j;
                i = flowKt__LimitKt$emitAbort$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    } else {
                        obj2 = flowKt__LimitKt$emitAbort$1.m;
                        ResultKt.b(obj3);
                    }
                } else {
                    ResultKt.b(obj3);
                    flowKt__LimitKt$emitAbort$1.m = obj2;
                    flowKt__LimitKt$emitAbort$1.o = 1;
                    if (flowCollector.r(obj, flowKt__LimitKt$emitAbort$1) == obj4) {
                        return;
                    }
                }
                throw new AbortFlowException(obj2);
            }
        }
        flowKt__LimitKt$emitAbort$1 = new ContinuationImpl(continuationImpl);
        Object obj32 = flowKt__LimitKt$emitAbort$1.n;
        Object obj42 = CoroutineSingletons.j;
        i = flowKt__LimitKt$emitAbort$1.o;
        if (i == 0) {
        }
        throw new AbortFlowException(obj2);
    }
}
