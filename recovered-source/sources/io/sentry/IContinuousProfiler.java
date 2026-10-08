package io.sentry;

import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IContinuousProfiler {
    void b(boolean z);

    void c(ProfileLifecycle profileLifecycle);

    void d(ProfileLifecycle profileLifecycle, TracesSampler tracesSampler);

    void e();

    SentryId f();
}
