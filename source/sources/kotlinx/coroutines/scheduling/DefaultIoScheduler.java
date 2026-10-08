package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.internal.SystemPropsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultIoScheduler extends ExecutorCoroutineDispatcher implements Executor {
    public static final DefaultIoScheduler l = new CoroutineDispatcher();
    public static final CoroutineDispatcher m;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.scheduling.DefaultIoScheduler, kotlinx.coroutines.CoroutineDispatcher] */
    static {
        UnlimitedIoScheduler unlimitedIoScheduler = UnlimitedIoScheduler.l;
        int a = SystemPropsKt.a();
        if (64 >= a) {
            a = 64;
        }
        m = unlimitedIoScheduler.e1(SystemPropsKt.d("kotlinx.coroutines.io.parallelism", a, 12));
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        m.b1(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void c1(CoroutineContext coroutineContext, Runnable runnable) {
        m.c1(coroutineContext, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        return UnlimitedIoScheduler.l.e1(i);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b1(EmptyCoroutineContext.j, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.IO";
    }
}
