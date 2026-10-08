package io.sentry;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpTransactionProfiler implements ITransactionProfiler {
    public static final NoOpTransactionProfiler a = new Object();

    @Override // io.sentry.ITransactionProfiler
    public final ProfilingTraceData b(SentryTracer sentryTracer, List list, SentryOptions sentryOptions) {
        return null;
    }

    @Override // io.sentry.ITransactionProfiler
    public final boolean isRunning() {
        return false;
    }

    @Override // io.sentry.ITransactionProfiler
    public final void close() {
    }

    @Override // io.sentry.ITransactionProfiler
    public final void start() {
    }

    @Override // io.sentry.ITransactionProfiler
    public final void a(ITransaction iTransaction) {
    }
}
