.class final Lio/sentry/android/core/ANRWatchDog;
.super Ljava/lang/Thread;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final j:Z

.field public final k:Lio/sentry/android/core/e;

.field public final l:Lio/sentry/android/core/MainLooperHandler;

.field public final m:Lio/sentry/android/core/a;

.field public final n:J

.field public final o:J

.field public final p:Lio/sentry/ILogger;

.field public volatile q:J

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Landroid/content/Context;

.field public final t:Lio/sentry/android/core/b;


# direct methods
.method public constructor <init>(JZLio/sentry/android/core/e;Lio/sentry/ILogger;Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lio/sentry/android/core/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/sentry/android/core/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lio/sentry/android/core/MainLooperHandler;

    .line 8
    .line 9
    invoke-direct {v2}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "|ANR-WatchDog|"

    .line 13
    .line 14
    invoke-direct {p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    iput-wide v3, p0, Lio/sentry/android/core/ANRWatchDog;->q:J

    .line 20
    .line 21
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v3, p0, Lio/sentry/android/core/ANRWatchDog;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    iput-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->m:Lio/sentry/android/core/a;

    .line 29
    .line 30
    iput-wide p1, p0, Lio/sentry/android/core/ANRWatchDog;->o:J

    .line 31
    .line 32
    const-wide/16 v3, 0x1f4

    .line 33
    .line 34
    iput-wide v3, p0, Lio/sentry/android/core/ANRWatchDog;->n:J

    .line 35
    .line 36
    iput-boolean p3, p0, Lio/sentry/android/core/ANRWatchDog;->j:Z

    .line 37
    .line 38
    iput-object p4, p0, Lio/sentry/android/core/ANRWatchDog;->k:Lio/sentry/android/core/e;

    .line 39
    .line 40
    iput-object p5, p0, Lio/sentry/android/core/ANRWatchDog;->p:Lio/sentry/ILogger;

    .line 41
    .line 42
    iput-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 43
    .line 44
    iput-object p6, p0, Lio/sentry/android/core/ANRWatchDog;->s:Landroid/content/Context;

    .line 45
    .line 46
    new-instance p3, Lio/sentry/android/core/b;

    .line 47
    .line 48
    invoke-direct {p3, p0, v0}, Lio/sentry/android/core/b;-><init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/android/core/a;)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lio/sentry/android/core/ANRWatchDog;->t:Lio/sentry/android/core/b;

    .line 52
    .line 53
    const-wide/16 p3, 0x3e8

    .line 54
    .line 55
    cmp-long p0, p1, p3

    .line 56
    .line 57
    if-ltz p0, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "ANRWatchDog: timeoutIntervalMillis has to be at least %d ms"

    .line 71
    .line 72
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->t:Lio/sentry/android/core/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/b;->run()V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_7

    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 13
    .line 14
    iget-object v1, p0, Lio/sentry/android/core/ANRWatchDog;->t:Lio/sentry/android/core/b;

    .line 15
    .line 16
    iget-object v0, v0, Lio/sentry/android/core/MainLooperHandler;->a:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->n:J

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->m:Lio/sentry/android/core/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->q:J

    .line 36
    .line 37
    sub-long/2addr v0, v2

    .line 38
    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->o:J

    .line 39
    .line 40
    cmp-long v0, v0, v2

    .line 41
    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    iget-boolean v0, p0, Lio/sentry/android/core/ANRWatchDog;->j:Z

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x1

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->p:Lio/sentry/ILogger;

    .line 63
    .line 64
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 65
    .line 66
    const-string v4, "An ANR was detected but ignored because the debugger is connected."

    .line 67
    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-interface {v0, v3, v4, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->s:Landroid/content/Context;

    .line 80
    .line 81
    const-string v3, "activity"

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    iget-object v3, p0, Lio/sentry/android/core/ANRWatchDog;->p:Lio/sentry/ILogger;

    .line 98
    .line 99
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 100
    .line 101
    const-string v5, "Error getting ActivityManager#getProcessesInErrorState."

    .line 102
    .line 103
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    :goto_1
    if-eqz v0, :cond_0

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 124
    .line 125
    iget v3, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 126
    .line 127
    const/4 v4, 0x2

    .line 128
    if-ne v3, v4, :cond_3

    .line 129
    .line 130
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v1, "Application Not Responding for at least "

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-wide v3, p0, Lio/sentry/android/core/ANRWatchDog;->o:J

    .line 146
    .line 147
    const-string v1, " ms."

    .line 148
    .line 149
    invoke-static {v0, v3, v4, v1}, Lq;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v3, Lio/sentry/android/core/ApplicationNotResponding;

    .line 154
    .line 155
    iget-object v4, p0, Lio/sentry/android/core/ANRWatchDog;->l:Lio/sentry/android/core/MainLooperHandler;

    .line 156
    .line 157
    iget-object v4, v4, Lio/sentry/android/core/MainLooperHandler;->a:Landroid/os/Handler;

    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-direct {v3, v0, v4}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->k:Lio/sentry/android/core/e;

    .line 171
    .line 172
    iget-object v4, v0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    .line 173
    .line 174
    sget-object v4, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 175
    .line 176
    iget-object v0, v0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 179
    .line 180
    sget-object v5, Lio/sentry/android/core/AnrIntegration;->n:Lio/sentry/android/core/ANRWatchDog;

    .line 181
    .line 182
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    const-string v8, "ANR triggered with message: %s"

    .line 197
    .line 198
    invoke-interface {v5, v6, v8, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 202
    .line 203
    sget-object v6, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 204
    .line 205
    iget-object v6, v6, Lio/sentry/android/core/AppState;->m:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v7, "ANR for at least "

    .line 214
    .line 215
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v7

    .line 222
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v5, :cond_5

    .line 233
    .line 234
    const-string v1, "Background "

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :cond_5
    iget-object v1, v3, Lio/sentry/android/core/ApplicationNotResponding;->j:Ljava/lang/Thread;

    .line 241
    .line 242
    if-nez v1, :cond_6

    .line 243
    .line 244
    new-instance v3, Lio/sentry/android/core/ApplicationNotResponding;

    .line 245
    .line 246
    invoke-direct {v3, v0}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_6
    new-instance v3, Lio/sentry/android/core/ApplicationNotResponding;

    .line 251
    .line 252
    invoke-direct {v3, v0, v1}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 253
    .line 254
    .line 255
    :goto_2
    new-instance v0, Lio/sentry/protocol/Mechanism;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v6, "ANR"

    .line 261
    .line 262
    iput-object v6, v0, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 263
    .line 264
    new-instance v6, Lio/sentry/exception/ExceptionMechanismException;

    .line 265
    .line 266
    invoke-direct {v6, v0, v3, v1, v2}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lio/sentry/SentryEvent;

    .line 270
    .line 271
    invoke-direct {v0, v6}, Lio/sentry/SentryEvent;-><init>(Lio/sentry/exception/ExceptionMechanismException;)V

    .line 272
    .line 273
    .line 274
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 275
    .line 276
    iput-object v1, v0, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 277
    .line 278
    new-instance v1, Lio/sentry/android/core/AnrIntegration$AnrHint;

    .line 279
    .line 280
    invoke-direct {v1, v5}, Lio/sentry/android/core/AnrIntegration$AnrHint;-><init>(Z)V

    .line 281
    .line 282
    .line 283
    invoke-static {v1}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v4, v0, v1}, Lio/sentry/ScopesAdapter;->x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :catch_0
    move-exception v0

    .line 293
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    .line 299
    .line 300
    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->p:Lio/sentry/ILogger;

    .line 301
    .line 302
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v2, "Interrupted: %s"

    .line 313
    .line 314
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :catch_1
    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->p:Lio/sentry/ILogger;

    .line 319
    .line 320
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v2, "Failed to interrupt due to SecurityException: %s"

    .line 331
    .line 332
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :cond_7
    return-void
.end method
