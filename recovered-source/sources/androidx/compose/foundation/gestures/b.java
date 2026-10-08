package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Channel k;

    public /* synthetic */ b(Channel channel, int i) {
        this.j = i;
        this.k = channel;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Channel channel = this.k;
        switch (i) {
            case 0:
                return (MouseWheelScrollingLogic.MouseWheelScrollDelta) ChannelResult.a(channel.c());
            default:
                return (TrackpadScrollingLogic.TrackpadScrollDelta) ChannelResult.a(channel.c());
        }
    }
}
