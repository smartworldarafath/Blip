.class public final Lio/sentry/android/core/ActivityFramesTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/util/LazyEvaluator;

.field public final b:Lio/sentry/android/core/SentryAndroidOptions;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/WeakHashMap;

.field public final e:Lio/sentry/android/core/MainLooperHandler;

.field public final f:Lio/sentry/util/AutoClosableReentrantLock;

.field public final g:Lio/sentry/util/LazyEvaluator;


# direct methods
.method public constructor <init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    new-instance v1, Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->d:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->f:Lio/sentry/util/AutoClosableReentrantLock;

    .line 29
    .line 30
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lio/sentry/util/LazyEvaluator;

    .line 35
    .line 36
    new-instance v3, Lio/sentry/kotlin/multiplatform/extensions/a;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-direct {v3, p1, v1, v4}, Lio/sentry/kotlin/multiplatform/extensions/a;-><init>(Lio/sentry/util/LoadClass;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lio/sentry/android/core/ActivityFramesTracker;->g:Lio/sentry/util/LazyEvaluator;

    .line 46
    .line 47
    new-instance p1, Lio/sentry/util/LazyEvaluator;

    .line 48
    .line 49
    new-instance v1, Lio/sentry/android/core/a;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 59
    .line 60
    iput-object p2, p0, Lio/sentry/android/core/ActivityFramesTracker;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 61
    .line 62
    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->e:Lio/sentry/android/core/MainLooperHandler;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->f:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance v1, Lio/sentry/android/core/c;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, p1, v2}, Lio/sentry/android/core/c;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "FrameMetricsAggregator.add"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Lio/sentry/android/core/ActivityFramesTracker;->d(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->b()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->d:Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    throw p0
.end method

.method public final b()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->g:Lio/sentry/util/LazyEvaluator;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 25
    .line 26
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/core/app/FrameMetricsAggregator;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/core/app/FrameMetricsAggregator;->b()[Landroid/util/SparseIntArray;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length v0, p0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-lez v0, :cond_5

    .line 39
    .line 40
    aget-object p0, p0, v1

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    move v0, v1

    .line 45
    move v2, v0

    .line 46
    move v3, v2

    .line 47
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v1, v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    add-int/2addr v0, v5

    .line 62
    const/16 v6, 0x2bc

    .line 63
    .line 64
    if-le v4, v6, :cond_2

    .line 65
    .line 66
    add-int/2addr v3, v5

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/16 v6, 0x10

    .line 69
    .line 70
    if-le v4, v6, :cond_3

    .line 71
    .line 72
    add-int/2addr v2, v5

    .line 73
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move v1, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    move v2, v1

    .line 79
    move v3, v2

    .line 80
    :goto_3
    new-instance p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 81
    .line 82
    invoke-direct {p0, v1, v2, v3}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(III)V

    .line 83
    .line 84
    .line 85
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->g:Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final d(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->e:Lio/sentry/android/core/MainLooperHandler;

    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/core/m;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, p0, p1, p2, v2}, Lio/sentry/android/core/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lio/sentry/android/core/MainLooperHandler;->a:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 36
    .line 37
    const-string v0, "Failed to execute "

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
