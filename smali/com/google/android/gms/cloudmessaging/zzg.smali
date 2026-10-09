.class final synthetic Lcom/google/android/gms/cloudmessaging/zzg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroid/content/Intent;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Z

.field public final synthetic m:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzg;->j:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/zzg;->k:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/cloudmessaging/zzg;->l:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/cloudmessaging/zzg;->m:Landroid/content/BroadcastReceiver$PendingResult;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzg;->j:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzg;->k:Landroid/content/Context;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/google/android/gms/cloudmessaging/zzg;->l:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/cloudmessaging/zzg;->m:Landroid/content/BroadcastReceiver$PendingResult;

    .line 10
    .line 11
    :try_start_0
    const-string v0, "wrapped_intent"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v5, v0, Landroid/content/Intent;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroid/content/Intent;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_0
    move-object v0, v6

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->a(Landroid/content/Intent;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    const-string v5, "Message ack failed: "

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v7, 0x1f4

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    :cond_2
    :goto_1
    move v0, v7

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_3
    new-instance v0, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessage;-><init>(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const-class v10, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

    .line 62
    .line 63
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    sget-object v11, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->b:Ljava/lang/ref/SoftReference;

    .line 65
    .line 66
    if-eqz v11, :cond_4

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_4
    :goto_2
    if-nez v6, :cond_5

    .line 79
    .line 80
    new-instance v6, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 81
    .line 82
    const-string v11, "pscm-ack-executor"

    .line 83
    .line 84
    invoke-direct {v6, v11}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 88
    .line 89
    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    .line 91
    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 92
    .line 93
    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v12, 0x1

    .line 97
    const/4 v13, 0x1

    .line 98
    const-wide/16 v14, 0x3c

    .line 99
    .line 100
    move-object/from16 v18, v6

    .line 101
    .line 102
    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 106
    .line 107
    .line 108
    invoke-static {v11}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v9, Ljava/lang/ref/SoftReference;

    .line 113
    .line 114
    invoke-direct {v9, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->b:Ljava/lang/ref/SoftReference;

    .line 118
    .line 119
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    new-instance v9, Lcom/google/android/gms/cloudmessaging/zze;

    .line 121
    .line 122
    invoke-direct {v9, v2, v0, v8}, Lcom/google/android/gms/cloudmessaging/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;Ljava/util/concurrent/CountDownLatch;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v6, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    :try_start_3
    new-instance v0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;

    .line 129
    .line 130
    invoke-direct {v0, v2}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v0
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    move v7, v0

    .line 148
    goto :goto_4

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_3

    .line 151
    :catch_1
    move-exception v0

    .line 152
    :goto_3
    :try_start_4
    const-string v1, "FirebaseMessaging"

    .line 153
    .line 154
    const-string v2, "Failed to send message to service."

    .line 155
    .line 156
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .line 158
    .line 159
    :goto_4
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 160
    .line 161
    const-wide/16 v1, 0x3e8

    .line 162
    .line 163
    invoke-virtual {v8, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_2

    .line 168
    .line 169
    const-string v0, "CloudMessagingReceiver"

    .line 170
    .line 171
    const-string v1, "Message ack timed out"

    .line 172
    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :catch_2
    move-exception v0

    .line 179
    :try_start_6
    const-string v1, "CloudMessagingReceiver"

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :goto_5
    if-eqz v3, :cond_6

    .line 195
    .line 196
    if-eqz v4, :cond_6

    .line 197
    .line 198
    invoke-virtual {v4, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 199
    .line 200
    .line 201
    :cond_6
    if-eqz v4, :cond_7

    .line 202
    .line 203
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 204
    .line 205
    .line 206
    :cond_7
    return-void

    .line 207
    :goto_6
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 208
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 209
    :goto_7
    if-eqz v4, :cond_8

    .line 210
    .line 211
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 212
    .line 213
    .line 214
    :cond_8
    throw v0
.end method
