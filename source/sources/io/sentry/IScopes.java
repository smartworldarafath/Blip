package io.sentry;

import defpackage.p;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.RateLimiter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IScopes {
    void a(Breadcrumb breadcrumb, Hint hint);

    void b(boolean z);

    void c(long j);

    IHub clone();

    RateLimiter d();

    boolean f();

    SentryId g(SentryEnvelope sentryEnvelope, Hint hint);

    SentryId h(ProfileChunk profileChunk);

    default SentryId i(Feedback feedback) {
        return w(feedback);
    }

    boolean isEnabled();

    SentryOptions j();

    ITransaction k();

    void l();

    void m();

    ITransaction n(TransactionContext transactionContext, TransactionOptions transactionOptions);

    void o(ScopeCallback scopeCallback);

    SentryId p(String str, SentryLevel sentryLevel, p pVar);

    default boolean q() {
        return false;
    }

    SentryId r(SentryReplayEvent sentryReplayEvent, Hint hint);

    IScope s();

    IFeedbackApi t();

    SentryId u(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData);

    IScopes v(String str);

    SentryId w(Feedback feedback);

    SentryId x(SentryEvent sentryEvent, Hint hint);
}
