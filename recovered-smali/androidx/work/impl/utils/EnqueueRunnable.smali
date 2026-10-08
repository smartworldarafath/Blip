.class public abstract Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 58

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->b(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/work/impl/WorkContinuationImpl;->c:Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Landroidx/work/impl/WorkContinuationImpl;->b:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v6, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 23
    .line 24
    iget-object v6, v2, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 25
    .line 26
    iget-object v6, v6, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iget-object v8, v2, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    array-length v10, v1

    .line 40
    if-lez v10, :cond_0

    .line 41
    .line 42
    const/4 v10, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v10, v4

    .line 45
    :goto_0
    if-eqz v10, :cond_6

    .line 46
    .line 47
    array-length v11, v1

    .line 48
    move v12, v4

    .line 49
    move v14, v12

    .line 50
    move v15, v14

    .line 51
    const/4 v13, 0x1

    .line 52
    :goto_1
    if-ge v12, v11, :cond_7

    .line 53
    .line 54
    aget-object v4, v1, v12

    .line 55
    .line 56
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 57
    .line 58
    .line 59
    move-result-object v16

    .line 60
    move-object/from16 v9, v16

    .line 61
    .line 62
    check-cast v9, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 63
    .line 64
    invoke-virtual {v9, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->b(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    if-nez v9, :cond_2

    .line 69
    .line 70
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "Prerequisite "

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget-object v3, Landroidx/work/impl/utils/EnqueueRunnable;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v3, v2}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 99
    const/4 v11, 0x1

    .line 100
    goto/16 :goto_10

    .line 101
    .line 102
    :cond_2
    iget-object v4, v9, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 103
    .line 104
    sget-object v9, Landroidx/work/WorkInfo$State;->l:Landroidx/work/WorkInfo$State;

    .line 105
    .line 106
    if-ne v4, v9, :cond_3

    .line 107
    .line 108
    const/4 v9, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    const/4 v9, 0x0

    .line 111
    :goto_3
    and-int/2addr v13, v9

    .line 112
    sget-object v9, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 113
    .line 114
    if-ne v4, v9, :cond_4

    .line 115
    .line 116
    const/4 v15, 0x1

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    sget-object v9, Landroidx/work/WorkInfo$State;->o:Landroidx/work/WorkInfo$State;

    .line 119
    .line 120
    if-ne v4, v9, :cond_5

    .line 121
    .line 122
    const/4 v14, 0x1

    .line 123
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const/4 v13, 0x1

    .line 128
    const/4 v14, 0x0

    .line 129
    const/4 v15, 0x0

    .line 130
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_c

    .line 135
    .line 136
    if-nez v10, :cond_c

    .line 137
    .line 138
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    check-cast v9, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object v9, v9, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 151
    .line 152
    new-instance v11, Lq7;

    .line 153
    .line 154
    const/16 v12, 0x13

    .line 155
    .line 156
    invoke-direct {v11, v5, v12}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v16, v3

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    const/4 v12, 0x0

    .line 163
    invoke-static {v9, v3, v12, v11}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    check-cast v9, Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_b

    .line 174
    .line 175
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 176
    .line 177
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 178
    .line 179
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 180
    .line 181
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_9

    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 196
    .line 197
    iget-object v11, v11, Landroidx/work/impl/model/WorkSpec$IdAndState;->b:Landroidx/work/WorkInfo$State;

    .line 198
    .line 199
    sget-object v12, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 200
    .line 201
    if-eq v11, v12, :cond_1

    .line 202
    .line 203
    sget-object v12, Landroidx/work/WorkInfo$State;->k:Landroidx/work/WorkInfo$State;

    .line 204
    .line 205
    if-ne v11, v12, :cond_8

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_9
    new-instance v3, Ls3;

    .line 209
    .line 210
    const/4 v11, 0x2

    .line 211
    invoke-direct {v3, v8, v5, v2, v11}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->b()V

    .line 215
    .line 216
    .line 217
    :try_start_0
    invoke-virtual {v3}, Ls3;->run()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->l()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    if-eqz v11, :cond_a

    .line 239
    .line 240
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    check-cast v11, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 245
    .line 246
    iget-object v11, v11, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    .line 247
    .line 248
    move-object v12, v3

    .line 249
    check-cast v12, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 250
    .line 251
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object v12, v12, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 258
    .line 259
    move-object/from16 v17, v3

    .line 260
    .line 261
    new-instance v3, Lq7;

    .line 262
    .line 263
    move/from16 v18, v4

    .line 264
    .line 265
    const/16 v4, 0x12

    .line 266
    .line 267
    invoke-direct {v3, v11, v4}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 268
    .line 269
    .line 270
    const/4 v4, 0x0

    .line 271
    const/4 v11, 0x1

    .line 272
    invoke-static {v12, v4, v11, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-object/from16 v3, v17

    .line 276
    .line 277
    move/from16 v4, v18

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_a
    move/from16 v18, v4

    .line 281
    .line 282
    const/4 v3, 0x1

    .line 283
    goto :goto_8

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->l()V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :cond_b
    :goto_6
    move/from16 v18, v4

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_c
    move-object/from16 v16, v3

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :goto_7
    const/4 v3, 0x0

    .line 296
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-eqz v9, :cond_15

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    check-cast v9, Landroidx/work/WorkRequest;

    .line 311
    .line 312
    iget-object v11, v9, Landroidx/work/WorkRequest;->b:Landroidx/work/impl/model/WorkSpec;

    .line 313
    .line 314
    iget-object v12, v9, Landroidx/work/WorkRequest;->a:Ljava/util/UUID;

    .line 315
    .line 316
    if-eqz v10, :cond_f

    .line 317
    .line 318
    if-nez v13, :cond_f

    .line 319
    .line 320
    if-eqz v15, :cond_d

    .line 321
    .line 322
    move/from16 v16, v3

    .line 323
    .line 324
    sget-object v3, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 325
    .line 326
    iput-object v3, v11, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_d
    move/from16 v16, v3

    .line 330
    .line 331
    if-eqz v14, :cond_e

    .line 332
    .line 333
    sget-object v3, Landroidx/work/WorkInfo$State;->o:Landroidx/work/WorkInfo$State;

    .line 334
    .line 335
    iput-object v3, v11, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_e
    sget-object v3, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 339
    .line 340
    iput-object v3, v11, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_f
    move/from16 v16, v3

    .line 344
    .line 345
    iput-wide v6, v11, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 346
    .line 347
    :goto_a
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 348
    .line 349
    move-object/from16 v17, v4

    .line 350
    .line 351
    sget-object v4, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 352
    .line 353
    if-ne v3, v4, :cond_10

    .line 354
    .line 355
    const/4 v3, 0x1

    .line 356
    goto :goto_b

    .line 357
    :cond_10
    move/from16 v3, v16

    .line 358
    .line 359
    :goto_b
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    move/from16 v16, v3

    .line 364
    .line 365
    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 366
    .line 367
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 371
    .line 372
    move-object/from16 v19, v2

    .line 373
    .line 374
    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    .line 375
    .line 376
    invoke-virtual {v3, v2}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    move/from16 v20, v3

    .line 381
    .line 382
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 383
    .line 384
    move-object/from16 v21, v4

    .line 385
    .line 386
    const-string v4, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    .line 387
    .line 388
    invoke-virtual {v3, v4}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    iget-object v4, v11, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 393
    .line 394
    move/from16 v22, v3

    .line 395
    .line 396
    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    .line 397
    .line 398
    invoke-virtual {v4, v3}, Landroidx/work/Data;->a(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-nez v20, :cond_11

    .line 403
    .line 404
    if-eqz v22, :cond_11

    .line 405
    .line 406
    if-eqz v3, :cond_11

    .line 407
    .line 408
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 409
    .line 410
    new-instance v4, Landroidx/work/Data$Builder;

    .line 411
    .line 412
    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 413
    .line 414
    .line 415
    move-wide/from16 v22, v6

    .line 416
    .line 417
    iget-object v6, v11, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 418
    .line 419
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    iget-object v6, v6, Landroidx/work/Data;->a:Ljava/util/HashMap;

    .line 423
    .line 424
    invoke-virtual {v4, v6}, Landroidx/work/Data$Builder;->b(Ljava/util/HashMap;)V

    .line 425
    .line 426
    .line 427
    iget-object v6, v4, Landroidx/work/Data$Builder;->a:Ljava/util/LinkedHashMap;

    .line 428
    .line 429
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    .line 433
    .line 434
    .line 435
    move-result-object v29

    .line 436
    iget-object v2, v11, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 437
    .line 438
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 439
    .line 440
    iget-object v4, v11, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 441
    .line 442
    iget-object v6, v11, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 443
    .line 444
    move-object/from16 v25, v2

    .line 445
    .line 446
    move-object/from16 v26, v3

    .line 447
    .line 448
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 449
    .line 450
    move-wide/from16 v31, v2

    .line 451
    .line 452
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 453
    .line 454
    move-wide/from16 v33, v2

    .line 455
    .line 456
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 457
    .line 458
    iget-object v7, v11, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 459
    .line 460
    move-wide/from16 v35, v2

    .line 461
    .line 462
    iget v2, v11, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 463
    .line 464
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 465
    .line 466
    move/from16 v38, v2

    .line 467
    .line 468
    move-object/from16 v39, v3

    .line 469
    .line 470
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 471
    .line 472
    move-wide/from16 v40, v2

    .line 473
    .line 474
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 475
    .line 476
    move-wide/from16 v42, v2

    .line 477
    .line 478
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 479
    .line 480
    move-wide/from16 v44, v2

    .line 481
    .line 482
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 483
    .line 484
    move-wide/from16 v46, v2

    .line 485
    .line 486
    iget-boolean v2, v11, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 487
    .line 488
    iget-object v3, v11, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 489
    .line 490
    move/from16 v48, v2

    .line 491
    .line 492
    iget v2, v11, Landroidx/work/impl/model/WorkSpec;->s:I

    .line 493
    .line 494
    move/from16 v50, v2

    .line 495
    .line 496
    iget v2, v11, Landroidx/work/impl/model/WorkSpec;->t:I

    .line 497
    .line 498
    move/from16 v51, v2

    .line 499
    .line 500
    move-object/from16 v49, v3

    .line 501
    .line 502
    iget-wide v2, v11, Landroidx/work/impl/model/WorkSpec;->u:J

    .line 503
    .line 504
    move-wide/from16 v52, v2

    .line 505
    .line 506
    iget v2, v11, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 507
    .line 508
    iget v3, v11, Landroidx/work/impl/model/WorkSpec;->w:I

    .line 509
    .line 510
    move/from16 v54, v2

    .line 511
    .line 512
    iget-object v2, v11, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 513
    .line 514
    iget-object v11, v11, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    .line 515
    .line 516
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    new-instance v24, Landroidx/work/impl/model/WorkSpec;

    .line 538
    .line 539
    const-string v27, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    .line 540
    .line 541
    move-object/from16 v56, v2

    .line 542
    .line 543
    move/from16 v55, v3

    .line 544
    .line 545
    move-object/from16 v28, v4

    .line 546
    .line 547
    move-object/from16 v30, v6

    .line 548
    .line 549
    move-object/from16 v37, v7

    .line 550
    .line 551
    move-object/from16 v57, v11

    .line 552
    .line 553
    invoke-direct/range {v24 .. v57}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 554
    .line 555
    .line 556
    move-object/from16 v11, v24

    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_11
    move-wide/from16 v22, v6

    .line 560
    .line 561
    :goto_c
    move-object/from16 v4, v21

    .line 562
    .line 563
    check-cast v4, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget-object v2, v4, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 569
    .line 570
    new-instance v3, Lui;

    .line 571
    .line 572
    const/4 v6, 0x0

    .line 573
    invoke-direct {v3, v6, v4, v11}, Lui;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    const/4 v11, 0x1

    .line 577
    invoke-static {v2, v6, v11, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    if-eqz v10, :cond_12

    .line 581
    .line 582
    array-length v2, v1

    .line 583
    const/4 v3, 0x0

    .line 584
    :goto_d
    if-ge v3, v2, :cond_12

    .line 585
    .line 586
    aget-object v4, v1, v3

    .line 587
    .line 588
    new-instance v6, Landroidx/work/impl/model/Dependency;

    .line 589
    .line 590
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    invoke-direct {v6, v7, v4}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/work/impl/model/DependencyDao;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    check-cast v4, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 605
    .line 606
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    iget-object v7, v4, Landroidx/work/impl/model/DependencyDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 610
    .line 611
    new-instance v11, Lb;

    .line 612
    .line 613
    move-object/from16 v20, v1

    .line 614
    .line 615
    const/16 v1, 0xb

    .line 616
    .line 617
    invoke-direct {v11, v1, v4, v6}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    const/4 v1, 0x1

    .line 621
    const/4 v4, 0x0

    .line 622
    invoke-static {v7, v4, v1, v11}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    add-int/lit8 v3, v3, 0x1

    .line 626
    .line 627
    move-object/from16 v1, v20

    .line 628
    .line 629
    goto :goto_d

    .line 630
    :cond_12
    move-object/from16 v20, v1

    .line 631
    .line 632
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->w()Landroidx/work/impl/model/WorkTagDao;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    iget-object v3, v9, Landroidx/work/WorkRequest;->c:Ljava/util/Set;

    .line 644
    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    check-cast v3, Ljava/lang/Iterable;

    .line 652
    .line 653
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    if-eqz v4, :cond_13

    .line 662
    .line 663
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Ljava/lang/String;

    .line 668
    .line 669
    new-instance v6, Landroidx/work/impl/model/WorkTag;

    .line 670
    .line 671
    invoke-direct {v6, v4, v2}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    move-object v4, v1

    .line 675
    check-cast v4, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 676
    .line 677
    iget-object v7, v4, Landroidx/work/impl/model/WorkTagDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 678
    .line 679
    new-instance v9, Lui;

    .line 680
    .line 681
    const/4 v11, 0x1

    .line 682
    invoke-direct {v9, v11, v4, v6}, Lui;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    const/4 v4, 0x0

    .line 686
    invoke-static {v7, v4, v11, v9}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    goto :goto_e

    .line 690
    :cond_13
    if-nez v18, :cond_14

    .line 691
    .line 692
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->t()Landroidx/work/impl/model/WorkNameDao;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    new-instance v2, Landroidx/work/impl/model/WorkName;

    .line 697
    .line 698
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    invoke-direct {v2, v5, v3}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    check-cast v1, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 709
    .line 710
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    .line 712
    .line 713
    iget-object v3, v1, Landroidx/work/impl/model/WorkNameDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 714
    .line 715
    new-instance v4, Lec;

    .line 716
    .line 717
    const/16 v6, 0x1b

    .line 718
    .line 719
    invoke-direct {v4, v6, v1, v2}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    const/4 v6, 0x0

    .line 723
    const/4 v11, 0x1

    .line 724
    invoke-static {v3, v6, v11, v4}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    goto :goto_f

    .line 728
    :cond_14
    const/4 v6, 0x0

    .line 729
    const/4 v11, 0x1

    .line 730
    :goto_f
    move/from16 v3, v16

    .line 731
    .line 732
    move-object/from16 v4, v17

    .line 733
    .line 734
    move-object/from16 v2, v19

    .line 735
    .line 736
    move-object/from16 v1, v20

    .line 737
    .line 738
    move-wide/from16 v6, v22

    .line 739
    .line 740
    goto/16 :goto_9

    .line 741
    .line 742
    :cond_15
    move/from16 v16, v3

    .line 743
    .line 744
    const/4 v11, 0x1

    .line 745
    move/from16 v4, v16

    .line 746
    .line 747
    :goto_10
    iput-boolean v11, v0, Landroidx/work/impl/WorkContinuationImpl;->f:Z

    .line 748
    .line 749
    return v4
.end method
