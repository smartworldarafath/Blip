.class public final synthetic Lcom/google/firebase/messaging/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic k:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/d;->j:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/d;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/d;->j:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/messaging/d;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/GmsRpc;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "delete"

    .line 16
    .line 17
    const-string v4, "1"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v1, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    const/4 v4, 0x0

    .line 29
    :try_start_1
    invoke-virtual {v1, v3, v2, v4}, Lcom/google/firebase/messaging/GmsRpc;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 30
    .line 31
    .line 32
    :try_start_2
    iget-object v3, v1, Lcom/google/firebase/messaging/GmsRpc;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->b(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception v2

    .line 42
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    new-instance v3, Lz2;

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4}, Lz2;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lfe;

    .line 53
    .line 54
    const/16 v5, 0x17

    .line 55
    .line 56
    invoke-direct {v4, v5, v1}, Lfe;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Lcom/google/firebase/messaging/Store;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/FirebaseApp;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    :try_start_3
    invoke-static {v2, v0}, Lcom/google/firebase/messaging/Store;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, v1, Lcom/google/firebase/messaging/Store;->a:Landroid/content/SharedPreferences;

    .line 88
    .line 89
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_4
    monitor-exit v1

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_2
    move-exception v0

    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 110
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
