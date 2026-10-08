.class public final Lio/sentry/NoOpHub;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IHub;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:Lio/sentry/NoOpHub;


# instance fields
.field public final a:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpHub;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/NoOpHub;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpHub;->b:Lio/sentry/NoOpHub;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/sentry/NoOpHub;->a:Lio/sentry/SentryOptions;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final clone()Lio/sentry/IHub;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpHub;->b:Lio/sentry/NoOpHub;

    .line 2
    .line 3
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 4
    sget-object p0, Lio/sentry/NoOpHub;->b:Lio/sentry/NoOpHub;

    return-object p0
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j()Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/NoOpHub;->a:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()Lio/sentry/ITransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final l()V
    .locals 0

    .line 1
    return-void
.end method

.method public final m()V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpTransaction;->a:Lio/sentry/NoOpTransaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(Lio/sentry/ScopeCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Lio/sentry/IScope;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpScope;->b:Lio/sentry/NoOpScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public final t()Lio/sentry/IFeedbackApi;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpFeedbackApi;->a:Lio/sentry/NoOpFeedbackApi;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 2
    .line 3
    return-object p0
.end method

.method public final w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method
