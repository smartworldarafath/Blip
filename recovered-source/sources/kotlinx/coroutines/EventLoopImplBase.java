package kotlinx.coroutines;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {
    public static final /* synthetic */ AtomicReferenceFieldUpdater p = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater r = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class DelayedResumeTask extends DelayedTask {
        public final CancellableContinuationImpl l;

        public DelayedResumeTask(long j, CancellableContinuationImpl cancellableContinuationImpl) {
            super(j);
            this.l = cancellableContinuationImpl;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.l.F(EventLoopImplBase.this);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.l;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DelayedRunnableTask extends DelayedTask {
        public final Runnable l;

        public DelayedRunnableTask(long j, Runnable runnable) {
            super(j);
            this.l = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((TimeoutCoroutine) this.l).run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.l;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {
        private volatile Object _heap;
        public long j;
        public int k = -1;

        public DelayedTask(long j) {
            this.j = j;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void a() {
            DelayedTaskQueue delayedTaskQueue;
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    Symbol symbol = EventLoop_commonKt.a;
                    if (obj == symbol) {
                        return;
                    }
                    ThreadSafeHeap threadSafeHeap = null;
                    if (obj instanceof DelayedTaskQueue) {
                        delayedTaskQueue = (DelayedTaskQueue) obj;
                    } else {
                        delayedTaskQueue = null;
                    }
                    if (delayedTaskQueue != null) {
                        synchronized (delayedTaskQueue) {
                            Object obj2 = this._heap;
                            if (obj2 instanceof ThreadSafeHeap) {
                                threadSafeHeap = (ThreadSafeHeap) obj2;
                            }
                            if (threadSafeHeap != null) {
                                delayedTaskQueue.b(this.k);
                            }
                        }
                    }
                    this._heap = symbol;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final int c(long j, DelayedTaskQueue delayedTaskQueue, EventLoopImplBase eventLoopImplBase) {
            ThreadSafeHeapNode threadSafeHeapNode;
            boolean z;
            synchronized (this) {
                if (this._heap == EventLoop_commonKt.a) {
                    return 2;
                }
                synchronized (delayedTaskQueue) {
                    try {
                        ThreadSafeHeapNode[] threadSafeHeapNodeArr = delayedTaskQueue.a;
                        if (threadSafeHeapNodeArr != null) {
                            threadSafeHeapNode = threadSafeHeapNodeArr[0];
                        } else {
                            threadSafeHeapNode = null;
                        }
                        DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode;
                        if (EventLoopImplBase.r.get(eventLoopImplBase) == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayedTaskQueue.c = j;
                        } else {
                            long j2 = delayedTask.j;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            if (j - delayedTaskQueue.c > 0) {
                                delayedTaskQueue.c = j;
                            }
                        }
                        long j3 = this.j;
                        long j4 = delayedTaskQueue.c;
                        if (j3 - j4 < 0) {
                            this.j = j4;
                        }
                        delayedTaskQueue.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(DelayedTask delayedTask) {
            long j = this.j - delayedTask.j;
            if (j > 0) {
                return 1;
            }
            if (j < 0) {
                return -1;
            }
            return 0;
        }

        public final void d(DelayedTaskQueue delayedTaskQueue) {
            if (this._heap != EventLoop_commonKt.a) {
                this._heap = delayedTaskQueue;
            } else {
                u2.g("Failed requirement.");
            }
        }

        public String toString() {
            return "Delayed[nanos=" + this.j + ']';
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {
        public long c;
    }

    @Override // kotlinx.coroutines.Delay
    public final void S(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        long j2 = 0;
        if (j > 0) {
            if (j >= 9223372036854L) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = 1000000 * j;
            }
        }
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(j2 + nanoTime, cancellableContinuationImpl);
            q1(nanoTime, delayedResumeTask);
            CancellableContinuationKt.a(cancellableContinuationImpl, delayedResumeTask);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        m1(runnable);
    }

    @Override // kotlinx.coroutines.EventLoop
    public final long i1() {
        ThreadSafeHeapNode threadSafeHeapNode;
        Runnable runnable;
        long j;
        Symbol symbol = EventLoop_commonKt.b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
        if (!j1()) {
            n1();
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                threadSafeHeapNode = null;
                if (obj == null) {
                    break;
                }
                if (obj instanceof LockFreeTaskQueueCore) {
                    LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                    Object d = lockFreeTaskQueueCore.d();
                    if (d != LockFreeTaskQueueCore.g) {
                        runnable = (Runnable) d;
                        break;
                    }
                    LockFreeTaskQueueCore c = lockFreeTaskQueueCore.c();
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c) && atomicReferenceFieldUpdater.get(this) == obj) {
                    }
                } else {
                    if (obj == symbol) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    runnable = (Runnable) obj;
                    break loop0;
                }
            }
            runnable = null;
            if (runnable != null) {
                runnable.run();
                return 0L;
            }
            ArrayDeque arrayDeque = this.n;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                j = Long.MAX_VALUE;
            } else {
                j = 0;
            }
            if (j != 0) {
                Object obj2 = atomicReferenceFieldUpdater.get(this);
                if (obj2 != null) {
                    if (obj2 instanceof LockFreeTaskQueueCore) {
                        long j2 = LockFreeTaskQueueCore.f.get((LockFreeTaskQueueCore) obj2);
                        if (((int) (1073741823 & j2)) != ((int) ((j2 & 1152921503533105152L) >> 30))) {
                            return 0L;
                        }
                    } else if (obj2 == symbol) {
                        return Long.MAX_VALUE;
                    }
                }
                DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) q.get(this);
                if (delayedTaskQueue != null) {
                    synchronized (delayedTaskQueue) {
                        ThreadSafeHeapNode[] threadSafeHeapNodeArr = delayedTaskQueue.a;
                        if (threadSafeHeapNodeArr != null) {
                            threadSafeHeapNode = threadSafeHeapNodeArr[0];
                        }
                    }
                    DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode;
                    if (delayedTask != null) {
                        long nanoTime = delayedTask.j - System.nanoTime();
                        if (nanoTime >= 0) {
                            return nanoTime;
                        }
                    }
                }
                return Long.MAX_VALUE;
            }
        }
        return 0L;
    }

    public void m1(Runnable runnable) {
        n1();
        if (o1(runnable)) {
            Thread k1 = k1();
            if (Thread.currentThread() != k1) {
                LockSupport.unpark(k1);
                return;
            }
            return;
        }
        DefaultExecutor.s.m1(runnable);
    }

    public final void n1() {
        ThreadSafeHeapNode threadSafeHeapNode;
        ThreadSafeHeapNode threadSafeHeapNode2;
        boolean z;
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) q.get(this);
        if (delayedTaskQueue == null || ThreadSafeHeap.b.get(delayedTaskQueue) == 0) {
            return;
        }
        long nanoTime = System.nanoTime();
        do {
            synchronized (delayedTaskQueue) {
                try {
                    ThreadSafeHeapNode[] threadSafeHeapNodeArr = delayedTaskQueue.a;
                    threadSafeHeapNode = null;
                    if (threadSafeHeapNodeArr != null) {
                        threadSafeHeapNode2 = threadSafeHeapNodeArr[0];
                    } else {
                        threadSafeHeapNode2 = null;
                    }
                    if (threadSafeHeapNode2 != null) {
                        DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode2;
                        if (nanoTime - delayedTask.j >= 0) {
                            z = o1(delayedTask);
                        } else {
                            z = false;
                        }
                        if (z) {
                            threadSafeHeapNode = delayedTaskQueue.b(0);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (((DelayedTask) threadSafeHeapNode) != null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o1(Runnable runnable) {
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (r.get(this) != 1) {
                if (obj == null) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        if (atomicReferenceFieldUpdater.get(this) != null) {
                            break;
                        }
                    }
                    break loop0;
                }
                if (obj instanceof LockFreeTaskQueueCore) {
                    LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                    int a = lockFreeTaskQueueCore.a(runnable);
                    if (a == 0) {
                        break;
                    }
                    if (a != 1) {
                        if (a == 2) {
                            return false;
                        }
                    } else {
                        LockFreeTaskQueueCore c = lockFreeTaskQueueCore.c();
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c) && atomicReferenceFieldUpdater.get(this) == obj) {
                        }
                    }
                } else {
                    if (obj == EventLoop_commonKt.b) {
                        return false;
                    }
                    LockFreeTaskQueueCore lockFreeTaskQueueCore2 = new LockFreeTaskQueueCore(8, true);
                    lockFreeTaskQueueCore2.a((Runnable) obj);
                    lockFreeTaskQueueCore2.a(runnable);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, lockFreeTaskQueueCore2)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
            } else {
                return false;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if (r0 == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean p1() {
        boolean z;
        boolean z2;
        ArrayDeque arrayDeque = this.n;
        if (arrayDeque != null) {
            z = arrayDeque.isEmpty();
        } else {
            z = true;
        }
        if (z) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) q.get(this);
            if (delayedTaskQueue != null) {
                if (ThreadSafeHeap.b.get(delayedTaskQueue) == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            Object obj = p.get(this);
            if (obj != null) {
                if (obj instanceof LockFreeTaskQueueCore) {
                    long j = LockFreeTaskQueueCore.f.get((LockFreeTaskQueueCore) obj);
                    if (((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30))) {
                        return true;
                    }
                    return false;
                }
                if (obj == EventLoop_commonKt.b) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue, java.lang.Object] */
    public final void q1(long j, DelayedTask delayedTask) {
        int c;
        Thread k1;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
        ThreadSafeHeapNode threadSafeHeapNode = null;
        if (r.get(this) == 1) {
            c = 1;
        } else {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
            if (delayedTaskQueue == null) {
                ?? obj = new Object();
                obj.c = j;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, obj) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj2 = atomicReferenceFieldUpdater.get(this);
                obj2.getClass();
                delayedTaskQueue = (DelayedTaskQueue) obj2;
            }
            c = delayedTask.c(j, delayedTaskQueue, this);
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    u2.l("unexpected result");
                    return;
                }
                return;
            }
            l1(j, delayedTask);
            return;
        }
        DelayedTaskQueue delayedTaskQueue2 = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
        if (delayedTaskQueue2 != null) {
            synchronized (delayedTaskQueue2) {
                ThreadSafeHeapNode[] threadSafeHeapNodeArr = delayedTaskQueue2.a;
                if (threadSafeHeapNodeArr != null) {
                    threadSafeHeapNode = threadSafeHeapNodeArr[0];
                }
            }
            threadSafeHeapNode = (DelayedTask) threadSafeHeapNode;
        }
        if (threadSafeHeapNode == delayedTask && Thread.currentThread() != (k1 = k1())) {
            LockSupport.unpark(k1);
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        ThreadSafeHeapNode threadSafeHeapNode;
        ThreadLocalEventLoop.a.set(null);
        r.set(this, 1);
        Symbol symbol = EventLoop_commonKt.b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = p;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                break loop0;
            } else {
                if (obj instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) obj).b();
                    break;
                }
                if (obj != symbol) {
                    LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                    lockFreeTaskQueueCore.a((Runnable) obj);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                break;
            }
        }
        do {
        } while (i1() <= 0);
        long nanoTime = System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) q.get(this);
            if (delayedTaskQueue != null) {
                synchronized (delayedTaskQueue) {
                    if (ThreadSafeHeap.b.get(delayedTaskQueue) > 0) {
                        threadSafeHeapNode = delayedTaskQueue.b(0);
                    } else {
                        threadSafeHeapNode = null;
                    }
                }
                DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode;
                if (delayedTask != null) {
                    l1(nanoTime, delayedTask);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
