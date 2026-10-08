package kotlinx.coroutines.channels;

import defpackage.f7;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {
    public final BufferedChannel n;
    public final /* synthetic */ AtomicReferenceArray o;

    public ChannelSegment(long j, ChannelSegment channelSegment, BufferedChannel bufferedChannel, int i) {
        super(j, channelSegment, i);
        this.n = bufferedChannel;
        this.o = new AtomicReferenceArray(BufferedChannelKt.b * 2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int g() {
        return BufferedChannelKt.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0047, code lost:
    
        n(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x004a, code lost:
    
        if (r0 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x004c, code lost:
    
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x004f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(int i, CoroutineContext coroutineContext) {
        boolean z;
        Symbol symbol;
        int i2 = BufferedChannelKt.b;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i -= i2;
        }
        this.o.get(i * 2);
        while (true) {
            Object l = l(i);
            boolean z2 = l instanceof Waiter;
            BufferedChannel bufferedChannel = this.n;
            if (!z2 && !(l instanceof WaiterEB)) {
                if (l == BufferedChannelKt.j || l == BufferedChannelKt.k) {
                    break;
                }
                if (l != BufferedChannelKt.g && l != BufferedChannelKt.f) {
                    if (l != BufferedChannelKt.i && l != BufferedChannelKt.d && l != BufferedChannelKt.l) {
                        f7.i(l, "unexpected state: ");
                        return;
                    }
                    return;
                }
            } else {
                if (z) {
                    symbol = BufferedChannelKt.j;
                } else {
                    symbol = BufferedChannelKt.k;
                }
                if (k(i, l, symbol)) {
                    n(i, null);
                    m(i, !z);
                    if (z) {
                        bufferedChannel.getClass();
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final boolean k(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.o;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    public final Object l(int i) {
        return this.o.get((i * 2) + 1);
    }

    public final void m(int i, boolean z) {
        if (z) {
            BufferedChannel bufferedChannel = this.n;
            bufferedChannel.getClass();
            bufferedChannel.M((this.l * BufferedChannelKt.b) + i);
        }
        i();
    }

    public final void n(int i, Object obj) {
        this.o.set(i * 2, obj);
    }

    public final void o(int i, Object obj) {
        this.o.set((i * 2) + 1, obj);
    }
}
