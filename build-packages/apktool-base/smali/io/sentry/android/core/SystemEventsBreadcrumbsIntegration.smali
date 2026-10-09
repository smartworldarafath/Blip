.class public final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/core/AppState$AppStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;,
        Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    }
.end annotation


# instance fields
.field public final j:Landroid/content/Context;

.field public volatile k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

.field public l:Lio/sentry/android/core/SentryAndroidOptions;

.field public m:Lio/sentry/ScopesAdapter;

.field public final n:[Ljava/lang/String;

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Landroid/content/IntentFilter;

.field public volatile r:Landroid/os/HandlerThread;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final t:Lio/sentry/util/AutoClosableReentrantLock;

.field public u:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v18, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 4
    .line 5
    const-string v19, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 6
    .line 7
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 8
    .line 9
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 10
    .line 11
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 12
    .line 13
    const-string v4, "android.intent.action.CAMERA_BUTTON"

    .line 14
    .line 15
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    .line 16
    .line 17
    const-string v6, "android.intent.action.DATE_CHANGED"

    .line 18
    .line 19
    const-string v7, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 20
    .line 21
    const-string v8, "android.intent.action.DEVICE_STORAGE_OK"

    .line 22
    .line 23
    const-string v9, "android.intent.action.DOCK_EVENT"

    .line 24
    .line 25
    const-string v10, "android.intent.action.DREAMING_STARTED"

    .line 26
    .line 27
    const-string v11, "android.intent.action.DREAMING_STOPPED"

    .line 28
    .line 29
    const-string v12, "android.intent.action.INPUT_METHOD_CHANGED"

    .line 30
    .line 31
    const-string v13, "android.intent.action.LOCALE_CHANGED"

    .line 32
    .line 33
    const-string v14, "android.intent.action.SCREEN_OFF"

    .line 34
    .line 35
    const-string v15, "android.intent.action.SCREEN_ON"

    .line 36
    .line 37
    const-string v16, "android.intent.action.TIMEZONE_CHANGED"

    .line 38
    .line 39
    const-string v17, "android.intent.action.TIME_SET"

    .line 40
    .line 41
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    iput-boolean v2, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->o:Z

    .line 50
    .line 51
    iput-boolean v2, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->p:Z

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    iput-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 55
    .line 56
    iput-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 57
    .line 58
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    new-instance v2, Lio/sentry/util/AutoClosableReentrantLock;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->t:Lio/sentry/util/AutoClosableReentrantLock;

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object/from16 v2, p1

    .line 80
    .line 81
    :goto_0
    iput-object v2, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->j:Landroid/content/Context;

    .line 82
    .line 83
    iput-object v1, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->n:[Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 3

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
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    sget-object v0, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 17
    .line 18
    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->m:Lio/sentry/ScopesAdapter;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "SystemEventsBreadcrumbsIntegration enabled: %s"

    .line 41
    .line 42
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 46
    .line 47
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget-object p1, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lio/sentry/android/core/AppState;->a(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->d()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->m:Lio/sentry/ScopesAdapter;

    .line 65
    .line 66
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->n(Lio/sentry/ScopesAdapter;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->m:Lio/sentry/ScopesAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->p:Z

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->m:Lio/sentry/ScopesAdapter;

    .line 14
    .line 15
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->n(Lio/sentry/ScopesAdapter;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->t:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->o:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 12
    .line 13
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->q(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lio/sentry/android/core/b;

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    const-string v2, "SystemEventsBreadcrumbsIntegration removed."

    .line 73
    .line 74
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_3
    throw p0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lio/sentry/android/core/b;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final n(Lio/sentry/ScopesAdapter;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

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
    iget-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->o:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->p:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lio/sentry/android/core/m;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/m;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    new-array p2, p2, [Ljava/lang/Object;

    .line 42
    .line 43
    const-string v0, "Failed to start SystemEventsBreadcrumbsIntegration on executor thread."

    .line 44
    .line 45
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final q(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->t:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->p:Z

    .line 9
    .line 10
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->j:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v2, "Failed to unregister SystemEventsBroadcastReceiver"

    .line 37
    .line 38
    invoke-interface {p1, v0, p0, v2, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_2
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    throw p0
.end method
