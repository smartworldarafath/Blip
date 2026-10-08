package kotlinx.coroutines.channels;

import defpackage.f7;
import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class BufferedChannel<E> implements Channel<E> {
    public static final /* synthetic */ AtomicLongFieldUpdater k = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater l = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater m = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater n = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater r = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater s = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final int j;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class BufferedChannelIterator implements ChannelIterator<E>, Waiter {
        public Object j = BufferedChannelKt.p;
        public CancellableContinuationImpl k;

        public BufferedChannelIterator() {
        }

        @Override // kotlinx.coroutines.Waiter
        public final void a(Segment segment, int i) {
            CancellableContinuationImpl cancellableContinuationImpl = this.k;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.a(segment, i);
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object b(ContinuationImpl continuationImpl) {
            ChannelSegment channelSegment;
            ChannelSegment channelSegment2;
            Object obj = this.j;
            boolean z = true;
            if (obj == BufferedChannelKt.p || obj == BufferedChannelKt.l) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.p;
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment3 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                while (true) {
                    if (bufferedChannel.z()) {
                        this.j = BufferedChannelKt.l;
                        Throwable t = bufferedChannel.t();
                        if (t == null) {
                            z = false;
                        } else {
                            int i = StackTraceRecoveryKt.a;
                            throw t;
                        }
                    } else {
                        long andIncrement = BufferedChannel.l.getAndIncrement(bufferedChannel);
                        long j = BufferedChannelKt.b;
                        long j2 = andIncrement / j;
                        int i2 = (int) (andIncrement % j);
                        if (channelSegment3.l != j2) {
                            ChannelSegment s = bufferedChannel.s(j2, channelSegment3);
                            if (s == null) {
                                continue;
                            } else {
                                channelSegment = s;
                            }
                        } else {
                            channelSegment = channelSegment3;
                        }
                        Object K = bufferedChannel.K(channelSegment, i2, andIncrement, null);
                        Symbol symbol = BufferedChannelKt.m;
                        if (K != symbol) {
                            Symbol symbol2 = BufferedChannelKt.o;
                            if (K == symbol2) {
                                if (andIncrement < bufferedChannel.w()) {
                                    channelSegment.a();
                                }
                                channelSegment3 = channelSegment;
                            } else {
                                if (K == BufferedChannelKt.n) {
                                    CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(continuationImpl));
                                    try {
                                        this.k = b;
                                        Object K2 = bufferedChannel.K(channelSegment, i2, andIncrement, this);
                                        if (K2 == symbol) {
                                            a(channelSegment, i2);
                                        } else {
                                            if (K2 == symbol2) {
                                                if (andIncrement < bufferedChannel.w()) {
                                                    channelSegment.a();
                                                }
                                                ChannelSegment channelSegment4 = (ChannelSegment) BufferedChannel.p.get(bufferedChannel);
                                                while (true) {
                                                    if (bufferedChannel.z()) {
                                                        CancellableContinuationImpl cancellableContinuationImpl = this.k;
                                                        cancellableContinuationImpl.getClass();
                                                        this.k = null;
                                                        this.j = BufferedChannelKt.l;
                                                        Throwable t2 = bufferedChannel.t();
                                                        if (t2 == null) {
                                                            cancellableContinuationImpl.g(Boolean.FALSE);
                                                        } else {
                                                            cancellableContinuationImpl.g(new Result.Failure(t2));
                                                        }
                                                    } else {
                                                        long andIncrement2 = BufferedChannel.l.getAndIncrement(bufferedChannel);
                                                        long j3 = BufferedChannelKt.b;
                                                        long j4 = andIncrement2 / j3;
                                                        int i3 = (int) (andIncrement2 % j3);
                                                        if (channelSegment4.l != j4) {
                                                            ChannelSegment s2 = bufferedChannel.s(j4, channelSegment4);
                                                            if (s2 != null) {
                                                                channelSegment2 = s2;
                                                            }
                                                        } else {
                                                            channelSegment2 = channelSegment4;
                                                        }
                                                        Object K3 = bufferedChannel.K(channelSegment2, i3, andIncrement2, this);
                                                        ChannelSegment channelSegment5 = channelSegment2;
                                                        if (K3 == BufferedChannelKt.m) {
                                                            a(channelSegment5, i3);
                                                            break;
                                                        }
                                                        if (K3 == BufferedChannelKt.o) {
                                                            if (andIncrement2 < bufferedChannel.w()) {
                                                                channelSegment5.a();
                                                            }
                                                            channelSegment4 = channelSegment5;
                                                        } else if (K3 != BufferedChannelKt.n) {
                                                            channelSegment5.a();
                                                            this.j = K3;
                                                            this.k = null;
                                                        } else {
                                                            throw new IllegalStateException("unexpected");
                                                        }
                                                    }
                                                }
                                            } else {
                                                channelSegment.a();
                                                this.j = K2;
                                                this.k = null;
                                            }
                                            b.m(Boolean.TRUE, null);
                                        }
                                        Object u = b.u();
                                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                        return u;
                                    } catch (Throwable th) {
                                        b.D();
                                        throw th;
                                    }
                                }
                                channelSegment.a();
                                this.j = K;
                            }
                        } else {
                            u2.l("unreachable");
                            return null;
                        }
                    }
                }
            }
            return Boolean.valueOf(z);
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object next() {
            Object obj = this.j;
            Symbol symbol = BufferedChannelKt.p;
            if (obj != symbol) {
                this.j = symbol;
                if (obj != BufferedChannelKt.l) {
                    return obj;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.k;
                Throwable u = BufferedChannel.this.u();
                int i = StackTraceRecoveryKt.a;
                throw u;
            }
            u2.l("`hasNext()` has not been invoked");
            return null;
        }
    }

    public BufferedChannel(int i) {
        long j;
        this.j = i;
        if (i >= 0) {
            ChannelSegment channelSegment = BufferedChannelKt.a;
            if (i != 0) {
                if (i != Integer.MAX_VALUE) {
                    j = i;
                } else {
                    j = Long.MAX_VALUE;
                }
            } else {
                j = 0;
            }
            this.bufferEnd$volatile = j;
            this.completedExpandBuffersAndPauseFlag$volatile = m.get(this);
            ChannelSegment channelSegment2 = new ChannelSegment(0L, null, this, 3);
            this.sendSegment$volatile = channelSegment2;
            this.receiveSegment$volatile = channelSegment2;
            if (C()) {
                channelSegment2 = BufferedChannelKt.a;
                channelSegment2.getClass();
            }
            this.bufferEndSegment$volatile = channelSegment2;
            this._closeCause$volatile = BufferedChannelKt.s;
            return;
        }
        fe.l(jb.d("Invalid channel capacity: ", i, ", should be >=0"));
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object F(BufferedChannel bufferedChannel, ContinuationImpl continuationImpl) {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        int i;
        ChannelSegment channelSegment;
        if (continuationImpl instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuationImpl;
            int i2 = bufferedChannel$receiveCatching$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.o = i2 - Integer.MIN_VALUE;
                BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$12 = bufferedChannel$receiveCatching$1;
                Object obj = bufferedChannel$receiveCatching$12.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = bufferedChannel$receiveCatching$12.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                        return ((ChannelResult) obj).a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                ChannelSegment channelSegment2 = (ChannelSegment) p.get(bufferedChannel);
                while (!bufferedChannel.z()) {
                    long andIncrement = l.getAndIncrement(bufferedChannel);
                    long j = BufferedChannelKt.b;
                    long j2 = andIncrement / j;
                    int i3 = (int) (andIncrement % j);
                    if (channelSegment2.l != j2) {
                        ChannelSegment s2 = bufferedChannel.s(j2, channelSegment2);
                        if (s2 == null) {
                            continue;
                        } else {
                            channelSegment = s2;
                        }
                    } else {
                        channelSegment = channelSegment2;
                    }
                    BufferedChannel bufferedChannel2 = bufferedChannel;
                    Object K = bufferedChannel2.K(channelSegment, i3, andIncrement, null);
                    if (K != BufferedChannelKt.m) {
                        if (K == BufferedChannelKt.o) {
                            if (andIncrement < bufferedChannel2.w()) {
                                channelSegment.a();
                            }
                            bufferedChannel = bufferedChannel2;
                            channelSegment2 = channelSegment;
                        } else {
                            if (K == BufferedChannelKt.n) {
                                bufferedChannel$receiveCatching$12.o = 1;
                                Object G = bufferedChannel2.G(channelSegment, i3, andIncrement, bufferedChannel$receiveCatching$12);
                                if (G == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                return G;
                            }
                            channelSegment.a();
                            return K;
                        }
                    } else {
                        u2.l("unexpected");
                        return null;
                    }
                }
                return new ChannelResult.Closed(bufferedChannel.t());
            }
        }
        bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuationImpl);
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$122 = bufferedChannel$receiveCatching$1;
        Object obj2 = bufferedChannel$receiveCatching$122.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = bufferedChannel$receiveCatching$122.o;
        if (i == 0) {
        }
    }

    public static final ChannelSegment d(BufferedChannel bufferedChannel, long j, ChannelSegment channelSegment) {
        Object a;
        BufferedChannel bufferedChannel2;
        ChannelSegment channelSegment2 = BufferedChannelKt.a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.r;
        loop0: while (true) {
            a = ConcurrentLinkedListKt.a(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(a)) {
                Segment a2 = SegmentOrClosed.a(a);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(bufferedChannel);
                    if (segment.l >= a2.l) {
                        break loop0;
                    }
                    if (!a2.j()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, segment, a2)) {
                        if (atomicReferenceFieldUpdater.get(bufferedChannel) != segment) {
                            if (a2.f()) {
                                a2.e();
                            }
                        }
                    }
                    if (segment.f()) {
                        segment.e();
                    }
                }
            } else {
                break;
            }
        }
        boolean b = SegmentOrClosed.b(a);
        AtomicLongFieldUpdater atomicLongFieldUpdater = l;
        if (b) {
            bufferedChannel.A();
            if (channelSegment.l * BufferedChannelKt.b < atomicLongFieldUpdater.get(bufferedChannel)) {
                channelSegment.a();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(a);
            long j2 = channelSegment3.l;
            if (j2 > j) {
                long j3 = BufferedChannelKt.b * j2;
                while (true) {
                    long j4 = k.get(bufferedChannel);
                    long j5 = 1152921504606846975L & j4;
                    if (j5 >= j3) {
                        bufferedChannel2 = bufferedChannel;
                        break;
                    }
                    bufferedChannel2 = bufferedChannel;
                    if (k.compareAndSet(bufferedChannel2, j4, (((int) (j4 >> 60)) << 60) + j5)) {
                        break;
                    }
                    bufferedChannel = bufferedChannel2;
                }
                if (j2 * BufferedChannelKt.b < atomicLongFieldUpdater.get(bufferedChannel2)) {
                    channelSegment3.a();
                }
            } else {
                return channelSegment3;
            }
        }
        return null;
    }

    public static final void f(BufferedChannel bufferedChannel, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        cancellableContinuationImpl.g(new Result.Failure(bufferedChannel.v()));
    }

    public static final void g(BufferedChannel bufferedChannel, SelectInstance selectInstance) {
        ChannelSegment channelSegment;
        BufferedChannel bufferedChannel2;
        SelectInstance selectInstance2;
        int i;
        Waiter waiter;
        bufferedChannel.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) p.get(bufferedChannel);
        while (!bufferedChannel.z()) {
            long andIncrement = l.getAndIncrement(bufferedChannel);
            long j = BufferedChannelKt.b;
            long j2 = andIncrement / j;
            int i2 = (int) (andIncrement % j);
            if (channelSegment2.l != j2) {
                ChannelSegment s2 = bufferedChannel.s(j2, channelSegment2);
                if (s2 == null) {
                    continue;
                } else {
                    channelSegment = s2;
                    selectInstance2 = selectInstance;
                    i = i2;
                    bufferedChannel2 = bufferedChannel;
                }
            } else {
                channelSegment = channelSegment2;
                bufferedChannel2 = bufferedChannel;
                selectInstance2 = selectInstance;
                i = i2;
            }
            Object K = bufferedChannel2.K(channelSegment, i, andIncrement, selectInstance2);
            channelSegment2 = channelSegment;
            if (K == BufferedChannelKt.m) {
                if (selectInstance2 instanceof Waiter) {
                    waiter = (Waiter) selectInstance2;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    waiter.a(channelSegment2, i);
                    return;
                }
                return;
            }
            if (K == BufferedChannelKt.o) {
                if (andIncrement < bufferedChannel2.w()) {
                    channelSegment2.a();
                }
                bufferedChannel = bufferedChannel2;
                selectInstance = selectInstance2;
            } else if (K != BufferedChannelKt.n) {
                channelSegment2.a();
                ((SelectImplementation) selectInstance2).n = K;
                return;
            } else {
                u2.l("unexpected");
                return;
            }
        }
        ((SelectImplementation) selectInstance).n = BufferedChannelKt.l;
    }

    public static final int h(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        channelSegment.n(i, obj);
        if (z) {
            return bufferedChannel.L(channelSegment, i, obj, j, obj2, z);
        }
        Object l2 = channelSegment.l(i);
        if (l2 == null) {
            if (bufferedChannel.l(j)) {
                if (channelSegment.k(i, null, BufferedChannelKt.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.k(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (l2 instanceof Waiter) {
            channelSegment.n(i, null);
            if (bufferedChannel.I(l2, obj)) {
                channelSegment.o(i, BufferedChannelKt.i);
                return 0;
            }
            Symbol symbol = BufferedChannelKt.k;
            if (channelSegment.o.getAndSet((i * 2) + 1, symbol) != symbol) {
                channelSegment.m(i, true);
                return 5;
            }
            return 5;
        }
        return bufferedChannel.L(channelSegment, i, obj, j, obj2, z);
    }

    public static void x(BufferedChannel bufferedChannel) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = n;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & 4611686018427387904L) == 0) {
            return;
        }
        do {
        } while ((atomicLongFieldUpdater.get(bufferedChannel) & 4611686018427387904L) != 0);
    }

    public final boolean A() {
        return y(k.get(this), false);
    }

    public boolean B() {
        return false;
    }

    public final boolean C() {
        long j = m.get(this);
        if (j != 0 && j != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D(long j, ChannelSegment channelSegment) {
        ChannelSegment channelSegment2;
        ChannelSegment channelSegment3;
        while (channelSegment.l < j && (channelSegment3 = (ChannelSegment) channelSegment.c()) != null) {
            channelSegment = channelSegment3;
        }
        while (true) {
            if (!channelSegment.d() || (channelSegment2 = (ChannelSegment) channelSegment.c()) == null) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.l < channelSegment.l) {
                        if (!channelSegment.j()) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, channelSegment)) {
                            if (atomicReferenceFieldUpdater.get(this) != segment) {
                                if (channelSegment.f()) {
                                    channelSegment.e();
                                }
                            }
                        }
                        if (segment.f()) {
                            segment.e();
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            channelSegment = channelSegment2;
        }
    }

    public final Object E(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        cancellableContinuationImpl.g(new Result.Failure(v()));
        Object u = cancellableContinuationImpl.u();
        if (u == CoroutineSingletons.j) {
            return u;
        }
        return Unit.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object G(ChannelSegment channelSegment, int i, long j, ContinuationImpl continuationImpl) {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        int i2;
        ChannelResult channelResult;
        ChannelSegment channelSegment2;
        if (continuationImpl instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuationImpl;
            int i3 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.o;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.o = i3 - Integer.MIN_VALUE;
                Object obj = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i2 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.o;
                if (i2 == 0) {
                    if (i2 == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.o = 1;
                    CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
                    try {
                        ReceiveCatching receiveCatching = new ReceiveCatching(b);
                        Object K = K(channelSegment, i, j, receiveCatching);
                        if (K == BufferedChannelKt.m) {
                            receiveCatching.a(channelSegment, i);
                        } else {
                            if (K == BufferedChannelKt.o) {
                                if (j < w()) {
                                    channelSegment.a();
                                }
                                ChannelSegment channelSegment3 = (ChannelSegment) p.get(this);
                                while (true) {
                                    if (z()) {
                                        b.g(new ChannelResult(new ChannelResult.Closed(t())));
                                        break;
                                    }
                                    long andIncrement = l.getAndIncrement(this);
                                    long j2 = BufferedChannelKt.b;
                                    long j3 = andIncrement / j2;
                                    int i4 = (int) (andIncrement % j2);
                                    if (channelSegment3.l != j3) {
                                        ChannelSegment s2 = s(j3, channelSegment3);
                                        if (s2 != null) {
                                            channelSegment2 = s2;
                                        }
                                    } else {
                                        channelSegment2 = channelSegment3;
                                    }
                                    Object K2 = K(channelSegment2, i4, andIncrement, receiveCatching);
                                    ChannelSegment channelSegment4 = channelSegment2;
                                    if (K2 == BufferedChannelKt.m) {
                                        receiveCatching.a(channelSegment4, i4);
                                        break;
                                    }
                                    if (K2 == BufferedChannelKt.o) {
                                        if (andIncrement < w()) {
                                            channelSegment4.a();
                                        }
                                        channelSegment3 = channelSegment4;
                                    } else if (K2 != BufferedChannelKt.n) {
                                        channelSegment4.a();
                                        channelResult = new ChannelResult(K2);
                                    } else {
                                        throw new IllegalStateException("unexpected");
                                    }
                                }
                            } else {
                                channelSegment.a();
                                channelResult = new ChannelResult(K);
                            }
                            b.m(channelResult, null);
                        }
                        obj = b.u();
                        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } catch (Throwable th) {
                        b.D();
                        throw th;
                    }
                }
                return ((ChannelResult) obj).a;
            }
        }
        bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuationImpl);
        Object obj2 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.m;
        CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.j;
        i2 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.o;
        if (i2 == 0) {
        }
        return ((ChannelResult) obj2).a;
    }

    public final void H(Waiter waiter, boolean z) {
        Throwable v;
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            if (z) {
                v = u();
            } else {
                v = v();
            }
            continuation.g(new Result.Failure(v));
            return;
        }
        if (waiter instanceof ReceiveCatching) {
            ((ReceiveCatching) waiter).j.g(new ChannelResult(new ChannelResult.Closed(t())));
            return;
        }
        if (waiter instanceof BufferedChannelIterator) {
            BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) waiter;
            CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.k;
            cancellableContinuationImpl.getClass();
            bufferedChannelIterator.k = null;
            bufferedChannelIterator.j = BufferedChannelKt.l;
            Throwable t = BufferedChannel.this.t();
            if (t == null) {
                cancellableContinuationImpl.g(Boolean.FALSE);
                return;
            } else {
                cancellableContinuationImpl.g(new Result.Failure(t));
                return;
            }
        }
        if (waiter instanceof SelectInstance) {
            ((SelectImplementation) ((SelectInstance) waiter)).g(this, BufferedChannelKt.l);
        } else {
            f7.i(waiter, "Unexpected waiter: ");
        }
    }

    public final boolean I(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            if (((SelectImplementation) ((SelectInstance) obj)).g(this, obj2) != 0) {
                return false;
            }
            return true;
        }
        if (obj instanceof ReceiveCatching) {
            return BufferedChannelKt.a(((ReceiveCatching) obj).j, new ChannelResult(obj2), null);
        }
        if (obj instanceof BufferedChannelIterator) {
            BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
            CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.k;
            cancellableContinuationImpl.getClass();
            bufferedChannelIterator.k = null;
            bufferedChannelIterator.j = obj2;
            return BufferedChannelKt.a(cancellableContinuationImpl, Boolean.TRUE, null);
        }
        if (obj instanceof CancellableContinuation) {
            return BufferedChannelKt.a((CancellableContinuation) obj, obj2, null);
        }
        f7.i(obj, "Unexpected receiver type: ");
        return false;
    }

    public final boolean J(Object obj, ChannelSegment channelSegment, int i) {
        TrySelectDetailedResult trySelectDetailedResult;
        boolean z = obj instanceof CancellableContinuation;
        Unit unit = Unit.a;
        if (z) {
            return BufferedChannelKt.a((CancellableContinuation) obj, unit, null);
        }
        if (obj instanceof SelectInstance) {
            int g = ((SelectImplementation) obj).g(this, unit);
            if (g != 0) {
                if (g != 1) {
                    if (g != 2) {
                        if (g == 3) {
                            trySelectDetailedResult = TrySelectDetailedResult.m;
                        } else {
                            throw new IllegalStateException(("Unexpected internal result: " + g).toString());
                        }
                    } else {
                        trySelectDetailedResult = TrySelectDetailedResult.l;
                    }
                } else {
                    trySelectDetailedResult = TrySelectDetailedResult.k;
                }
            } else {
                trySelectDetailedResult = TrySelectDetailedResult.j;
            }
            if (trySelectDetailedResult == TrySelectDetailedResult.k) {
                channelSegment.n(i, null);
            }
            if (trySelectDetailedResult != TrySelectDetailedResult.j) {
                return false;
            }
            return true;
        }
        f7.i(obj, "Unexpected waiter: ");
        return false;
    }

    public final Object K(ChannelSegment channelSegment, int i, long j, Object obj) {
        Object l2 = channelSegment.l(i);
        AtomicReferenceArray atomicReferenceArray = channelSegment.o;
        AtomicLongFieldUpdater atomicLongFieldUpdater = k;
        if (l2 == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.k(i, l2, obj)) {
                    r();
                    return BufferedChannelKt.m;
                }
            }
        } else if (l2 == BufferedChannelKt.d && channelSegment.k(i, l2, BufferedChannelKt.i)) {
            r();
            Object obj2 = atomicReferenceArray.get(i * 2);
            channelSegment.n(i, null);
            return obj2;
        }
        while (true) {
            Object l3 = channelSegment.l(i);
            if (l3 != null && l3 != BufferedChannelKt.e) {
                if (l3 == BufferedChannelKt.d) {
                    if (channelSegment.k(i, l3, BufferedChannelKt.i)) {
                        r();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        channelSegment.n(i, null);
                        return obj3;
                    }
                } else {
                    Symbol symbol = BufferedChannelKt.j;
                    if (l3 == symbol) {
                        return BufferedChannelKt.o;
                    }
                    if (l3 == BufferedChannelKt.h) {
                        return BufferedChannelKt.o;
                    }
                    if (l3 == BufferedChannelKt.l) {
                        r();
                        return BufferedChannelKt.o;
                    }
                    if (l3 != BufferedChannelKt.g && channelSegment.k(i, l3, BufferedChannelKt.f)) {
                        boolean z = l3 instanceof WaiterEB;
                        if (z) {
                            l3 = ((WaiterEB) l3).a;
                        }
                        if (J(l3, channelSegment, i)) {
                            channelSegment.o(i, BufferedChannelKt.i);
                            r();
                            Object obj4 = atomicReferenceArray.get(i * 2);
                            channelSegment.n(i, null);
                            return obj4;
                        }
                        channelSegment.o(i, symbol);
                        channelSegment.i();
                        if (z) {
                            r();
                        }
                        return BufferedChannelKt.o;
                    }
                }
            } else if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (channelSegment.k(i, l3, BufferedChannelKt.h)) {
                    r();
                    return BufferedChannelKt.o;
                }
            } else {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.k(i, l3, obj)) {
                    r();
                    return BufferedChannelKt.m;
                }
            }
        }
    }

    public final int L(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object l2 = channelSegment.l(i);
            if (l2 == null) {
                if (l(j) && !z) {
                    if (channelSegment.k(i, null, BufferedChannelKt.d)) {
                        break;
                    }
                } else if (z) {
                    if (channelSegment.k(i, null, BufferedChannelKt.j)) {
                        channelSegment.i();
                        return 4;
                    }
                } else {
                    if (obj2 == null) {
                        return 3;
                    }
                    if (channelSegment.k(i, null, obj2)) {
                        return 2;
                    }
                }
            } else if (l2 == BufferedChannelKt.e) {
                if (channelSegment.k(i, l2, BufferedChannelKt.d)) {
                    break;
                }
            } else {
                Symbol symbol = BufferedChannelKt.k;
                if (l2 == symbol) {
                    channelSegment.n(i, null);
                    return 5;
                }
                if (l2 == BufferedChannelKt.h) {
                    channelSegment.n(i, null);
                    return 5;
                }
                if (l2 == BufferedChannelKt.l) {
                    channelSegment.n(i, null);
                    A();
                    return 4;
                }
                channelSegment.n(i, null);
                if (l2 instanceof WaiterEB) {
                    l2 = ((WaiterEB) l2).a;
                }
                if (I(l2, obj)) {
                    channelSegment.o(i, BufferedChannelKt.i);
                    return 0;
                }
                if (channelSegment.o.getAndSet((i * 2) + 1, symbol) != symbol) {
                    channelSegment.m(i, true);
                }
                return 5;
            }
        }
        return 1;
    }

    public final void M(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        boolean z;
        BufferedChannel<E> bufferedChannel = this;
        if (!bufferedChannel.C()) {
            while (true) {
                atomicLongFieldUpdater = m;
                if (atomicLongFieldUpdater.get(bufferedChannel) > j) {
                    break;
                } else {
                    bufferedChannel = this;
                }
            }
            int i = BufferedChannelKt.c;
            int i2 = 0;
            while (true) {
                AtomicLongFieldUpdater atomicLongFieldUpdater2 = n;
                if (i2 < i) {
                    long j2 = atomicLongFieldUpdater.get(bufferedChannel);
                    if (j2 != (4611686018427387903L & atomicLongFieldUpdater2.get(bufferedChannel)) || j2 != atomicLongFieldUpdater.get(bufferedChannel)) {
                        i2++;
                    } else {
                        return;
                    }
                } else {
                    while (true) {
                        long j3 = atomicLongFieldUpdater2.get(bufferedChannel);
                        if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                            break;
                        } else {
                            bufferedChannel = this;
                        }
                    }
                    while (true) {
                        long j4 = atomicLongFieldUpdater.get(bufferedChannel);
                        long j5 = atomicLongFieldUpdater2.get(bufferedChannel);
                        long j6 = j5 & 4611686018427387903L;
                        if ((j5 & 4611686018427387904L) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (j4 == j6 && j4 == atomicLongFieldUpdater.get(bufferedChannel)) {
                            break;
                        }
                        if (!z) {
                            bufferedChannel = this;
                            atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j5, 4611686018427387904L + j6);
                        } else {
                            bufferedChannel = this;
                        }
                    }
                    while (true) {
                        long j7 = atomicLongFieldUpdater2.get(bufferedChannel);
                        if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j7, j7 & 4611686018427387903L)) {
                            return;
                        } else {
                            bufferedChannel = this;
                        }
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 a() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.r;
        TypeIntrinsics.c(3, bufferedChannel$onReceive$1);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.r;
        TypeIntrinsics.c(3, bufferedChannel$onReceive$2);
        return new SelectClause1Impl(this, bufferedChannel$onReceive$1, bufferedChannel$onReceive$2, null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 b() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.r;
        TypeIntrinsics.c(3, bufferedChannel$onReceiveCatching$1);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.r;
        TypeIntrinsics.c(3, bufferedChannel$onReceiveCatching$2);
        return new SelectClause1Impl(this, bufferedChannel$onReceiveCatching$1, bufferedChannel$onReceiveCatching$2, null);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object c() {
        ChannelSegment channelSegment;
        AtomicLongFieldUpdater atomicLongFieldUpdater = l;
        long j = atomicLongFieldUpdater.get(this);
        long j2 = k.get(this);
        if (y(j2, true)) {
            return new ChannelResult.Closed(t());
        }
        long j3 = j2 & 1152921504606846975L;
        ChannelResult.Failed failed = ChannelResult.b;
        if (j >= j3) {
            return failed;
        }
        Object obj = BufferedChannelKt.k;
        ChannelSegment channelSegment2 = (ChannelSegment) p.get(this);
        while (!this.z()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = BufferedChannelKt.b;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (channelSegment2.l != j5) {
                ChannelSegment s2 = this.s(j5, channelSegment2);
                if (s2 == null) {
                    continue;
                } else {
                    channelSegment = s2;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel<E> bufferedChannel = this;
            Object K = bufferedChannel.K(channelSegment, i, andIncrement, obj);
            channelSegment2 = channelSegment;
            Waiter waiter = null;
            if (K == BufferedChannelKt.m) {
                if (obj instanceof Waiter) {
                    waiter = (Waiter) obj;
                }
                if (waiter != null) {
                    waiter.a(channelSegment2, i);
                }
                bufferedChannel.M(andIncrement);
                channelSegment2.i();
                return failed;
            }
            if (K == BufferedChannelKt.o) {
                if (andIncrement < bufferedChannel.w()) {
                    channelSegment2.a();
                }
                this = bufferedChannel;
            } else {
                if (K != BufferedChannelKt.n) {
                    channelSegment2.a();
                    return K;
                }
                u2.l("unexpected");
                return null;
            }
        }
        return new ChannelResult.Closed(this.t());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object e(Continuation continuation) {
        return F(this, (ContinuationImpl) continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object i(Continuation continuation) {
        ChannelSegment channelSegment;
        Throwable th;
        ChannelSegment channelSegment2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
        ChannelSegment channelSegment3 = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
        while (!this.z()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = l;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j = BufferedChannelKt.b;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (channelSegment3.l != j2) {
                ChannelSegment s2 = this.s(j2, channelSegment3);
                if (s2 == null) {
                    continue;
                } else {
                    channelSegment = s2;
                }
            } else {
                channelSegment = channelSegment3;
            }
            BufferedChannel<E> bufferedChannel = this;
            Object K = bufferedChannel.K(channelSegment, i, andIncrement, null);
            Symbol symbol = BufferedChannelKt.m;
            if (K != symbol) {
                Symbol symbol2 = BufferedChannelKt.o;
                if (K == symbol2) {
                    if (andIncrement < bufferedChannel.w()) {
                        channelSegment.a();
                    }
                    this = bufferedChannel;
                    channelSegment3 = channelSegment;
                } else if (K == BufferedChannelKt.n) {
                    CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(continuation));
                    try {
                        Object K2 = bufferedChannel.K(channelSegment, i, andIncrement, b);
                        if (K2 == symbol) {
                            b.a(channelSegment, i);
                        } else {
                            if (K2 == symbol2) {
                                if (andIncrement < bufferedChannel.w()) {
                                    channelSegment.a();
                                }
                                ChannelSegment channelSegment4 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                                while (true) {
                                    if (bufferedChannel.z()) {
                                        b.g(new Result.Failure(bufferedChannel.u()));
                                        break;
                                    }
                                    CancellableContinuationImpl cancellableContinuationImpl = b;
                                    try {
                                        long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
                                        long j3 = BufferedChannelKt.b;
                                        long j4 = andIncrement2 / j3;
                                        int i2 = (int) (andIncrement2 % j3);
                                        if (channelSegment4.l != j4) {
                                            try {
                                                ChannelSegment s3 = bufferedChannel.s(j4, channelSegment4);
                                                if (s3 == null) {
                                                    b = cancellableContinuationImpl;
                                                } else {
                                                    channelSegment2 = s3;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                b = cancellableContinuationImpl;
                                                b.D();
                                                throw th;
                                            }
                                        } else {
                                            channelSegment2 = channelSegment4;
                                        }
                                        BufferedChannel<E> bufferedChannel2 = bufferedChannel;
                                        K2 = bufferedChannel2.K(channelSegment2, i2, andIncrement2, cancellableContinuationImpl);
                                        bufferedChannel = bufferedChannel2;
                                        ChannelSegment channelSegment5 = channelSegment2;
                                        b = cancellableContinuationImpl;
                                        if (K2 == BufferedChannelKt.m) {
                                            b.a(channelSegment5, i2);
                                            break;
                                        }
                                        if (K2 == BufferedChannelKt.o) {
                                            if (andIncrement2 < bufferedChannel.w()) {
                                                channelSegment5.a();
                                            }
                                            channelSegment4 = channelSegment5;
                                        } else if (K2 != BufferedChannelKt.n) {
                                            channelSegment5.a();
                                        } else {
                                            throw new IllegalStateException("unexpected");
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        b = cancellableContinuationImpl;
                                        th = th;
                                        b.D();
                                        throw th;
                                    }
                                }
                            } else {
                                channelSegment.a();
                            }
                            b.m(K2, null);
                        }
                        Object u = b.u();
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        return u;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } else {
                    channelSegment.a();
                    return K;
                }
            } else {
                u2.l("unexpected");
                return null;
            }
        }
        Throwable u2 = this.u();
        int i3 = StackTraceRecoveryKt.a;
        throw u2;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object j(Object obj) {
        boolean z;
        AtomicLongFieldUpdater atomicLongFieldUpdater = k;
        long j = atomicLongFieldUpdater.get(this);
        boolean z2 = false;
        long j2 = 1152921504606846975L;
        if (y(j, false)) {
            z = false;
        } else {
            z = !l(j & 1152921504606846975L);
        }
        ChannelResult.Failed failed = ChannelResult.b;
        if (z) {
            return failed;
        }
        Object obj2 = BufferedChannelKt.j;
        ChannelSegment channelSegment = (ChannelSegment) o.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j3 = andIncrement & j2;
            boolean y = y(andIncrement, z2);
            int i = BufferedChannelKt.b;
            long j4 = i;
            long j5 = j3 / j4;
            int i2 = (int) (j3 % j4);
            if (channelSegment.l != j5) {
                ChannelSegment d = d(this, j5, channelSegment);
                if (d == null) {
                    if (y) {
                        return new ChannelResult.Closed(v());
                    }
                    z2 = false;
                    j2 = 1152921504606846975L;
                } else {
                    channelSegment = d;
                }
            }
            int h = h(this, channelSegment, i2, obj, j3, obj2, y);
            Unit unit = Unit.a;
            if (h != 0) {
                if (h != 1) {
                    Waiter waiter = null;
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                if (h == 5) {
                                    channelSegment.a();
                                }
                                z2 = false;
                                j2 = 1152921504606846975L;
                            } else {
                                if (j3 < l.get(this)) {
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
                        channelSegment.i();
                        return failed;
                    }
                } else {
                    return unit;
                }
            } else {
                channelSegment.a();
                return unit;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x014f A[RETURN] */
    @Override // kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object k(Object obj, Continuation continuation) {
        Unit unit;
        Object u;
        CoroutineSingletons coroutineSingletons;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
        ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = k;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j = andIncrement & 1152921504606846975L;
            boolean y = y(andIncrement, false);
            int i = BufferedChannelKt.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            long j4 = channelSegment.l;
            unit = Unit.a;
            if (j4 != j3) {
                ChannelSegment d = d(this, j3, channelSegment);
                if (d == null) {
                    if (y) {
                        Object E = E(obj, continuation);
                        if (E == CoroutineSingletons.j) {
                            return E;
                        }
                    }
                } else {
                    channelSegment = d;
                }
            }
            int h = h(this, channelSegment, i2, obj, j, null, y);
            if (h != 0) {
                if (h == 1) {
                    break;
                }
                if (h != 2) {
                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = l;
                    if (h != 3) {
                        if (h != 4) {
                            if (h == 5) {
                                channelSegment.a();
                            }
                        } else {
                            if (j < atomicLongFieldUpdater2.get(this)) {
                                channelSegment.a();
                            }
                            Object E2 = E(obj, continuation);
                            if (E2 == CoroutineSingletons.j) {
                                return E2;
                            }
                        }
                    } else {
                        CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(continuation));
                        try {
                            int h2 = h(this, channelSegment, i2, obj, j, b, false);
                            if (h2 != 0) {
                                if (h2 != 1) {
                                    if (h2 != 2) {
                                        if (h2 != 4) {
                                            String str = "unexpected";
                                            if (h2 == 5) {
                                                channelSegment.a();
                                                ChannelSegment channelSegment2 = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
                                                while (true) {
                                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(this);
                                                    long j5 = andIncrement2 & 1152921504606846975L;
                                                    boolean y2 = y(andIncrement2, false);
                                                    int i3 = BufferedChannelKt.b;
                                                    String str2 = str;
                                                    long j6 = i3;
                                                    AtomicLongFieldUpdater atomicLongFieldUpdater3 = atomicLongFieldUpdater2;
                                                    long j7 = j5 / j6;
                                                    int i4 = (int) (j5 % j6);
                                                    if (channelSegment2.l != j7) {
                                                        ChannelSegment d2 = d(this, j7, channelSegment2);
                                                        if (d2 == null) {
                                                            if (y2) {
                                                                break;
                                                            }
                                                            str = str2;
                                                            atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
                                                        } else {
                                                            channelSegment2 = d2;
                                                        }
                                                    }
                                                    int h3 = h(this, channelSegment2, i4, obj, j5, b, y2);
                                                    if (h3 != 0) {
                                                        if (h3 == 1) {
                                                            break;
                                                        }
                                                        if (h3 != 2) {
                                                            if (h3 != 3) {
                                                                if (h3 != 4) {
                                                                    if (h3 == 5) {
                                                                        channelSegment2.a();
                                                                    }
                                                                    str = str2;
                                                                    atomicLongFieldUpdater2 = atomicLongFieldUpdater3;
                                                                } else if (j5 < atomicLongFieldUpdater3.get(this)) {
                                                                    channelSegment2.a();
                                                                }
                                                            } else {
                                                                throw new IllegalStateException(str2);
                                                            }
                                                        } else if (y2) {
                                                            channelSegment2.i();
                                                        } else {
                                                            b.a(channelSegment2, i4 + i3);
                                                        }
                                                    } else {
                                                        channelSegment2.a();
                                                        break;
                                                    }
                                                }
                                            } else {
                                                throw new IllegalStateException("unexpected");
                                            }
                                        } else if (j < atomicLongFieldUpdater2.get(this)) {
                                            channelSegment.a();
                                        }
                                        f(this, obj, b);
                                    } else {
                                        b.a(channelSegment, i2 + i);
                                    }
                                    u = b.u();
                                    coroutineSingletons = CoroutineSingletons.j;
                                    if (u != coroutineSingletons) {
                                        u = unit;
                                    }
                                    if (u != coroutineSingletons) {
                                        return u;
                                    }
                                }
                            } else {
                                channelSegment.a();
                            }
                            b.g(unit);
                            u = b.u();
                            coroutineSingletons = CoroutineSingletons.j;
                            if (u != coroutineSingletons) {
                            }
                            if (u != coroutineSingletons) {
                                break;
                            }
                        } catch (Throwable th) {
                            b.D();
                            throw th;
                        }
                    }
                } else if (y) {
                    channelSegment.i();
                    Object E3 = E(obj, continuation);
                    if (E3 == CoroutineSingletons.j) {
                        return E3;
                    }
                }
            } else {
                channelSegment.a();
                return unit;
            }
        }
        return unit;
    }

    public final boolean l(long j) {
        if (j >= m.get(this) && j >= l.get(this) + this.j) {
            return false;
        }
        return true;
    }

    public final boolean m(Throwable th) {
        return o(th, false);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void n(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        o(cancellationException, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        if (r15 != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
    
        r5 = r3.get(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        if (r3.compareAndSet(r4, r5, 3458764513820540928L + (r5 & 1152921504606846975L)) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
    
        r4.A();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
    
        if (r10 == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        r13 = kotlinx.coroutines.channels.BufferedChannel.s;
        r14 = r13.get(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
    
        if (r14 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        r15 = kotlinx.coroutines.channels.BufferedChannelKt.q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (r13.compareAndSet(r4, r14, r15) == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
    
        if (r13.get(r4) == r14) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0083, code lost:
    
        if (r14 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0086, code lost:
    
        kotlin.jvm.internal.TypeIntrinsics.c(1, r14);
        ((kotlin.jvm.functions.Function1) r14).b(r4.t());
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007b, code lost:
    
        r15 = kotlinx.coroutines.channels.BufferedChannelKt.r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x004e, code lost:
    
        r5 = r3.get(r4);
        r13 = (int) (r5 >> 60);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0055, code lost:
    
        if (r13 == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0057, code lost:
    
        if (r13 == 1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005a, code lost:
    
        r13 = (r5 & 1152921504606846975L) + 3458764513820540928L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0069, code lost:
    
        if (r3.compareAndSet(r4, r5, r13) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x005f, code lost:
    
        r13 = (r5 & 1152921504606846975L) + 2305843009213693952L;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(Throwable th, boolean z) {
        BufferedChannel<E> bufferedChannel;
        boolean z2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = k;
        if (z) {
            while (true) {
                long j = atomicLongFieldUpdater.get(this);
                if (((int) (j >> 60)) != 0) {
                    break;
                }
                ChannelSegment channelSegment = BufferedChannelKt.a;
                bufferedChannel = this;
                if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j, (j & 1152921504606846975L) + 1152921504606846976L)) {
                    break;
                }
                this = bufferedChannel;
            }
        }
        bufferedChannel = this;
        Symbol symbol = BufferedChannelKt.s;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = r;
            if (atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, symbol, th)) {
                z2 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(bufferedChannel) != symbol) {
                z2 = false;
                break;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x008d, code lost:
    
        r1 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) kotlinx.coroutines.internal.ConcurrentLinkedListNode.k.get(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ChannelSegment p(long j) {
        Object obj;
        long j2;
        Object obj2 = q.get(this);
        ChannelSegment channelSegment = (ChannelSegment) o.get(this);
        if (channelSegment.l > ((ChannelSegment) obj2).l) {
            obj2 = channelSegment;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) p.get(this);
        if (channelSegment2.l > ((ChannelSegment) obj2).l) {
            obj2 = channelSegment2;
        }
        ConcurrentLinkedListNode concurrentLinkedListNode = (ConcurrentLinkedListNode) obj2;
        loop0: while (true) {
            concurrentLinkedListNode.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ConcurrentLinkedListNode.j;
            Object obj3 = atomicReferenceFieldUpdater.get(concurrentLinkedListNode);
            obj = null;
            Symbol symbol = ConcurrentLinkedListKt.a;
            if (obj3 == symbol) {
                break;
            }
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) obj3;
            if (concurrentLinkedListNode2 == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(concurrentLinkedListNode, null, symbol)) {
                    if (atomicReferenceFieldUpdater.get(concurrentLinkedListNode) != null) {
                        break;
                    }
                }
                break loop0;
            }
            concurrentLinkedListNode = concurrentLinkedListNode2;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) concurrentLinkedListNode;
        if (B()) {
            ChannelSegment channelSegment4 = channelSegment3;
            loop2: do {
                int i = BufferedChannelKt.b - 1;
                while (true) {
                    if (-1 >= i) {
                        break;
                    }
                    j2 = (channelSegment4.l * BufferedChannelKt.b) + i;
                    if (j2 < l.get(this)) {
                        break loop2;
                    }
                    while (true) {
                        Object l2 = channelSegment4.l(i);
                        if (l2 != null && l2 != BufferedChannelKt.e) {
                            if (l2 == BufferedChannelKt.d) {
                                break loop2;
                            }
                        } else if (channelSegment4.k(i, l2, BufferedChannelKt.l)) {
                            channelSegment4.i();
                            break;
                        }
                    }
                    i--;
                }
            } while (channelSegment4 != null);
            j2 = -1;
            if (j2 != -1) {
                q(j2);
            }
        }
        loop5: for (ChannelSegment channelSegment5 = channelSegment3; channelSegment5 != null; channelSegment5 = (ChannelSegment) ((ConcurrentLinkedListNode) ConcurrentLinkedListNode.k.get(channelSegment5))) {
            for (int i2 = BufferedChannelKt.b - 1; -1 < i2; i2--) {
                if ((channelSegment5.l * BufferedChannelKt.b) + i2 < j) {
                    break loop5;
                }
                while (true) {
                    Object l3 = channelSegment5.l(i2);
                    if (l3 != null && l3 != BufferedChannelKt.e) {
                        if (l3 instanceof WaiterEB) {
                            if (channelSegment5.k(i2, l3, BufferedChannelKt.l)) {
                                obj = InlineList.a(obj, ((WaiterEB) l3).a);
                                channelSegment5.m(i2, true);
                                break;
                            }
                        } else {
                            if (!(l3 instanceof Waiter)) {
                                break;
                            }
                            if (channelSegment5.k(i2, l3, BufferedChannelKt.l)) {
                                obj = InlineList.a(obj, l3);
                                channelSegment5.m(i2, true);
                                break;
                            }
                        }
                    } else if (channelSegment5.k(i2, l3, BufferedChannelKt.l)) {
                        channelSegment5.i();
                        break;
                    }
                }
            }
        }
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                H((Waiter) obj, true);
                return channelSegment3;
            }
            ArrayList arrayList = (ArrayList) obj;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                H((Waiter) arrayList.get(size), true);
            }
        }
        return channelSegment3;
    }

    public final void q(long j) {
        ChannelSegment channelSegment = (ChannelSegment) p.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = l;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.j + j2, m.get(this))) {
                return;
            }
            BufferedChannel<E> bufferedChannel = this;
            if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, 1 + j2)) {
                long j3 = BufferedChannelKt.b;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (channelSegment.l != j4) {
                    ChannelSegment s2 = bufferedChannel.s(j4, channelSegment);
                    if (s2 != null) {
                        channelSegment = s2;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                if (bufferedChannel.K(channelSegment2, i, j2, null) == BufferedChannelKt.o) {
                    if (j2 < bufferedChannel.w()) {
                        channelSegment2.a();
                    }
                } else {
                    channelSegment2.a();
                }
                this = bufferedChannel;
                channelSegment = channelSegment2;
            }
            this = bufferedChannel;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00bd, code lost:
    
        if ((r0.addAndGet(r15, r4 - r8) & 4611686018427387904L) != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00c6, code lost:
    
        if ((r0.get(r15) & 4611686018427387904L) == 0) goto L144;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() {
        Object a;
        if (C()) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
        ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
        loop0: while (true) {
            long andIncrement = m.getAndIncrement(this);
            long j = andIncrement / BufferedChannelKt.b;
            if (w() <= andIncrement) {
                if (channelSegment.l < j && channelSegment.c() != null) {
                    D(j, channelSegment);
                }
                x(this);
                return;
            }
            if (channelSegment.l != j) {
                BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.r;
                while (true) {
                    a = ConcurrentLinkedListKt.a(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
                    if (!SegmentOrClosed.b(a)) {
                        Segment a2 = SegmentOrClosed.a(a);
                        while (true) {
                            Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                            if (segment.l >= a2.l) {
                                break;
                            }
                            if (!a2.j()) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, a2)) {
                                if (atomicReferenceFieldUpdater.get(this) != segment) {
                                    if (a2.f()) {
                                        a2.e();
                                    }
                                }
                            }
                            if (segment.f()) {
                                segment.e();
                            }
                        }
                    } else {
                        break;
                    }
                }
                ChannelSegment channelSegment2 = null;
                if (SegmentOrClosed.b(a)) {
                    A();
                    D(j, channelSegment);
                    x(this);
                } else {
                    ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(a);
                    long j2 = channelSegment3.l;
                    if (j2 > j) {
                        long j3 = j2 * BufferedChannelKt.b;
                        if (m.compareAndSet(this, 1 + andIncrement, j3)) {
                            AtomicLongFieldUpdater atomicLongFieldUpdater = n;
                        } else {
                            x(this);
                        }
                    } else {
                        channelSegment2 = channelSegment3;
                    }
                }
                if (channelSegment2 == null) {
                    continue;
                } else {
                    channelSegment = channelSegment2;
                }
            }
            int i = (int) (andIncrement % BufferedChannelKt.b);
            Object l2 = channelSegment.l(i);
            boolean z = l2 instanceof Waiter;
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = l;
            if (!z || andIncrement < atomicLongFieldUpdater2.get(this) || !channelSegment.k(i, l2, BufferedChannelKt.g)) {
                while (true) {
                    Object l3 = channelSegment.l(i);
                    if (l3 instanceof Waiter) {
                        if (andIncrement < atomicLongFieldUpdater2.get(this)) {
                            if (channelSegment.k(i, l3, new WaiterEB((Waiter) l3))) {
                                break loop0;
                            }
                        } else if (channelSegment.k(i, l3, BufferedChannelKt.g)) {
                            if (J(l3, channelSegment, i)) {
                                channelSegment.o(i, BufferedChannelKt.d);
                                break;
                            } else {
                                channelSegment.o(i, BufferedChannelKt.j);
                                channelSegment.i();
                            }
                        }
                    } else if (l3 != BufferedChannelKt.j) {
                        if (l3 == null) {
                            if (channelSegment.k(i, l3, BufferedChannelKt.e)) {
                                break loop0;
                            }
                        } else if (l3 == BufferedChannelKt.d || l3 == BufferedChannelKt.h || l3 == BufferedChannelKt.i || l3 == BufferedChannelKt.k || l3 == BufferedChannelKt.l) {
                            break loop0;
                        } else if (l3 != BufferedChannelKt.f) {
                            f7.i(l3, "Unexpected cell state: ");
                            return;
                        }
                    } else {
                        break;
                    }
                }
            } else if (J(l2, channelSegment, i)) {
                channelSegment.o(i, BufferedChannelKt.d);
                break;
            } else {
                channelSegment.o(i, BufferedChannelKt.j);
                channelSegment.i();
                x(this);
            }
        }
        x(this);
    }

    public final ChannelSegment s(long j, ChannelSegment channelSegment) {
        Object a;
        BufferedChannel<E> bufferedChannel;
        ChannelSegment channelSegment2 = BufferedChannelKt.a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.r;
        loop0: while (true) {
            a = ConcurrentLinkedListKt.a(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(a)) {
                Segment a2 = SegmentOrClosed.a(a);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.l >= a2.l) {
                        break loop0;
                    }
                    if (!a2.j()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, a2)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (a2.f()) {
                                a2.e();
                            }
                        }
                    }
                    if (segment.f()) {
                        segment.e();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.b(a)) {
            A();
            if (channelSegment.l * BufferedChannelKt.b < w()) {
                channelSegment.a();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(a);
            long j2 = channelSegment3.l;
            if (!C() && j <= m.get(this) / BufferedChannelKt.b) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = q;
                    Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                    if (segment2.l >= j2) {
                        break;
                    }
                    if (!channelSegment3.j()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, segment2, channelSegment3)) {
                        if (atomicReferenceFieldUpdater2.get(this) != segment2) {
                            if (channelSegment3.f()) {
                                channelSegment3.e();
                            }
                        }
                    }
                    if (segment2.f()) {
                        segment2.e();
                    }
                }
            }
            if (j2 > j) {
                long j3 = j2 * BufferedChannelKt.b;
                while (true) {
                    long j4 = l.get(this);
                    if (j4 >= j3) {
                        bufferedChannel = this;
                        break;
                    }
                    bufferedChannel = this;
                    if (l.compareAndSet(bufferedChannel, j4, j3)) {
                        break;
                    }
                    this = bufferedChannel;
                }
                if (j2 * BufferedChannelKt.b < bufferedChannel.w()) {
                    channelSegment3.a();
                }
            } else {
                return channelSegment3;
            }
        }
        return null;
    }

    public final Throwable t() {
        return (Throwable) r.get(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01b6, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01bd, code lost:
    
        if (r3 != null) goto L94;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i = (int) (k.get(this) >> 60);
        if (i != 2) {
            if (i == 3) {
                sb.append("cancelled,");
            }
        } else {
            sb.append("closed,");
        }
        sb.append("capacity=" + this.j + ',');
        sb.append("data=[");
        int i2 = 0;
        List C = CollectionsKt.C(p.get(this), o.get(this), q.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : C) {
            if (((ChannelSegment) obj) != BufferedChannelKt.a) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long j = ((ChannelSegment) next).l;
                do {
                    Object next2 = it.next();
                    long j2 = ((ChannelSegment) next2).l;
                    if (j > j2) {
                        next = next2;
                        j = j2;
                    }
                } while (it.hasNext());
            }
            ChannelSegment channelSegment = (ChannelSegment) next;
            long j3 = l.get(this);
            long w = w();
            loop2: while (true) {
                int i3 = BufferedChannelKt.b;
                int i4 = i2;
                while (true) {
                    if (i4 >= i3) {
                        break;
                    }
                    long j4 = (channelSegment.l * BufferedChannelKt.b) + i4;
                    if (j4 >= w && j4 >= j3) {
                        break loop2;
                    }
                    Object l2 = channelSegment.l(i4);
                    Object obj2 = channelSegment.o.get(i4 * 2);
                    if (l2 instanceof CancellableContinuation) {
                        if (w <= j4 && j4 < j3) {
                            str = "receive";
                        } else if (j3 <= j4 && j4 < w) {
                            str = "send";
                        } else {
                            str = "cont";
                        }
                    } else if (l2 instanceof SelectInstance) {
                        if (w <= j4 && j4 < j3) {
                            str = "onReceive";
                        } else if (j3 <= j4 && j4 < w) {
                            str = "onSend";
                        } else {
                            str = "select";
                        }
                    } else if (l2 instanceof ReceiveCatching) {
                        str = "receiveCatching";
                    } else if (l2 instanceof WaiterEB) {
                        str = "EB(" + l2 + ')';
                    } else if (!Intrinsics.a(l2, BufferedChannelKt.f) && !Intrinsics.a(l2, BufferedChannelKt.g)) {
                        if (l2 != null && !l2.equals(BufferedChannelKt.e) && !l2.equals(BufferedChannelKt.i) && !l2.equals(BufferedChannelKt.h) && !l2.equals(BufferedChannelKt.k) && !l2.equals(BufferedChannelKt.j) && !l2.equals(BufferedChannelKt.l)) {
                            str = l2.toString();
                        }
                        i4++;
                    } else {
                        str = "resuming_sender";
                    }
                    if (obj2 != null) {
                        sb.append("(" + str + ',' + obj2 + "),");
                    } else {
                        sb.append(str + ',');
                    }
                    i4++;
                }
                i2 = 0;
            }
            if (StringsKt.u(sb) == ',') {
                sb.deleteCharAt(sb.length() - 1).getClass();
            }
            sb.append("]");
            return sb.toString();
        }
        k8.o();
        return null;
    }

    public final Throwable u() {
        Throwable t = t();
        if (t == null) {
            return new NoSuchElementException("Channel was closed");
        }
        return t;
    }

    public final Throwable v() {
        Throwable t = t();
        if (t == null) {
            return new IllegalStateException("Channel was closed");
        }
        return t;
    }

    public final long w() {
        return k.get(this) & 1152921504606846975L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a2, code lost:
    
        r0 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) kotlinx.coroutines.internal.ConcurrentLinkedListNode.k.get(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean y(long j, boolean z) {
        Waiter waiter;
        int i = (int) (j >> 60);
        if (i != 0 && i != 1) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = l;
            if (i != 2) {
                if (i == 3) {
                    ChannelSegment p2 = p(1152921504606846975L & j);
                    Object obj = null;
                    loop0: do {
                        int i2 = BufferedChannelKt.b - 1;
                        while (true) {
                            if (-1 >= i2) {
                                break;
                            }
                            long j2 = (p2.l * BufferedChannelKt.b) + i2;
                            while (true) {
                                Object l2 = p2.l(i2);
                                if (l2 == BufferedChannelKt.i) {
                                    break loop0;
                                }
                                if (l2 == BufferedChannelKt.d) {
                                    if (j2 < atomicLongFieldUpdater.get(this)) {
                                        break loop0;
                                    }
                                    if (p2.k(i2, l2, BufferedChannelKt.l)) {
                                        p2.n(i2, null);
                                        p2.i();
                                        break;
                                    }
                                } else if (l2 != BufferedChannelKt.e && l2 != null) {
                                    if (!(l2 instanceof Waiter) && !(l2 instanceof WaiterEB)) {
                                        Symbol symbol = BufferedChannelKt.g;
                                        if (l2 == symbol || l2 == BufferedChannelKt.f) {
                                            break loop0;
                                        }
                                        if (l2 != symbol) {
                                            break;
                                        }
                                    } else {
                                        if (j2 < atomicLongFieldUpdater.get(this)) {
                                            break loop0;
                                        }
                                        if (l2 instanceof WaiterEB) {
                                            waiter = ((WaiterEB) l2).a;
                                        } else {
                                            waiter = (Waiter) l2;
                                        }
                                        if (p2.k(i2, l2, BufferedChannelKt.l)) {
                                            obj = InlineList.a(obj, waiter);
                                            p2.n(i2, null);
                                            p2.i();
                                            break;
                                        }
                                    }
                                } else if (p2.k(i2, l2, BufferedChannelKt.l)) {
                                    p2.i();
                                    break;
                                }
                            }
                            i2--;
                        }
                    } while (p2 != null);
                    if (obj != null) {
                        if (!(obj instanceof ArrayList)) {
                            H((Waiter) obj, false);
                        } else {
                            ArrayList arrayList = (ArrayList) obj;
                            for (int size = arrayList.size() - 1; -1 < size; size--) {
                                H((Waiter) arrayList.get(size), false);
                            }
                        }
                    }
                } else {
                    u2.f(q.g(i, "unexpected close status: "));
                    return false;
                }
            } else {
                p(1152921504606846975L & j);
                if (z) {
                    while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
                        ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(this);
                        long j3 = atomicLongFieldUpdater.get(this);
                        if (w() <= j3) {
                            break;
                        }
                        long j4 = BufferedChannelKt.b;
                        long j5 = j3 / j4;
                        if (channelSegment.l != j5 && (channelSegment = s(j5, channelSegment)) == null) {
                            if (((ChannelSegment) atomicReferenceFieldUpdater.get(this)).l < j5) {
                                break;
                            }
                        } else {
                            channelSegment.a();
                            int i3 = (int) (j3 % j4);
                            while (true) {
                                Object l3 = channelSegment.l(i3);
                                if (l3 != null && l3 != BufferedChannelKt.e) {
                                    if (l3 == BufferedChannelKt.d) {
                                        break;
                                    }
                                    if (l3 != BufferedChannelKt.j) {
                                        if (l3 != BufferedChannelKt.l) {
                                            if (l3 != BufferedChannelKt.i) {
                                                if (l3 != BufferedChannelKt.h) {
                                                    if (l3 == BufferedChannelKt.g) {
                                                        break;
                                                    }
                                                    if (l3 != BufferedChannelKt.f && j3 == atomicLongFieldUpdater.get(this)) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if (channelSegment.k(i3, l3, BufferedChannelKt.h)) {
                                    r();
                                    break;
                                }
                            }
                            l.compareAndSet(this, j3, j3 + 1);
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final boolean z() {
        return y(k.get(this), true);
    }
}
