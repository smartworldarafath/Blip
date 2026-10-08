package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SerialExecutorImpl implements Executor {
    public final Executor k;
    public Runnable l;
    public final ArrayDeque j = new ArrayDeque();
    public final Object m = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Task implements Runnable {
        public final SerialExecutorImpl j;
        public final Runnable k;

        public Task(SerialExecutorImpl serialExecutorImpl, Runnable runnable) {
            this.j = serialExecutorImpl;
            this.k = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.k.run();
                synchronized (this.j.m) {
                    this.j.b();
                }
            } catch (Throwable th) {
                synchronized (this.j.m) {
                    this.j.b();
                    throw th;
                }
            }
        }
    }

    public SerialExecutorImpl(Executor executor) {
        this.k = executor;
    }

    public final void b() {
        Runnable runnable = (Runnable) this.j.poll();
        this.l = runnable;
        if (runnable != null) {
            this.k.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.m) {
            try {
                this.j.add(new Task(this, runnable));
                if (this.l == null) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
