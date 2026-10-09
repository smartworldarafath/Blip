package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$take$2$1<T> implements FlowCollector {
    public final /* synthetic */ Ref$IntRef j;
    public final /* synthetic */ FlowCollector k;
    public final /* synthetic */ Object l;

    public FlowKt__LimitKt$take$2$1(Ref$IntRef ref$IntRef, FlowCollector flowCollector, Object obj) {
        this.j = ref$IntRef;
        this.k = flowCollector;
        this.l = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(Object obj, Continuation continuation) {
        FlowKt__LimitKt$take$2$1$emit$1 flowKt__LimitKt$take$2$1$emit$1;
        int i;
        if (continuation instanceof FlowKt__LimitKt$take$2$1$emit$1) {
            flowKt__LimitKt$take$2$1$emit$1 = (FlowKt__LimitKt$take$2$1$emit$1) continuation;
            int i2 = flowKt__LimitKt$take$2$1$emit$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$take$2$1$emit$1.o = i2 - Integer.MIN_VALUE;
                Object obj2 = flowKt__LimitKt$take$2$1$emit$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = flowKt__LimitKt$take$2$1$emit$1.o;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj2);
                            return unit;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj2);
                    return unit;
                }
                ResultKt.b(obj2);
                Ref$IntRef ref$IntRef = this.j;
                int i3 = ref$IntRef.j + 1;
                ref$IntRef.j = i3;
                FlowCollector flowCollector = this.k;
                if (i3 < 1) {
                    flowKt__LimitKt$take$2$1$emit$1.o = 1;
                    if (flowCollector.r(obj, flowKt__LimitKt$take$2$1$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    return unit;
                }
                flowKt__LimitKt$take$2$1$emit$1.o = 2;
                FlowKt__LimitKt.a(flowCollector, obj, this.l, flowKt__LimitKt$take$2$1$emit$1);
                return coroutineSingletons;
            }
        }
        flowKt__LimitKt$take$2$1$emit$1 = new FlowKt__LimitKt$take$2$1$emit$1(this, continuation);
        Object obj22 = flowKt__LimitKt$take$2$1$emit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__LimitKt$take$2$1$emit$1.o;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
    }
}
