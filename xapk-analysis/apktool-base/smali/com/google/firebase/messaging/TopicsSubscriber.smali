.class Lcom/google/firebase/messaging/TopicsSubscriber;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/firebase/messaging/Metadata;

.field public final c:Lcom/google/firebase/messaging/TopicSubscriptionClient;

.field public final d:Landroidx/collection/ArrayMap;

.field public final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public f:Z

.field public final g:Lcom/google/firebase/messaging/TopicsStore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/messaging/TopicSubscriptionClient;Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->d:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->f:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->b:Lcom/google/firebase/messaging/Metadata;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->g:Lcom/google/firebase/messaging/TopicsStore;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->c:Lcom/google/firebase/messaging/TopicSubscriptionClient;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final b()Z
    .locals 13

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->g:Lcom/google/firebase/messaging/TopicsStore;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/messaging/TopicsStore;->a()Lcom/google/firebase/messaging/TopicOperation;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "FirebaseMessaging"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "FirebaseMessaging"

    .line 20
    .line 21
    const-string v1, "topic sync succeeded"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 31
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string v2, " succeeded."

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->c:Lcom/google/firebase/messaging/TopicSubscriptionClient;

    .line 37
    .line 38
    const-string v4, "FirebaseMessaging"

    .line 39
    .line 40
    const-string v5, "Subscribe to topic: "

    .line 41
    .line 42
    const-string v6, "Unsubscribe from topic: "

    .line 43
    .line 44
    const-string v7, "Unknown topic operation"

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    :try_start_1
    iget-object v9, v0, Lcom/google/firebase/messaging/TopicOperation;->b:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v10, v0, Lcom/google/firebase/messaging/TopicOperation;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    const/16 v12, 0x53

    .line 56
    .line 57
    if-eq v11, v12, :cond_3

    .line 58
    .line 59
    const/16 v5, 0x55

    .line 60
    .line 61
    if-eq v11, v5, :cond_2

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_2
    const-string v5, "U"

    .line 66
    .line 67
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v5, v3, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 74
    .line 75
    check-cast v5, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/google/firebase/installations/FirebaseInstallations;->d()Lcom/google/android/gms/tasks/Task;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-static {v7}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lcom/google/firebase/installations/InstallationTokenResult;

    .line 86
    .line 87
    invoke-virtual {v7}, Lcom/google/firebase/installations/InstallationTokenResult;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v9, v3, Lcom/google/firebase/messaging/TopicSubscriptionClient;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 92
    .line 93
    invoke-virtual {v9}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/google/firebase/installations/FirebaseInstallations;->c()Lcom/google/android/gms/tasks/Task;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Ljava/lang/String;

    .line 105
    .line 106
    const-string v9, "unsubscribe"

    .line 107
    .line 108
    invoke-virtual {v3, v10, v7, v5, v9}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "FirebaseMessaging"

    .line 112
    .line 113
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :catch_0
    move-exception p0

    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :cond_3
    const-string v6, "S"

    .line 142
    .line 143
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_4

    .line 148
    .line 149
    iget-object v6, v3, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 150
    .line 151
    check-cast v6, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 152
    .line 153
    invoke-virtual {v6}, Lcom/google/firebase/installations/FirebaseInstallations;->d()Lcom/google/android/gms/tasks/Task;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v7}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/google/firebase/installations/InstallationTokenResult;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/google/firebase/installations/InstallationTokenResult;->a()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    iget-object v9, v3, Lcom/google/firebase/messaging/TopicSubscriptionClient;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 168
    .line 169
    invoke-virtual {v9}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/google/firebase/installations/FirebaseInstallations;->c()Lcom/google/android/gms/tasks/Task;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-static {v6}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Ljava/lang/String;

    .line 181
    .line 182
    const-string v9, "subscribe"

    .line 183
    .line 184
    invoke-virtual {v3, v10, v7, v6, v9}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v3, "FirebaseMessaging"

    .line 188
    .line 189
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_5

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_4
    :goto_2
    const-string v2, "FirebaseMessaging"

    .line 215
    .line 216
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_5

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v2, "."

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->g:Lcom/google/firebase/messaging/TopicsStore;

    .line 243
    .line 244
    monitor-enter v1

    .line 245
    :try_start_2
    iget-object v2, v1, Lcom/google/firebase/messaging/TopicsStore;->a:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    .line 246
    .line 247
    iget-object v3, v0, Lcom/google/firebase/messaging/TopicOperation;->c:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v4, v2, Lcom/google/firebase/messaging/SharedPreferencesQueue;->d:Ljava/util/ArrayDeque;

    .line 250
    .line 251
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 252
    :try_start_3
    iget-object v5, v2, Lcom/google/firebase/messaging/SharedPreferencesQueue;->d:Ljava/util/ArrayDeque;

    .line 253
    .line 254
    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_6

    .line 259
    .line 260
    iget-object v3, v2, Lcom/google/firebase/messaging/SharedPreferencesQueue;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 261
    .line 262
    new-instance v5, Lcom/google/firebase/messaging/j;

    .line 263
    .line 264
    invoke-direct {v5, v8, v2}, Lcom/google/firebase/messaging/j;-><init>(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 268
    .line 269
    .line 270
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 271
    monitor-exit v1

    .line 272
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->d:Landroidx/collection/ArrayMap;

    .line 273
    .line 274
    monitor-enter v2

    .line 275
    :try_start_4
    iget-object v0, v0, Lcom/google/firebase/messaging/TopicOperation;->c:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->d:Landroidx/collection/ArrayMap;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_7

    .line 284
    .line 285
    monitor-exit v2

    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :catchall_1
    move-exception p0

    .line 289
    goto :goto_4

    .line 290
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->d:Landroidx/collection/ArrayMap;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Ljava/util/ArrayDeque;

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 303
    .line 304
    if-eqz v3, :cond_8

    .line 305
    .line 306
    const/4 v4, 0x0

    .line 307
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_9

    .line 315
    .line 316
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->d:Landroidx/collection/ArrayMap;

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    :cond_9
    monitor-exit v2

    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 325
    throw p0

    .line 326
    :catchall_2
    move-exception p0

    .line 327
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 328
    :try_start_6
    throw p0

    .line 329
    :catchall_3
    move-exception p0

    .line 330
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 331
    throw p0

    .line 332
    :goto_5
    const-string v0, "SERVICE_NOT_AVAILABLE"

    .line 333
    .line 334
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_c

    .line 343
    .line 344
    const-string v0, "INTERNAL_SERVER_ERROR"

    .line 345
    .line 346
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_a

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-nez v0, :cond_b

    .line 362
    .line 363
    const-string p0, "Topic operation failed without exception message. Will retry Topic operation."

    .line 364
    .line 365
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_b
    throw p0

    .line 370
    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v1, "Topic operation failed: "

    .line 373
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string p0, ". Will retry Topic operation."

    .line 385
    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    :goto_7
    return v8

    .line 397
    :goto_8
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 398
    throw v0
.end method

.method public final c(J)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    mul-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x1e

    .line 5
    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x7080

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v8

    .line 16
    new-instance v4, Lcom/google/firebase/messaging/TopicsSyncTask;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->b:Lcom/google/firebase/messaging/Metadata;

    .line 21
    .line 22
    move-object v5, p0

    .line 23
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/TopicsSyncTask;-><init>(Lcom/google/firebase/messaging/TopicsSubscriber;Landroid/content/Context;Lcom/google/firebase/messaging/Metadata;J)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v5, Lcom/google/firebase/messaging/TopicsSubscriber;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-virtual {p0, v4, p1, p2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    invoke-virtual {v5, p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->a(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
