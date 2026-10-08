.class public final Lio/sentry/featureflags/FeatureFlagBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/featureflags/IFeatureFlagBuffer;


# instance fields
.field public volatile a:Ljava/util/concurrent/CopyOnWriteArrayList;


# virtual methods
.method public final c()Lio/sentry/protocol/FeatureFlags;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance p0, Lio/sentry/protocol/FeatureFlags;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lio/sentry/protocol/FeatureFlags;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lio/sentry/d;->i()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final clone()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/featureflags/FeatureFlagBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lio/sentry/featureflags/FeatureFlagBuffer;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lio/sentry/featureflags/FeatureFlagBuffer;->clone()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object p0

    return-object p0
.end method
