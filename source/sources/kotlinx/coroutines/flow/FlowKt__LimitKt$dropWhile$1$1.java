package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$dropWhile$1$1<T> implements FlowCollector {
    public final /* synthetic */ Ref$BooleanRef j;
    public final /* synthetic */ FlowCollector k;
    public final /* synthetic */ Function2 l;

    public FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector, Function2 function2) {
        this.j = ref$BooleanRef;
        this.k = flowCollector;
        this.l = function2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        if (r12 == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(Object obj, Continuation continuation) {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        Object obj2;
        int i;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i2 = flowKt__LimitKt$dropWhile$1$1$emit$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.p = i2 - Integer.MIN_VALUE;
                obj2 = flowKt__LimitKt$dropWhile$1$1$emit$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = flowKt__LimitKt$dropWhile$1$1$emit$1.p;
                FlowCollector flowCollector = this.k;
                Ref$BooleanRef ref$BooleanRef = this.j;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                ResultKt.b(obj2);
                                return unit;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        obj = flowKt__LimitKt$dropWhile$1$1$emit$1.m;
                        ResultKt.b(obj2);
                    } else {
                        ResultKt.b(obj2);
                        return unit;
                    }
                } else {
                    ResultKt.b(obj2);
                    if (ref$BooleanRef.j) {
                        flowKt__LimitKt$dropWhile$1$1$emit$1.m = null;
                        flowKt__LimitKt$dropWhile$1$1$emit$1.p = 1;
                        if (flowCollector.r(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) != coroutineSingletons) {
                            return unit;
                        }
                    } else {
                        flowKt__LimitKt$dropWhile$1$1$emit$1.m = obj;
                        flowKt__LimitKt$dropWhile$1$1$emit$1.p = 2;
                        obj2 = this.l.n(obj, flowKt__LimitKt$dropWhile$1$1$emit$1);
                    }
                    return coroutineSingletons;
                }
                if (!((Boolean) obj2).booleanValue()) {
                    ref$BooleanRef.j = true;
                    flowKt__LimitKt$dropWhile$1$1$emit$1.m = null;
                    flowKt__LimitKt$dropWhile$1$1$emit$1.p = 3;
                    if (flowCollector.r(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return unit;
            }
        }
        flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
        obj2 = flowKt__LimitKt$dropWhile$1$1$emit$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__LimitKt$dropWhile$1$1$emit$1.p;
        FlowCollector flowCollector2 = this.k;
        Ref$BooleanRef ref$BooleanRef2 = this.j;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        if (!((Boolean) obj2).booleanValue()) {
        }
        return unit2;
    }
}
