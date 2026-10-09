package kotlinx.coroutines.channels;

import defpackage.f7;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ChannelCoroutine<E> extends AbstractCoroutine<Unit> implements Channel<E> {
    public final BufferedChannel m;

    public ChannelCoroutine(CoroutineContext coroutineContext, BufferedChannel bufferedChannel) {
        super(coroutineContext, true);
        this.m = bufferedChannel;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 a() {
        return this.m.a();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 b() {
        return this.m.b();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object c() {
        return this.m.c();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object e(Continuation continuation) {
        BufferedChannel bufferedChannel = this.m;
        bufferedChannel.getClass();
        Object F = BufferedChannel.F(bufferedChannel, (ContinuationImpl) continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return F;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object i(Continuation continuation) {
        return this.m.i(continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator iterator() {
        BufferedChannel bufferedChannel = this.m;
        bufferedChannel.getClass();
        return new BufferedChannel.BufferedChannelIterator();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object j(Object obj) {
        return this.m.j(obj);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object k(Object obj, Continuation continuation) {
        return this.m.k(obj, continuation);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void n(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(B(), null, this);
        }
        y(cancellationException);
    }

    public final void n0(Function1 function1) {
        BufferedChannel bufferedChannel = this.m;
        bufferedChannel.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.s;
        while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, null, function1)) {
            if (atomicReferenceFieldUpdater.get(bufferedChannel) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(bufferedChannel);
                    Symbol symbol = BufferedChannelKt.q;
                    if (obj == symbol) {
                        Symbol symbol2 = BufferedChannelKt.r;
                        while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, symbol, symbol2)) {
                            if (atomicReferenceFieldUpdater.get(bufferedChannel) != symbol) {
                                break;
                            }
                        }
                        ((ProduceKt$awaitClose$4$1) function1).b(bufferedChannel.t());
                        return;
                    }
                    if (obj == BufferedChannelKt.r) {
                        u2.l("Another handler was already registered and successfully invoked");
                        return;
                    } else {
                        f7.i(obj, "Another handler is already registered: ");
                        return;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void y(CancellationException cancellationException) {
        this.m.o(cancellationException, true);
        x(cancellationException);
    }
}
