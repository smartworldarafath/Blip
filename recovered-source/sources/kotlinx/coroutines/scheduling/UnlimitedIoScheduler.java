package kotlinx.coroutines.scheduling;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class UnlimitedIoScheduler extends CoroutineDispatcher {
    public static final UnlimitedIoScheduler l = new CoroutineDispatcher();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        DefaultScheduler.m.l.n(runnable, true, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void c1(CoroutineContext coroutineContext, Runnable runnable) {
        DefaultScheduler.m.l.n(runnable, true, true);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        if (i >= TasksKt.d) {
            return this;
        }
        return super.e1(i);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.IO";
    }
}
