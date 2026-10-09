package kotlinx.coroutines.sync;

import defpackage.b0;
import defpackage.k8;
import defpackage.lh;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    private volatile /* synthetic */ Object owner$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class CancellableContinuationWithOwner implements CancellableContinuation<Unit>, Waiter {
        public final CancellableContinuationImpl j;

        public CancellableContinuationWithOwner(CancellableContinuationImpl cancellableContinuationImpl) {
            this.j = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void a(Segment segment, int i) {
            this.j.a(segment, i);
        }

        @Override // kotlin.coroutines.Continuation
        public final void g(Object obj) {
            this.j.g(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Symbol l(Object obj, Function3 function3) {
            MutexImpl mutexImpl = MutexImpl.this;
            b0 b0Var = new b0(mutexImpl, this);
            Symbol l = this.j.l((Unit) obj, b0Var);
            if (l != null) {
                MutexImpl.q.set(mutexImpl, null);
            }
            return l;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void m(Object obj, Function3 function3) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.q;
            MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, null);
            lh lhVar = new lh(mutexImpl, this);
            CancellableContinuationImpl cancellableContinuationImpl = this.j;
            cancellableContinuationImpl.E((Unit) obj, cancellableContinuationImpl.l, new b0(2, lhVar));
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext o() {
            return this.j.n;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final boolean p(Throwable th) {
            return this.j.p(th);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void t(Object obj) {
            this.j.t(obj);
        }
    }

    public MutexImpl() {
        super(1);
        this.owner$volatile = MutexKt.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        r0.m(r1, r4.k);
     */
    @Override // kotlinx.coroutines.sync.Mutex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Continuation continuation) {
        boolean f = f();
        Unit unit = Unit.a;
        if (!f) {
            CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.b(continuation));
            try {
                CancellableContinuationWithOwner cancellableContinuationWithOwner = new CancellableContinuationWithOwner(b);
                while (true) {
                    int andDecrement = SemaphoreAndMutexImpl.p.getAndDecrement(this);
                    if (andDecrement <= this.j) {
                        if (andDecrement > 0) {
                            break;
                        }
                        if (c(cancellableContinuationWithOwner)) {
                            break;
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

    public final boolean e() {
        if (Math.max(SemaphoreAndMutexImpl.p.get(this), 0) != 0) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = SemaphoreAndMutexImpl.p;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.j;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    q.set(this, null);
                    return true;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void h(Object obj) {
        while (e()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            Symbol symbol = MutexKt.a;
            if (obj2 != symbol) {
                if (obj2 != obj && obj != null) {
                    k8.n("This mutex is locked by ", obj2, ", but ", obj, " is expected");
                    return;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                d();
                return;
            }
        }
        u2.l("This mutex is not locked");
    }

    public final String toString() {
        return "Mutex@" + DebugStringsKt.a(this) + "[isLocked=" + e() + ",owner=" + q.get(this) + ']';
    }
}
