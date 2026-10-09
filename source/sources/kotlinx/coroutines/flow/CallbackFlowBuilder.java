package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CallbackFlowBuilder<T> extends ChannelFlowBuilder<T> {
    public final Function2 n;

    public CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i, bufferOverflow);
        this.n = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(ProducerScope producerScope, Continuation continuation) {
        CallbackFlowBuilder$collectTo$1 callbackFlowBuilder$collectTo$1;
        int i;
        Object obj;
        if (continuation instanceof CallbackFlowBuilder$collectTo$1) {
            callbackFlowBuilder$collectTo$1 = (CallbackFlowBuilder$collectTo$1) continuation;
            int i2 = callbackFlowBuilder$collectTo$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callbackFlowBuilder$collectTo$1.p = i2 - Integer.MIN_VALUE;
                Object obj2 = callbackFlowBuilder$collectTo$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = callbackFlowBuilder$collectTo$1.p;
                if (i == 0) {
                    if (i == 1) {
                        ProducerScope producerScope2 = callbackFlowBuilder$collectTo$1.m;
                        ResultKt.b(obj2);
                        obj = producerScope2;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    callbackFlowBuilder$collectTo$1.m = producerScope;
                    callbackFlowBuilder$collectTo$1.p = 1;
                    Object c = super.c(producerScope, callbackFlowBuilder$collectTo$1);
                    obj = producerScope;
                    if (c == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                if (!((ChannelCoroutine) obj).m.A()) {
                    return Unit.a;
                }
                u2.l("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
                return null;
            }
        }
        callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, (ContinuationImpl) continuation);
        Object obj22 = callbackFlowBuilder$collectTo$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = callbackFlowBuilder$collectTo$1.p;
        if (i == 0) {
        }
        if (!((ChannelCoroutine) obj).m.A()) {
        }
    }

    @Override // kotlinx.coroutines.flow.ChannelFlowBuilder, kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow d(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.n, coroutineContext, i, bufferOverflow);
    }
}
