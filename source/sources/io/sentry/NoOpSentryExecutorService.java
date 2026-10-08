package io.sentry;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpSentryExecutorService implements ISentryExecutorService {
    public static final NoOpSentryExecutorService a = new Object();

    @Override // io.sentry.ISentryExecutorService
    public final Future c(long j, Runnable runnable) {
        return new FutureTask(new b(1));
    }

    @Override // io.sentry.ISentryExecutorService
    public final boolean isClosed() {
        return false;
    }

    @Override // io.sentry.ISentryExecutorService
    public final Future submit(Runnable runnable) {
        return new FutureTask(new b(1));
    }

    @Override // io.sentry.ISentryExecutorService
    public final void b() {
    }

    @Override // io.sentry.ISentryExecutorService
    public final void a(long j) {
    }
}
