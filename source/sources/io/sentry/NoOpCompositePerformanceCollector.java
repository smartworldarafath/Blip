package io.sentry;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpCompositePerformanceCollector implements CompositePerformanceCollector {
    public static final NoOpCompositePerformanceCollector a = new Object();

    @Override // io.sentry.CompositePerformanceCollector
    public final List c(String str) {
        return null;
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final List f(ITransaction iTransaction) {
        return null;
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void close() {
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void a(String str) {
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void b(Span span) {
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void d(Span span) {
    }

    @Override // io.sentry.CompositePerformanceCollector
    public final void e(SentryTracer sentryTracer) {
    }
}
