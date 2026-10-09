.class public final synthetic Lcom/google/firebase/messaging/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/firebase/messaging/b;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/b;->k:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/b;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/messaging/b;->k:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->a(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/GmsRpc;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "proxy_retention"

    .line 20
    .line 21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v5, 0x1d

    .line 24
    .line 25
    if-lt v4, v5, :cond_2

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v4, v2, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v4, v1, Lcom/google/firebase/messaging/GmsRpc;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 46
    .line 47
    iget-object v5, v4, Lcom/google/android/gms/cloudmessaging/Rpc;->c:Lcom/google/android/gms/cloudmessaging/zzw;

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/google/android/gms/cloudmessaging/zzw;->b()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const v6, 0xe5ee4e0

    .line 54
    .line 55
    .line 56
    if-lt v5, v6, :cond_1

    .line 57
    .line 58
    new-instance v5, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v4, Lcom/google/android/gms/cloudmessaging/Rpc;->b:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/google/android/gms/cloudmessaging/zzv;->a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzv;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v4, 0x4

    .line 73
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/cloudmessaging/zzv;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v3, Ljava/io/IOException;

    .line 79
    .line 80
    const-string v4, "SERVICE_NOT_AVAILABLE"

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :goto_0
    new-instance v4, Lz2;

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    invoke-direct {v4, v5}, Lz2;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Lcom/google/firebase/messaging/i;

    .line 96
    .line 97
    invoke-direct {v5, v0, v2}, Lcom/google/firebase/messaging/i;-><init>(Landroid/content/Context;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    iget-object v0, v1, Lcom/google/firebase/messaging/GmsRpc;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/Rpc;->a()Lcom/google/android/gms/tasks/Task;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 116
    .line 117
    new-instance v2, Lcom/google/firebase/messaging/c;

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    invoke-direct {v2, p0, v3}, Lcom/google/firebase/messaging/c;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->a()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/Store$Token;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Lcom/google/firebase/messaging/Store$Token;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    .line 147
    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    const-wide/16 v0, 0x0

    .line 151
    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    :goto_2
    monitor-exit p0

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    throw v0

    .line 162
    :cond_5
    :goto_4
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
