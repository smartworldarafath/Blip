.class public final Lio/sentry/HubScopesWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IHub;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lio/sentry/Scopes;


# direct methods
.method public constructor <init>(Lio/sentry/Scopes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->c(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clone()Lio/sentry/IHub;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->clone()Lio/sentry/IHub;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    invoke-virtual {p0}, Lio/sentry/Scopes;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->d()Lio/sentry/transport/RateLimiter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->f()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final j()Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k()Lio/sentry/ITransaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->k()Lio/sentry/ITransaction;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final l()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final o(Lio/sentry/ScopeCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->o(Lio/sentry/ScopeCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/Scopes;->p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final s()Lio/sentry/IScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Scopes;->a:Lio/sentry/IScope;

    .line 4
    .line 5
    return-object p0
.end method

.method public final t()Lio/sentry/IFeedbackApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Scopes;->f:Lio/sentry/IFeedbackApi;

    .line 4
    .line 5
    return-object p0
.end method

.method public final u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/Scopes;->u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 0

    .line 1
    const-string p1, "getCurrentScopes"

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->v(Ljava/lang/String;)Lio/sentry/IScopes;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/HubScopesWrapper;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Scopes;->x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
