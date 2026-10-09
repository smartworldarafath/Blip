.class public interface abstract Lio/sentry/IScopes;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public abstract a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(J)V
.end method

.method public abstract clone()Lio/sentry/IHub;
.end method

.method public abstract d()Lio/sentry/transport/RateLimiter;
.end method

.method public abstract f()Z
.end method

.method public abstract g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
.end method

.method public i(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/sentry/IScopes;->w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract j()Lio/sentry/SentryOptions;
.end method

.method public abstract k()Lio/sentry/ITransaction;
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
.end method

.method public abstract o(Lio/sentry/ScopeCallback;)V
.end method

.method public abstract p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;
.end method

.method public q()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract s()Lio/sentry/IScope;
.end method

.method public abstract t()Lio/sentry/IFeedbackApi;
.end method

.method public abstract u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract v(Ljava/lang/String;)Lio/sentry/IScopes;
.end method

.method public abstract w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method
