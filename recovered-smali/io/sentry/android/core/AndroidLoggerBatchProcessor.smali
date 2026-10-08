.class public final Lio/sentry/android/core/AndroidLoggerBatchProcessor;
.super Lio/sentry/logger/LoggerBatchProcessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/AppState$AppStateListener;


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->q(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/sentry/logger/LoggerBatchProcessor;->b(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lio/sentry/android/core/AndroidLoggerBatchProcessor$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lio/sentry/android/core/AndroidLoggerBatchProcessor$1;-><init>(Lio/sentry/android/core/AndroidLoggerBatchProcessor;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v3, "Failed to submit log flush in onBackground()"

    .line 27
    .line 28
    invoke-interface {v0, v1, p0, v3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
