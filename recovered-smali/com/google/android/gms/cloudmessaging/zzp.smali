.class final Lcom/google/android/gms/cloudmessaging/zzp;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public j:I

.field public final k:Landroid/os/Messenger;

.field public l:Lcom/google/android/gms/cloudmessaging/zzq;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Landroid/util/SparseArray;

.field public final synthetic o:Lcom/google/android/gms/cloudmessaging/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cloudmessaging/zzv;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 8
    .line 9
    new-instance p1, Landroid/os/Messenger;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zzv;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzo;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/google/android/gms/cloudmessaging/zzo;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->k:Landroid/os/Messenger;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    new-instance p1, Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->n:Landroid/util/SparseArray;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/cloudmessaging/zzs;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v7, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eq v0, v7, :cond_1

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzl;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/google/android/gms/cloudmessaging/zzl;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return v7

    .line 34
    :goto_0
    move-object v6, p0

    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return v7

    .line 47
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 53
    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    const-string p1, "MessengerIpcClient"

    .line 57
    .line 58
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    :try_start_4
    const-string p1, "MessengerIpcClient"

    .line 65
    .line 66
    const-string v0, "Starting bind to GmsCore"

    .line 67
    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_3
    :try_start_5
    iput v7, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 72
    .line 73
    new-instance v5, Landroid/content/Intent;

    .line 74
    .line 75
    const-string p1, "com.google.android.c2dm.intent.REGISTER"

    .line 76
    .line 77
    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p1, "com.google.android.gms"

    .line 81
    .line 82
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 83
    .line 84
    .line 85
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/google/android/gms/cloudmessaging/zzv;->a:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 92
    .line 93
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 97
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 101
    const/4 v8, 0x0

    .line 102
    move-object v6, p0

    .line 103
    :try_start_9
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    .line 104
    .line 105
    .line 106
    move-result p0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 107
    if-nez p0, :cond_4

    .line 108
    .line 109
    :try_start_a
    const-string p0, "Unable to bind to service"

    .line 110
    .line 111
    invoke-virtual {v6, p0}, Lcom/google/android/gms/cloudmessaging/zzp;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    :goto_1
    move-object p1, v0

    .line 117
    goto :goto_7

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :goto_2
    move-object p0, v0

    .line 120
    goto :goto_5

    .line 121
    :cond_4
    :try_start_b
    new-instance p0, Lcom/google/android/gms/cloudmessaging/zzj;

    .line 122
    .line 123
    invoke-direct {p0, v6}, Lcom/google/android/gms/cloudmessaging/zzj;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 127
    .line 128
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    .line 130
    const-wide/16 v1, 0x1e

    .line 131
    .line 132
    invoke-interface {p1, p0, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :catchall_2
    move-exception v0

    .line 137
    goto :goto_4

    .line 138
    :catchall_3
    move-exception v0

    .line 139
    move-object v6, p0

    .line 140
    goto :goto_4

    .line 141
    :goto_3
    move-object p1, p0

    .line 142
    goto :goto_7

    .line 143
    :catchall_4
    move-exception v0

    .line 144
    move-object v6, p0

    .line 145
    :goto_4
    move-object p0, v0

    .line 146
    goto :goto_3

    .line 147
    :catchall_5
    move-exception v0

    .line 148
    move-object v6, p0

    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    .line 151
    move-object v6, p0

    .line 152
    goto :goto_2

    .line 153
    :goto_5
    const-string p1, "Unable to bind to service"

    .line 154
    .line 155
    invoke-virtual {v6, p1, p0}, Lcom/google/android/gms/cloudmessaging/zzp;->c(Ljava/lang/String;Ljava/lang/SecurityException;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 156
    .line 157
    .line 158
    :goto_6
    monitor-exit v6

    .line 159
    return v7

    .line 160
    :cond_5
    move-object v6, p0

    .line 161
    :try_start_c
    new-instance p0, Ljava/lang/IllegalStateException;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 162
    .line 163
    :try_start_d
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 164
    .line 165
    .line 166
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 167
    :catchall_6
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :catchall_7
    move-exception v0

    .line 170
    goto :goto_4

    .line 171
    :goto_7
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 172
    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cloudmessaging/zzp;->c(Ljava/lang/String;Ljava/lang/SecurityException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/SecurityException;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "Disconnected: "

    .line 16
    .line 17
    const-string v3, "MessengerIpcClient"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq v0, v4, :cond_2

    .line 37
    .line 38
    if-eq v0, v3, :cond_2

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    :try_start_1
    iput v2, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :cond_2
    :try_start_2
    const-string v0, "MessengerIpcClient"

    .line 49
    .line 50
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const-string v0, "MessengerIpcClient"

    .line 57
    .line 58
    const-string v1, "Unbinding service"

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_3
    iput v2, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v0, v0, Lcom/google/android/gms/cloudmessaging/zzv;->a:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzt;

    .line 77
    .line 78
    invoke-direct {v0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cloudmessaging/zzs;->d(Lcom/google/android/gms/cloudmessaging/zzt;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzp;->n:Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-ge p1, v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Lcom/google/android/gms/cloudmessaging/zzs;->d(Lcom/google/android/gms/cloudmessaging/zzt;)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 132
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->n:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "MessengerIpcClient"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "MessengerIpcClient"

    .line 32
    .line 33
    const-string v1, "Finished handling requests, unbinding"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v0, v0, Lcom/google/android/gms/cloudmessaging/zzv;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_1
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "Service connected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzk;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/cloudmessaging/zzk;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "Service disconnected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzm;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/google/android/gms/cloudmessaging/zzm;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
