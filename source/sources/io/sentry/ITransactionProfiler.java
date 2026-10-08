package io.sentry;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ITransactionProfiler {
    void a(ITransaction iTransaction);

    ProfilingTraceData b(SentryTracer sentryTracer, List list, SentryOptions sentryOptions);

    void close();

    boolean isRunning();

    void start();
}
