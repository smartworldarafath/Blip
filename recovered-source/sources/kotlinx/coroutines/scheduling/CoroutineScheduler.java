package kotlinx.coroutines.scheduling;

import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import java.io.Closeable;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.LockFreeTaskQueue;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final /* synthetic */ AtomicLongFieldUpdater q = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater r = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater s = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    public static final Symbol t = new Symbol("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    public final int j;
    public final int k;
    public final long l;
    public final String m;
    public final GlobalQueue n;
    public final GlobalQueue o;
    public final ResizableAtomicArray p;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater r = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;
        public final WorkQueue j;
        public final Ref$ObjectRef k;
        public WorkerState l;
        public long m;
        public long n;
        private volatile Object nextParkedWorker;
        public int o;
        public boolean p;
        private volatile /* synthetic */ int workerCtl$volatile;

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        public Worker(int i) {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.class.getClassLoader());
            this.j = new WorkQueue();
            this.k = new Object();
            this.l = WorkerState.m;
            this.nextParkedWorker = CoroutineScheduler.t;
            int nanoTime = (int) System.nanoTime();
            this.o = nanoTime == 0 ? 42 : nanoTime;
            f(i);
        }

        public final Task a(boolean z) {
            Task e;
            Task e2;
            long j;
            WorkerState workerState = this.l;
            WorkerState workerState2 = WorkerState.j;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            Task task = null;
            boolean z2 = true;
            WorkQueue workQueue = this.j;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.r;
                do {
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        workQueue.getClass();
                        loop1: while (true) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = WorkQueue.b;
                            Task task2 = (Task) atomicReferenceFieldUpdater.get(workQueue);
                            if (task2 == null || !task2.k) {
                                break;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(workQueue, task2, null)) {
                                if (atomicReferenceFieldUpdater.get(workQueue) != task2) {
                                    break;
                                }
                            }
                            task = task2;
                        }
                        int i = WorkQueue.d.get(workQueue);
                        int i2 = WorkQueue.c.get(workQueue);
                        while (true) {
                            if (i == i2 || WorkQueue.e.get(workQueue) == 0) {
                                break;
                            }
                            i2--;
                            Task c = workQueue.c(i2, true);
                            if (c != null) {
                                task = c;
                                break;
                            }
                        }
                        if (task == null) {
                            Task task3 = (Task) coroutineScheduler.o.d();
                            if (task3 == null) {
                                return i(1);
                            }
                            return task3;
                        }
                        return task;
                    }
                } while (!CoroutineScheduler.r.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.l = WorkerState.j;
            }
            if (z) {
                if (d(coroutineScheduler.j * 2) != 0) {
                    z2 = false;
                }
                if (z2 && (e2 = e()) != null) {
                    return e2;
                }
                workQueue.getClass();
                Task task4 = (Task) WorkQueue.b.getAndSet(workQueue, null);
                if (task4 == null) {
                    task4 = workQueue.b();
                }
                if (task4 != null) {
                    return task4;
                }
                if (!z2 && (e = e()) != null) {
                    return e;
                }
            } else {
                Task e3 = e();
                if (e3 != null) {
                    return e3;
                }
            }
            return i(3);
        }

        public final int b() {
            return this.indexInArray;
        }

        public final Object c() {
            return this.nextParkedWorker;
        }

        public final int d(int i) {
            int i2 = this.o;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.o = i5;
            int i6 = i - 1;
            if ((i6 & i) == 0) {
                return i6 & i5;
            }
            return (Integer.MAX_VALUE & i5) % i;
        }

        public final Task e() {
            int d = d(2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            GlobalQueue globalQueue = coroutineScheduler.o;
            GlobalQueue globalQueue2 = coroutineScheduler.n;
            if (d == 0) {
                Task task = (Task) globalQueue2.d();
                if (task != null) {
                    return task;
                }
                return (Task) globalQueue.d();
            }
            Task task2 = (Task) globalQueue.d();
            if (task2 != null) {
                return task2;
            }
            return (Task) globalQueue2.d();
        }

        public final void f(int i) {
            String valueOf;
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.m);
            sb.append("-worker-");
            if (i == 0) {
                valueOf = "TERMINATED";
            } else {
                valueOf = String.valueOf(i);
            }
            sb.append(valueOf);
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void g(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean h(WorkerState workerState) {
            boolean z;
            WorkerState workerState2 = this.l;
            if (workerState2 == WorkerState.j) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                CoroutineScheduler.r.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.l = workerState;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a2, code lost:
        
            r7 = -2;
            r5 = r4;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Task i(int i) {
            boolean z;
            long j;
            Task task;
            long j2;
            long j3;
            Task task2;
            int i2;
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.r;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            int i3 = (int) (atomicLongFieldUpdater.get(coroutineScheduler) & 2097151);
            Task task3 = null;
            if (i3 < 2) {
                return null;
            }
            int d = d(i3);
            int i4 = 0;
            long j4 = Long.MAX_VALUE;
            while (i4 < i3) {
                d++;
                if (d > i3) {
                    d = 1;
                }
                Worker worker = (Worker) coroutineScheduler.p.b(d);
                if (worker != null && worker != this) {
                    WorkQueue workQueue = worker.j;
                    workQueue.getClass();
                    if (i == 3) {
                        task = workQueue.b();
                        j = 0;
                    } else {
                        if (i == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i5 = WorkQueue.d.get(workQueue);
                        int i6 = WorkQueue.c.get(workQueue);
                        while (true) {
                            if (i5 != i6) {
                                j = 0;
                                if (!z || WorkQueue.e.get(workQueue) != 0) {
                                    int i7 = i5 + 1;
                                    Task c = workQueue.c(i5, z);
                                    if (c == null) {
                                        i5 = i7;
                                    } else {
                                        task = c;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                j = 0;
                                break;
                            }
                        }
                        task = task3;
                    }
                    Ref$ObjectRef ref$ObjectRef = this.k;
                    if (task != null) {
                        ref$ObjectRef.j = task;
                        task2 = task3;
                        j3 = -1;
                        j2 = -1;
                    } else {
                        while (true) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = WorkQueue.b;
                            Task task4 = (Task) atomicReferenceFieldUpdater.get(workQueue);
                            if (task4 == null) {
                                j2 = -1;
                                break;
                            }
                            j2 = -1;
                            if (task4.k) {
                                i2 = 1;
                            } else {
                                i2 = 2;
                            }
                            if ((i2 & i) == 0) {
                                break;
                            }
                            TasksKt.f.getClass();
                            WorkQueue workQueue2 = workQueue;
                            long nanoTime = System.nanoTime() - task4.j;
                            long j5 = TasksKt.b;
                            if (nanoTime < j5) {
                                j3 = j5 - nanoTime;
                                task2 = null;
                                break;
                            }
                            do {
                                task2 = null;
                                if (atomicReferenceFieldUpdater.compareAndSet(workQueue2, task4, null)) {
                                    ref$ObjectRef.j = task4;
                                    j3 = -1;
                                    break;
                                }
                            } while (atomicReferenceFieldUpdater.get(workQueue2) == task4);
                            workQueue = workQueue2;
                            task3 = null;
                        }
                    }
                    if (j3 == j2) {
                        Task task5 = (Task) ref$ObjectRef.j;
                        ref$ObjectRef.j = task2;
                        return task5;
                    }
                    if (j3 > j) {
                        j4 = Math.min(j4, j3);
                    }
                }
                i4++;
                task3 = null;
            }
            if (j4 == Long.MAX_VALUE) {
                j4 = 0;
            }
            this.n = j4;
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:76:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0004, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void run() {
            long j;
            boolean z;
            loop0: while (true) {
                boolean z2 = false;
                while (CoroutineScheduler.s.get(CoroutineScheduler.this) != 1) {
                    WorkerState workerState = this.l;
                    WorkerState workerState2 = WorkerState.n;
                    if (workerState == workerState2) {
                        break loop0;
                    }
                    Task a = a(this.p);
                    if (a != null) {
                        this.n = 0L;
                        CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                        this.m = 0L;
                        if (this.l == WorkerState.l) {
                            this.l = WorkerState.k;
                        }
                        if (a.k) {
                            if (h(WorkerState.k) && !coroutineScheduler.A() && !coroutineScheduler.w(CoroutineScheduler.r.get(coroutineScheduler))) {
                                coroutineScheduler.A();
                            }
                            try {
                                a.run();
                            } catch (Throwable th) {
                                Thread currentThread = Thread.currentThread();
                                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                            }
                            CoroutineScheduler.r.addAndGet(coroutineScheduler, -2097152L);
                            if (this.l != workerState2) {
                                this.l = WorkerState.m;
                            }
                        } else {
                            try {
                                a.run();
                            } catch (Throwable th2) {
                                Thread currentThread2 = Thread.currentThread();
                                currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th2);
                            }
                        }
                    } else {
                        this.p = false;
                        if (this.n != 0) {
                            if (!z2) {
                                z2 = true;
                            } else {
                                h(WorkerState.l);
                                Thread.interrupted();
                                LockSupport.parkNanos(this.n);
                                this.n = 0L;
                            }
                        } else {
                            Object obj = this.nextParkedWorker;
                            Symbol symbol = CoroutineScheduler.t;
                            if (obj != symbol) {
                                r.set(this, -1);
                                while (this.nextParkedWorker != CoroutineScheduler.t) {
                                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = r;
                                    if (atomicIntegerFieldUpdater.get(this) == -1) {
                                        CoroutineScheduler coroutineScheduler2 = CoroutineScheduler.this;
                                        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = CoroutineScheduler.s;
                                        if (atomicIntegerFieldUpdater2.get(coroutineScheduler2) == 1) {
                                            break;
                                        }
                                        WorkerState workerState3 = this.l;
                                        WorkerState workerState4 = WorkerState.n;
                                        if (workerState3 == workerState4) {
                                            break;
                                        }
                                        h(WorkerState.l);
                                        Thread.interrupted();
                                        if (this.m == 0) {
                                            j = 2097151;
                                            this.m = System.nanoTime() + CoroutineScheduler.this.l;
                                        } else {
                                            j = 2097151;
                                        }
                                        LockSupport.parkNanos(CoroutineScheduler.this.l);
                                        if (System.nanoTime() - this.m >= 0) {
                                            this.m = 0L;
                                            CoroutineScheduler coroutineScheduler3 = CoroutineScheduler.this;
                                            synchronized (coroutineScheduler3.p) {
                                                try {
                                                    if (atomicIntegerFieldUpdater2.get(coroutineScheduler3) == 1) {
                                                        z = true;
                                                    } else {
                                                        z = false;
                                                    }
                                                    if (!z) {
                                                        AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.r;
                                                        if (((int) (atomicLongFieldUpdater.get(coroutineScheduler3) & j)) > coroutineScheduler3.j && atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                            int i = this.indexInArray;
                                                            f(0);
                                                            coroutineScheduler3.v(this, i, 0);
                                                            int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(coroutineScheduler3) & j);
                                                            if (andDecrement != i) {
                                                                Object b = coroutineScheduler3.p.b(andDecrement);
                                                                b.getClass();
                                                                Worker worker = (Worker) b;
                                                                coroutineScheduler3.p.c(i, worker);
                                                                worker.f(i);
                                                                coroutineScheduler3.v(worker, andDecrement, i);
                                                            }
                                                            coroutineScheduler3.p.c(andDecrement, null);
                                                            this.l = workerState4;
                                                        }
                                                    }
                                                } catch (Throwable th3) {
                                                    throw th3;
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                CoroutineScheduler coroutineScheduler4 = CoroutineScheduler.this;
                                if (this.nextParkedWorker == symbol) {
                                    AtomicLongFieldUpdater atomicLongFieldUpdater2 = CoroutineScheduler.q;
                                    while (true) {
                                        long j2 = atomicLongFieldUpdater2.get(coroutineScheduler4);
                                        int i2 = this.indexInArray;
                                        this.nextParkedWorker = coroutineScheduler4.p.b((int) (j2 & 2097151));
                                        CoroutineScheduler coroutineScheduler5 = coroutineScheduler4;
                                        if (CoroutineScheduler.q.compareAndSet(coroutineScheduler5, j2, ((j2 + 2097152) & (-2097152)) | i2)) {
                                            break;
                                        } else {
                                            coroutineScheduler4 = coroutineScheduler5;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                break loop0;
            }
            h(WorkerState.n);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WorkerState {
        public static final WorkerState j;
        public static final WorkerState k;
        public static final WorkerState l;
        public static final WorkerState m;
        public static final WorkerState n;
        public static final /* synthetic */ WorkerState[] o;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState] */
        static {
            ?? r0 = new Enum("CPU_ACQUIRED", 0);
            j = r0;
            ?? r1 = new Enum("BLOCKING", 1);
            k = r1;
            ?? r2 = new Enum("PARKING", 2);
            l = r2;
            ?? r3 = new Enum("DORMANT", 3);
            m = r3;
            ?? r4 = new Enum("TERMINATED", 4);
            n = r4;
            WorkerState[] workerStateArr = {r0, r1, r2, r3, r4};
            o = workerStateArr;
            EnumEntriesKt.a(workerStateArr);
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) o.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [kotlinx.coroutines.scheduling.GlobalQueue, kotlinx.coroutines.internal.LockFreeTaskQueue] */
    /* JADX WARN: Type inference failed for: r4v4, types: [kotlinx.coroutines.scheduling.GlobalQueue, kotlinx.coroutines.internal.LockFreeTaskQueue] */
    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.j = i;
        this.k = i2;
        this.l = j;
        this.m = str;
        if (i >= 1) {
            if (i2 >= i) {
                if (i2 <= 2097150) {
                    if (j > 0) {
                        this.n = new LockFreeTaskQueue();
                        this.o = new LockFreeTaskQueue();
                        this.p = new ResizableAtomicArray((i + 1) * 2);
                        this.controlState$volatile = i << 42;
                        return;
                    }
                    k8.k("Idle worker keep alive time ", j, " must be positive");
                    throw null;
                }
                fe.l(jb.d("Max pool size ", i2, " should not exceed maximal supported number of threads 2097150"));
                throw null;
            }
            fe.l(q.f(i2, i, "Max pool size ", " should be greater than or equals to core pool size "));
            throw null;
        }
        fe.l(jb.d("Core pool size ", i, " should be at least 1"));
        throw null;
    }

    public static /* synthetic */ void q(CoroutineScheduler coroutineScheduler, Runnable runnable, int i) {
        boolean z;
        if ((i & 4) != 0) {
            z = false;
        } else {
            z = true;
        }
        coroutineScheduler.n(runnable, false, z);
    }

    public final boolean A() {
        CoroutineScheduler coroutineScheduler;
        Symbol symbol;
        int i;
        while (true) {
            long j = q.get(this);
            Worker worker = (Worker) this.p.b((int) (2097151 & j));
            if (worker == null) {
                worker = null;
                coroutineScheduler = this;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object c = worker.c();
                while (true) {
                    symbol = t;
                    if (c == symbol) {
                        i = -1;
                        break;
                    }
                    if (c == null) {
                        i = 0;
                        break;
                    }
                    Worker worker2 = (Worker) c;
                    i = worker2.b();
                    if (i != 0) {
                        break;
                    }
                    c = worker2.c();
                    j = j;
                }
                if (i >= 0) {
                    CoroutineScheduler coroutineScheduler2 = this;
                    boolean compareAndSet = q.compareAndSet(coroutineScheduler2, j, i | j2);
                    coroutineScheduler = coroutineScheduler2;
                    if (compareAndSet) {
                        worker.g(symbol);
                    }
                    this = coroutineScheduler;
                } else {
                    continue;
                }
            }
            if (worker == null) {
                return false;
            }
            if (Worker.r.compareAndSet(worker, -1, 0)) {
                LockSupport.unpark(worker);
                return true;
            }
            this = coroutineScheduler;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
    
        if (r1 == null) goto L38;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() {
        Worker worker;
        int i;
        Task task;
        if (!s.compareAndSet(this, 0, 1)) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker == null || CoroutineScheduler.this != this) {
            worker = null;
        }
        synchronized (this.p) {
            i = (int) (r.get(this) & 2097151);
        }
        if (1 <= i) {
            int i2 = 1;
            while (true) {
                Object b = this.p.b(i2);
                b.getClass();
                Worker worker2 = (Worker) b;
                if (worker2 != worker) {
                    while (worker2.getState() != Thread.State.TERMINATED) {
                        LockSupport.unpark(worker2);
                        worker2.join(10000L);
                    }
                    WorkQueue workQueue = worker2.j;
                    GlobalQueue globalQueue = this.o;
                    workQueue.getClass();
                    Task task2 = (Task) WorkQueue.b.getAndSet(workQueue, null);
                    if (task2 != null) {
                        globalQueue.a(task2);
                    }
                    while (true) {
                        Task b2 = workQueue.b();
                        if (b2 == null) {
                            break;
                        } else {
                            globalQueue.a(b2);
                        }
                    }
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.o.b();
        this.n.b();
        while (true) {
            if (worker != null) {
                task = worker.a(true);
            }
            task = (Task) this.n.d();
            if (task == null && (task = (Task) this.o.d()) == null) {
                break;
            }
            try {
                task.run();
            } catch (Throwable th) {
                Thread currentThread2 = Thread.currentThread();
                currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
            }
        }
        if (worker != null) {
            worker.h(WorkerState.n);
        }
        q.set(this, 0L);
        r.set(this, 0L);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        q(this, runnable, 6);
    }

    public final int h() {
        boolean z;
        synchronized (this.p) {
            try {
                if (s.get(this) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = r;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.j) {
                    return 0;
                }
                if (i >= this.k) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 > 0 && this.p.b(i3) == null) {
                    Worker worker = new Worker(i3);
                    this.p.c(i3, worker);
                    if (i3 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                        int i4 = i2 + 1;
                        worker.start();
                        return i4;
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(Runnable runnable, boolean z, boolean z2) {
        Task taskImpl;
        long j;
        Worker worker;
        boolean a;
        WorkerState workerState;
        TasksKt.f.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof Task) {
            taskImpl = (Task) runnable;
            taskImpl.j = nanoTime;
            taskImpl.k = z;
        } else {
            taskImpl = new TaskImpl(runnable, nanoTime, z);
        }
        boolean z3 = taskImpl.k;
        AtomicLongFieldUpdater atomicLongFieldUpdater = r;
        if (z3) {
            j = atomicLongFieldUpdater.addAndGet(this, 2097152L);
        } else {
            j = 0;
        }
        Thread currentThread = Thread.currentThread();
        if (currentThread instanceof Worker) {
            worker = (Worker) currentThread;
        } else {
            worker = null;
        }
        if (worker == null || CoroutineScheduler.this != this) {
            worker = null;
        }
        if (worker != null && (workerState = worker.l) != WorkerState.n && (taskImpl.k || workerState != WorkerState.k)) {
            worker.p = true;
            WorkQueue workQueue = worker.j;
            if (z2) {
                taskImpl = workQueue.a(taskImpl);
            } else {
                workQueue.getClass();
                Task task = (Task) WorkQueue.b.getAndSet(workQueue, taskImpl);
                if (task == null) {
                    taskImpl = null;
                } else {
                    taskImpl = workQueue.a(task);
                }
            }
        }
        if (taskImpl != null) {
            if (taskImpl.k) {
                a = this.o.a(taskImpl);
            } else {
                a = this.n.a(taskImpl);
            }
            if (!a) {
                throw new RejectedExecutionException(q.l(new StringBuilder(), this.m, " was terminated"));
            }
        }
        if (z3) {
            if (!A() && !w(j)) {
                A();
                return;
            }
            return;
        }
        if (A() || w(atomicLongFieldUpdater.get(this))) {
            return;
        }
        A();
    }

    public final String toString() {
        int i;
        ArrayList arrayList = new ArrayList();
        ResizableAtomicArray resizableAtomicArray = this.p;
        int a = resizableAtomicArray.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < a; i7++) {
            Worker worker = (Worker) resizableAtomicArray.b(i7);
            if (worker != null) {
                WorkQueue workQueue = worker.j;
                workQueue.getClass();
                if (WorkQueue.b.get(workQueue) != null) {
                    i = (WorkQueue.c.get(workQueue) - WorkQueue.d.get(workQueue)) + 1;
                } else {
                    i = WorkQueue.c.get(workQueue) - WorkQueue.d.get(workQueue);
                }
                int ordinal = worker.l.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                                if (ordinal == 4) {
                                    i6++;
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                i5++;
                                if (i > 0) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(i);
                                    sb.append('d');
                                    arrayList.add(sb.toString());
                                }
                            }
                        } else {
                            i4++;
                        }
                    } else {
                        i3++;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(i);
                        sb2.append('b');
                        arrayList.add(sb2.toString());
                    }
                } else {
                    i2++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(i);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                }
            }
        }
        long j = r.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.m);
        sb4.append('@');
        sb4.append(DebugStringsKt.a(this));
        sb4.append("[Pool Size {core = ");
        int i8 = this.j;
        sb4.append(i8);
        sb4.append(", max = ");
        sb4.append(this.k);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i2);
        sb4.append(", blocking = ");
        sb4.append(i3);
        sb4.append(", parked = ");
        sb4.append(i4);
        sb4.append(", dormant = ");
        sb4.append(i5);
        sb4.append(", terminated = ");
        sb4.append(i6);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.n.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.o.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i8 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }

    public final void v(Worker worker, int i, int i2) {
        while (true) {
            long j = q.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object c = worker.c();
                    while (true) {
                        if (c == t) {
                            i3 = -1;
                            break;
                        }
                        if (c == null) {
                            i3 = 0;
                            break;
                        }
                        Worker worker2 = (Worker) c;
                        int b = worker2.b();
                        if (b != 0) {
                            i3 = b;
                            break;
                        }
                        c = worker2.c();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                CoroutineScheduler coroutineScheduler = this;
                if (q.compareAndSet(coroutineScheduler, j, i3 | j2)) {
                    return;
                } else {
                    this = coroutineScheduler;
                }
            }
        }
    }

    public final boolean w(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.j;
        if (i < i2) {
            int h = h();
            if (h == 1 && i2 > 1) {
                h();
            }
            if (h > 0) {
                return true;
            }
        }
        return false;
    }
}
