package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__ErrorsKt$catchImpl$2<T> implements FlowCollector {
    public final /* synthetic */ FlowCollector j;
    public final /* synthetic */ Ref$ObjectRef k;

    public FlowKt__ErrorsKt$catchImpl$2(FlowCollector flowCollector, Ref$ObjectRef ref$ObjectRef) {
        this.j = flowCollector;
        this.k = ref$ObjectRef;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(Object obj, Continuation continuation) {
        FlowKt__ErrorsKt$catchImpl$2$emit$1 flowKt__ErrorsKt$catchImpl$2$emit$1;
        int i;
        try {
            if (continuation instanceof FlowKt__ErrorsKt$catchImpl$2$emit$1) {
                flowKt__ErrorsKt$catchImpl$2$emit$1 = (FlowKt__ErrorsKt$catchImpl$2$emit$1) continuation;
                int i2 = flowKt__ErrorsKt$catchImpl$2$emit$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    flowKt__ErrorsKt$catchImpl$2$emit$1.o = i2 - Integer.MIN_VALUE;
                    Object obj2 = flowKt__ErrorsKt$catchImpl$2$emit$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = flowKt__ErrorsKt$catchImpl$2$emit$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        FlowCollector flowCollector = this.j;
                        flowKt__ErrorsKt$catchImpl$2$emit$1.o = 1;
                        if (flowCollector.r(obj, flowKt__ErrorsKt$catchImpl$2$emit$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    this = (FlowKt__ErrorsKt$catchImpl$2<T>) Unit.a;
                    return this;
                }
            }
            if (i == 0) {
            }
            this = (FlowKt__ErrorsKt$catchImpl$2<T>) Unit.a;
            return this;
        } catch (Throwable th) {
            this.k.j = th;
            throw th;
        }
        flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
        Object obj22 = flowKt__ErrorsKt$catchImpl$2$emit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = flowKt__ErrorsKt$catchImpl$2$emit$1.o;
    }
}
