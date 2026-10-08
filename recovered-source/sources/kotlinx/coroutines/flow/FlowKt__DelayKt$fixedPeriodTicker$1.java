package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1", f = "Delay.kt", l = {307, 309, 310}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class FlowKt__DelayKt$fixedPeriodTicker$1 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((FlowKt__DelayKt$fixedPeriodTicker$1) s((ProducerScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$1, kotlin.coroutines.jvm.internal.SuspendLambda] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.o = obj;
        return suspendLambda;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(5000, r8) == r1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        if (((kotlinx.coroutines.channels.ChannelCoroutine) r0).m.k(kotlin.Unit.a, r8) == r1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(5000, r8) == r1) goto L20;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0050 -> B:12:0x0033). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SendChannel sendChannel = (ProducerScope) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    this.o = sendChannel;
                    this.n = 3;
                }
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            this.o = sendChannel;
            this.n = 1;
        }
        sendChannel.getClass();
        this.o = sendChannel;
        this.n = 2;
    }
}
