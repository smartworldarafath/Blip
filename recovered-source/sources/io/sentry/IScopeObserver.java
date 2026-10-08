package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import java.util.Collection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IScopeObserver {
    void a(Collection collection);

    void b();

    void c(SpanContext spanContext, Scope scope);

    void d(Contexts contexts);

    void e(String str);

    void f(Breadcrumb breadcrumb);

    void i(SentryId sentryId);

    void n(SentryLevel sentryLevel);
}
