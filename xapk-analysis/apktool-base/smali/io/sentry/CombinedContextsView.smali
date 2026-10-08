.class public final Lio/sentry/CombinedContextsView;
.super Lio/sentry/protocol/Contexts;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final l:Lio/sentry/protocol/Contexts;

.field public final m:Lio/sentry/protocol/Contexts;

.field public final n:Lio/sentry/protocol/Contexts;

.field public final o:Lio/sentry/ScopeType;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/ScopeType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 9
    .line 10
    iput-object p4, p0, Lio/sentry/CombinedContextsView;->o:Lio/sentry/ScopeType;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->y()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final d()Lio/sentry/protocol/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final e()Lio/sentry/protocol/Device;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->e()Lio/sentry/protocol/Device;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->e()Lio/sentry/protocol/Device;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->e()Lio/sentry/protocol/Device;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final f()Lio/sentry/protocol/FeatureFlags;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->f()Lio/sentry/protocol/FeatureFlags;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->f()Lio/sentry/protocol/FeatureFlags;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->f()Lio/sentry/protocol/FeatureFlags;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final g()Lio/sentry/protocol/OperatingSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->g()Lio/sentry/protocol/OperatingSystem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->g()Lio/sentry/protocol/OperatingSystem;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->g()Lio/sentry/protocol/OperatingSystem;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final h()Lio/sentry/protocol/SentryRuntime;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->h()Lio/sentry/protocol/SentryRuntime;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->h()Lio/sentry/protocol/SentryRuntime;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->h()Lio/sentry/protocol/SentryRuntime;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final i()Lio/sentry/SpanContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final j()Ljava/util/Enumeration;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->y()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final l(Lio/sentry/protocol/Contexts;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(Lio/sentry/protocol/App;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(Lio/sentry/protocol/Browser;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->n(Lio/sentry/protocol/Browser;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(Lio/sentry/protocol/Device;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->o(Lio/sentry/protocol/Device;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p(Lio/sentry/protocol/FeatureFlags;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(Lio/sentry/protocol/Gpu;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->q(Lio/sentry/protocol/Gpu;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r(Lio/sentry/protocol/OperatingSystem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->r(Lio/sentry/protocol/OperatingSystem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s(Lio/sentry/protocol/Response;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->s(Lio/sentry/protocol/Response;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->y()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t(Lio/sentry/protocol/SentryRuntime;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->t(Lio/sentry/protocol/SentryRuntime;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u(Lio/sentry/protocol/Spring;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->u(Lio/sentry/protocol/Spring;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v(Lio/sentry/SpanContext;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedContextsView;->x()Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x()Lio/sentry/protocol/Contexts;
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/CombinedContextsView$1;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->o:Lio/sentry/ScopeType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_0
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    return-object v2
.end method

.method public final y()Lio/sentry/protocol/Contexts;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->l:Lio/sentry/protocol/Contexts;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->l(Lio/sentry/protocol/Contexts;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/CombinedContextsView;->m:Lio/sentry/protocol/Contexts;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->l(Lio/sentry/protocol/Contexts;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lio/sentry/CombinedContextsView;->n:Lio/sentry/protocol/Contexts;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lio/sentry/protocol/Contexts;->l(Lio/sentry/protocol/Contexts;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
