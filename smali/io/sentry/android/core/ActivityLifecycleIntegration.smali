.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final A:Lio/sentry/util/AutoClosableReentrantLock;

.field public final B:Lio/sentry/util/AutoClosableReentrantLock;

.field public final j:Landroid/app/Application;

.field public final k:Lio/sentry/android/core/BuildInfoProvider;

.field public l:Lio/sentry/ScopesAdapter;

.field public m:Lio/sentry/android/core/SentryAndroidOptions;

.field public n:Z

.field public o:Z

.field public final p:Z

.field public q:Z

.field public r:Lio/sentry/FullyDisplayedReporter;

.field public s:Lio/sentry/ISpan;

.field public final t:Ljava/util/WeakHashMap;

.field public final u:Ljava/util/WeakHashMap;

.field public final v:Ljava/util/WeakHashMap;

.field public w:Lio/sentry/SentryDate;

.field public x:Ljava/util/concurrent/Future;

.field public final y:Ljava/util/WeakHashMap;

.field public final z:Lio/sentry/android/core/ActivityFramesTracker;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/FullyDisplayedReporter;

    .line 13
    .line 14
    new-instance v1, Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->t:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    new-instance v1, Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->u:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    new-instance v1, Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    .line 36
    .line 37
    new-instance v2, Ljava/util/Date;

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2, v3, v4}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->w:Lio/sentry/SentryDate;

    .line 48
    .line 49
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;

    .line 50
    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->y:Ljava/util/WeakHashMap;

    .line 57
    .line 58
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 64
    .line 65
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->B:Lio/sentry/util/AutoClosableReentrantLock;

    .line 71
    .line 72
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Landroid/app/Application;

    .line 73
    .line 74
    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 75
    .line 76
    iput-object p3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->z:Lio/sentry/android/core/ActivityFramesTracker;

    .line 77
    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 p2, 0x1d

    .line 81
    .line 82
    if-lt p1, p2, :cond_0

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Z

    .line 86
    .line 87
    :cond_0
    return-void
.end method

.method public static h(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/ISpan;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-interface {p0}, Lio/sentry/ISpan;->o()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, " - Deadline Exceeded"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lio/sentry/ISpan;->o()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {p0, v0}, Lio/sentry/ISpan;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Lio/sentry/ISpan;->s()Lio/sentry/SentryDate;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    if-eqz p1, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-interface {p0}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_2
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 63
    .line 64
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->n(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_3
    return-void
.end method

.method public static n(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/ISpan;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lio/sentry/ISpan;->a()Lio/sentry/SpanStatus;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Lio/sentry/ISpan;->a()Lio/sentry/SpanStatus;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 24
    .line 25
    :goto_0
    invoke-interface {p0, p2, p1}, Lio/sentry/ISpan;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    sget-object v0, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 17
    .line 18
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, v1

    .line 36
    :goto_1
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 37
    .line 38
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 39
    .line 40
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/FullyDisplayedReporter;

    .line 45
    .line 46
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableTimeToFullDisplayTracing()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:Z

    .line 53
    .line 54
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Landroid/app/Application;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 60
    .line 61
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    const-string v0, "ActivityLifecycleIntegration installed."

    .line 68
    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "ActivityLifecycle"

    .line 75
    .line 76
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final a()V
    .locals 7

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->b(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v1, v0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lio/sentry/SentryLongDate;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-wide v3, v0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->a()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    add-long/2addr v3, v5

    .line 35
    :cond_0
    const-wide/32 v5, 0xf4240

    .line 36
    .line 37
    .line 38
    mul-long/2addr v3, v5

    .line 39
    invoke-direct {v1, v3, v4}, Lio/sentry/SentryLongDate;-><init>(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, v2

    .line 44
    :goto_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 51
    .line 52
    invoke-static {p0, v1, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->n(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Landroid/app/Application;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "ActivityLifecycleIntegration removed."

    .line 20
    .line 21
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->z:Lio/sentry/android/core/ActivityFramesTracker;

    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->f:Lio/sentry/util/AutoClosableReentrantLock;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->c()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Lio/sentry/android/core/b;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "FrameMetricsAggregator.stop"

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lio/sentry/android/core/ActivityFramesTracker;->d(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 50
    .line 51
    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroidx/core/app/FrameMetricsAggregator;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/core/app/FrameMetricsAggregator;->d()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    throw p0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 9
    .line 10
    invoke-virtual {p2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableScreenTracking()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lio/sentry/android/core/internal/util/ClassUtil;->a(Landroid/view/KeyEvent$Callback;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 34
    .line 35
    new-instance v3, Lio/sentry/android/core/l;

    .line 36
    .line 37
    invoke-direct {v3, v1, v0}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->w(Landroid/app/Activity;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->t:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lio/sentry/ISpan;

    .line 56
    .line 57
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->u:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lio/sentry/ISpan;

    .line 64
    .line 65
    iput-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 66
    .line 67
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/FullyDisplayedReporter;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    new-instance p1, Lf7;

    .line 80
    .line 81
    const/16 v0, 0xd

    .line 82
    .line 83
    invoke-direct {p1, v0}, Lf7;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lio/sentry/FullyDisplayedReporter;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-interface {p2}, Ljava/lang/AutoCloseable;->close()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_1
    :try_start_1
    invoke-interface {p2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    throw p0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->u:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->t:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 8
    .line 9
    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    iget-object v6, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-interface {v6}, Lio/sentry/ISpan;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    iget-object v6, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 33
    .line 34
    sget-object v7, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    .line 35
    .line 36
    invoke-interface {v6, v7}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iput-object v5, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 40
    .line 41
    iget-object v6, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 42
    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-interface {v6}, Lio/sentry/ISpan;->d()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    iget-object v6, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 52
    .line 53
    sget-object v7, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    .line 54
    .line 55
    invoke-interface {v6, v7}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iput-object v5, v4, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 59
    .line 60
    :cond_2
    iget-boolean v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    iget-object v7, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->y:Ljava/util/WeakHashMap;

    .line 64
    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    :try_start_1
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 68
    .line 69
    sget-object v8, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    .line 70
    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-interface {v4}, Lio/sentry/ISpan;->d()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    invoke-interface {v4, v8}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lio/sentry/ISpan;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Lio/sentry/ISpan;

    .line 93
    .line 94
    sget-object v9, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-interface {v4}, Lio/sentry/ISpan;->d()Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-nez v10, :cond_4

    .line 103
    .line 104
    invoke-interface {v4, v9}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-static {v8, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->h(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-interface {v4, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 115
    .line 116
    .line 117
    iput-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;

    .line 118
    .line 119
    :cond_5
    iget-boolean v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 120
    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lio/sentry/ITransaction;

    .line 128
    .line 129
    invoke-virtual {p0, v4, v5, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->q(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    iput-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_1

    .line 143
    :cond_7
    :goto_0
    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_8

    .line 157
    .line 158
    iput-boolean v6, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 159
    .line 160
    new-instance p1, Lio/sentry/SentryNanotimeDate;

    .line 161
    .line 162
    new-instance v0, Ljava/util/Date;

    .line 163
    .line 164
    const-wide/16 v4, 0x0

    .line 165
    .line 166
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, v0, v4, v5}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->w:Lio/sentry/SentryDate;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_8
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_1
    :try_start_2
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catchall_1
    move-exception p1

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :goto_2
    throw p0
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPrePaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_2
    throw p0
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->y:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Lio/sentry/ISpan;

    .line 24
    .line 25
    :goto_0
    iget-object p0, p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->b:Lio/sentry/SentryDate;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string p1, ".onCreate"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->b:Lio/sentry/SentryDate;

    .line 40
    .line 41
    invoke-static {v0, p0, p1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->a(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iput-object p0, p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 46
    .line 47
    invoke-interface {p0}, Lio/sentry/ISpan;->h()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    iget-object v3, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->y:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Lio/sentry/ISpan;

    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->c:Lio/sentry/SentryDate;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v0, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, ".onStart"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->c:Lio/sentry/SentryDate;

    .line 44
    .line 45
    invoke-static {v3, v0, v1}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->a(Lio/sentry/ISpan;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 50
    .line 51
    invoke-interface {v0}, Lio/sentry/ISpan;->h()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v1, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_2
    invoke-interface {v0}, Lio/sentry/ISpan;->s()Lio/sentry/SentryDate;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 69
    .line 70
    invoke-interface {v1}, Lio/sentry/ISpan;->s()Lio/sentry/SentryDate;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    sget-object v5, Lio/sentry/android/core/AndroidDateUtils;->a:Lio/sentry/android/core/SentryAndroidDateProvider;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v5, Lio/sentry/SentryNanotimeDate;

    .line 90
    .line 91
    invoke-direct {v5}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v6, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 95
    .line 96
    invoke-interface {v6}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Lio/sentry/SentryNanotimeDate;->b(Lio/sentry/SentryDate;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    const-wide/32 v8, 0xf4240

    .line 105
    .line 106
    .line 107
    div-long/2addr v6, v8

    .line 108
    invoke-virtual {v5, v0}, Lio/sentry/SentryNanotimeDate;->b(Lio/sentry/SentryDate;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    div-long/2addr v10, v8

    .line 113
    iget-object v0, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 114
    .line 115
    invoke-interface {v0}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v5, v0}, Lio/sentry/SentryNanotimeDate;->b(Lio/sentry/SentryDate;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v12

    .line 123
    div-long/2addr v12, v8

    .line 124
    invoke-virtual {v5, v1}, Lio/sentry/SentryNanotimeDate;->b(Lio/sentry/SentryDate;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    div-long/2addr v0, v8

    .line 129
    new-instance v5, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    .line 130
    .line 131
    invoke-direct {v5}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v14, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 135
    .line 136
    invoke-interface {v14}, Lio/sentry/ISpan;->o()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    iget-object v15, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->d:Lio/sentry/ISpan;

    .line 141
    .line 142
    invoke-interface {v15}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    invoke-virtual {v15}, Lio/sentry/SentryDate;->d()J

    .line 147
    .line 148
    .line 149
    move-result-wide v15

    .line 150
    move-wide/from16 p0, v8

    .line 151
    .line 152
    div-long v8, v15, p0

    .line 153
    .line 154
    sub-long v6, v3, v6

    .line 155
    .line 156
    sub-long v10, v3, v10

    .line 157
    .line 158
    iget-object v15, v5, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->j:Lio/sentry/android/core/performance/TimeSpan;

    .line 159
    .line 160
    iput-object v14, v15, Lio/sentry/android/core/performance/TimeSpan;->j:Ljava/lang/String;

    .line 161
    .line 162
    iput-wide v8, v15, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 163
    .line 164
    iput-wide v6, v15, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 165
    .line 166
    iput-wide v10, v15, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 167
    .line 168
    iget-object v6, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 169
    .line 170
    invoke-interface {v6}, Lio/sentry/ISpan;->o()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    iget-object v2, v2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->e:Lio/sentry/ISpan;

    .line 175
    .line 176
    invoke-interface {v2}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lio/sentry/SentryDate;->d()J

    .line 181
    .line 182
    .line 183
    move-result-wide v7

    .line 184
    div-long v7, v7, p0

    .line 185
    .line 186
    sub-long v9, v3, v12

    .line 187
    .line 188
    sub-long/2addr v3, v0

    .line 189
    iget-object v0, v5, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->k:Lio/sentry/android/core/performance/TimeSpan;

    .line 190
    .line 191
    iput-object v6, v0, Lio/sentry/android/core/performance/TimeSpan;->j:Ljava/lang/String;

    .line 192
    .line 193
    iput-wide v7, v0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 194
    .line 195
    iput-wide v9, v0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 196
    .line 197
    iput-wide v3, v0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 198
    .line 199
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->q:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_1
    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p2, v0}, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lio/sentry/android/core/AndroidDateUtils;->a:Lio/sentry/android/core/SentryAndroidDateProvider;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lio/sentry/SentryNanotimeDate;

    .line 47
    .line 48
    invoke-direct {p1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->w:Lio/sentry/SentryDate;

    .line 52
    .line 53
    iput-object p1, p2, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->b:Lio/sentry/SentryDate;

    .line 54
    .line 55
    return-void
.end method

.method public final onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 3
    .line 4
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lio/sentry/android/core/AndroidDateUtils;->a:Lio/sentry/android/core/SentryAndroidDateProvider;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p1, Lio/sentry/SentryNanotimeDate;

    .line 27
    .line 28
    invoke-direct {p1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->w:Lio/sentry/SentryDate;

    .line 32
    .line 33
    return-void
.end method

.method public final onActivityPreStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->v:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Lio/sentry/android/core/AndroidDateUtils;->a:Lio/sentry/android/core/SentryAndroidDateProvider;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    .line 30
    .line 31
    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iput-object p0, p1, Lio/sentry/android/core/performance/ActivityLifecycleSpanHelper;->c:Lio/sentry/SentryDate;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->t:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lio/sentry/ISpan;

    .line 28
    .line 29
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->u:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lio/sentry/ISpan;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Lio/sentry/android/core/d;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v3, p0, v2, v1, v4}, Lio/sentry/android/core/d;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 50
    .line 51
    invoke-static {p1, v3, p0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lio/sentry/android/core/d;

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-direct {v3, p0, v2, v1, v4}, Lio/sentry/android/core/d;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    throw p0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->z:Lio/sentry/android/core/ActivityFramesTracker;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    throw p0
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/ISpan;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Lio/sentry/ISpan;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p2, v0}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->h(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-interface {p2, p3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;

    .line 36
    .line 37
    :cond_2
    invoke-interface {p1}, Lio/sentry/ISpan;->a()Lio/sentry/SpanStatus;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 44
    .line 45
    :cond_3
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 49
    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    new-instance p3, Lio/sentry/android/core/l;

    .line 53
    .line 54
    invoke-direct {p3, p0, p1}, Lio/sentry/android/core/l;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method

.method public final v(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 6

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lio/sentry/android/core/performance/AppStartMetrics;->m:Lio/sentry/android/core/performance/TimeSpan;

    .line 6
    .line 7
    iget-object p1, p1, Lio/sentry/android/core/performance/AppStartMetrics;->n:Lio/sentry/android/core/performance/TimeSpan;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-wide v4, v0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 18
    .line 19
    cmp-long v1, v4, v2

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    iput-wide v4, v0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-wide v0, p1, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p1, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->a()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->B:Lio/sentry/util/AutoClosableReentrantLock;

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :try_start_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p2}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    const-wide/32 v2, 0xf4240

    .line 79
    .line 80
    .line 81
    div-long/2addr v0, v2

    .line 82
    const-string v2, "time_to_initial_display"

    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 89
    .line 90
    invoke-interface {p2, v2, v0, v1}, Lio/sentry/ISpan;->q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-static {p2, p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->n(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-interface {p2}, Lio/sentry/ISpan;->d()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_3

    .line 107
    .line 108
    invoke-interface {p2}, Lio/sentry/ISpan;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    throw p0
.end method

.method public final w(Landroid/app/Activity;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 11
    .line 12
    if-eqz v3, :cond_d

    .line 13
    .line 14
    iget-object v3, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->y:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_d

    .line 21
    .line 22
    iget-boolean v4, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Z

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    sget-object v0, Lio/sentry/NoOpTransaction;->a:Lio/sentry/NoOpTransaction;

    .line 27
    .line 28
    invoke-virtual {v3, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_d

    .line 38
    .line 39
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 40
    .line 41
    new-instance v1, Lfe;

    .line 42
    .line 43
    const/16 v2, 0x1d

    .line 44
    .line 45
    invoke-direct {v1, v2}, Lfe;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->u:Ljava/util/WeakHashMap;

    .line 65
    .line 66
    iget-object v7, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->t:Ljava/util/WeakHashMap;

    .line 67
    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Lio/sentry/ITransaction;

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v7, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Lio/sentry/ISpan;

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v6, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lio/sentry/ISpan;

    .line 101
    .line 102
    invoke-virtual {v1, v8, v7, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->q(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v8, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 119
    .line 120
    invoke-virtual {v5, v8}, Lio/sentry/android/core/performance/AppStartMetrics;->b(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->d()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x1

    .line 130
    const/4 v11, 0x0

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {v5}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_2

    .line 144
    .line 145
    new-instance v8, Lio/sentry/SentryLongDate;

    .line 146
    .line 147
    iget-wide v12, v5, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 148
    .line 149
    const-wide/32 v14, 0xf4240

    .line 150
    .line 151
    .line 152
    mul-long/2addr v12, v14

    .line 153
    invoke-direct {v8, v12, v13}, Lio/sentry/SentryLongDate;-><init>(J)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    move-object v8, v11

    .line 158
    :goto_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v5, v5, Lio/sentry/android/core/performance/AppStartMetrics;->j:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 163
    .line 164
    sget-object v12, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 165
    .line 166
    if-ne v5, v12, :cond_3

    .line 167
    .line 168
    move v5, v10

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    move v5, v9

    .line 171
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    move-object v15, v8

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    move-object v5, v11

    .line 178
    move-object v15, v5

    .line 179
    :goto_3
    new-instance v8, Lio/sentry/TransactionOptions;

    .line 180
    .line 181
    invoke-direct {v8}, Lio/sentry/TransactionOptions;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v12, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 185
    .line 186
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getDeadlineTimeout()J

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    const-wide/16 v16, 0x0

    .line 191
    .line 192
    cmp-long v14, v12, v16

    .line 193
    .line 194
    if-gtz v14, :cond_5

    .line 195
    .line 196
    move-object v12, v11

    .line 197
    goto :goto_4

    .line 198
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    :goto_4
    iput-object v12, v8, Lio/sentry/TransactionOptions;->h:Ljava/lang/Long;

    .line 203
    .line 204
    iget-object v12, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 205
    .line 206
    invoke-virtual {v12}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-eqz v12, :cond_6

    .line 211
    .line 212
    iget-object v12, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 213
    .line 214
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    iput-object v12, v8, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 219
    .line 220
    iput-boolean v10, v8, Lio/sentry/SpanOptions;->c:Z

    .line 221
    .line 222
    :cond_6
    iput-boolean v10, v8, Lio/sentry/TransactionOptions;->f:Z

    .line 223
    .line 224
    new-instance v12, Lio/sentry/android/core/f;

    .line 225
    .line 226
    invoke-direct {v12, v1, v0, v4}, Lio/sentry/android/core/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iput-object v12, v8, Lio/sentry/TransactionOptions;->i:Lio/sentry/android/core/f;

    .line 230
    .line 231
    iget-boolean v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 232
    .line 233
    if-nez v0, :cond_7

    .line 234
    .line 235
    if-eqz v15, :cond_7

    .line 236
    .line 237
    if-eqz v5, :cond_7

    .line 238
    .line 239
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->t:Lio/sentry/TracesSamplingDecision;

    .line 244
    .line 245
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    iput-object v11, v12, Lio/sentry/android/core/performance/AppStartMetrics;->t:Lio/sentry/TracesSamplingDecision;

    .line 250
    .line 251
    move-object v11, v0

    .line 252
    move-object v0, v15

    .line 253
    goto :goto_5

    .line 254
    :cond_7
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->w:Lio/sentry/SentryDate;

    .line 255
    .line 256
    :goto_5
    iput-object v0, v8, Lio/sentry/SpanOptions;->a:Lio/sentry/SentryDate;

    .line 257
    .line 258
    if-eqz v11, :cond_8

    .line 259
    .line 260
    move v9, v10

    .line 261
    :cond_8
    iput-boolean v9, v8, Lio/sentry/TransactionOptions;->e:Z

    .line 262
    .line 263
    const-string v9, "auto.ui.activity"

    .line 264
    .line 265
    iput-object v9, v8, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v10, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 268
    .line 269
    new-instance v12, Lio/sentry/TransactionContext;

    .line 270
    .line 271
    sget-object v13, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 272
    .line 273
    const-string v14, "ui.load"

    .line 274
    .line 275
    invoke-direct {v12, v4, v13, v14, v11}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v12, v8}, Lio/sentry/ScopesAdapter;->n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    new-instance v8, Lio/sentry/SpanOptions;

    .line 283
    .line 284
    invoke-direct {v8}, Lio/sentry/SpanOptions;-><init>()V

    .line 285
    .line 286
    .line 287
    iput-object v9, v8, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 288
    .line 289
    iget-boolean v9, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Z

    .line 290
    .line 291
    if-nez v9, :cond_b

    .line 292
    .line 293
    if-eqz v15, :cond_b

    .line 294
    .line 295
    if-eqz v5, :cond_b

    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-eqz v9, :cond_9

    .line 302
    .line 303
    const-string v9, "app.start.cold"

    .line 304
    .line 305
    :goto_6
    move-object v13, v9

    .line 306
    goto :goto_7

    .line 307
    :cond_9
    const-string v9, "app.start.warm"

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_a

    .line 315
    .line 316
    const-string v5, "Cold Start"

    .line 317
    .line 318
    :goto_8
    move-object v14, v5

    .line 319
    move-object/from16 v12, v16

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_a
    const-string v5, "Warm Start"

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :goto_9
    sget-object v16, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 326
    .line 327
    move-object/from16 v17, v8

    .line 328
    .line 329
    invoke-interface/range {v12 .. v17}, Lio/sentry/ISpan;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    move-object/from16 v16, v12

    .line 334
    .line 335
    move-object/from16 v21, v17

    .line 336
    .line 337
    iput-object v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->s:Lio/sentry/ISpan;

    .line 338
    .line 339
    invoke-virtual {v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->a()V

    .line 340
    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_b
    move-object/from16 v21, v8

    .line 344
    .line 345
    :goto_a
    const-string v5, " initial display"

    .line 346
    .line 347
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v18

    .line 351
    sget-object v20, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 352
    .line 353
    const-string v17, "ui.load.initial_display"

    .line 354
    .line 355
    move-object/from16 v19, v0

    .line 356
    .line 357
    invoke-interface/range {v16 .. v21}, Lio/sentry/ISpan;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v7, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    iget-boolean v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:Z

    .line 365
    .line 366
    if-eqz v5, :cond_c

    .line 367
    .line 368
    iget-object v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/FullyDisplayedReporter;

    .line 369
    .line 370
    if-eqz v5, :cond_c

    .line 371
    .line 372
    iget-object v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 373
    .line 374
    if-eqz v5, :cond_c

    .line 375
    .line 376
    const-string v5, " full display"

    .line 377
    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v18

    .line 382
    const-string v17, "ui.load.full_display"

    .line 383
    .line 384
    invoke-interface/range {v16 .. v21}, Lio/sentry/ISpan;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    move-object/from16 v12, v16

    .line 389
    .line 390
    :try_start_0
    invoke-virtual {v6, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    iget-object v5, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 394
    .line 395
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    new-instance v6, Lio/sentry/android/core/g;

    .line 400
    .line 401
    invoke-direct {v6, v1, v4, v0}, Lio/sentry/android/core/g;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 402
    .line 403
    .line 404
    const-wide/16 v7, 0x61a8

    .line 405
    .line 406
    invoke-interface {v5, v7, v8, v6}, Lio/sentry/ISentryExecutorService;->c(JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    iput-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->x:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :catch_0
    move-exception v0

    .line 414
    iget-object v4, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 415
    .line 416
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 421
    .line 422
    const-string v6, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    .line 423
    .line 424
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .line 426
    .line 427
    goto :goto_b

    .line 428
    :cond_c
    move-object/from16 v12, v16

    .line 429
    .line 430
    :goto_b
    iget-object v0, v1, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Lio/sentry/ScopesAdapter;

    .line 431
    .line 432
    new-instance v4, Lio/sentry/android/core/e;

    .line 433
    .line 434
    invoke-direct {v4, v1, v12}, Lio/sentry/android/core/e;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v4}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v2, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    :cond_d
    return-void
.end method
