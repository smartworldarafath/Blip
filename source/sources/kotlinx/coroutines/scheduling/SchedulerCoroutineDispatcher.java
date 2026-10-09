package kotlinx.coroutines.scheduling;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SchedulerCoroutineDispatcher extends ExecutorCoroutineDispatcher {
    public CoroutineScheduler l;

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.q(this.l, runnable, 6);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void c1(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.q(this.l, runnable, 2);
    }
}
