package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultScheduler extends SchedulerCoroutineDispatcher {
    public static final DefaultScheduler m;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, kotlinx.coroutines.scheduling.DefaultScheduler, kotlinx.coroutines.CoroutineDispatcher] */
    static {
        int i = TasksKt.c;
        int i2 = TasksKt.d;
        long j = TasksKt.e;
        String str = TasksKt.a;
        ?? coroutineDispatcher = new CoroutineDispatcher();
        coroutineDispatcher.l = new CoroutineScheduler(i, i2, j, str);
        m = coroutineDispatcher;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        if (i >= TasksKt.c) {
            return this;
        }
        return super.e1(i);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.Default";
    }
}
