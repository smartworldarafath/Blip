.class public final synthetic Landroidx/media3/common/util/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/common/util/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/common/util/a;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media3/common/util/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/util/a;->k:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/common/util/a;->l:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object p0, v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->b:Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/util/a;->k:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/media3/common/util/a;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroid/content/Context;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;->a:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 45
    .line 46
    const-string v2, "connectivity"

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    const/4 v3, 0x5

    .line 55
    const/4 v4, 0x0

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    :catch_0
    :cond_1
    move v1, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    if-eqz v2, :cond_8

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x2

    .line 78
    const/16 v7, 0x9

    .line 79
    .line 80
    const/4 v8, 0x6

    .line 81
    const/4 v9, 0x4

    .line 82
    if-eqz v5, :cond_7

    .line 83
    .line 84
    if-eq v5, v1, :cond_6

    .line 85
    .line 86
    if-eq v5, v9, :cond_7

    .line 87
    .line 88
    if-eq v5, v3, :cond_7

    .line 89
    .line 90
    if-eq v5, v8, :cond_5

    .line 91
    .line 92
    if-eq v5, v7, :cond_4

    .line 93
    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v1, 0x7

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    :pswitch_1
    move v1, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    :pswitch_2
    move v1, v6

    .line 102
    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    packed-switch v1, :pswitch_data_1

    .line 108
    .line 109
    .line 110
    :pswitch_3
    move v1, v8

    .line 111
    goto :goto_2

    .line 112
    :pswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    const/16 v2, 0x1d

    .line 115
    .line 116
    if-lt v1, v2, :cond_1

    .line 117
    .line 118
    move v1, v7

    .line 119
    goto :goto_2

    .line 120
    :pswitch_5
    move v1, v9

    .line 121
    goto :goto_2

    .line 122
    :pswitch_6
    const/4 v1, 0x3

    .line 123
    :cond_8
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v4, 0x1f

    .line 126
    .line 127
    if-lt v2, v4, :cond_9

    .line 128
    .line 129
    if-ne v1, v3, :cond_9

    .line 130
    .line 131
    :try_start_3
    const-string v1, "phone"

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Landroidx/media3/common/util/NetworkTypeObserver;->a:Ljava/util/concurrent/Executor;

    .line 148
    .line 149
    invoke-static {p0, v2, v1}, Ldb;->r(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v1}, Ldb;->q(Landroid/telephony/TelephonyManager;Landroid/telephony/TelephonyCallback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_1
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/NetworkTypeObserver;->d(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/NetworkTypeObserver;->d(I)V

    .line 161
    .line 162
    .line 163
    :goto_3
    return-void

    .line 164
    :pswitch_7
    iget-object v0, p0, Landroidx/media3/common/util/a;->k:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver;

    .line 167
    .line 168
    iget-object p0, p0, Landroidx/media3/common/util/a;->l:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p0, Landroid/content/Context;

    .line 171
    .line 172
    new-instance v1, Landroid/content/IntentFilter;

    .line 173
    .line 174
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;

    .line 183
    .line 184
    invoke-direct {v2, v0}, Landroidx/media3/common/util/NetworkTypeObserver$Receiver;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_8
    iget-object v0, p0, Landroidx/media3/common/util/a;->k:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 194
    .line 195
    iget-object p0, p0, Landroidx/media3/common/util/a;->l:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Ld7;

    .line 198
    .line 199
    iget-object v2, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Ld7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    iput-object p0, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    .line 206
    .line 207
    new-instance v2, Lb4;

    .line 208
    .line 209
    invoke-direct {v2, v0, p0, v1}, Lb4;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    iget-object p0, v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 213
    .line 214
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 215
    .line 216
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_a

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_a
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    :goto_4
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
