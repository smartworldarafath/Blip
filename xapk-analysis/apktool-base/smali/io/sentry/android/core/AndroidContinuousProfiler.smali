.class public Lio/sentry/android/core/AndroidContinuousProfiler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IContinuousProfiler;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# instance fields
.field public volatile A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public final E:Lio/sentry/util/AutoClosableReentrantLock;

.field public final F:Lio/sentry/util/AutoClosableReentrantLock;

.field public final j:Lio/sentry/ILogger;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Lio/sentry/util/LazyEvaluator$Evaluator;

.field public final n:Lio/sentry/android/core/BuildInfoProvider;

.field public o:Z

.field public final p:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public q:Lio/sentry/android/core/AndroidProfiler;

.field public r:Z

.field public s:Lio/sentry/IScopes;

.field public t:Ljava/util/concurrent/Future;

.field public u:Lio/sentry/CompositePerformanceCollector;

.field public final v:Ljava/util/ArrayList;

.field public w:Lio/sentry/protocol/SentryId;

.field public x:Lio/sentry/protocol/SentryId;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:Lio/sentry/SentryDate;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->o:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->v:Ljava/util/ArrayList;

    .line 18
    .line 19
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 20
    .line 21
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 22
    .line 23
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    .line 33
    .line 34
    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->z:Lio/sentry/SentryDate;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->A:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->C:Z

    .line 45
    .line 46
    iput v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 47
    .line 48
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->E:Lio/sentry/util/AutoClosableReentrantLock;

    .line 54
    .line 55
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->F:Lio/sentry/util/AutoClosableReentrantLock;

    .line 61
    .line 62
    iput-object p3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 63
    .line 64
    iput-object p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->p:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 65
    .line 66
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->n:Lio/sentry/android/core/BuildInfoProvider;

    .line 67
    .line 68
    iput-object p4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->k:Ljava/lang/String;

    .line 69
    .line 70
    iput p5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->l:I

    .line 71
    .line 72
    iput-object p6, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->m:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final A(Lio/sentry/transport/RateLimiter;)V
    .locals 4

    .line 1
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const-string v0, "SDK is rate limited. Stopping profiler."

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 27
    .line 28
    invoke-interface {v3, p1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->h(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 22
    .line 23
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->u:Lio/sentry/CompositePerformanceCollector;

    .line 36
    .line 37
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 38
    .line 39
    invoke-interface {v0}, Lio/sentry/IScopes;->d()Lio/sentry/transport/RateLimiter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lio/sentry/transport/RateLimiter;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->E:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->h(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    throw p0
.end method

.method public final c(Lio/sentry/ProfileLifecycle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->E:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Lio/sentry/android/core/AndroidContinuousProfiler$1;->a:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v1, p1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 28
    .line 29
    sub-int/2addr p1, v1

    .line 30
    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-lez p1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-gez p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :try_start_1
    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 42
    .line 43
    :cond_3
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    throw p0
.end method

.method public final d(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->E:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->A:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lio/sentry/util/Random;->c()D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    iget-object p2, p2, Lio/sentry/TracesSampler;->a:Lio/sentry/SentryOptions;

    .line 22
    .line 23
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    cmpg-double p2, v6, v4

    .line 34
    .line 35
    if-ltz p2, :cond_0

    .line 36
    .line 37
    move p2, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p2, v3

    .line 40
    :goto_0
    iput-boolean p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->C:Z

    .line 41
    .line 42
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->A:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    :goto_1
    iget-boolean p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->C:Z

    .line 48
    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    iget-object p0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 52
    .line 53
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    const-string p2, "Profiler was not started due to sampling decision."

    .line 56
    .line 57
    new-array v1, v3, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-interface {p0, p1, p2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :try_start_1
    sget-object p2, Lio/sentry/android/core/AndroidContinuousProfiler$1;->a:[I

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    aget p1, p2, p1

    .line 73
    .line 74
    if-eq p1, v2, :cond_4

    .line 75
    .line 76
    const/4 p2, 0x2

    .line 77
    if-eq p1, p2, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-boolean p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-object p0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 85
    .line 86
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 87
    .line 88
    const-string p2, "Profiler is already running."

    .line 89
    .line 90
    new-array v1, v3, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {p0, p1, p2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    :try_start_2
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 100
    .line 101
    if-gez p1, :cond_5

    .line 102
    .line 103
    iput v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 104
    .line 105
    :cond_5
    iget p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 106
    .line 107
    add-int/2addr p1, v2

    .line 108
    iput p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->D:I

    .line 109
    .line 110
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 111
    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    iget-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 115
    .line 116
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 117
    .line 118
    const-string v1, "Started Profiler."

    .line 119
    .line 120
    new-array v2, v3, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_3
    :try_start_3
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catchall_1
    move-exception p1

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_4
    throw p0
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->A:Z

    .line 3
    .line 4
    return-void
.end method

.method public final f()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->n:Lio/sentry/android/core/BuildInfoProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->o:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->o:Z

    .line 17
    .line 18
    iget-object v8, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 19
    .line 20
    iget-object v4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->k:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 27
    .line 28
    new-array v4, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {v8, v0, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->l:I

    .line 35
    .line 36
    if-gtz v0, :cond_2

    .line 37
    .line 38
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v4, "Disabling profiling because trace rate is set to %d"

    .line 49
    .line 50
    invoke-interface {v8, v3, v4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Lio/sentry/android/core/AndroidProfiler;

    .line 55
    .line 56
    const v5, 0xf4240

    .line 57
    .line 58
    .line 59
    div-int/2addr v5, v0

    .line 60
    iget-object v6, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->p:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-direct/range {v3 .. v8}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Lio/sentry/ILogger;)V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 74
    .line 75
    iget-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-interface {v0}, Lio/sentry/IScopes;->d()Lio/sentry/transport/RateLimiter;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    sget-object v4, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    sget-object v4, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    :cond_4
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 102
    .line 103
    const-string v1, "SDK is rate limited. Stopping profiler."

    .line 104
    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-interface {v3, v0, v1, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->h(Z)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 115
    .line 116
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->p0()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-object v4, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 129
    .line 130
    if-ne v0, v4, :cond_6

    .line 131
    .line 132
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 133
    .line 134
    const-string v1, "Device is offline. Stopping profiler."

    .line 135
    .line 136
    new-array v4, v2, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-interface {v3, v0, v1, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->h(Z)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 146
    .line 147
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->z:Lio/sentry/SentryDate;

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    .line 163
    .line 164
    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->z:Lio/sentry/SentryDate;

    .line 168
    .line 169
    :goto_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 170
    .line 171
    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->c()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_8

    .line 176
    .line 177
    :goto_2
    return-void

    .line 178
    :cond_8
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 179
    .line 180
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 181
    .line 182
    sget-object v2, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_9

    .line 189
    .line 190
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 191
    .line 192
    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 196
    .line 197
    :cond_9
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_a

    .line 204
    .line 205
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 206
    .line 207
    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 211
    .line 212
    :cond_a
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->u:Lio/sentry/CompositePerformanceCollector;

    .line 213
    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 217
    .line 218
    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v0, v2}, Lio/sentry/CompositePerformanceCollector;->a(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_b
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->m:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 226
    .line 227
    invoke-interface {v0}, Lio/sentry/util/LazyEvaluator$Evaluator;->c()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lio/sentry/ISentryExecutorService;

    .line 232
    .line 233
    new-instance v2, Lio/sentry/android/core/b;

    .line 234
    .line 235
    const/4 v4, 0x3

    .line 236
    invoke-direct {v2, v4, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const-wide/32 v4, 0xea60

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v4, v5, v2}, Lio/sentry/ISentryExecutorService;->c(JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->t:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 251
    .line 252
    const-string v4, "Failed to schedule profiling chunk finish. Did you call Sentry.close()?"

    .line 253
    .line 254
    invoke-interface {v3, v2, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z

    .line 258
    .line 259
    return-void
.end method

.method public final h(Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->E:Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->t:Ljava/util/concurrent/Future;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 24
    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->n:Lio/sentry/android/core/BuildInfoProvider;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->u:Lio/sentry/CompositePerformanceCollector;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 43
    .line 44
    invoke-virtual {v2}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v2}, Lio/sentry/CompositePerformanceCollector;->c(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_1
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->q:Lio/sentry/android/core/AndroidProfiler;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v0, v3}, Lio/sentry/android/core/AndroidProfiler;->a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->j:Lio/sentry/ILogger;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    :try_start_1
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    const-string v4, "An error occurred while collecting a profile chunk, and it won\'t be sent."

    .line 68
    .line 69
    new-array v5, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v2, v0, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget-object v4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->F:Lio/sentry/util/AutoClosableReentrantLock;

    .line 76
    .line 77
    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 78
    .line 79
    .line 80
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iget-object v5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->v:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v6, Lio/sentry/ProfileChunk$Builder;

    .line 84
    .line 85
    iget-object v7, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 86
    .line 87
    iget-object v8, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 88
    .line 89
    iget-object v9, v0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->d:Ljava/util/Map;

    .line 90
    .line 91
    iget-object v10, v0, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->c:Ljava/io/File;

    .line 92
    .line 93
    iget-object v11, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->z:Lio/sentry/SentryDate;

    .line 94
    .line 95
    invoke-direct/range {v6 .. v11}, Lio/sentry/ProfileChunk$Builder;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/util/Map;Ljava/io/File;Lio/sentry/SentryDate;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_3
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 102
    .line 103
    .line 104
    :goto_2
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 105
    .line 106
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 107
    .line 108
    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 109
    .line 110
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->s:Lio/sentry/IScopes;

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 115
    .line 116
    .line 117
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    new-instance v6, Lio/sentry/android/core/m;

    .line 123
    .line 124
    const/4 v7, 0x3

    .line 125
    invoke-direct {v6, p0, v4, v0, v7}, Lio/sentry/android/core/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v5, v6}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    :try_start_5
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 138
    .line 139
    const-string v6, "Failed to send profile chunks."

    .line 140
    .line 141
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget-boolean p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->B:Z

    .line 147
    .line 148
    if-nez p1, :cond_5

    .line 149
    .line 150
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 151
    .line 152
    const-string v0, "Profile chunk finished. Starting a new one."

    .line 153
    .line 154
    new-array v3, v3, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-interface {v2, p1, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->g()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_5
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 164
    .line 165
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 166
    .line 167
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 168
    .line 169
    const-string p1, "Profile chunk finished."

    .line 170
    .line 171
    new-array v0, v3, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-interface {v2, p0, p1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    .line 175
    .line 176
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :catchall_2
    move-exception v0

    .line 181
    move-object p0, v0

    .line 182
    :try_start_6
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :catchall_3
    move-exception v0

    .line 187
    move-object p1, v0

    .line 188
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    :goto_5
    throw p0

    .line 192
    :cond_6
    :goto_6
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 193
    .line 194
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->w:Lio/sentry/protocol/SentryId;

    .line 195
    .line 196
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :goto_7
    :try_start_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :catchall_4
    move-exception v0

    .line 207
    move-object p1, v0

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    :goto_8
    throw p0
.end method
