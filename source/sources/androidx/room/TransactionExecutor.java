package androidx.room;

import defpackage.f3;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransactionExecutor implements Executor {
    public final Executor j;
    public final ArrayDeque k;
    public Runnable l;
    public final Object m;

    public TransactionExecutor(Executor executor) {
        executor.getClass();
        this.j = executor;
        this.k = new ArrayDeque();
        this.m = new Object();
    }

    public final void b() {
        synchronized (this.m) {
            Object poll = this.k.poll();
            Runnable runnable = (Runnable) poll;
            this.l = runnable;
            if (poll != null) {
                this.j.execute(runnable);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.m) {
            this.k.offer(new f3(21, runnable, this));
            if (this.l == null) {
                b();
            }
        }
    }
}
