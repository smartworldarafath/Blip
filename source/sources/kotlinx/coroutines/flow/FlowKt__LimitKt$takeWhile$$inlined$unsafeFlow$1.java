package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 j;
    public final /* synthetic */ Function2 k;

    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", l = {123}, m = "collect", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;
        public FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 p;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1, Function2 function2) {
        this.j = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        this.k = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        int i;
        FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.n = i2 - Integer.MIN_VALUE;
                Object obj = anonymousClass1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anonymousClass1.n;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 = anonymousClass1.p;
                        try {
                            ResultKt.b(obj);
                        } catch (AbortFlowException e) {
                            e = e;
                            if (e.j != flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1) {
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this.j;
                    FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12 = new FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1(this.k, flowCollector);
                    try {
                        anonymousClass1.p = flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12;
                        anonymousClass1.n = 1;
                        if (flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.a(flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } catch (AbortFlowException e2) {
                        e = e2;
                        flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12;
                        if (e.j != flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1) {
                            CoroutineContext coroutineContext = anonymousClass1.k;
                            coroutineContext.getClass();
                            JobKt.c(coroutineContext);
                            return Unit.a;
                        }
                        throw e;
                    }
                }
                return Unit.a;
            }
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj2 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anonymousClass1.n;
        if (i == 0) {
        }
        return Unit.a;
    }
}
