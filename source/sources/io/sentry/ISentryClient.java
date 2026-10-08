package io.sentry;

import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ISentryClient {
    void a(Session session, Hint hint);

    void b(boolean z);

    void c(long j);

    RateLimiter d();

    SentryId e(SentryReplayEvent sentryReplayEvent, IScope iScope, Hint hint);

    default boolean f() {
        return true;
    }

    SentryId g(SentryEnvelope sentryEnvelope, Hint hint);

    SentryId h(ProfileChunk profileChunk);

    SentryId i(SentryTransaction sentryTransaction, TraceContext traceContext, IScope iScope, Hint hint, ProfilingTraceData profilingTraceData);

    boolean isEnabled();

    SentryId j(Feedback feedback, IScope iScope);

    SentryId k(SentryEvent sentryEvent, IScope iScope, Hint hint);
}
