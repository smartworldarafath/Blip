package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CancelFutureOnCancel implements CancelHandler {
    public final ScheduledFuture j;

    public CancelFutureOnCancel(ScheduledFuture scheduledFuture) {
        this.j = scheduledFuture;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void b(Throwable th) {
        this.j.cancel(false);
    }

    public final String toString() {
        return "CancelFutureOnCancel[" + this.j + ']';
    }
}
