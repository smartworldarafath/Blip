package kotlinx.coroutines.channels;

import defpackage.u2;
import kotlinx.coroutines.channels.Channel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ChannelKt {
    public static BufferedChannel a(int i, int i2, BufferOverflow bufferOverflow) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.j;
        }
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i != Integer.MAX_VALUE) {
                        if (bufferOverflow == BufferOverflow.j) {
                            return new BufferedChannel(i);
                        }
                        return new ConflatedBufferedChannel(i, bufferOverflow);
                    }
                    return new BufferedChannel(Integer.MAX_VALUE);
                }
                if (bufferOverflow == BufferOverflow.j) {
                    return new BufferedChannel(0);
                }
                return new ConflatedBufferedChannel(1, bufferOverflow);
            }
            if (bufferOverflow == BufferOverflow.j) {
                return new ConflatedBufferedChannel(1, BufferOverflow.k);
            }
            u2.g("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            return null;
        }
        if (bufferOverflow == BufferOverflow.j) {
            Channel.i.getClass();
            return new BufferedChannel(Channel.Factory.b);
        }
        return new ConflatedBufferedChannel(1, bufferOverflow);
    }
}
