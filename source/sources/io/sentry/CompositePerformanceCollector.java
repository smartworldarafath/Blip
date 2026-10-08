package io.sentry;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CompositePerformanceCollector {
    void a(String str);

    void b(Span span);

    List c(String str);

    void close();

    void d(Span span);

    void e(SentryTracer sentryTracer);

    List f(ITransaction iTransaction);
}
