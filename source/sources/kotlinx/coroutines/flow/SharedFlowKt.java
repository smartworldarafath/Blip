package kotlinx.coroutines.flow;

import defpackage.fe;
import defpackage.q;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SharedFlowKt {
    public static final Symbol a = new Symbol("NO_VALUE");

    public static SharedFlowImpl a(int i, int i2, BufferOverflow bufferOverflow) {
        int i3;
        if ((i2 & 1) != 0) {
            i3 = 0;
        } else {
            i3 = 1;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.j;
        }
        if (i >= 0) {
            if (i3 <= 0 && i <= 0 && bufferOverflow != BufferOverflow.j) {
                fe.s(bufferOverflow, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy ");
                return null;
            }
            int i4 = i + i3;
            if (i4 < 0) {
                i4 = Integer.MAX_VALUE;
            }
            return new SharedFlowImpl(i3, i4, bufferOverflow);
        }
        fe.l(q.g(i, "extraBufferCapacity cannot be negative, but was "));
        return null;
    }

    public static final void b(Object[] objArr, long j, Object obj) {
        objArr[((int) j) & (objArr.length - 1)] = obj;
    }

    public static final Flow c(SharedFlow sharedFlow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        if ((i == 0 || i == -3) && bufferOverflow == BufferOverflow.j) {
            return sharedFlow;
        }
        return new ChannelFlowOperator(sharedFlow, coroutineContext, i, bufferOverflow);
    }
}
