package kotlinx.coroutines.channels;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProduceKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ProducerScope producerScope, Function0 function0, ContinuationImpl continuationImpl) {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        int i;
        try {
            if (continuationImpl instanceof ProduceKt$awaitClose$1) {
                ProduceKt$awaitClose$1 produceKt$awaitClose$12 = (ProduceKt$awaitClose$1) continuationImpl;
                int i2 = produceKt$awaitClose$12.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    produceKt$awaitClose$12.o = i2 - Integer.MIN_VALUE;
                    produceKt$awaitClose$1 = produceKt$awaitClose$12;
                    Object obj = produceKt$awaitClose$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = produceKt$awaitClose$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            function0 = produceKt$awaitClose$1.m;
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        CoroutineContext coroutineContext = produceKt$awaitClose$1.k;
                        coroutineContext.getClass();
                        if (coroutineContext.v(Job.Key.j) == producerScope) {
                            produceKt$awaitClose$1.m = function0;
                            produceKt$awaitClose$1.o = 1;
                            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(produceKt$awaitClose$1));
                            cancellableContinuationImpl.v();
                            ((ChannelCoroutine) producerScope).n0(new ProduceKt$awaitClose$4$1(cancellableContinuationImpl));
                            if (cancellableContinuationImpl.u() == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            u2.l("awaitClose() can only be invoked from the producer context");
                            return null;
                        }
                    }
                    function0.a();
                    return Unit.a;
                }
            }
            if (i == 0) {
            }
            function0.a();
            return Unit.a;
        } catch (Throwable th) {
            function0.a();
            throw th;
        }
        produceKt$awaitClose$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = produceKt$awaitClose$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = produceKt$awaitClose$1.o;
    }

    public static final ReceiveChannel b(CoroutineScope coroutineScope, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function2 function2) {
        ChannelCoroutine channelCoroutine = new ChannelCoroutine(CoroutineContextKt.b(coroutineScope, coroutineContext), ChannelKt.a(i, 4, bufferOverflow));
        channelCoroutine.m0(coroutineStart, channelCoroutine, function2);
        return channelCoroutine;
    }
}
