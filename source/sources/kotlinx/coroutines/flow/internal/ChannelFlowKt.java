package kotlinx.coroutines.flow.internal;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ChannelFlowKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation) {
        ChannelFlowKt$withContextUndispatched$1 channelFlowKt$withContextUndispatched$1;
        int i;
        Object c;
        Object n;
        if (continuation instanceof ChannelFlowKt$withContextUndispatched$1) {
            ChannelFlowKt$withContextUndispatched$1 channelFlowKt$withContextUndispatched$12 = (ChannelFlowKt$withContextUndispatched$1) continuation;
            int i2 = channelFlowKt$withContextUndispatched$12.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                channelFlowKt$withContextUndispatched$12.r = i2 - Integer.MIN_VALUE;
                channelFlowKt$withContextUndispatched$1 = channelFlowKt$withContextUndispatched$12;
                Object obj3 = channelFlowKt$withContextUndispatched$1.q;
                Object obj4 = CoroutineSingletons.j;
                i = channelFlowKt$withContextUndispatched$1.r;
                if (i == 0) {
                    if (i == 1) {
                        Object obj5 = channelFlowKt$withContextUndispatched$1.o;
                        CoroutineContext coroutineContext2 = channelFlowKt$withContextUndispatched$1.n;
                        try {
                            ResultKt.b(obj3);
                            c = obj5;
                            coroutineContext = coroutineContext2;
                        } catch (Throwable th) {
                            c = obj5;
                            coroutineContext = coroutineContext2;
                            th = th;
                            ThreadContextKt.a(coroutineContext, c);
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj3);
                    c = ThreadContextKt.c(coroutineContext, obj2);
                    try {
                        channelFlowKt$withContextUndispatched$1.m = obj;
                        channelFlowKt$withContextUndispatched$1.n = coroutineContext;
                        channelFlowKt$withContextUndispatched$1.o = c;
                        channelFlowKt$withContextUndispatched$1.r = 1;
                        StackFrameContinuation stackFrameContinuation = new StackFrameContinuation(channelFlowKt$withContextUndispatched$1, coroutineContext);
                        if (function2 == null) {
                            n = IntrinsicsKt.c(function2, obj, stackFrameContinuation);
                        } else {
                            TypeIntrinsics.c(2, function2);
                            n = function2.n(obj, stackFrameContinuation);
                        }
                        obj3 = n;
                        if (obj3 == obj4) {
                            return obj4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ThreadContextKt.a(coroutineContext, c);
                        throw th;
                    }
                }
                ThreadContextKt.a(coroutineContext, c);
                return obj3;
            }
        }
        channelFlowKt$withContextUndispatched$1 = new ContinuationImpl(continuation);
        Object obj32 = channelFlowKt$withContextUndispatched$1.q;
        Object obj42 = CoroutineSingletons.j;
        i = channelFlowKt$withContextUndispatched$1.r;
        if (i == 0) {
        }
        ThreadContextKt.a(coroutineContext, c);
        return obj32;
    }
}
