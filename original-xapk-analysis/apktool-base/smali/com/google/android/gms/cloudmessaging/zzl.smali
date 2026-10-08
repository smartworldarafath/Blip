.class final synthetic Lcom/google/android/gms/cloudmessaging/zzl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/cloudmessaging/zzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzl;->j:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzl;->j:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lcom/google/android/gms/cloudmessaging/zzp;->j:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzp;->m:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzp;->d()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    :goto_1
    return-void

    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzp;->n:Landroid/util/SparseArray;

    .line 34
    .line 35
    iget v3, v1, Lcom/google/android/gms/cloudmessaging/zzs;->a:I

    .line 36
    .line 37
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/google/android/gms/cloudmessaging/zzv;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    .line 44
    new-instance v4, Lcom/google/android/gms/cloudmessaging/zzn;

    .line 45
    .line 46
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cloudmessaging/zzn;-><init>(Lcom/google/android/gms/cloudmessaging/zzp;Lcom/google/android/gms/cloudmessaging/zzs;)V

    .line 47
    .line 48
    .line 49
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    const-wide/16 v6, 0x1e

    .line 52
    .line 53
    invoke-interface {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 54
    .line 55
    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const-string v2, "MessengerIpcClient"

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v4, "Sending "

    .line 71
    .line 72
    const-string v5, "MessengerIpcClient"

    .line 73
    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzp;->o:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 82
    .line 83
    iget-object v4, v0, Lcom/google/android/gms/cloudmessaging/zzp;->k:Landroid/os/Messenger;

    .line 84
    .line 85
    iget v5, v1, Lcom/google/android/gms/cloudmessaging/zzs;->c:I

    .line 86
    .line 87
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iput v5, v6, Landroid/os/Message;->what:I

    .line 92
    .line 93
    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 94
    .line 95
    iput-object v4, v6, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 96
    .line 97
    new-instance v3, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/cloudmessaging/zzs;->a()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const-string v5, "oneWay"

    .line 107
    .line 108
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v2, Lcom/google/android/gms/cloudmessaging/zzv;->a:Landroid/content/Context;

    .line 112
    .line 113
    const-string v4, "pkg"

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzs;->d:Landroid/os/Bundle;

    .line 123
    .line 124
    const-string v2, "data"

    .line 125
    .line 126
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzp;->l:Lcom/google/android/gms/cloudmessaging/zzq;

    .line 133
    .line 134
    iget-object v2, v1, Lcom/google/android/gms/cloudmessaging/zzq;->a:Landroid/os/Messenger;

    .line 135
    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzq;->b:Lcom/google/android/gms/cloudmessaging/zzd;

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzd;->j:Landroid/os/Messenger;

    .line 148
    .line 149
    invoke-virtual {v1, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v2, "Both messengers are null"

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/zzp;->b(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    throw p0
.end method
