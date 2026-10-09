package io.sentry;

import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpContinuousProfiler implements IContinuousProfiler {
    public static final NoOpContinuousProfiler j = new Object();

    @Override // io.sentry.IContinuousProfiler
    public final SentryId f() {
        return SentryId.k;
    }

    @Override // io.sentry.IContinuousProfiler
    public final void e() {
    }

    @Override // io.sentry.IContinuousProfiler
    public final void b(boolean z) {
    }

    @Override // io.sentry.IContinuousProfiler
    public final void c(ProfileLifecycle profileLifecycle) {
    }

    @Override // io.sentry.IContinuousProfiler
    public final void d(ProfileLifecycle profileLifecycle, TracesSampler tracesSampler) {
    }
}
