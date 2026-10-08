package okhttp3.internal.concurrent;

import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TaskQueue {
    public final TaskRunner a;
    public final String b;
    public boolean c;
    public Task d;
    public final ArrayList e = new ArrayList();
    public boolean f;

    public TaskQueue(TaskRunner taskRunner, String str) {
        this.a = taskRunner;
        this.b = str;
    }

    public final void a() {
        byte[] bArr = Util.a;
        synchronized (this.a) {
            if (b()) {
                this.a.d(this);
            }
        }
    }

    public final boolean b() {
        Task task = this.d;
        if (task != null && task.b) {
            this.f = true;
        }
        ArrayList arrayList = this.e;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).b) {
                Task task2 = (Task) arrayList.get(size);
                if (TaskRunner.i.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void c(Task task, long j) {
        task.getClass();
        synchronized (this.a) {
            if (this.c) {
                if (task.b) {
                    if (TaskRunner.i.isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                } else {
                    if (TaskRunner.i.isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(task, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                }
            }
            if (d(task, j, false)) {
                this.a.d(this);
            }
        }
    }

    public final boolean d(Task task, long j, boolean z) {
        String concat;
        task.getClass();
        TaskQueue taskQueue = task.c;
        if (taskQueue != this) {
            if (taskQueue == null) {
                task.c = this;
            } else {
                u2.l("task is in multiple queues");
                return false;
            }
        }
        long nanoTime = System.nanoTime();
        long j2 = nanoTime + j;
        ArrayList arrayList = this.e;
        int indexOf = arrayList.indexOf(task);
        if (indexOf != -1) {
            if (task.d <= j2) {
                if (TaskRunner.i.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "already scheduled");
                    return false;
                }
                return false;
            }
            arrayList.remove(indexOf);
        }
        task.d = j2;
        if (TaskRunner.i.isLoggable(Level.FINE)) {
            if (z) {
                concat = "run again after ".concat(TaskLoggerKt.b(j2 - nanoTime));
            } else {
                concat = "scheduled after ".concat(TaskLoggerKt.b(j2 - nanoTime));
            }
            TaskLoggerKt.a(task, this, concat);
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (((Task) it.next()).d - nanoTime > j) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, task);
        if (i != 0) {
            return false;
        }
        return true;
    }

    public final void e() {
        byte[] bArr = Util.a;
        synchronized (this.a) {
            this.c = true;
            if (b()) {
                this.a.d(this);
            }
        }
    }

    public final String toString() {
        return this.b;
    }
}
