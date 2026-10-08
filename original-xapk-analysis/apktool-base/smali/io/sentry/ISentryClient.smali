.class public interface abstract Lio/sentry/ISentryClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public abstract a(Lio/sentry/Session;Lio/sentry/Hint;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(J)V
.end method

.method public abstract d()Lio/sentry/transport/RateLimiter;
.end method

.method public abstract e(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract i(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract j(Lio/sentry/protocol/Feedback;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract k(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method
