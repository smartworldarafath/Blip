.class final Lio/sentry/android/core/LifecycleWatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/AppState$AppStateListener;


# instance fields
.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:J

.field public l:Ljava/util/TimerTask;

.field public final m:Lio/sentry/util/LazyEvaluator;

.field public final n:Lio/sentry/util/AutoClosableReentrantLock;

.field public final o:Lio/sentry/ScopesAdapter;

.field public final p:Z

.field public final q:Z

.field public final r:Lio/sentry/transport/CurrentDateProvider;


# direct methods
.method public constructor <init>(JZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/core/a;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->m:Lio/sentry/util/LazyEvaluator;

    .line 26
    .line 27
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 33
    .line 34
    iput-wide p1, p0, Lio/sentry/android/core/LifecycleWatcher;->k:J

    .line 35
    .line 36
    iput-boolean p3, p0, Lio/sentry/android/core/LifecycleWatcher;->p:Z

    .line 37
    .line 38
    iput-boolean p4, p0, Lio/sentry/android/core/LifecycleWatcher;->q:Z

    .line 39
    .line 40
    sget-object p1, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 41
    .line 42
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->o:Lio/sentry/ScopesAdapter;

    .line 43
    .line 44
    sget-object p1, Lio/sentry/transport/CurrentDateProvider;->j:Lio/sentry/transport/CurrentDateProvider;

    .line 45
    .line 46
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher;->r:Lio/sentry/transport/CurrentDateProvider;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/LifecycleWatcher;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->r:Lio/sentry/transport/CurrentDateProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance v2, Lio/sentry/android/core/l;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3, p0}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lio/sentry/android/core/LifecycleWatcher;->o:Lio/sentry/ScopesAdapter;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lio/sentry/ScopesAdapter;->o(Lio/sentry/ScopeCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    cmp-long v6, v4, v6

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    iget-wide v6, p0, Lio/sentry/android/core/LifecycleWatcher;->k:J

    .line 37
    .line 38
    add-long/2addr v4, v6

    .line 39
    cmp-long v4, v4, v0

    .line 40
    .line 41
    if-gtz v4, :cond_2

    .line 42
    .line 43
    :cond_0
    iget-boolean v4, p0, Lio/sentry/android/core/LifecycleWatcher;->p:Z

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Lio/sentry/ScopesAdapter;->m()V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v3}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v4}, Lio/sentry/ReplayController;->O()V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v3}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Lio/sentry/ReplayController;->v()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 73
    .line 74
    .line 75
    const-string v0, "foreground"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lio/sentry/android/core/LifecycleWatcher;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/LifecycleWatcher;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/Breadcrumb;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "navigation"

    .line 11
    .line 12
    iput-object v1, v0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "state"

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "app.lifecycle"

    .line 20
    .line 21
    iput-object p1, v0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 22
    .line 23
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 24
    .line 25
    iput-object p1, v0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 26
    .line 27
    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher;->o:Lio/sentry/ScopesAdapter;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lio/sentry/ScopesAdapter;->e(Lio/sentry/Breadcrumb;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->l:Ljava/util/TimerTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->l:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_2
    throw p0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->r:Lio/sentry/transport/CurrentDateProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->o:Lio/sentry/ScopesAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lio/sentry/ReplayController;->a()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/LifecycleWatcher;->c()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lio/sentry/android/core/LifecycleWatcher$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lio/sentry/android/core/LifecycleWatcher$1;-><init>(Lio/sentry/android/core/LifecycleWatcher;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->l:Ljava/util/TimerTask;

    .line 43
    .line 44
    iget-object v1, p0, Lio/sentry/android/core/LifecycleWatcher;->m:Lio/sentry/util/LazyEvaluator;

    .line 45
    .line 46
    invoke-virtual {v1}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Timer;

    .line 51
    .line 52
    iget-object v2, p0, Lio/sentry/android/core/LifecycleWatcher;->l:Ljava/util/TimerTask;

    .line 53
    .line 54
    iget-wide v3, p0, Lio/sentry/android/core/LifecycleWatcher;->k:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 60
    .line 61
    .line 62
    const-string v0, "background"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lio/sentry/android/core/LifecycleWatcher;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    throw p0
.end method
