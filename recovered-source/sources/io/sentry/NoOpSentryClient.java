package io.sentry;

import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpSentryClient implements ISentryClient {
    public static final NoOpSentryClient a = new Object();

    @Override // io.sentry.ISentryClient
    public final RateLimiter d() {
        return null;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId e(SentryReplayEvent sentryReplayEvent, IScope iScope, Hint hint) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId h(ProfileChunk profileChunk) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId i(SentryTransaction sentryTransaction, TraceContext traceContext, IScope iScope, Hint hint, ProfilingTraceData profilingTraceData) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId j(Feedback feedback, IScope iScope) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId k(SentryEvent sentryEvent, IScope iScope, Hint hint) {
        return SentryId.k;
    }

    @Override // io.sentry.ISentryClient
    public final void b(boolean z) {
    }

    @Override // io.sentry.ISentryClient
    public final void c(long j) {
    }

    @Override // io.sentry.ISentryClient
    public final void a(Session session, Hint hint) {
    }
}
