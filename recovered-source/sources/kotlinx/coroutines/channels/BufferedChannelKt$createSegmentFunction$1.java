package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements Function2<Long, ChannelSegment<Object>, ChannelSegment<Object>> {
    public static final BufferedChannelKt$createSegmentFunction$1 r = new FunctionReferenceImpl(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        long longValue = ((Number) obj).longValue();
        ChannelSegment channelSegment = (ChannelSegment) obj2;
        ChannelSegment channelSegment2 = BufferedChannelKt.a;
        BufferedChannel bufferedChannel = channelSegment.n;
        bufferedChannel.getClass();
        return new ChannelSegment(longValue, channelSegment, bufferedChannel, 0);
    }
}
