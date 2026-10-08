.class public abstract Lcom/google/firebase/messaging/EnhancedIntentService;
.super Landroid/app/Service;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnwrappedWakefulBroadcastReceiver"
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public final j:Ljava/util/concurrent/ExecutorService;

.field public k:Landroid/os/Binder;

.field public final l:Ljava/lang/Object;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/firebase/messaging/threads/PoolableExecutors;->a:Lcom/google/firebase/messaging/threads/ExecutorFactory;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 7
    .line 8
    const-string v2, "Firebase-Messaging-Intent-Handle"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/google/firebase/messaging/threads/ExecutorFactory;->a(Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->j:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->l:Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->n:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/WakeLockHolder;->b(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->l:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->n:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->n:I

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->m:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public abstract b(Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p1, "EnhancedIntentService"

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p1, "EnhancedIntentService"

    .line 12
    .line 13
    const-string v0, "Service received bind request"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->k:Landroid/os/Binder;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/google/firebase/messaging/WithinAppServiceBinder;

    .line 26
    .line 27
    new-instance v0, Lcom/google/firebase/messaging/EnhancedIntentService$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/EnhancedIntentService$1;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/WithinAppServiceBinder;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService$1;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->k:Landroid/os/Binder;

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->k:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->j:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->m:I

    .line 5
    .line 6
    iget p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->n:I

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0x1

    .line 9
    .line 10
    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->n:I

    .line 11
    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->a()Lcom/google/firebase/messaging/ServiceStarter;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p2, p2, Lcom/google/firebase/messaging/ServiceStarter;->d:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroid/content/Intent;

    .line 24
    .line 25
    const/4 p3, 0x2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return p3

    .line 32
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->j:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    new-instance v2, Ls3;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    invoke-direct {v2, p0, p2, v0, v3}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->j()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    return p3

    .line 60
    :cond_1
    new-instance v0, Lz2;

    .line 61
    .line 62
    invoke-direct {v0, p3}, Lz2;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Ln5;

    .line 66
    .line 67
    invoke-direct {p3, v3, p0, p1}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x3

    .line 74
    return p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p0
.end method
