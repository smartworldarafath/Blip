package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DisposableFutureHandle implements DisposableHandle {
    public final ScheduledFuture j;

    public DisposableFutureHandle(ScheduledFuture scheduledFuture) {
        this.j = scheduledFuture;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void a() {
        this.j.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.j + ']';
    }
}
