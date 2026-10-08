package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class FlowKt__DelayKt$sample$2$1$1 extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super Unit>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ Ref$ObjectRef o;
    public final /* synthetic */ ReceiveChannel p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$1$1(Ref$ObjectRef ref$ObjectRef, ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.o = ref$ObjectRef;
        this.p = receiveChannel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        FlowKt__DelayKt$sample$2$1$1 flowKt__DelayKt$sample$2$1$1 = (FlowKt__DelayKt$sample$2$1$1) s(new ChannelResult(((ChannelResult) obj).a), (Continuation) obj2);
        Unit unit = Unit.a;
        flowKt__DelayKt$sample$2$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        FlowKt__DelayKt$sample$2$1$1 flowKt__DelayKt$sample$2$1$1 = new FlowKt__DelayKt$sample$2$1$1(this.o, this.p, continuation);
        flowKt__DelayKt$sample$2$1$1.n = ((ChannelResult) obj).a;
        return flowKt__DelayKt$sample$2$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ChannelResult.Closed closed;
        Object obj2 = this.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        boolean z = obj2 instanceof ChannelResult.Failed;
        Ref$ObjectRef ref$ObjectRef = this.o;
        if (!z) {
            ref$ObjectRef.j = obj2;
        }
        if (z) {
            Throwable th = null;
            if (obj2 instanceof ChannelResult.Closed) {
                closed = (ChannelResult.Closed) obj2;
            } else {
                closed = null;
            }
            if (closed != null) {
                th = closed.a;
            }
            if (th == null) {
                this.p.n(new ChildCancelledException());
                ref$ObjectRef.j = NullSurrogateKt.c;
            } else {
                throw th;
            }
        }
        return Unit.a;
    }
}
