.class public final Lio/sentry/android/replay/capture/SessionCaptureStrategy;
.super Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final r:Lio/sentry/SentryOptions;

.field public final s:Lio/sentry/IScopes;

.field public final t:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 14
    .line 15
    iput-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 16
    .line 17
    iput-object p3, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$pause$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "pause"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$onConfigurationChanged$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "onConfigurationChanged"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

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
    .locals 0

    .line 1
    return-object p0
.end method

.method public final e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p2, Lp;

    .line 12
    .line 13
    const/16 p3, 0x1b

    .line 14
    .line 15
    invoke-direct {p2, p3, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lio/sentry/SentryReplayOptions;->m:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "Replay is already running in \'session\' mode, not capturing for event"

    .line 21
    .line 22
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final g(Lkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 6
    .line 7
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    new-instance v6, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 12
    .line 13
    new-instance v0, Lio/sentry/android/replay/capture/c;

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/replay/capture/c;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "SessionCaptureStrategy.add_frame"

    .line 21
    .line 22
    invoke-direct {v6, v0, p0}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 28
    .line 29
    .line 30
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
    if-nez v6, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

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
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 29
    .line 30
    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sget-object v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    aget-object v2, v2, v3

    .line 38
    .line 39
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    .line 40
    .line 41
    invoke-virtual {v3, p0, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    move-object v4, v2

    .line 46
    check-cast v4, Ljava/util/Date;

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-long v2, v0, v2

    .line 56
    .line 57
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-instance v9, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 62
    .line 63
    const-string v0, "SessionCaptureStrategy."

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lio/sentry/android/replay/capture/a;

    .line 70
    .line 71
    const/4 v8, 0x1

    .line 72
    move-object v1, p0

    .line 73
    move-object v7, p2

    .line 74
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/replay/capture/a;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v9, v0, p1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    .line 82
    invoke-interface {p0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final stop()V
    .locals 4

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
    new-instance v2, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;-><init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "stop"

    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v2, Lfe;

    .line 27
    .line 28
    const/16 v3, 0x18

    .line 29
    .line 30
    invoke-direct {v2, v3}, Lfe;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayCache;->close()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n(Ljava/util/Date;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    aget-object v1, v1, v2

    .line 62
    .line 63
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    new-instance v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;

    .line 84
    .line 85
    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 86
    .line 87
    invoke-direct {v2, v1, v0, v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 91
    .line 92
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 93
    .line 94
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 105
    .line 106
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 111
    .line 112
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 113
    .line 114
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;

    .line 115
    .line 116
    invoke-direct {v1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "CaptureStrategy.runInBackground"

    .line 120
    .line 121
    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 138
    .line 139
    const-string v2, "Failed to execute task CaptureStrategy.runInBackground"

    .line 140
    .line 141
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method
