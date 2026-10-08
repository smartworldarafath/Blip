package kotlinx.coroutines.channels;

import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    public final BufferOverflow t;

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow) {
        super(i);
        this.t = bufferOverflow;
        if (bufferOverflow != BufferOverflow.j) {
            if (i >= 1) {
                return;
            }
            fe.l(jb.d("Buffered channel capacity must be at least 1, but ", i, " was specified"));
            throw null;
        }
        fe.u("This implementation does not support suspension for senders, use ", Reflection.a(BufferedChannel.class).c(), " instead");
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean B() {
        if (this.t == BufferOverflow.k) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b4, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object N(Object obj, boolean z) {
        BufferOverflow bufferOverflow = this.t;
        BufferOverflow bufferOverflow2 = BufferOverflow.l;
        Unit unit = Unit.a;
        if (bufferOverflow == bufferOverflow2) {
            Object j = super.j(obj);
            if ((j instanceof ChannelResult.Failed) && !(j instanceof ChannelResult.Closed)) {
                return unit;
            }
            return j;
        }
        Object obj2 = BufferedChannelKt.d;
        ChannelSegment channelSegment = (ChannelSegment) BufferedChannel.o.get(this);
        while (true) {
            long andIncrement = BufferedChannel.k.getAndIncrement(this);
            long j2 = 1152921504606846975L & andIncrement;
            boolean y = y(andIncrement, false);
            int i = BufferedChannelKt.b;
            long j3 = i;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (channelSegment.l != j4) {
                ChannelSegment d = BufferedChannel.d(this, j4, channelSegment);
                if (d == null) {
                    if (y) {
                        return new ChannelResult.Closed(v());
                    }
                } else {
                    channelSegment = d;
                }
            }
            int h = BufferedChannel.h(this, channelSegment, i2, obj, j2, obj2, y);
            if (h != 0) {
                if (h == 1) {
                    break;
                }
                Waiter waiter = null;
                if (h != 2) {
                    if (h != 3) {
                        if (h != 4) {
                            if (h == 5) {
                                channelSegment.a();
                            }
                        } else {
                            if (j2 < BufferedChannel.l.get(this)) {
                                channelSegment.a();
                            }
                            return new ChannelResult.Closed(v());
                        }
                    } else {
                        u2.l("unexpected");
                        return null;
                    }
                } else {
                    if (y) {
                        channelSegment.i();
                        return new ChannelResult.Closed(v());
                    }
                    if (obj2 instanceof Waiter) {
                        waiter = (Waiter) obj2;
                    }
                    if (waiter != null) {
                        waiter.a(channelSegment, i2 + i);
                    }
                    q((channelSegment.l * j3) + i2);
                }
            } else {
                channelSegment.a();
                return unit;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object j(Object obj) {
        return N(obj, false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object k(Object obj, Continuation continuation) {
        if (!(N(obj, true) instanceof ChannelResult.Closed)) {
            return Unit.a;
        }
        throw v();
    }
}
