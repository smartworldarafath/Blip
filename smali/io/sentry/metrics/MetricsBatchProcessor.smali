.class public Lio/sentry/metrics/MetricsBatchProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;
    }
.end annotation


# instance fields
.field public final j:Lio/sentry/SentryOptions;

.field public final k:Lio/sentry/SentryClient;

.field public final l:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final m:Lio/sentry/SentryExecutorService;

.field public final n:Lio/sentry/util/AutoClosableReentrantLock;

.field public final o:Lio/sentry/transport/ReusableCountLatch;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 10
    .line 11
    new-instance v0, Lio/sentry/transport/ReusableCountLatch;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->o:Lio/sentry/transport/ReusableCountLatch;

    .line 17
    .line 18
    iput-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 19
    .line 20
    iput-object p2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->k:Lio/sentry/SentryClient;

    .line 21
    .line 22
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    .line 29
    new-instance p2, Lio/sentry/SentryExecutorService;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->m:Lio/sentry/SentryExecutorService;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->m:Lio/sentry/SentryExecutorService;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lio/sentry/metrics/MetricsBatchProcessor;->e(Z)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Le;

    .line 10
    .line 11
    const/16 v1, 0x19

    .line 12
    .line 13
    invoke-direct {p1, v1, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lio/sentry/SentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryExecutorService;->a(J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/sentry/metrics/MetricsBatchProcessor;->d()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final c(J)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/metrics/MetricsBatchProcessor;->e(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->o:Lio/sentry/transport/ReusableCountLatch;

    .line 6
    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    iget-object v1, v1, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 10
    .line 11
    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-virtual {v1, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireSharedNanos(IJ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    iget-object p0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 21
    .line 22
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v0, "Failed to flush metrics events"

    .line 29
    .line 30
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lio/sentry/SentryMetricsEvent;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-lt v2, v1, :cond_0

    .line 32
    .line 33
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    new-instance v1, Lio/sentry/SentryMetricsEvents;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Lio/sentry/SentryMetricsEvents;-><init>(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->k:Lio/sentry/SentryClient;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v2, v1}, Lio/sentry/SentryClient;->o(Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelope;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v2, v1, v4}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    iget-object v2, v2, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 61
    .line 62
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 67
    .line 68
    const-string v5, "Capturing metrics failed."

    .line 69
    .line 70
    new-array v6, v3, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {v2, v4, v1, v5, v6}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ge v3, v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->o:Lio/sentry/transport/ReusableCountLatch;

    .line 82
    .line 83
    invoke-virtual {v1}, Lio/sentry/transport/ReusableCountLatch;->a()V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-void
.end method

.method public final e(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x1388

    .line 12
    .line 13
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->m:Lio/sentry/SentryExecutorService;

    .line 14
    .line 15
    new-instance v2, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;-><init>(Lio/sentry/metrics/MetricsBatchProcessor;)V

    .line 18
    .line 19
    .line 20
    int-to-long v3, p1

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Lio/sentry/SentryExecutorService;->c(JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    iget-object p0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 35
    .line 36
    const-string v2, "Metrics batch processor flush task rejected"

    .line 37
    .line 38
    invoke-interface {p0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_3
    throw p0
.end method
