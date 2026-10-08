.class public abstract Lio/sentry/android/core/EnvelopeFileObserverIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;
    }
.end annotation


# instance fields
.field public j:Lio/sentry/android/core/EnvelopeFileObserver;

.field public k:Lio/sentry/ILogger;

.field public l:Z

.field public final m:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->l:Z

    .line 6
    .line 7
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->k:Lio/sentry/ILogger;

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->k:Lio/sentry/ILogger;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v0, "Null given as a path to EnvelopeFileObserverIntegration. Nothing will be registered."

    .line 21
    .line 22
    invoke-interface {v1, p0, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v3, "Registering EnvelopeFileObserverIntegration for path: %s"

    .line 29
    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lio/sentry/android/core/m;

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    invoke-direct {v2, p0, p1, v0, v3}, Lio/sentry/android/core/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->k:Lio/sentry/ILogger;

    .line 53
    .line 54
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 55
    .line 56
    const-string v1, "Failed to start EnvelopeFileObserverIntegration on executor thread."

    .line 57
    .line 58
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final a(Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Lio/sentry/OutboxSender;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    sget-object v1, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lio/sentry/OutboxSender;-><init>(Lio/sentry/IScopes;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lio/sentry/android/core/EnvelopeFileObserver;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    move-object v2, v0

    .line 39
    move-object v0, v1

    .line 40
    move-object v1, p2

    .line 41
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/EnvelopeFileObserver;-><init>(Ljava/lang/String;Lio/sentry/OutboxSender;Lio/sentry/ILogger;J)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->j:Lio/sentry/android/core/EnvelopeFileObserver;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    const-string v0, "EnvelopeFileObserverIntegration installed."

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "EnvelopeFileObserver"

    .line 64
    .line 65
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 76
    .line 77
    const-string v0, "Failed to initialize EnvelopeFileObserverIntegration."

    .line 78
    .line 79
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->j:Lio/sentry/android/core/EnvelopeFileObserver;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->k:Lio/sentry/ILogger;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "EnvelopeFileObserverIntegration removed."

    .line 30
    .line 31
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    throw p0
.end method
