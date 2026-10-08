package okhttp3.internal.concurrent;

import defpackage.fi;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TaskRunner {
    public static final TaskRunner h = new TaskRunner(new RealBackend(new fi(q.l(new StringBuilder(), Util.f, " TaskRunner"), true)));
    public static final Logger i;
    public final RealBackend a;
    public boolean c;
    public long d;
    public int b = 10000;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public final TaskRunner$runnable$1 g = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
        @Override // java.lang.Runnable
        public final void run() {
            Task c;
            long j;
            while (true) {
                TaskRunner taskRunner = TaskRunner.this;
                synchronized (taskRunner) {
                    c = taskRunner.c();
                }
                if (c == null) {
                    return;
                }
                TaskQueue taskQueue = c.c;
                taskQueue.getClass();
                TaskRunner taskRunner2 = TaskRunner.this;
                boolean isLoggable = TaskRunner.i.isLoggable(Level.FINE);
                if (isLoggable) {
                    j = System.nanoTime();
                    TaskLoggerKt.a(c, taskQueue, "starting");
                } else {
                    j = -1;
                }
                try {
                    TaskRunner.a(taskRunner2, c);
                    if (isLoggable) {
                        TaskLoggerKt.a(c, taskQueue, "finished run in ".concat(TaskLoggerKt.b(System.nanoTime() - j)));
                    }
                } finally {
                }
            }
        }
    };

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RealBackend {
        public final ThreadPoolExecutor a;

        public RealBackend(fi fiVar) {
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), fiVar);
        }
    }

    static {
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        logger.getClass();
        i = logger;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [okhttp3.internal.concurrent.TaskRunner$runnable$1] */
    public TaskRunner(RealBackend realBackend) {
        this.a = realBackend;
    }

    public static final void a(TaskRunner taskRunner, Task task) {
        byte[] bArr = Util.a;
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(task.a);
        try {
            long a = task.a();
            synchronized (taskRunner) {
                taskRunner.b(task, a);
            }
            currentThread.setName(name);
        } catch (Throwable th) {
            synchronized (taskRunner) {
                taskRunner.b(task, -1L);
                currentThread.setName(name);
                throw th;
            }
        }
    }

    public final void b(Task task, long j) {
        byte[] bArr = Util.a;
        TaskQueue taskQueue = task.c;
        taskQueue.getClass();
        if (taskQueue.d == task) {
            boolean z = taskQueue.f;
            taskQueue.f = false;
            taskQueue.d = null;
            this.e.remove(taskQueue);
            if (j != -1 && !z && !taskQueue.c) {
                taskQueue.d(task, j, true);
            }
            if (!taskQueue.e.isEmpty()) {
                this.f.add(taskQueue);
                return;
            }
            return;
        }
        u2.l("Check failed.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x008f, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Task c() {
        boolean z;
        byte[] bArr = Util.a;
        while (true) {
            ArrayList arrayList = this.f;
            if (arrayList.isEmpty()) {
                break;
            }
            long nanoTime = System.nanoTime();
            Iterator it = arrayList.iterator();
            long j = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (it.hasNext()) {
                    Task task2 = (Task) ((TaskQueue) it.next()).e.get(0);
                    long max = Math.max(0L, task2.d - nanoTime);
                    if (max > 0) {
                        j = Math.min(max, j);
                    } else {
                        if (task != null) {
                            z = true;
                            break;
                        }
                        task = task2;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            ArrayList arrayList2 = this.e;
            if (task != null) {
                byte[] bArr2 = Util.a;
                task.d = -1L;
                TaskQueue taskQueue = task.c;
                taskQueue.getClass();
                taskQueue.e.remove(task);
                arrayList.remove(taskQueue);
                taskQueue.d = task;
                arrayList2.add(taskQueue);
                if (z || (!this.c && !arrayList.isEmpty())) {
                    TaskRunner$runnable$1 taskRunner$runnable$1 = this.g;
                    taskRunner$runnable$1.getClass();
                    this.a.a.execute(taskRunner$runnable$1);
                }
                return task;
            }
            if (this.c) {
                if (j < this.d - nanoTime) {
                    notify();
                }
            } else {
                this.c = true;
                this.d = nanoTime + j;
                try {
                    try {
                        long j2 = j / 1000000;
                        long j3 = j - (1000000 * j2);
                        if (j2 > 0 || j > 0) {
                            wait(j2, (int) j3);
                        }
                    } catch (InterruptedException unused) {
                        for (int size = arrayList2.size() - 1; -1 < size; size--) {
                            ((TaskQueue) arrayList2.get(size)).b();
                        }
                        for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                            TaskQueue taskQueue2 = (TaskQueue) arrayList.get(size2);
                            taskQueue2.b();
                            if (taskQueue2.e.isEmpty()) {
                                arrayList.remove(size2);
                            }
                        }
                    }
                } finally {
                    this.c = false;
                }
            }
        }
    }

    public final void d(TaskQueue taskQueue) {
        taskQueue.getClass();
        byte[] bArr = Util.a;
        if (taskQueue.d == null) {
            boolean isEmpty = taskQueue.e.isEmpty();
            ArrayList arrayList = this.f;
            if (!isEmpty) {
                arrayList.getClass();
                if (!arrayList.contains(taskQueue)) {
                    arrayList.add(taskQueue);
                }
            } else {
                arrayList.remove(taskQueue);
            }
        }
        if (this.c) {
            notify();
            return;
        }
        TaskRunner$runnable$1 taskRunner$runnable$1 = this.g;
        taskRunner$runnable$1.getClass();
        this.a.a.execute(taskRunner$runnable$1);
    }

    public final TaskQueue e() {
        int i2;
        synchronized (this) {
            i2 = this.b;
            this.b = i2 + 1;
        }
        return new TaskQueue(this, q.g(i2, "Q"));
    }
}
