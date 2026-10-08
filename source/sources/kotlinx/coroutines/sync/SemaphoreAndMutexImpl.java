package kotlinx.coroutines.sync;

import defpackage.b0;
import defpackage.f7;
import defpackage.fe;
import defpackage.q;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SemaphoreAndMutexImpl {
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater m = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater o = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater p = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    public final int j;
    public final b0 k;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreAndMutexImpl(int i) {
        this.j = i;
        if (i > 0) {
            if (i >= 0) {
                SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
                this.head$volatile = semaphoreSegment;
                this.tail$volatile = semaphoreSegment;
                this._availablePermits$volatile = i;
                this.k = new b0(8, this);
                return;
            }
            fe.l(q.g(i, "The number of acquired permits should be in 0.."));
            throw null;
        }
        fe.l(q.g(i, "Semaphore should have at least 1 permit, but had "));
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0025, code lost:
    
        r5.m(r3, r4.k);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ContinuationImpl continuationImpl) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int andDecrement;
        int i;
        do {
            atomicIntegerFieldUpdater = p;
            andDecrement = atomicIntegerFieldUpdater.getAndDecrement(this);
            i = this.j;
        } while (andDecrement > i);
        Unit unit = Unit.a;
        if (andDecrement <= 0) {
            CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(continuationImpl));
            try {
                if (!c(b)) {
                    while (true) {
                        int andDecrement2 = atomicIntegerFieldUpdater.getAndDecrement(this);
                        if (andDecrement2 <= i) {
                            if (andDecrement2 > 0) {
                                break;
                            }
                            if (c(b)) {
                                break;
                            }
                        }
                    }
                }
                Object u = b.u();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                if (u != coroutineSingletons) {
                    u = unit;
                }
                if (u == coroutineSingletons) {
                    return u;
                }
            } catch (Throwable th) {
                b.D();
                throw th;
            }
        }
        return unit;
    }

    public final boolean c(Waiter waiter) {
        Object a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = n;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) atomicReferenceFieldUpdater.get(this);
        long andIncrement = o.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.r;
        long j = andIncrement / SemaphoreKt.f;
        loop0: while (true) {
            a = ConcurrentLinkedListKt.a(semaphoreSegment, j, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!SegmentOrClosed.b(a)) {
                Segment a2 = SegmentOrClosed.a(a);
                while (true) {
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
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(a);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.n;
        int i = (int) (andIncrement % SemaphoreKt.f);
        while (!atomicReferenceArray.compareAndSet(i, null, waiter)) {
            if (atomicReferenceArray.get(i) != null) {
                Symbol symbol = SemaphoreKt.b;
                Symbol symbol2 = SemaphoreKt.c;
                while (!atomicReferenceArray.compareAndSet(i, symbol, symbol2)) {
                    if (atomicReferenceArray.get(i) != symbol) {
                        return false;
                    }
                }
                ((CancellableContinuation) waiter).m(Unit.a, this.k);
                return true;
            }
        }
        waiter.a(semaphoreSegment2, i);
        return true;
    }

    public final void d() {
        int i;
        Object a;
        boolean z;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = p;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.j;
            if (andIncrement < i2) {
                if (andIncrement < 0) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
                    SemaphoreSegment semaphoreSegment = (SemaphoreSegment) atomicReferenceFieldUpdater.get(this);
                    long andIncrement2 = m.getAndIncrement(this);
                    long j = andIncrement2 / SemaphoreKt.f;
                    SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.r;
                    while (true) {
                        a = ConcurrentLinkedListKt.a(semaphoreSegment, j, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
                        if (SegmentOrClosed.b(a)) {
                            break;
                        }
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
                    }
                    SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(a);
                    AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.n;
                    semaphoreSegment2.a();
                    z = false;
                    if (semaphoreSegment2.l <= j) {
                        int i3 = (int) (andIncrement2 % SemaphoreKt.f);
                        Object andSet = atomicReferenceArray.getAndSet(i3, SemaphoreKt.b);
                        if (andSet == null) {
                            int i4 = SemaphoreKt.a;
                            for (int i5 = 0; i5 < i4; i5++) {
                                if (atomicReferenceArray.get(i3) == SemaphoreKt.c) {
                                    z = true;
                                    break;
                                }
                            }
                            Symbol symbol = SemaphoreKt.b;
                            Symbol symbol2 = SemaphoreKt.d;
                            while (true) {
                                if (atomicReferenceArray.compareAndSet(i3, symbol, symbol2)) {
                                    z = true;
                                    break;
                                } else if (atomicReferenceArray.get(i3) != symbol) {
                                    break;
                                }
                            }
                            z = !z;
                        } else if (andSet != SemaphoreKt.e) {
                            boolean z2 = andSet instanceof CancellableContinuation;
                            Unit unit = Unit.a;
                            if (z2) {
                                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                                Symbol l2 = cancellableContinuation.l(unit, this.k);
                                if (l2 != null) {
                                    cancellableContinuation.t(l2);
                                    z = true;
                                    break;
                                    break;
                                }
                            } else {
                                if (andSet instanceof SelectInstance) {
                                    if (((SelectImplementation) ((SelectInstance) andSet)).g(this, unit) != 0) {
                                    }
                                    z = true;
                                    break;
                                    break;
                                }
                                f7.i(andSet, "unexpected: ");
                                return;
                            }
                        }
                    }
                } else {
                    return;
                }
            } else {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
        } while (!z);
    }
}
