.class public final Lio/sentry/android/core/AppState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AppState$LifecycleObserver;,
        Lio/sentry/android/core/AppState$AppStateListener;
    }
.end annotation


# static fields
.field public static final n:Lio/sentry/android/core/AppState;


# instance fields
.field public final j:Lio/sentry/util/AutoClosableReentrantLock;

.field public volatile k:Lio/sentry/android/core/AppState$LifecycleObserver;

.field public final l:Lio/sentry/android/core/MainLooperHandler;

.field public volatile m:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/AppState;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/AppState;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/AppState;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 10
    .line 11
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/android/core/AppState;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/sentry/android/core/AppState;->m:Ljava/lang/Boolean;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/core/AppState$AppStateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lio/sentry/android/core/AppState;->n(Lio/sentry/ILogger;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 17
    .line 18
    iget-object p0, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 19
    .line 20
    check-cast p0, Lio/sentry/android/core/AppState$LifecycleObserver$1;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lio/sentry/android/core/AppState$LifecycleObserver$1;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    throw p0
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/AppState;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Lio/sentry/ILogger;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Landroidx/lifecycle/ProcessLifecycleOwner;->r:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/lifecycle/ProcessLifecycleOwner;->o:Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 16
    .line 17
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const-string v1, "AppState failed to get Lifecycle and could not install lifecycle observer."

    .line 20
    .line 21
    invoke-interface {p1, p0, v1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final n(Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->r:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 7
    .line 8
    new-instance v0, Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/sentry/android/core/AppState$LifecycleObserver;-><init>(Lio/sentry/android/core/AppState;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 14
    .line 15
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lio/sentry/android/core/AppState;->h(Lio/sentry/ILogger;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 30
    .line 31
    new-instance v1, Lio/sentry/android/core/g;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-direct {v1, v2, p0, p1}, Lio/sentry/android/core/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, v0, Lio/sentry/android/core/MainLooperHandler;->a:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 44
    .line 45
    const-string v1, "AppState could not register lifecycle observer"

    .line 46
    .line 47
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v1, "androidx.lifecycle is not available, some features might not be properly working,e.g. Session Tracking, Network and System Events breadcrumbs, etc."

    .line 57
    .line 58
    invoke-interface {p1, p0, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method public final q(Lio/sentry/android/core/AppState$AppStateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_2
    throw p0
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AppState;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 13
    .line 14
    iget-object v2, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 15
    .line 16
    iget-object v2, v2, Lio/sentry/android/core/AppState$LifecycleObserver;->j:Ljava/util/List;

    .line 17
    .line 18
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object p0, Landroidx/lifecycle/ProcessLifecycleOwner;->r:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->o:Landroidx/lifecycle/LifecycleRegistry;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LifecycleRegistry;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AppState;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 48
    .line 49
    new-instance v2, Lio/sentry/android/core/b;

    .line 50
    .line 51
    invoke-direct {v2, p0, v1}, Lio/sentry/android/core/b;-><init>(Lio/sentry/android/core/AppState;Lio/sentry/android/core/AppState$LifecycleObserver;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, v0, Lio/sentry/android/core/MainLooperHandler;->a:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    throw p0
.end method
