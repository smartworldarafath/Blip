.class public final Lio/sentry/android/replay/util/ReplayExecutorService;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final j:Ljava/util/concurrent/ScheduledExecutorService;

.field public final k:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lio/sentry/SentryOptions;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    iput-object p2, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->k:Lio/sentry/SentryOptions;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final close()V
    .locals 6

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
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdown()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 21
    .line 22
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const-wide/16 v4, 0x1

    .line 25
    .line 26
    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdownNow()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isShutdown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isTerminated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final shutdown()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->k:Lio/sentry/SentryOptions;

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iget-object v3, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    invoke-interface {v3, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdownNow()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit p0

    .line 51
    throw v0
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "SentryReplayIntegration"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    new-instance v2, Lio/sentry/android/core/anr/a;

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    invoke-direct {v2, v3, p1, p0}, Lio/sentry/android/core/anr/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->k:Lio/sentry/SentryOptions;

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "Failed to submit task "

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    instance-of v4, p1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    check-cast p1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 63
    .line 64
    iget-object p1, p1, Lio/sentry/android/replay/util/ReplayRunnable;->j:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string p1, ""

    .line 68
    .line 69
    :goto_0
    const-string v4, " to executor"

    .line 70
    .line 71
    invoke-static {v3, p1, v4}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p0, v2, p1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 80
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 79
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
