package kotlinx.coroutines.flow;

import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class FlowKt__ChannelsKt {
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (r10 == r1) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x002f, B:14:0x0054, B:20:0x0069, B:22:0x0071, B:32:0x0045, B:35:0x0050), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0083 -> B:13:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(FlowCollector flowCollector, ReceiveChannel receiveChannel, boolean z, ContinuationImpl continuationImpl) {
        FlowKt__ChannelsKt$emitAllImpl$1 flowKt__ChannelsKt$emitAllImpl$1;
        int i;
        CancellationException cancellationException;
        ChannelIterator channelIterator;
        FlowCollector flowCollector2;
        ChannelIterator channelIterator2;
        Object b;
        try {
            if (continuationImpl instanceof FlowKt__ChannelsKt$emitAllImpl$1) {
                FlowKt__ChannelsKt$emitAllImpl$1 flowKt__ChannelsKt$emitAllImpl$12 = (FlowKt__ChannelsKt$emitAllImpl$1) continuationImpl;
                int i2 = flowKt__ChannelsKt$emitAllImpl$12.r;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    flowKt__ChannelsKt$emitAllImpl$12.r = i2 - Integer.MIN_VALUE;
                    flowKt__ChannelsKt$emitAllImpl$1 = flowKt__ChannelsKt$emitAllImpl$12;
                    Object obj = flowKt__ChannelsKt$emitAllImpl$1.q;
                    Object obj2 = CoroutineSingletons.j;
                    i = flowKt__ChannelsKt$emitAllImpl$1.r;
                    cancellationException = null;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                z = flowKt__ChannelsKt$emitAllImpl$1.p;
                                channelIterator = flowKt__ChannelsKt$emitAllImpl$1.o;
                                receiveChannel = flowKt__ChannelsKt$emitAllImpl$1.n;
                                FlowCollector flowCollector3 = flowKt__ChannelsKt$emitAllImpl$1.m;
                                ResultKt.b(obj);
                                FlowCollector flowCollector4 = flowCollector3;
                                channelIterator2 = channelIterator;
                                flowCollector = flowCollector4;
                                flowKt__ChannelsKt$emitAllImpl$1.m = flowCollector;
                                flowKt__ChannelsKt$emitAllImpl$1.n = receiveChannel;
                                flowKt__ChannelsKt$emitAllImpl$1.o = channelIterator2;
                                flowKt__ChannelsKt$emitAllImpl$1.p = z;
                                flowKt__ChannelsKt$emitAllImpl$1.r = 1;
                                b = channelIterator2.b(flowKt__ChannelsKt$emitAllImpl$1);
                                if (b == obj2) {
                                    flowCollector2 = flowCollector;
                                    channelIterator = channelIterator2;
                                    obj = b;
                                    if (!((Boolean) obj).booleanValue()) {
                                        Object next = channelIterator.next();
                                        flowKt__ChannelsKt$emitAllImpl$1.m = flowCollector2;
                                        flowKt__ChannelsKt$emitAllImpl$1.n = receiveChannel;
                                        flowKt__ChannelsKt$emitAllImpl$1.o = channelIterator;
                                        flowKt__ChannelsKt$emitAllImpl$1.p = z;
                                        flowKt__ChannelsKt$emitAllImpl$1.r = 2;
                                        Object r = flowCollector2.r(next, flowKt__ChannelsKt$emitAllImpl$1);
                                        flowCollector4 = flowCollector2;
                                    } else {
                                        if (z) {
                                            receiveChannel.n(null);
                                        }
                                        return Unit.a;
                                    }
                                } else {
                                    return obj2;
                                }
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            z = flowKt__ChannelsKt$emitAllImpl$1.p;
                            channelIterator = flowKt__ChannelsKt$emitAllImpl$1.o;
                            receiveChannel = flowKt__ChannelsKt$emitAllImpl$1.n;
                            FlowCollector flowCollector5 = flowKt__ChannelsKt$emitAllImpl$1.m;
                            ResultKt.b(obj);
                            flowCollector2 = flowCollector5;
                            if (!((Boolean) obj).booleanValue()) {
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        if (!(flowCollector instanceof ThrowingCollector)) {
                            channelIterator2 = receiveChannel.iterator();
                            flowKt__ChannelsKt$emitAllImpl$1.m = flowCollector;
                            flowKt__ChannelsKt$emitAllImpl$1.n = receiveChannel;
                            flowKt__ChannelsKt$emitAllImpl$1.o = channelIterator2;
                            flowKt__ChannelsKt$emitAllImpl$1.p = z;
                            flowKt__ChannelsKt$emitAllImpl$1.r = 1;
                            b = channelIterator2.b(flowKt__ChannelsKt$emitAllImpl$1);
                            if (b == obj2) {
                            }
                        } else {
                            throw ((ThrowingCollector) flowCollector).j;
                        }
                    }
                }
            }
            if (i == 0) {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (z) {
                    if (th instanceof CancellationException) {
                        cancellationException = th;
                    }
                    if (cancellationException == null) {
                        cancellationException = new CancellationException("Channel was consumed, consumer had failed");
                        cancellationException.initCause(th);
                    }
                    receiveChannel.n(cancellationException);
                }
                throw th2;
            }
        }
        flowKt__ChannelsKt$emitAllImpl$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = flowKt__ChannelsKt$emitAllImpl$1.q;
        Object obj22 = CoroutineSingletons.j;
        i = flowKt__ChannelsKt$emitAllImpl$1.r;
        cancellationException = null;
    }
}
