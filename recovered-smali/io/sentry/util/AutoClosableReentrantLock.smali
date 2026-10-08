.class public final Lio/sentry/util/AutoClosableReentrantLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/AutoClosableReentrantLock$AutoClosableReentrantLockLifecycleToken;
    }
.end annotation


# virtual methods
.method public final a()Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock$AutoClosableReentrantLockLifecycleToken;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/sentry/util/AutoClosableReentrantLock$AutoClosableReentrantLockLifecycleToken;-><init>(Lio/sentry/util/AutoClosableReentrantLock;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
