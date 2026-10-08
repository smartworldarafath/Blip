.class public final synthetic Lio/sentry/android/core/internal/util/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/sentry/android/core/internal/util/a;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/core/internal/util/a;->k:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

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
    .locals 5

    .line 1
    iget v0, p0, Lio/sentry/android/core/internal/util/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lio/sentry/android/core/internal/util/a;->k:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->u:Lio/sentry/util/AutoClosableReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->R(Landroid/net/NetworkCapabilities;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->v()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v3, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 20
    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->w:Lio/sentry/util/AutoClosableReentrantLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :try_start_0
    sget-object v3, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->x:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    throw p0

    .line 71
    :cond_1
    :goto_3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 72
    .line 73
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :try_start_2
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->n:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 94
    .line 95
    invoke-interface {v3, v0}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->q(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    goto :goto_5

    .line 101
    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->q()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_5
    :try_start_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :catchall_3
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_6
    throw p0

    .line 117
    :pswitch_0
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->u:Lio/sentry/util/AutoClosableReentrantLock;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->P(Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_1
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->u:Lio/sentry/util/AutoClosableReentrantLock;

    .line 124
    .line 125
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->q()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_2
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->u:Lio/sentry/util/AutoClosableReentrantLock;

    .line 130
    .line 131
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->P(Z)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->w:Lio/sentry/util/AutoClosableReentrantLock;

    .line 136
    .line 137
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :try_start_4
    sget-object v1, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->x:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->u:Lio/sentry/util/AutoClosableReentrantLock;

    .line 150
    .line 151
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :try_start_5
    sput-object v2, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->v:Landroid/net/ConnectivityManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->q(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :catchall_4
    move-exception p0

    .line 167
    :try_start_6
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :catchall_5
    move-exception v0

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :goto_7
    throw p0

    .line 176
    :catchall_6
    move-exception p0

    .line 177
    :try_start_7
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 178
    .line 179
    .line 180
    goto :goto_8

    .line 181
    :catchall_7
    move-exception v0

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_8
    throw p0

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
