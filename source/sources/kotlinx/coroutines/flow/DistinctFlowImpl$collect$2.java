package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DistinctFlowImpl$collect$2<T> implements FlowCollector {
    public final /* synthetic */ DistinctFlowImpl j;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ FlowCollector l;

    public DistinctFlowImpl$collect$2(DistinctFlowImpl distinctFlowImpl, Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
        this.j = distinctFlowImpl;
        this.k = ref$ObjectRef;
        this.l = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(Object obj, Continuation continuation) {
        DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
        int i;
        if (continuation instanceof DistinctFlowImpl$collect$2$emit$1) {
            distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) continuation;
            int i2 = distinctFlowImpl$collect$2$emit$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                distinctFlowImpl$collect$2$emit$1.o = i2 - Integer.MIN_VALUE;
                Object obj2 = distinctFlowImpl$collect$2$emit$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = distinctFlowImpl$collect$2$emit$1.o;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj2);
                        return unit;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj2);
                DistinctFlowImpl distinctFlowImpl = this.j;
                Object b = distinctFlowImpl.k.b(obj);
                Ref$ObjectRef ref$ObjectRef = this.k;
                Object obj3 = ref$ObjectRef.j;
                if (obj3 == NullSurrogateKt.a || !((Boolean) distinctFlowImpl.l.n(obj3, b)).booleanValue()) {
                    ref$ObjectRef.j = b;
                    distinctFlowImpl$collect$2$emit$1.o = 1;
                    if (this.l.r(obj, distinctFlowImpl$collect$2$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return unit;
            }
        }
        distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
        Object obj22 = distinctFlowImpl$collect$2$emit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = distinctFlowImpl$collect$2$emit$1.o;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
    }
}
