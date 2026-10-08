.class public final Lio/sentry/android/replay/capture/BufferCaptureStrategy;
.super Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequiresApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public final r:Lio/sentry/SentryOptions;

.field public final s:Lio/sentry/IScopes;

.field public final t:Lio/sentry/transport/ICurrentDateProvider;

.field public final u:Lio/sentry/util/Random;

.field public final v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ScopesAdapter;Lio/sentry/transport/CurrentDateProvider;Lio/sentry/util/Random;Lio/sentry/android/replay/util/ReplayExecutorService;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p5}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 17
    .line 18
    iput-object p2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 19
    .line 20
    iput-object p3, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 21
    .line 22
    iput-object p4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->u:Lio/sentry/util/Random;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->v:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$pause$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$pause$1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "pause"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->b(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 5
    .line 6
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-wide v2, p1, Lio/sentry/SentryReplayOptions;->h:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->p:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, v0, v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->b(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final c(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$onConfigurationChanged$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$onConfigurationChanged$1;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "configuration_changed"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d()Lio/sentry/android/replay/capture/CaptureStrategy;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "Not converting to session mode, because the process is about to terminate"

    .line 21
    .line 22
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 27
    .line 28
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 29
    .line 30
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    iget-object v4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 33
    .line 34
    invoke-direct {v0, v1, v4, v2, v3}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object v2, Lio/sentry/SentryReplayEvent$ReplayType;->BUFFER:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p0, v2}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final f(Lkotlin/jvm/functions/Function1;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lio/sentry/SentryReplayOptions;->e:Ljava/lang/Double;

    .line 8
    .line 9
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->u:Lio/sentry/util/Random;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-virtual {v2}, Lio/sentry/util/Random;->c()D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    cmpg-double v1, v4, v1

    .line 26
    .line 27
    if-ltz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v2, Lp;

    .line 34
    .line 35
    const/16 v4, 0x19

    .line 36
    .line 37
    invoke-direct {v2, v4, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 56
    .line 57
    const-string p2, "Not capturing replay for crashed event, will be captured on next launch"

    .line 58
    .line 59
    new-array v0, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance p2, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;

    .line 66
    .line 67
    invoke-direct {p2, p0, p1}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "capture_replay"

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    const-string p2, "Replay wasn\'t sampled by onErrorSampleRate, not capturing for event"

    .line 83
    .line 84
    new-array v0, v3, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final g(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 8
    .line 9
    new-instance v3, Lio/sentry/android/replay/capture/b;

    .line 10
    .line 11
    invoke-direct {v3, p0, p1, v0, v1}, Lio/sentry/android/replay/capture/b;-><init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V

    .line 12
    .line 13
    .line 14
    const-string p1, "BufferCaptureStrategy.add_frame"

    .line 15
    .line 16
    invoke-direct {v2, v3, p1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 6
    .line 7
    if-nez v6, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 14
    .line 15
    const-string v0, "Recorder config is not set, not creating segment for task: "

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {p0, p2, p1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v0, v0, Lio/sentry/SentryReplayOptions;->h:J

    .line 33
    .line 34
    iget-object v2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 35
    .line 36
    invoke-interface {v2}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-object v4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-object v5, v4, Lio/sentry/android/replay/ReplayCache;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    .line 46
    invoke-virtual {v5}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    :try_start_0
    iget-object v4, v4, Lio/sentry/android/replay/ReplayCache;->r:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lio/sentry/android/replay/ReplayFrame;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-wide v8, v4, Lio/sentry/android/replay/ReplayFrame;->b:J

    .line 62
    .line 63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move-object v4, v7

    .line 72
    :goto_0
    invoke-static {v5, v7}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    invoke-static {v4, v5}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object p1, v0

    .line 91
    invoke-static {v5, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    :goto_2
    sub-long v0, v2, v0

    .line 96
    .line 97
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    sub-long/2addr v2, v0

    .line 109
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-instance v9, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 114
    .line 115
    const-string v0, "BufferCaptureStrategy."

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lio/sentry/android/replay/capture/a;

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    move-object v1, p0

    .line 125
    move-object v7, p2

    .line 126
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/replay/capture/a;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;I)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v9, v0, p1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    .line 134
    invoke-interface {p0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->n()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 13
    .line 14
    new-instance v3, Lio/sentry/android/core/anr/a;

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-direct {v3, v4, v0, p0}, Lio/sentry/android/core/anr/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "BufferCaptureStrategy.stop"

    .line 21
    .line 22
    invoke-direct {v2, v3, v0}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->close()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n(Ljava/util/Date;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 53
    .line 54
    aget-object v1, v1, v4

    .line 55
    .line 56
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    new-instance v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;

    .line 77
    .line 78
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 79
    .line 80
    invoke-direct {v2, v1, v0, v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 84
    .line 85
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 86
    .line 87
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 98
    .line 99
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 104
    .line 105
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 106
    .line 107
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "CaptureStrategy.runInBackground"

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 131
    .line 132
    const-string v2, "Failed to execute task CaptureStrategy.runInBackground"

    .line 133
    .line 134
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void
.end method
