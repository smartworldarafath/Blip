.class public final Lio/sentry/android/replay/ReplayIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/ReplayController;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;,
        Lio/sentry/android/replay/ReplayIntegration$ReplayExecutorServiceThreadFactory;
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lio/sentry/transport/CurrentDateProvider;

.field public volatile l:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

.field public m:Lio/sentry/SentryOptions;

.field public n:Lio/sentry/ScopesAdapter;

.field public o:Lio/sentry/android/replay/Recorder;

.field public p:Lio/sentry/android/replay/gestures/GestureRecorder;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;

.field public final s:Lkotlin/Lazy;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public v:Lio/sentry/android/replay/capture/CaptureStrategy;

.field public w:Lio/sentry/ReplayBreadcrumbConverter;

.field public final x:Lio/sentry/android/replay/util/MainLooperHandler;

.field public final y:Lio/sentry/util/AutoClosableReentrantLock;

.field public final z:Lio/sentry/android/replay/ReplayLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "maven:io.sentry:sentry-android-replay"

    .line 6
    .line 7
    const-string v2, "8.41.0"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/transport/CurrentDateProvider;->j:Lio/sentry/transport/CurrentDateProvider;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, v1

    .line 11
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->j:Landroid/content/Context;

    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->k:Lio/sentry/transport/CurrentDateProvider;

    .line 17
    .line 18
    sget-object p1, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 19
    .line 20
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 21
    .line 22
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$random$2;->k:Lio/sentry/android/replay/ReplayIntegration$random$2;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->q:Lkotlin/Lazy;

    .line 29
    .line 30
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;->k:Lio/sentry/android/replay/ReplayIntegration$rootViewsSpy$2;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 37
    .line 38
    new-instance p1, Lio/sentry/android/replay/ReplayIntegration$replayExecutor$2;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lio/sentry/android/replay/ReplayIntegration$replayExecutor$2;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lkotlin/Lazy;

    .line 48
    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    sget-object p1, Lio/sentry/NoOpReplayBreadcrumbConverter;->a:Lio/sentry/NoOpReplayBreadcrumbConverter;

    .line 65
    .line 66
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->w:Lio/sentry/ReplayBreadcrumbConverter;

    .line 67
    .line 68
    new-instance p1, Lio/sentry/android/replay/util/MainLooperHandler;

    .line 69
    .line 70
    invoke-direct {p1}, Lio/sentry/android/replay/util/MainLooperHandler;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->x:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 74
    .line 75
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 81
    .line 82
    new-instance p1, Lio/sentry/android/replay/ReplayLifecycle;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lio/sentry/android/replay/ReplayState;->INITIAL:Lio/sentry/android/replay/ReplayState;

    .line 88
    .line 89
    iput-object v0, p1, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 90
    .line 91
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final A(Lio/sentry/transport/RateLimiter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 2
    .line 3
    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->g0()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->a0()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final E(Lio/sentry/SentryOptions;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lio/sentry/SentryReplayOptions;->d:Ljava/lang/Double;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    cmpl-double v0, v4, v2

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lio/sentry/SentryReplayOptions;->e:Ljava/lang/Double;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmpl-double v0, v4, v2

    .line 36
    .line 37
    if-lez v0, :cond_4

    .line 38
    .line 39
    :goto_0
    sget-object v0, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 40
    .line 41
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 42
    .line 43
    new-instance v2, Lio/sentry/android/replay/WindowRecorder;

    .line 44
    .line 45
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lkotlin/Lazy;

    .line 46
    .line 47
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v7, v3

    .line 52
    check-cast v7, Lio/sentry/android/replay/util/ReplayExecutorService;

    .line 53
    .line 54
    iget-object v6, p0, Lio/sentry/android/replay/ReplayIntegration;->x:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 55
    .line 56
    move-object v5, p0

    .line 57
    move-object v4, p0

    .line 58
    move-object v3, p1

    .line 59
    invoke-direct/range {v2 .. v7}, Lio/sentry/android/replay/WindowRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/util/MainLooperHandler;Lio/sentry/android/replay/util/ReplayExecutorService;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v4, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 63
    .line 64
    new-instance p0, Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 65
    .line 66
    invoke-direct {p0, v3, v4}, Lio/sentry/android/replay/gestures/GestureRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ReplayIntegration;)V

    .line 67
    .line 68
    .line 69
    iput-object p0, v4, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 70
    .line 71
    iget-object p0, v4, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0, v4}, Lio/sentry/IConnectionStatusProvider;->s0(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    .line 90
    iget-object p0, p0, Lio/sentry/transport/RateLimiter;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    .line 92
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    const-string p0, "Replay"

    .line 96
    .line 97
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, v4, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    const-string v0, "options"

    .line 104
    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v2, v4, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    new-instance p1, Lio/sentry/android/replay/b;

    .line 119
    .line 120
    invoke-direct {p1, v4, v1}, Lio/sentry/android/replay/b;-><init>(Ljava/io/Closeable;I)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    new-instance v0, Lio/sentry/android/core/anr/a;

    .line 124
    .line 125
    const/4 v1, 0x4

    .line 126
    invoke-direct {v0, v1, p1, v2}, Lio/sentry/android/core/anr/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object p0, v0

    .line 135
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 140
    .line 141
    const-string v1, "Failed to submit task ReplayIntegration.finalize_previous_replay to executor"

    .line 142
    .line 143
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_4
    move-object v3, p1

    .line 156
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 161
    .line 162
    const-string v0, "Session replay is disabled, no sample rate specified"

    .line 163
    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final O()V
    .locals 15

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    sget-object v2, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lio/sentry/android/replay/ReplayLifecycle;->a(Lio/sentry/android/replay/ReplayState;)Z

    .line 25
    .line 26
    .line 27
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v6, "options"

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    :try_start_2
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 42
    .line 43
    const-string v2, "Session replay is already being recorded, not starting a new one"

    .line 44
    .line 45
    new-array v4, v5, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {p0, v0, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    :try_start_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v3

    .line 62
    :cond_2
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->q:Lkotlin/Lazy;

    .line 63
    .line 64
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lio/sentry/util/Random;

    .line 69
    .line 70
    iget-object v7, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 71
    .line 72
    if-eqz v7, :cond_e

    .line 73
    .line 74
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v7, v7, Lio/sentry/SentryReplayOptions;->d:Ljava/lang/Double;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    invoke-virtual {v4}, Lio/sentry/util/Random;->c()D

    .line 91
    .line 92
    .line 93
    move-result-wide v11

    .line 94
    cmpg-double v4, v9, v11

    .line 95
    .line 96
    if-ltz v4, :cond_3

    .line 97
    .line 98
    move v4, v8

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move v4, v5

    .line 101
    :goto_0
    if-nez v4, :cond_7

    .line 102
    .line 103
    iget-object v7, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 104
    .line 105
    if-eqz v7, :cond_6

    .line 106
    .line 107
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iget-object v7, v7, Lio/sentry/SentryReplayOptions;->e:Ljava/lang/Double;

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    const-wide/16 v11, 0x0

    .line 120
    .line 121
    cmpl-double v7, v9, v11

    .line 122
    .line 123
    if-lez v7, :cond_4

    .line 124
    .line 125
    move v7, v8

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move v7, v5

    .line 128
    :goto_1
    if-nez v7, :cond_7

    .line 129
    .line 130
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 131
    .line 132
    if-eqz p0, :cond_5

    .line 133
    .line 134
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 139
    .line 140
    const-string v2, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified"

    .line 141
    .line 142
    new-array v4, v5, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-interface {p0, v0, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_5
    :try_start_4
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v3

    .line 155
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v3

    .line 159
    :cond_7
    iput-object v2, v0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 160
    .line 161
    if-eqz v4, :cond_9

    .line 162
    .line 163
    new-instance v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 164
    .line 165
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    .line 169
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 170
    .line 171
    iget-object v6, p0, Lio/sentry/android/replay/ReplayIntegration;->k:Lio/sentry/transport/CurrentDateProvider;

    .line 172
    .line 173
    iget-object v7, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lkotlin/Lazy;

    .line 174
    .line 175
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, Lio/sentry/android/replay/util/ReplayExecutorService;

    .line 180
    .line 181
    invoke-direct {v0, v2, v4, v6, v7}, Lio/sentry/android/replay/capture/SessionCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v3

    .line 189
    :cond_9
    new-instance v9, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 190
    .line 191
    iget-object v10, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 192
    .line 193
    if-eqz v10, :cond_d

    .line 194
    .line 195
    iget-object v11, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 196
    .line 197
    iget-object v12, p0, Lio/sentry/android/replay/ReplayIntegration;->k:Lio/sentry/transport/CurrentDateProvider;

    .line 198
    .line 199
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->q:Lkotlin/Lazy;

    .line 200
    .line 201
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    move-object v13, v0

    .line 206
    check-cast v13, Lio/sentry/util/Random;

    .line 207
    .line 208
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lkotlin/Lazy;

    .line 209
    .line 210
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    move-object v14, v0

    .line 215
    check-cast v14, Lio/sentry/android/replay/util/ReplayExecutorService;

    .line 216
    .line 217
    invoke-direct/range {v9 .. v14}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ScopesAdapter;Lio/sentry/transport/CurrentDateProvider;Lio/sentry/util/Random;Lio/sentry/android/replay/util/ReplayExecutorService;)V

    .line 218
    .line 219
    .line 220
    move-object v0, v9

    .line 221
    :goto_2
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 222
    .line 223
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 224
    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    check-cast v0, Lio/sentry/android/replay/WindowRecorder;

    .line 228
    .line 229
    iget-object v0, v0, Lio/sentry/android/replay/WindowRecorder;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    .line 231
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 232
    .line 233
    .line 234
    :cond_a
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 235
    .line 236
    if-eqz v0, :cond_b

    .line 237
    .line 238
    new-instance v2, Lio/sentry/protocol/SentryId;

    .line 239
    .line 240
    invoke-direct {v2}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v0, v5, v2, v3}, Lio/sentry/android/replay/capture/CaptureStrategy;->e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 244
    .line 245
    .line 246
    :cond_b
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 247
    .line 248
    instance-of v0, v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 249
    .line 250
    if-eqz v0, :cond_c

    .line 251
    .line 252
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 253
    .line 254
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lio/sentry/android/replay/RootViewsSpy;

    .line 259
    .line 260
    iget-object v0, v0, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 261
    .line 262
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    check-cast v2, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 268
    .line 269
    invoke-virtual {v0, v2}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_c
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 273
    .line 274
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lio/sentry/android/replay/RootViewsSpy;

    .line 279
    .line 280
    iget-object v0, v0, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 281
    .line 282
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 283
    .line 284
    invoke-virtual {v0, p0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    .line 286
    .line 287
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_d
    :try_start_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v3

    .line 295
    :cond_e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 300
    :catchall_1
    move-exception v0

    .line 301
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    throw v0
.end method

.method public final P()Lio/sentry/ReplayBreadcrumbConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->w:Lio/sentry/ReplayBreadcrumbConverter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final R(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    aget-object v4, v0, v3

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string v6, "replay_"

    .line 37
    .line 38
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->h()Lio/sentry/protocol/SentryId;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_0

    .line 66
    .line 67
    invoke-static {v5, p1, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    :cond_0
    invoke-static {v4}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-void

    .line 80
    :cond_3
    const-string p0, "options"

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x0

    .line 86
    throw p0
.end method

.method public final S()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 2
    .line 3
    iget-object v0, v0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 4
    .line 5
    sget-object v1, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 14
    .line 15
    iget-object p0, p0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 16
    .line 17
    sget-object v0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-gez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final X(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, Lio/sentry/android/replay/c;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lio/sentry/android/replay/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;

    .line 26
    .line 27
    invoke-direct {v2, p1, v0}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;-><init>(Landroid/graphics/Bitmap;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Lio/sentry/android/replay/capture/CaptureStrategy;->g(Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 34
    .line 35
    instance-of p1, p1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 40
    .line 41
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    sget-object v1, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    sget-object v1, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->a0()V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public final Z(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_11

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration;->S()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_c

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 20
    .line 21
    const-string v2, "options"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_10

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v1, v1, Lio/sentry/SentryReplayOptions;->k:Z

    .line 31
    .line 32
    if-eqz v1, :cond_11

    .line 33
    .line 34
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->j:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 37
    .line 38
    if-eqz v4, :cond_f

    .line 39
    .line 40
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move/from16 v4, p2

    .line 51
    .line 52
    int-to-float v4, v4

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .line 63
    div-float v5, v4, v5

    .line 64
    .line 65
    iget-object v6, v2, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 66
    .line 67
    iget v6, v6, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->sizeScale:F

    .line 68
    .line 69
    mul-float/2addr v5, v6

    .line 70
    invoke-static {v5}, Lkotlin/math/MathKt;->b(F)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    rem-int/lit8 v6, v5, 0x10

    .line 75
    .line 76
    const/16 v7, 0x8

    .line 77
    .line 78
    const/16 v8, 0x10

    .line 79
    .line 80
    if-gt v6, v7, :cond_1

    .line 81
    .line 82
    sub-int/2addr v5, v6

    .line 83
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    :goto_0
    move v11, v5

    .line 88
    move/from16 v5, p1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    rsub-int/lit8 v6, v6, 0x10

    .line 92
    .line 93
    add-int/2addr v5, v6

    .line 94
    goto :goto_0

    .line 95
    :goto_1
    int-to-float v5, v5

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .line 106
    div-float v1, v5, v1

    .line 107
    .line 108
    iget-object v6, v2, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 109
    .line 110
    iget v6, v6, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->sizeScale:F

    .line 111
    .line 112
    mul-float/2addr v1, v6

    .line 113
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    rem-int/lit8 v6, v1, 0x10

    .line 118
    .line 119
    if-gt v6, v7, :cond_2

    .line 120
    .line 121
    sub-int/2addr v1, v6

    .line 122
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :goto_2
    move v10, v1

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    sub-int/2addr v8, v6

    .line 129
    add-int/2addr v1, v8

    .line 130
    goto :goto_2

    .line 131
    :goto_3
    new-instance v9, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 132
    .line 133
    int-to-float v1, v10

    .line 134
    div-float v12, v1, v5

    .line 135
    .line 136
    int-to-float v1, v11

    .line 137
    div-float v13, v1, v4

    .line 138
    .line 139
    iget v14, v2, Lio/sentry/SentryReplayOptions;->g:I

    .line 140
    .line 141
    iget-object v1, v2, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 142
    .line 143
    iget v15, v1, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->bitRate:I

    .line 144
    .line 145
    invoke-direct/range {v9 .. v15}, Lio/sentry/android/replay/ScreenshotRecorderConfig;-><init>(IIFFII)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_11

    .line 155
    .line 156
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration;->S()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_3

    .line 161
    .line 162
    goto/16 :goto_c

    .line 163
    .line 164
    :cond_3
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 165
    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    invoke-interface {v1, v9}, Lio/sentry/android/replay/capture/CaptureStrategy;->c(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 172
    .line 173
    if-eqz v1, :cond_e

    .line 174
    .line 175
    check-cast v1, Lio/sentry/android/replay/WindowRecorder;

    .line 176
    .line 177
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_5

    .line 184
    .line 185
    goto/16 :goto_b

    .line 186
    .line 187
    :cond_5
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 188
    .line 189
    if-nez v2, :cond_7

    .line 190
    .line 191
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->t:Lio/sentry/util/AutoClosableReentrantLock;

    .line 192
    .line 193
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :try_start_0
    iget-object v4, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 198
    .line 199
    if-nez v4, :cond_6

    .line 200
    .line 201
    new-instance v4, Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 202
    .line 203
    iget-object v5, v1, Lio/sentry/android/replay/WindowRecorder;->j:Lio/sentry/SentryOptions;

    .line 204
    .line 205
    iget-object v6, v1, Lio/sentry/android/replay/WindowRecorder;->m:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 206
    .line 207
    invoke-direct {v4, v5, v6}, Lio/sentry/android/replay/WindowRecorder$Capturer;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/util/MainLooperHandler;)V

    .line 208
    .line 209
    .line 210
    iput-object v4, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    move-object v1, v0

    .line 215
    goto :goto_5

    .line 216
    :cond_6
    :goto_4
    invoke-static {v2, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :goto_5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_7
    :goto_6
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 227
    .line 228
    if-nez v2, :cond_8

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_8
    iput-object v9, v2, Lio/sentry/android/replay/WindowRecorder$Capturer;->m:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 232
    .line 233
    :goto_7
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 234
    .line 235
    if-nez v2, :cond_9

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_9
    new-instance v4, Lio/sentry/android/replay/ScreenshotRecorder;

    .line 239
    .line 240
    iget-object v5, v1, Lio/sentry/android/replay/WindowRecorder;->j:Lio/sentry/SentryOptions;

    .line 241
    .line 242
    iget-object v6, v1, Lio/sentry/android/replay/WindowRecorder;->k:Lio/sentry/android/replay/ReplayIntegration;

    .line 243
    .line 244
    invoke-direct {v4, v5, v1, v6, v9}, Lio/sentry/android/replay/ScreenshotRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V

    .line 245
    .line 246
    .line 247
    iput-object v4, v2, Lio/sentry/android/replay/WindowRecorder$Capturer;->l:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 248
    .line 249
    :goto_8
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->p:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 256
    .line 257
    if-eqz v2, :cond_a

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    move-object v3, v2

    .line 264
    check-cast v3, Landroid/view/View;

    .line 265
    .line 266
    :cond_a
    if-eqz v3, :cond_b

    .line 267
    .line 268
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 269
    .line 270
    if-eqz v2, :cond_b

    .line 271
    .line 272
    iget-object v2, v2, Lio/sentry/android/replay/WindowRecorder$Capturer;->l:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 273
    .line 274
    if-eqz v2, :cond_b

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Lio/sentry/android/replay/ScreenshotRecorder;->a(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    :cond_b
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->m:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 280
    .line 281
    iget-object v3, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 282
    .line 283
    iget-object v2, v2, Lio/sentry/android/replay/util/MainLooperHandler;->a:Landroid/os/Handler;

    .line 284
    .line 285
    if-nez v3, :cond_c

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_c
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    .line 290
    .line 291
    :goto_9
    iget-object v2, v1, Lio/sentry/android/replay/WindowRecorder;->m:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 292
    .line 293
    iget-object v3, v1, Lio/sentry/android/replay/WindowRecorder;->v:Lio/sentry/android/replay/WindowRecorder$Capturer;

    .line 294
    .line 295
    iget-object v2, v2, Lio/sentry/android/replay/util/MainLooperHandler;->a:Landroid/os/Handler;

    .line 296
    .line 297
    const/4 v4, 0x0

    .line 298
    if-nez v3, :cond_d

    .line 299
    .line 300
    move v2, v4

    .line 301
    goto :goto_a

    .line 302
    :cond_d
    const-wide/16 v5, 0x64

    .line 303
    .line 304
    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    :goto_a
    if-nez v2, :cond_e

    .line 309
    .line 310
    iget-object v1, v1, Lio/sentry/android/replay/WindowRecorder;->j:Lio/sentry/SentryOptions;

    .line 311
    .line 312
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 317
    .line 318
    const-string v3, "Failed to post the capture runnable, main looper is shutting down."

    .line 319
    .line 320
    new-array v4, v4, [Ljava/lang/Object;

    .line 321
    .line 322
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_e
    :goto_b
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 326
    .line 327
    iget-object v1, v1, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 328
    .line 329
    sget-object v2, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    .line 330
    .line 331
    if-ne v1, v2, :cond_11

    .line 332
    .line 333
    iget-object v0, v0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 334
    .line 335
    if-eqz v0, :cond_11

    .line 336
    .line 337
    check-cast v0, Lio/sentry/android/replay/WindowRecorder;

    .line 338
    .line 339
    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder;->q()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v3

    .line 347
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v3

    .line 351
    :cond_11
    :goto_c
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->a0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final a0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    sget-object v2, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lio/sentry/android/replay/ReplayLifecycle;->a(Lio/sentry/android/replay/ReplayState;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    check-cast v4, Lio/sentry/android/replay/WindowRecorder;

    .line 32
    .line 33
    invoke-virtual {v4}, Lio/sentry/android/replay/WindowRecorder;->q()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Lio/sentry/android/replay/capture/CaptureStrategy;->a()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_0
    iput-object v2, v0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    sget-object v2, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lio/sentry/android/replay/ReplayLifecycle;->a(Lio/sentry/android/replay/ReplayState;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4, p0}, Lio/sentry/IConnectionStatusProvider;->L0(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-object v4, v4, Lio/sentry/transport/RateLimiter;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->stop()V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iput-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 67
    .line 68
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 69
    .line 70
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lio/sentry/android/replay/RootViewsSpy;

    .line 75
    .line 76
    invoke-virtual {v4}, Lio/sentry/android/replay/RootViewsSpy;->close()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lkotlin/Lazy;

    .line 80
    .line 81
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lio/sentry/android/replay/util/ReplayExecutorService;

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/sentry/android/replay/util/ReplayExecutorService;->shutdown()V

    .line 88
    .line 89
    .line 90
    iput-object v2, v0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :try_start_1
    const-string p0, "options"

    .line 97
    .line 98
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_4
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public final g0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 17
    .line 18
    sget-object v3, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lio/sentry/android/replay/ReplayLifecycle;->a(Lio/sentry/android/replay/ReplayState;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_5

    .line 34
    .line 35
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 36
    .line 37
    sget-object v4, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 38
    .line 39
    if-eq v1, v4, :cond_5

    .line 40
    .line 41
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    sget-object v5, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ne v1, v4, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1}, Lio/sentry/ScopesAdapter;->d()Lio/sentry/transport/RateLimiter;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    sget-object v5, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, v4, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iput-object v3, v1, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 88
    .line 89
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    check-cast v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 94
    .line 95
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n(Ljava/util/Date;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 103
    .line 104
    if-eqz p0, :cond_4

    .line 105
    .line 106
    check-cast p0, Lio/sentry/android/replay/WindowRecorder;

    .line 107
    .line 108
    invoke-virtual {p0}, Lio/sentry/android/replay/WindowRecorder;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    :goto_0
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    :goto_1
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :catchall_1
    move-exception v1

    .line 125
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v1
.end method

.method public final h()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object p0

    .line 15
    :cond_1
    :goto_0
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final n(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->S()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 17
    .line 18
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v1, "Replay id is not set, not capturing for event"

    .line 51
    .line 52
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string p0, "options"

    .line 57
    .line 58
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v2

    .line 62
    :cond_3
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$captureReplay$1;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lio/sentry/android/replay/ReplayIntegration$captureReplay$1;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1, p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->f(Lkotlin/jvm/functions/Function1;Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Lio/sentry/android/replay/capture/CaptureStrategy;->d()Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_5
    iput-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 89
    .line 90
    :cond_6
    :goto_1
    return-void
.end method

.method public final q(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 7
    .line 8
    instance-of v0, v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->a0()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->g0()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final stop()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->z:Lio/sentry/android/replay/ReplayLifecycle;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->y:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    sget-object v2, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lio/sentry/android/replay/ReplayLifecycle;->a(Lio/sentry/android/replay/ReplayState;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 28
    .line 29
    instance-of v4, v4, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 34
    .line 35
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lio/sentry/android/replay/RootViewsSpy;

    .line 40
    .line 41
    iget-object v4, v4, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 42
    .line 43
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast v5, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lkotlin/Lazy;

    .line 54
    .line 55
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lio/sentry/android/replay/RootViewsSpy;

    .line 60
    .line 61
    iget-object v4, v4, Lio/sentry/android/replay/RootViewsSpy;->l:Lio/sentry/android/replay/RootViewsSpy$listeners$1;

    .line 62
    .line 63
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    check-cast v4, Lio/sentry/android/replay/WindowRecorder;

    .line 73
    .line 74
    invoke-virtual {v4}, Lio/sentry/android/replay/WindowRecorder;->reset()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/Recorder;

    .line 78
    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    check-cast v4, Lio/sentry/android/replay/WindowRecorder;

    .line 82
    .line 83
    invoke-virtual {v4}, Lio/sentry/android/replay/WindowRecorder;->w()V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/android/replay/gestures/GestureRecorder;

    .line 87
    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {v4}, Lio/sentry/android/replay/gestures/GestureRecorder;->c()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :goto_0
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-interface {v4}, Lio/sentry/android/replay/capture/CaptureStrategy;->stop()V

    .line 101
    .line 102
    .line 103
    :cond_5
    iput-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->v:Lio/sentry/android/replay/capture/CaptureStrategy;

    .line 104
    .line 105
    iput-object v2, v0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    :goto_1
    invoke-static {v1, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->g0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final w(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->w:Lio/sentry/ReplayBreadcrumbConverter;

    .line 2
    .line 3
    return-void
.end method
