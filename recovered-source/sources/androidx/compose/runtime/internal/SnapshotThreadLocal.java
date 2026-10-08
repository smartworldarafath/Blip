package androidx.compose.runtime.internal;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapshotThreadLocal<T> {
    public final AtomicReference a = new AtomicReference(SnapshotThreadLocalKt.a);
    public final Object b = new Object();
    public Object c;

    public final Object a() {
        long a = Thread_jvmKt.a();
        if (a == Thread_androidKt.a) {
            return this.c;
        }
        ThreadMap threadMap = (ThreadMap) this.a.get();
        int a2 = threadMap.a(a);
        if (a2 >= 0) {
            return threadMap.c[a2];
        }
        return null;
    }

    public final void b(Object obj) {
        long a = Thread_jvmKt.a();
        if (a == Thread_androidKt.a) {
            this.c = obj;
            return;
        }
        synchronized (this.b) {
            ThreadMap threadMap = (ThreadMap) this.a.get();
            int a2 = threadMap.a(a);
            if (a2 < 0) {
                this.a.set(threadMap.b(a, obj));
            } else {
                threadMap.c[a2] = obj;
            }
        }
    }
}
