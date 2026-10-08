.class final Lio/sentry/transport/QueuedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;
    }
.end annotation


# instance fields
.field public final j:I

.field public k:Lio/sentry/SentryDate;

.field public final l:Lio/sentry/ILogger;

.field public final m:Lio/sentry/SentryDateProvider;

.field public final n:Lio/sentry/transport/ReusableCountLatch;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Lio/sentry/transport/a;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V
    .locals 9

    .line 1
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    move v2, v1

    .line 12
    move-object v0, p0

    .line 13
    move-object v7, p2

    .line 14
    move-object v8, p3

    .line 15
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    iput-object p0, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->k:Lio/sentry/SentryDate;

    .line 20
    .line 21
    new-instance p0, Lio/sentry/transport/ReusableCountLatch;

    .line 22
    .line 23
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p0, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->n:Lio/sentry/transport/ReusableCountLatch;

    .line 27
    .line 28
    iput p1, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->j:I

    .line 29
    .line 30
    iput-object p4, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->l:Lio/sentry/ILogger;

    .line 31
    .line 32
    iput-object p5, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->m:Lio/sentry/SentryDateProvider;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->n:Lio/sentry/transport/ReusableCountLatch;

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->a()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->a()V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public final synthetic close()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    invoke-virtual {p0, v3, v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->n:Lio/sentry/transport/ReusableCountLatch;

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 4
    .line 5
    invoke-static {v1}, Lio/sentry/transport/ReusableCountLatch$Sync;->a(Lio/sentry/transport/ReusableCountLatch$Sync;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->j:I

    .line 10
    .line 11
    iget-object v3, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->l:Lio/sentry/ILogger;

    .line 12
    .line 13
    iget-object v4, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->m:Lio/sentry/SentryDateProvider;

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 18
    .line 19
    invoke-static {v1}, Lio/sentry/transport/ReusableCountLatch$Sync;->b(Lio/sentry/transport/ReusableCountLatch$Sync;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->a()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->k:Lio/sentry/SentryDate;

    .line 36
    .line 37
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 38
    .line 39
    const-string v0, "Submit rejected by thread pool executor"

    .line 40
    .line 41
    invoke-interface {v3, p0, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    invoke-interface {v4}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->k:Lio/sentry/SentryDate;

    .line 55
    .line 56
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v0, "Submit cancelled"

    .line 62
    .line 63
    invoke-interface {v3, p0, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method
