package kotlinx.coroutines.flow;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class FlowKt__ShareKt {
    public static final SharingConfig a(Flow flow) {
        ChannelFlow channelFlow;
        Flow f;
        Channel.i.getClass();
        Channel.Factory factory = Channel.Factory.a;
        if ((flow instanceof ChannelFlow) && (f = (channelFlow = (ChannelFlow) flow).f()) != null) {
            int i = channelFlow.k;
            if (i == -3 || i == -2 || i == 0) {
                BufferOverflow bufferOverflow = BufferOverflow.j;
            }
            return new SharingConfig(f, channelFlow.j);
        }
        BufferOverflow bufferOverflow2 = BufferOverflow.j;
        return new SharingConfig(flow, EmptyCoroutineContext.j);
    }
}
