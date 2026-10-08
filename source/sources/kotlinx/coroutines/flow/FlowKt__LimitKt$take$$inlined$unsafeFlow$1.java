package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$take$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ Flow j;

    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1", f = "Limit.kt", l = {115}, m = "collect", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;
        public Object p;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$take$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__LimitKt$take$$inlined$unsafeFlow$1(Flow flow) {
        this.j = flow;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        int i;
        Object obj;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.n = i2 - Integer.MIN_VALUE;
                Object obj2 = anonymousClass1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anonymousClass1.n;
                if (i == 0) {
                    if (i == 1) {
                        obj = anonymousClass1.p;
                        try {
                            ResultKt.b(obj2);
                        } catch (AbortFlowException e) {
                            e = e;
                            if (e.j != obj) {
                            }
                            return Unit.a;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    Object obj3 = new Object();
                    ?? obj4 = new Object();
                    try {
                        Flow flow = this.j;
                        FlowKt__LimitKt$take$2$1 flowKt__LimitKt$take$2$1 = new FlowKt__LimitKt$take$2$1(obj4, flowCollector, obj3);
                        anonymousClass1.p = obj3;
                        anonymousClass1.n = 1;
                        if (flow.a(flowKt__LimitKt$take$2$1, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } catch (AbortFlowException e2) {
                        e = e2;
                        obj = obj3;
                        if (e.j != obj) {
                            throw e;
                        }
                        return Unit.a;
                    }
                }
                return Unit.a;
            }
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj22 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anonymousClass1.n;
        if (i == 0) {
        }
        return Unit.a;
    }
}
