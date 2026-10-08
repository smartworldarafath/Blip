.class public final synthetic Lio/sentry/android/core/m;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/sentry/android/core/m;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lio/sentry/android/core/m;->j:I

    iput-object p1, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    iput-object p3, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lio/sentry/android/core/m;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lio/sentry/SentryOptions;

    .line 15
    .line 16
    iget-object p0, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, v0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :try_start_0
    iget-boolean v3, v0, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->l:Z

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    throw p0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 53
    .line 54
    iget-object v1, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v9, v1

    .line 57
    check-cast v9, Lio/sentry/SentryOptions;

    .line 58
    .line 59
    iget-object p0, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lio/sentry/IScopes;

    .line 62
    .line 63
    iget-object v1, v0, Lio/sentry/android/core/AndroidContinuousProfiler;->v:Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v2, v0, Lio/sentry/android/core/AndroidContinuousProfiler;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Lio/sentry/android/core/AndroidContinuousProfiler;->F:Lio/sentry/util/AutoClosableReentrantLock;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lio/sentry/ProfileChunk$Builder;

    .line 104
    .line 105
    move-object v3, v2

    .line 106
    new-instance v2, Lio/sentry/ProfileChunk;

    .line 107
    .line 108
    move-object v4, v3

    .line 109
    iget-object v3, v4, Lio/sentry/ProfileChunk$Builder;->a:Lio/sentry/protocol/SentryId;

    .line 110
    .line 111
    move-object v5, v4

    .line 112
    iget-object v4, v5, Lio/sentry/ProfileChunk$Builder;->b:Lio/sentry/protocol/SentryId;

    .line 113
    .line 114
    move-object v6, v5

    .line 115
    iget-object v5, v6, Lio/sentry/ProfileChunk$Builder;->d:Ljava/io/File;

    .line 116
    .line 117
    move-object v7, v6

    .line 118
    iget-object v6, v7, Lio/sentry/ProfileChunk$Builder;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    iget-wide v12, v7, Lio/sentry/ProfileChunk$Builder;->e:D

    .line 121
    .line 122
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iget-object v7, v7, Lio/sentry/ProfileChunk$Builder;->f:Ljava/lang/String;

    .line 127
    .line 128
    move-object v14, v8

    .line 129
    move-object v8, v7

    .line 130
    move-object v7, v14

    .line 131
    invoke-direct/range {v2 .. v9}, Lio/sentry/ProfileChunk;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    move-object p0, v0

    .line 140
    goto :goto_6

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    .line 143
    .line 144
    invoke-interface {v11}, Ljava/lang/AutoCloseable;->close()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lio/sentry/ProfileChunk;

    .line 162
    .line 163
    invoke-interface {p0, v1}, Lio/sentry/IScopes;->h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_3
    :goto_5
    return-void

    .line 168
    :goto_6
    :try_start_3
    invoke-interface {v11}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :catchall_3
    move-exception v0

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_7
    throw p0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Lio/sentry/android/core/ActivityFramesTracker;

    .line 180
    .line 181
    iget-object v1, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, Ljava/lang/Runnable;

    .line 184
    .line 185
    iget-object p0, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Ljava/lang/String;

    .line 188
    .line 189
    :try_start_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :catchall_4
    if-eqz p0, :cond_4

    .line 194
    .line 195
    iget-object v0, v0, Lio/sentry/android/core/ActivityFramesTracker;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 196
    .line 197
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 202
    .line 203
    const-string v3, "Failed to execute "

    .line 204
    .line 205
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    new-array v2, v2, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-interface {v0, v1, p0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_4
    :goto_8
    return-void

    .line 215
    :pswitch_2
    iget-object v0, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    .line 218
    .line 219
    iget-object v3, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v3, Lio/sentry/IScopes;

    .line 222
    .line 223
    iget-object p0, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 226
    .line 227
    iget-object v4, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->t:Lio/sentry/util/AutoClosableReentrantLock;

    .line 228
    .line 229
    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    :try_start_5
    iget-boolean v5, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->o:Z

    .line 234
    .line 235
    if-nez v5, :cond_9

    .line 236
    .line 237
    iget-boolean v5, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->p:Z

    .line 238
    .line 239
    if-nez v5, :cond_9

    .line 240
    .line 241
    iget-object v5, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 242
    .line 243
    if-eqz v5, :cond_5

    .line 244
    .line 245
    goto/16 :goto_b

    .line 246
    .line 247
    :cond_5
    new-instance v5, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 248
    .line 249
    invoke-direct {v5, v0, v3, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 250
    .line 251
    .line 252
    iput-object v5, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 253
    .line 254
    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 255
    .line 256
    if-nez v3, :cond_6

    .line 257
    .line 258
    new-instance v3, Landroid/content/IntentFilter;

    .line 259
    .line 260
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 264
    .line 265
    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->n:[Ljava/lang/String;

    .line 266
    .line 267
    array-length v5, v3

    .line 268
    move v6, v2

    .line 269
    :goto_9
    if-ge v6, v5, :cond_6

    .line 270
    .line 271
    aget-object v7, v3, v6

    .line 272
    .line 273
    iget-object v8, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 274
    .line 275
    invoke-virtual {v8, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    add-int/lit8 v6, v6, 0x1

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :catchall_5
    move-exception v0

    .line 282
    move-object p0, v0

    .line 283
    goto :goto_c

    .line 284
    :cond_6
    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 285
    .line 286
    if-nez v3, :cond_7

    .line 287
    .line 288
    new-instance v3, Landroid/os/HandlerThread;

    .line 289
    .line 290
    const-string v5, "SystemEventsReceiver"

    .line 291
    .line 292
    const/16 v6, 0xa

    .line 293
    .line 294
    invoke-direct {v3, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    iput-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 298
    .line 299
    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 302
    .line 303
    .line 304
    :cond_7
    :try_start_6
    new-instance v9, Landroid/os/Handler;

    .line 305
    .line 306
    iget-object v3, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->r:Landroid/os/HandlerThread;

    .line 307
    .line 308
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-direct {v9, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 313
    .line 314
    .line 315
    iget-object v5, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->j:Landroid/content/Context;

    .line 316
    .line 317
    iget-object v6, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->k:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 318
    .line 319
    iget-object v7, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q:Landroid/content/IntentFilter;

    .line 320
    .line 321
    new-instance v3, Lio/sentry/android/core/BuildInfoProvider;

    .line 322
    .line 323
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-direct {v3, v8}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 328
    .line 329
    .line 330
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 331
    .line 332
    const/16 v8, 0x21

    .line 333
    .line 334
    if-lt v3, v8, :cond_8

    .line 335
    .line 336
    const/4 v8, 0x0

    .line 337
    const/4 v10, 0x4

    .line 338
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_8
    const/4 v3, 0x0

    .line 343
    invoke-virtual {v5, v6, v7, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    .line 345
    .line 346
    :goto_a
    iget-object v0, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_9

    .line 353
    .line 354
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 359
    .line 360
    const-string v3, "SystemEventsBreadcrumbsIntegration installed."

    .line 361
    .line 362
    new-array v5, v2, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-interface {v0, v1, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    const-string v0, "SystemEventsBreadcrumbs"

    .line 368
    .line 369
    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :catchall_6
    move-exception v0

    .line 374
    :try_start_7
    invoke-virtual {p0, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 382
    .line 383
    const-string v2, "Failed to initialize SystemEventsBreadcrumbsIntegration."

    .line 384
    .line 385
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 386
    .line 387
    .line 388
    :cond_9
    :goto_b
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :goto_c
    :try_start_8
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 393
    .line 394
    .line 395
    goto :goto_d

    .line 396
    :catchall_7
    move-exception v0

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    :goto_d
    throw p0

    .line 401
    :pswitch_3
    iget-object v0, p0, Lio/sentry/android/core/m;->m:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    .line 404
    .line 405
    iget-object v3, p0, Lio/sentry/android/core/m;->l:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v3, Lio/sentry/android/core/SentryAndroidOptions;

    .line 408
    .line 409
    iget-object p0, p0, Lio/sentry/android/core/m;->k:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast p0, Lio/sentry/IScopes;

    .line 412
    .line 413
    :try_start_9
    iget-object v4, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_a

    .line 420
    .line 421
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 426
    .line 427
    const-string v1, "SendCachedEnvelopeIntegration, not trying to send after closing."

    .line 428
    .line 429
    new-array v2, v2, [Ljava/lang/Object;

    .line 430
    .line 431
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_f

    .line 435
    .line 436
    :catchall_8
    move-exception v0

    .line 437
    move-object p0, v0

    .line 438
    goto :goto_e

    .line 439
    :cond_a
    iget-object v4, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 440
    .line 441
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-nez v1, :cond_b

    .line 446
    .line 447
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iput-object v1, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->m:Lio/sentry/IConnectionStatusProvider;

    .line 452
    .line 453
    invoke-interface {v1, v0}, Lio/sentry/IConnectionStatusProvider;->s0(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    .line 454
    .line 455
    .line 456
    iget-object v1, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->j:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 457
    .line 458
    invoke-interface {v1, p0, v3}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->a(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)Lio/sentry/e;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iput-object v1, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->p:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    .line 463
    .line 464
    :cond_b
    iget-object v1, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->m:Lio/sentry/IConnectionStatusProvider;

    .line 465
    .line 466
    if-eqz v1, :cond_c

    .line 467
    .line 468
    invoke-interface {v1}, Lio/sentry/IConnectionStatusProvider;->p0()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    sget-object v4, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 473
    .line 474
    if-ne v1, v4, :cond_c

    .line 475
    .line 476
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 481
    .line 482
    const-string v1, "SendCachedEnvelopeIntegration, no connection."

    .line 483
    .line 484
    new-array v2, v2, [Ljava/lang/Object;

    .line 485
    .line 486
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    goto :goto_f

    .line 490
    :cond_c
    invoke-interface {p0}, Lio/sentry/IScopes;->d()Lio/sentry/transport/RateLimiter;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    if-eqz p0, :cond_d

    .line 495
    .line 496
    sget-object v1, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 497
    .line 498
    invoke-virtual {p0, v1}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 499
    .line 500
    .line 501
    move-result p0

    .line 502
    if-eqz p0, :cond_d

    .line 503
    .line 504
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 509
    .line 510
    const-string v1, "SendCachedEnvelopeIntegration, rate limiting active."

    .line 511
    .line 512
    new-array v2, v2, [Ljava/lang/Object;

    .line 513
    .line 514
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    goto :goto_f

    .line 518
    :cond_d
    iget-object p0, v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->p:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    .line 519
    .line 520
    if-nez p0, :cond_e

    .line 521
    .line 522
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 527
    .line 528
    const-string v1, "SendCachedEnvelopeIntegration factory is null."

    .line 529
    .line 530
    new-array v2, v2, [Ljava/lang/Object;

    .line 531
    .line 532
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    goto :goto_f

    .line 536
    :cond_e
    check-cast p0, Lio/sentry/e;

    .line 537
    .line 538
    invoke-virtual {p0}, Lio/sentry/e;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 539
    .line 540
    .line 541
    goto :goto_f

    .line 542
    :goto_e
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 547
    .line 548
    const-string v2, "Failed trying to send cached events."

    .line 549
    .line 550
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    .line 552
    .line 553
    :goto_f
    return-void

    .line 554
    nop

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
