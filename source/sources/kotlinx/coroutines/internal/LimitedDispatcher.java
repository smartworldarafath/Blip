package kotlinx.coroutines.internal;

import defpackage.q;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {
    public static final /* synthetic */ AtomicIntegerFieldUpdater q = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");
    public final /* synthetic */ Delay l;
    public final CoroutineDispatcher m;
    public final int n;
    public final LockFreeTaskQueue o;
    public final Object p;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Worker implements Runnable {
        public Runnable j;

        public Worker(Runnable runnable) {
            this.j = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = 0;
            while (true) {
                try {
                    this.j.run();
                } catch (Throwable th) {
                    try {
                        CoroutineExceptionHandlerKt.a(th, EmptyCoroutineContext.j);
                    } catch (Throwable th2) {
                        LimitedDispatcher limitedDispatcher = LimitedDispatcher.this;
                        synchronized (limitedDispatcher.p) {
                            LimitedDispatcher.q.decrementAndGet(limitedDispatcher);
                            throw th2;
                        }
                    }
                }
                LimitedDispatcher limitedDispatcher2 = LimitedDispatcher.this;
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = LimitedDispatcher.q;
                Runnable f1 = limitedDispatcher2.f1();
                if (f1 != null) {
                    this.j = f1;
                    i++;
                    if (i >= 16) {
                        LimitedDispatcher limitedDispatcher3 = LimitedDispatcher.this;
                        if (DispatchedContinuationKt.c(limitedDispatcher3.m, limitedDispatcher3)) {
                            LimitedDispatcher limitedDispatcher4 = LimitedDispatcher.this;
                            DispatchedContinuationKt.b(limitedDispatcher4.m, limitedDispatcher4, this);
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i) {
        Delay delay;
        if (coroutineDispatcher instanceof Delay) {
            delay = (Delay) coroutineDispatcher;
        } else {
            delay = null;
        }
        this.l = delay == null ? DefaultExecutorKt.a : delay;
        this.m = coroutineDispatcher;
        this.n = i;
        this.o = new LockFreeTaskQueue();
        this.p = new Object();
    }

    @Override // kotlinx.coroutines.Delay
    public final void S(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        this.l.S(j, cancellableContinuationImpl);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable f1;
        this.o.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = q;
        if (atomicIntegerFieldUpdater.get(this) < this.n && g1() && (f1 = f1()) != null) {
            try {
                DispatchedContinuationKt.b(this.m, this, new Worker(f1));
            } catch (Throwable th) {
                atomicIntegerFieldUpdater.decrementAndGet(this);
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void c1(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable f1;
        this.o.a(runnable);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = q;
        if (atomicIntegerFieldUpdater.get(this) < this.n && g1() && (f1 = f1()) != null) {
            try {
                this.m.c1(this, new Worker(f1));
            } catch (Throwable th) {
                atomicIntegerFieldUpdater.decrementAndGet(this);
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        if (i >= this.n) {
            return this;
        }
        return super.e1(i);
    }

    public final Runnable f1() {
        while (true) {
            Runnable runnable = (Runnable) this.o.d();
            if (runnable == null) {
                synchronized (this.p) {
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = q;
                    atomicIntegerFieldUpdater.decrementAndGet(this);
                    if (this.o.c() == 0) {
                        return null;
                    }
                    atomicIntegerFieldUpdater.incrementAndGet(this);
                }
            } else {
                return runnable;
            }
        }
    }

    public final boolean g1() {
        synchronized (this.p) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = q;
            if (atomicIntegerFieldUpdater.get(this) >= this.n) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.m);
        sb.append(".limitedParallelism(");
        return q.j(sb, this.n, ')');
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle x0(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return this.l.x0(j, runnable, coroutineContext);
    }
}
