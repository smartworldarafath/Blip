.class public final Lio/sentry/CombinedScopeView;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IScope;


# instance fields
.field public final a:Lio/sentry/IScope;

.field public final b:Lio/sentry/IScope;

.field public final c:Lio/sentry/IScope;


# direct methods
.method public constructor <init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A(Lio/sentry/SentryEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/sentry/IScope;->A(Lio/sentry/SentryEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final B()Lio/sentry/protocol/Contexts;
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/CombinedContextsView;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 10
    .line 11
    invoke-interface {v3}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {p0}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v1}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDefaultScopeType()Lio/sentry/ScopeType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v2, v3, p0, v1}, Lio/sentry/CombinedContextsView;-><init>(Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/ScopeType;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final C(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->C(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->D()Ljava/lang/String;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->D()Ljava/lang/String;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->D()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final E(Lio/sentry/Scope$IWithTransaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->E(Lio/sentry/Scope$IWithTransaction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final F(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/sentry/IScope;->F(Lio/sentry/protocol/SentryId;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lio/sentry/IScope;->F(Lio/sentry/protocol/SentryId;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lio/sentry/IScope;->F(Lio/sentry/protocol/SentryId;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final G(Lio/sentry/ITransaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->G(Lio/sentry/ITransaction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final H()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->H()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 15
    .line 16
    invoke-interface {v0}, Lio/sentry/IScope;->H()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 28
    .line 29
    invoke-interface {p0}, Lio/sentry/IScope;->H()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final I()Lio/sentry/protocol/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final J()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->y()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-static {p0}, Lio/sentry/util/EventProcessorUtils;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->K()Ljava/lang/String;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->K()Ljava/lang/String;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->K()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final L(Lio/sentry/PropagationContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->L(Lio/sentry/PropagationContext;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1, p2}, Lio/sentry/IScope;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()Lio/sentry/ISpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final c()Lio/sentry/protocol/FeatureFlags;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->p()Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->c()Lio/sentry/protocol/FeatureFlags;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/IScope;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final clone()Lio/sentry/IScope;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 10
    .line 11
    invoke-interface {v2}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1, v2}, Lio/sentry/CombinedScopeView;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->clone()Lio/sentry/IScope;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lio/sentry/protocol/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->d()Lio/sentry/protocol/Request;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->d()Lio/sentry/protocol/Request;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->d()Lio/sentry/protocol/Request;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final e(Lio/sentry/ScopeType;)Lio/sentry/IScope;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 7
    .line 8
    iget-object v5, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    sget-object v6, Lio/sentry/CombinedScopeView$1;->a:[I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    aget p1, v6, p1

    .line 19
    .line 20
    if-eq p1, v3, :cond_3

    .line 21
    .line 22
    if-eq p1, v2, :cond_2

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const/4 v6, 0x4

    .line 27
    if-eq p1, v6, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object p0

    .line 31
    :cond_1
    return-object v5

    .line 32
    :cond_2
    return-object v0

    .line 33
    :cond_3
    return-object v4

    .line 34
    :cond_4
    :goto_0
    sget-object p0, Lio/sentry/CombinedScopeView$1;->a:[I

    .line 35
    .line 36
    invoke-interface {v5}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDefaultScopeType()Lio/sentry/ScopeType;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    aget p0, p0, p1

    .line 49
    .line 50
    if-eq p0, v3, :cond_7

    .line 51
    .line 52
    if-eq p0, v2, :cond_6

    .line 53
    .line 54
    if-eq p0, v1, :cond_5

    .line 55
    .line 56
    return-object v4

    .line 57
    :cond_5
    return-object v5

    .line 58
    :cond_6
    return-object v0

    .line 59
    :cond_7
    return-object v4
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v1}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {v1}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final h()Lio/sentry/protocol/SentryId;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->h()Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 17
    .line 18
    invoke-interface {v0}, Lio/sentry/IScope;->h()Lio/sentry/protocol/SentryId;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 30
    .line 31
    invoke-interface {p0}, Lio/sentry/IScope;->h()Lio/sentry/protocol/SentryId;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final i(Lio/sentry/protocol/SentryId;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->i(Lio/sentry/protocol/SentryId;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k()Lio/sentry/ITransaction;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->k()Lio/sentry/ITransaction;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->k()Lio/sentry/ITransaction;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->k()Lio/sentry/ITransaction;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final l()Lio/sentry/Session;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/IScope;->l()Lio/sentry/Session;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final m()Lio/sentry/Scope$SessionPair;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/IScope;->m()Lio/sentry/Scope$SessionPair;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final n(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->n(Lio/sentry/SentryLevel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/IScope;->o()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 8
    .line 9
    invoke-interface {v1}, Lio/sentry/IScope;->p()Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 14
    .line 15
    invoke-interface {v2}, Lio/sentry/IScope;->p()Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->p()Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v3, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxFeatureFlags()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    goto :goto_9

    .line 34
    :cond_0
    instance-of v4, v1, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    check-cast v1, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, v5

    .line 43
    :goto_0
    instance-of v4, v2, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    check-cast v2, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v2, v5

    .line 51
    :goto_1
    instance-of v4, p0, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    check-cast p0, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object p0, v5

    .line 59
    :goto_2
    if-nez v1, :cond_4

    .line 60
    .line 61
    move-object v1, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    iget-object v1, v1, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    .line 65
    :goto_3
    if-nez v2, :cond_5

    .line 66
    .line 67
    move-object v2, v5

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    iget-object v2, v2, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    :goto_4
    if-nez p0, :cond_6

    .line 72
    .line 73
    move-object p0, v5

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    iget-object p0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    :goto_5
    const/4 v4, 0x0

    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    move v6, v4

    .line 81
    goto :goto_6

    .line 82
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    :goto_6
    if-nez v2, :cond_8

    .line 87
    .line 88
    move v7, v4

    .line 89
    goto :goto_7

    .line 90
    :cond_8
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    :goto_7
    if-nez p0, :cond_9

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    :goto_8
    if-nez v6, :cond_a

    .line 102
    .line 103
    if-nez v7, :cond_a

    .line 104
    .line 105
    if-nez v4, :cond_a

    .line 106
    .line 107
    :goto_9
    return-object v3

    .line 108
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 109
    .line 110
    add-int/lit8 v7, v7, -0x1

    .line 111
    .line 112
    add-int/lit8 v4, v4, -0x1

    .line 113
    .line 114
    if-eqz v1, :cond_d

    .line 115
    .line 116
    if-gez v6, :cond_b

    .line 117
    .line 118
    goto :goto_a

    .line 119
    :cond_b
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_c

    .line 124
    .line 125
    goto :goto_a

    .line 126
    :cond_c
    invoke-static {}, Lio/sentry/d;->i()V

    .line 127
    .line 128
    .line 129
    return-object v5

    .line 130
    :cond_d
    :goto_a
    if-eqz v2, :cond_10

    .line 131
    .line 132
    if-gez v7, :cond_e

    .line 133
    .line 134
    goto :goto_b

    .line 135
    :cond_e
    invoke-virtual {v2, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_f

    .line 140
    .line 141
    goto :goto_b

    .line 142
    :cond_f
    invoke-static {}, Lio/sentry/d;->i()V

    .line 143
    .line 144
    .line 145
    return-object v5

    .line 146
    :cond_10
    :goto_b
    if-eqz p0, :cond_13

    .line 147
    .line 148
    if-gez v4, :cond_11

    .line 149
    .line 150
    goto :goto_c

    .line 151
    :cond_11
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-nez p0, :cond_12

    .line 156
    .line 157
    goto :goto_c

    .line 158
    :cond_12
    invoke-static {}, Lio/sentry/d;->i()V

    .line 159
    .line 160
    .line 161
    return-object v5

    .line 162
    :cond_13
    :goto_c
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 163
    .line 164
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 168
    .line 169
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 183
    .line 184
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    .line 199
    return-object p0
.end method

.method public final q()Lio/sentry/Session;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->q()Lio/sentry/Session;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->q()Lio/sentry/Session;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->q()Lio/sentry/Session;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final r()Ljava/util/Queue;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v1}, Lio/sentry/IScope;->r()Ljava/util/Queue;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {v1}, Lio/sentry/IScope;->r()Ljava/util/Queue;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/sentry/IScope;->r()Ljava/util/Queue;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Lio/sentry/Scope;->e(I)Ljava/util/Queue;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final s()Lio/sentry/SentryLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->s()Lio/sentry/SentryLevel;

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
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/sentry/IScope;->s()Lio/sentry/SentryLevel;

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
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/sentry/IScope;->s()Lio/sentry/SentryLevel;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final t()Lio/sentry/PropagationContext;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Lio/sentry/IScope;->t()Lio/sentry/PropagationContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final u(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->u(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0, p1}, Lio/sentry/IScope;->v(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final w()Lio/sentry/ISentryClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lio/sentry/NoOpSentryClient;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Lio/sentry/NoOpSentryClient;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 24
    .line 25
    invoke-interface {p0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final x()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v1}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {v1}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final y()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v1}, Lio/sentry/IScope;->y()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {v1}, Lio/sentry/IScope;->y()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/sentry/IScope;->y()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 7
    .line 8
    invoke-interface {v1}, Lio/sentry/IScope;->z()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->b:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-interface {v1}, Lio/sentry/IScope;->z()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->c:Lio/sentry/IScope;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/sentry/IScope;->z()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
