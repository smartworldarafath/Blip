.class public abstract Landroidx/work/impl/WorkManagerImplExtKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;
    .locals 33

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 7
    .line 8
    iget-object v0, v2, Landroidx/work/Configuration;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v4, v2, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const v6, 0x7f050006

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x5

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x1

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    new-instance v5, Landroidx/room/RoomDatabase$Builder;

    .line 47
    .line 48
    invoke-direct {v5, v0, v7}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-boolean v8, v5, Landroidx/room/RoomDatabase$Builder;->i:Z

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v5, "androidx.work.workdb"

    .line 55
    .line 56
    invoke-static {v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-nez v9, :cond_32

    .line 61
    .line 62
    new-instance v9, Landroidx/room/RoomDatabase$Builder;

    .line 63
    .line 64
    invoke-direct {v9, v0, v5}, Landroidx/room/RoomDatabase$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Le3;

    .line 68
    .line 69
    invoke-direct {v5, v0, v6}, Le3;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    iput-object v5, v9, Landroidx/room/RoomDatabase$Builder;->h:Le3;

    .line 73
    .line 74
    move-object v5, v9

    .line 75
    :goto_0
    iput-object v1, v5, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    new-instance v1, Landroidx/work/impl/CleanupCallback;

    .line 78
    .line 79
    invoke-direct {v1, v4}, Landroidx/work/impl/CleanupCallback;-><init>(Landroidx/work/SystemClock;)V

    .line 80
    .line 81
    .line 82
    iget-object v14, v5, Landroidx/room/RoomDatabase$Builder;->d:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 88
    .line 89
    sget-object v4, Landroidx/work/impl/Migration_1_2;->c:Landroidx/work/impl/Migration_1_2;

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    aput-object v4, v1, v9

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Landroidx/work/impl/RescheduleMigration;

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    const/4 v10, 0x3

    .line 101
    invoke-direct {v1, v0, v4, v10}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    .line 102
    .line 103
    .line 104
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 105
    .line 106
    aput-object v1, v4, v9

    .line 107
    .line 108
    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 109
    .line 110
    .line 111
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 112
    .line 113
    sget-object v4, Landroidx/work/impl/Migration_3_4;->c:Landroidx/work/impl/Migration_3_4;

    .line 114
    .line 115
    aput-object v4, v1, v9

    .line 116
    .line 117
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 118
    .line 119
    .line 120
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 121
    .line 122
    sget-object v4, Landroidx/work/impl/Migration_4_5;->c:Landroidx/work/impl/Migration_4_5;

    .line 123
    .line 124
    aput-object v4, v1, v9

    .line 125
    .line 126
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Landroidx/work/impl/RescheduleMigration;

    .line 130
    .line 131
    const/4 v4, 0x6

    .line 132
    invoke-direct {v1, v0, v6, v4}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    .line 133
    .line 134
    .line 135
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 136
    .line 137
    aput-object v1, v4, v9

    .line 138
    .line 139
    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 140
    .line 141
    .line 142
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 143
    .line 144
    sget-object v4, Landroidx/work/impl/Migration_6_7;->c:Landroidx/work/impl/Migration_6_7;

    .line 145
    .line 146
    aput-object v4, v1, v9

    .line 147
    .line 148
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 149
    .line 150
    .line 151
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 152
    .line 153
    sget-object v4, Landroidx/work/impl/Migration_7_8;->c:Landroidx/work/impl/Migration_7_8;

    .line 154
    .line 155
    aput-object v4, v1, v9

    .line 156
    .line 157
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 158
    .line 159
    .line 160
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 161
    .line 162
    sget-object v4, Landroidx/work/impl/Migration_8_9;->c:Landroidx/work/impl/Migration_8_9;

    .line 163
    .line 164
    aput-object v4, v1, v9

    .line 165
    .line 166
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Landroidx/work/impl/WorkMigration9To10;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Landroidx/work/impl/WorkMigration9To10;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 175
    .line 176
    aput-object v1, v4, v9

    .line 177
    .line 178
    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Landroidx/work/impl/RescheduleMigration;

    .line 182
    .line 183
    const/16 v4, 0xa

    .line 184
    .line 185
    const/16 v6, 0xb

    .line 186
    .line 187
    invoke-direct {v1, v0, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    .line 188
    .line 189
    .line 190
    new-array v4, v8, [Landroidx/room/migration/Migration;

    .line 191
    .line 192
    aput-object v1, v4, v9

    .line 193
    .line 194
    invoke-virtual {v5, v4}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 195
    .line 196
    .line 197
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 198
    .line 199
    sget-object v4, Landroidx/work/impl/Migration_11_12;->c:Landroidx/work/impl/Migration_11_12;

    .line 200
    .line 201
    aput-object v4, v1, v9

    .line 202
    .line 203
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 204
    .line 205
    .line 206
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 207
    .line 208
    sget-object v4, Landroidx/work/impl/Migration_12_13;->c:Landroidx/work/impl/Migration_12_13;

    .line 209
    .line 210
    aput-object v4, v1, v9

    .line 211
    .line 212
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 213
    .line 214
    .line 215
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 216
    .line 217
    sget-object v4, Landroidx/work/impl/Migration_15_16;->c:Landroidx/work/impl/Migration_15_16;

    .line 218
    .line 219
    aput-object v4, v1, v9

    .line 220
    .line 221
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 222
    .line 223
    .line 224
    new-array v1, v8, [Landroidx/room/migration/Migration;

    .line 225
    .line 226
    sget-object v4, Landroidx/work/impl/Migration_16_17;->c:Landroidx/work/impl/Migration_16_17;

    .line 227
    .line 228
    aput-object v4, v1, v9

    .line 229
    .line 230
    invoke-virtual {v5, v1}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Landroidx/work/impl/RescheduleMigration;

    .line 234
    .line 235
    const/16 v4, 0x15

    .line 236
    .line 237
    const/16 v6, 0x16

    .line 238
    .line 239
    invoke-direct {v1, v0, v4, v6}, Landroidx/work/impl/RescheduleMigration;-><init>(Landroid/content/Context;II)V

    .line 240
    .line 241
    .line 242
    new-array v0, v8, [Landroidx/room/migration/Migration;

    .line 243
    .line 244
    aput-object v1, v0, v9

    .line 245
    .line 246
    invoke-virtual {v5, v0}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    .line 247
    .line 248
    .line 249
    iput-boolean v9, v5, Landroidx/room/RoomDatabase$Builder;->p:Z

    .line 250
    .line 251
    iput-boolean v8, v5, Landroidx/room/RoomDatabase$Builder;->q:Z

    .line 252
    .line 253
    iput-boolean v8, v5, Landroidx/room/RoomDatabase$Builder;->r:Z

    .line 254
    .line 255
    iget-object v0, v5, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/concurrent/Executor;

    .line 256
    .line 257
    if-nez v0, :cond_1

    .line 258
    .line 259
    iget-object v1, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 260
    .line 261
    if-nez v1, :cond_1

    .line 262
    .line 263
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->c:Lz2;

    .line 264
    .line 265
    iput-object v0, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 266
    .line 267
    iput-object v0, v5, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/concurrent/Executor;

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_1
    if-eqz v0, :cond_2

    .line 271
    .line 272
    iget-object v1, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 273
    .line 274
    if-nez v1, :cond_2

    .line 275
    .line 276
    iput-object v0, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_2
    if-nez v0, :cond_3

    .line 280
    .line 281
    iget-object v0, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 282
    .line 283
    iput-object v0, v5, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/concurrent/Executor;

    .line 284
    .line 285
    :cond_3
    :goto_1
    iget-object v0, v5, Landroidx/room/RoomDatabase$Builder;->n:Ljava/util/LinkedHashSet;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v1, v5, Landroidx/room/RoomDatabase$Builder;->m:Ljava/util/LinkedHashSet;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-nez v4, :cond_5

    .line 300
    .line 301
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_5

    .line 310
    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Ljava/lang/Number;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-nez v6, :cond_4

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 333
    .line 334
    invoke-static {v4, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Lfe;->l(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    return-object v7

    .line 342
    :cond_5
    iget-object v0, v5, Landroidx/room/RoomDatabase$Builder;->h:Le3;

    .line 343
    .line 344
    if-nez v0, :cond_6

    .line 345
    .line 346
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 349
    .line 350
    .line 351
    :cond_6
    move-object v12, v0

    .line 352
    iget-wide v10, v5, Landroidx/room/RoomDatabase$Builder;->k:J

    .line 353
    .line 354
    const-wide/16 v15, 0x0

    .line 355
    .line 356
    cmp-long v0, v10, v15

    .line 357
    .line 358
    const-string v4, "Required value was null."

    .line 359
    .line 360
    if-lez v0, :cond_8

    .line 361
    .line 362
    iget-object v0, v5, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    .line 363
    .line 364
    if-eqz v0, :cond_7

    .line 365
    .line 366
    invoke-static {v4}, Lu2;->g(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    return-object v7

    .line 370
    :cond_7
    const-string v0, "Cannot create auto-closing database for an in-memory database."

    .line 371
    .line 372
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v7

    .line 376
    :cond_8
    move v0, v9

    .line 377
    new-instance v9, Landroidx/room/DatabaseConfiguration;

    .line 378
    .line 379
    iget-boolean v15, v5, Landroidx/room/RoomDatabase$Builder;->i:Z

    .line 380
    .line 381
    iget-object v6, v5, Landroidx/room/RoomDatabase$Builder;->j:Landroidx/room/RoomDatabase$JournalMode;

    .line 382
    .line 383
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    iget-object v10, v5, Landroidx/room/RoomDatabase$Builder;->b:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    sget-object v11, Landroidx/room/RoomDatabase$JournalMode;->j:Landroidx/room/RoomDatabase$JournalMode;

    .line 392
    .line 393
    if-eq v6, v11, :cond_9

    .line 394
    .line 395
    :goto_3
    move-object/from16 v16, v6

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_9
    const-string v6, "activity"

    .line 399
    .line 400
    invoke-virtual {v10, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    instance-of v11, v6, Landroid/app/ActivityManager;

    .line 405
    .line 406
    if-eqz v11, :cond_a

    .line 407
    .line 408
    check-cast v6, Landroid/app/ActivityManager;

    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_a
    move-object v6, v7

    .line 412
    :goto_4
    if-eqz v6, :cond_b

    .line 413
    .line 414
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-nez v6, :cond_b

    .line 419
    .line 420
    sget-object v6, Landroidx/room/RoomDatabase$JournalMode;->l:Landroidx/room/RoomDatabase$JournalMode;

    .line 421
    .line 422
    goto :goto_3

    .line 423
    :cond_b
    sget-object v6, Landroidx/room/RoomDatabase$JournalMode;->k:Landroidx/room/RoomDatabase$JournalMode;

    .line 424
    .line 425
    goto :goto_3

    .line 426
    :goto_5
    iget-object v6, v5, Landroidx/room/RoomDatabase$Builder;->f:Ljava/util/concurrent/Executor;

    .line 427
    .line 428
    if-eqz v6, :cond_31

    .line 429
    .line 430
    iget-object v11, v5, Landroidx/room/RoomDatabase$Builder;->g:Ljava/util/concurrent/Executor;

    .line 431
    .line 432
    if-eqz v11, :cond_30

    .line 433
    .line 434
    iget-boolean v4, v5, Landroidx/room/RoomDatabase$Builder;->p:Z

    .line 435
    .line 436
    iget-boolean v13, v5, Landroidx/room/RoomDatabase$Builder;->q:Z

    .line 437
    .line 438
    iget-boolean v0, v5, Landroidx/room/RoomDatabase$Builder;->r:Z

    .line 439
    .line 440
    const/16 v29, 0x0

    .line 441
    .line 442
    const/16 v30, 0x0

    .line 443
    .line 444
    move-object/from16 v18, v11

    .line 445
    .line 446
    iget-object v11, v5, Landroidx/room/RoomDatabase$Builder;->c:Ljava/lang/String;

    .line 447
    .line 448
    move/from16 v21, v13

    .line 449
    .line 450
    iget-object v13, v5, Landroidx/room/RoomDatabase$Builder;->l:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 451
    .line 452
    const/16 v19, 0x0

    .line 453
    .line 454
    const/16 v23, 0x0

    .line 455
    .line 456
    const/16 v24, 0x0

    .line 457
    .line 458
    const/16 v25, 0x0

    .line 459
    .line 460
    iget-object v7, v5, Landroidx/room/RoomDatabase$Builder;->e:Ljava/util/ArrayList;

    .line 461
    .line 462
    move/from16 v32, v8

    .line 463
    .line 464
    iget-object v8, v5, Landroidx/room/RoomDatabase$Builder;->o:Ljava/util/ArrayList;

    .line 465
    .line 466
    move/from16 v28, v0

    .line 467
    .line 468
    move-object/from16 v22, v1

    .line 469
    .line 470
    move/from16 v20, v4

    .line 471
    .line 472
    move-object/from16 v17, v6

    .line 473
    .line 474
    move-object/from16 v26, v7

    .line 475
    .line 476
    move-object/from16 v27, v8

    .line 477
    .line 478
    const/4 v0, 0x0

    .line 479
    invoke-direct/range {v9 .. v30}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 480
    .line 481
    .line 482
    iget-boolean v1, v5, Landroidx/room/RoomDatabase$Builder;->s:Z

    .line 483
    .line 484
    iput-boolean v1, v9, Landroidx/room/DatabaseConfiguration;->v:Z

    .line 485
    .line 486
    iget-object v1, v5, Landroidx/room/RoomDatabase$Builder;->a:Lkotlin/jvm/internal/ClassReference;

    .line 487
    .line 488
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    if-eqz v4, :cond_c

    .line 497
    .line 498
    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    if-nez v4, :cond_d

    .line 503
    .line 504
    :cond_c
    const-string v4, ""

    .line 505
    .line 506
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    if-nez v6, :cond_e

    .line 518
    .line 519
    goto :goto_6

    .line 520
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    add-int/lit8 v6, v6, 0x1

    .line 525
    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    :goto_6
    const/16 v6, 0x5f

    .line 531
    .line 532
    const/16 v7, 0x2e

    .line 533
    .line 534
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    const-string v6, "_Impl"

    .line 542
    .line 543
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-nez v6, :cond_f

    .line 552
    .line 553
    move-object v4, v5

    .line 554
    goto :goto_7

    .line 555
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    move/from16 v7, v32

    .line 578
    .line 579
    invoke-static {v4, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    const/4 v6, 0x0

    .line 587
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    check-cast v1, Landroidx/room/RoomDatabase;

    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    iget-boolean v4, v9, Landroidx/room/DatabaseConfiguration;->v:Z

    .line 601
    .line 602
    iput-boolean v4, v1, Landroidx/room/RoomDatabase;->j:Z

    .line 603
    .line 604
    :try_start_1
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()Landroidx/room/RoomOpenDelegateMarker;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    check-cast v4, Landroidx/room/RoomOpenDelegate;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    .line 613
    goto :goto_8

    .line 614
    :catch_0
    const/4 v4, 0x0

    .line 615
    :goto_8
    if-eqz v4, :cond_2f

    .line 616
    .line 617
    new-instance v5, Landroidx/room/RoomConnectionManager;

    .line 618
    .line 619
    invoke-direct {v5, v9, v4}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V

    .line 620
    .line 621
    .line 622
    iput-object v5, v1, Landroidx/room/RoomDatabase;->d:Landroidx/room/RoomConnectionManager;

    .line 623
    .line 624
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->d()Landroidx/room/InvalidationTracker;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    iput-object v4, v1, Landroidx/room/RoomDatabase;->e:Landroidx/room/InvalidationTracker;

    .line 629
    .line 630
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 631
    .line 632
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->h()Ljava/util/Set;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    new-array v7, v6, [Z

    .line 644
    .line 645
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    const/4 v10, -0x1

    .line 654
    iget-object v11, v9, Landroidx/room/DatabaseConfiguration;->r:Ljava/util/List;

    .line 655
    .line 656
    if-eqz v8, :cond_14

    .line 657
    .line 658
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    check-cast v8, Lkotlin/reflect/KClass;

    .line 663
    .line 664
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 665
    .line 666
    .line 667
    move-result v12

    .line 668
    add-int/2addr v12, v10

    .line 669
    if-ltz v12, :cond_12

    .line 670
    .line 671
    :goto_a
    add-int/lit8 v13, v12, -0x1

    .line 672
    .line 673
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v14

    .line 677
    move-object v15, v8

    .line 678
    check-cast v15, Lkotlin/jvm/internal/ClassReference;

    .line 679
    .line 680
    invoke-virtual {v15, v14}, Lkotlin/jvm/internal/ClassReference;->d(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v14

    .line 684
    if-eqz v14, :cond_10

    .line 685
    .line 686
    const/16 v32, 0x1

    .line 687
    .line 688
    aput-boolean v32, v7, v12

    .line 689
    .line 690
    move v10, v12

    .line 691
    goto :goto_b

    .line 692
    :cond_10
    if-gez v13, :cond_11

    .line 693
    .line 694
    goto :goto_b

    .line 695
    :cond_11
    move v12, v13

    .line 696
    goto :goto_a

    .line 697
    :cond_12
    :goto_b
    if-ltz v10, :cond_13

    .line 698
    .line 699
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v10

    .line 703
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    goto :goto_9

    .line 707
    :cond_13
    check-cast v8, Lkotlin/jvm/internal/ClassReference;

    .line 708
    .line 709
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->b()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    const-string v1, ") is missing in the database configuration."

    .line 714
    .line 715
    const-string v2, "A required auto migration spec ("

    .line 716
    .line 717
    invoke-static {v2, v0, v1}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    const/16 v31, 0x0

    .line 721
    .line 722
    return-object v31

    .line 723
    :cond_14
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    add-int/2addr v5, v10

    .line 728
    if-ltz v5, :cond_17

    .line 729
    .line 730
    :goto_c
    add-int/lit8 v8, v5, -0x1

    .line 731
    .line 732
    if-ge v5, v6, :cond_16

    .line 733
    .line 734
    aget-boolean v5, v7, v5

    .line 735
    .line 736
    if-eqz v5, :cond_16

    .line 737
    .line 738
    if-gez v8, :cond_15

    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_15
    move v5, v8

    .line 742
    goto :goto_c

    .line 743
    :cond_16
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 744
    .line 745
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    const/16 v31, 0x0

    .line 749
    .line 750
    return-object v31

    .line 751
    :cond_17
    :goto_d
    invoke-virtual {v1, v4}, Landroidx/room/RoomDatabase;->c(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    :cond_18
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    if-eqz v5, :cond_1b

    .line 764
    .line 765
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    check-cast v5, Landroidx/room/migration/Migration;

    .line 770
    .line 771
    iget v6, v5, Landroidx/room/migration/Migration;->a:I

    .line 772
    .line 773
    iget v7, v5, Landroidx/room/migration/Migration;->b:I

    .line 774
    .line 775
    iget-object v8, v9, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 776
    .line 777
    iget-object v11, v8, Landroidx/room/RoomDatabase$MigrationContainer;->a:Ljava/util/LinkedHashMap;

    .line 778
    .line 779
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v12

    .line 783
    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v12

    .line 787
    if-eqz v12, :cond_1a

    .line 788
    .line 789
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 790
    .line 791
    .line 792
    move-result-object v6

    .line 793
    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    check-cast v6, Ljava/util/Map;

    .line 798
    .line 799
    if-nez v6, :cond_19

    .line 800
    .line 801
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    :cond_19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v6

    .line 813
    goto :goto_f

    .line 814
    :cond_1a
    move v6, v0

    .line 815
    :goto_f
    if-nez v6, :cond_18

    .line 816
    .line 817
    invoke-virtual {v8, v5}, Landroidx/room/RoomDatabase$MigrationContainer;->a(Landroidx/room/migration/Migration;)V

    .line 818
    .line 819
    .line 820
    goto :goto_e

    .line 821
    :cond_1b
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->i()Ljava/util/LinkedHashMap;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    new-array v4, v4, [Z

    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    iget-object v6, v9, Landroidx/room/DatabaseConfiguration;->q:Ljava/util/List;

    .line 844
    .line 845
    if-eqz v5, :cond_21

    .line 846
    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    check-cast v5, Ljava/util/Map$Entry;

    .line 852
    .line 853
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v7

    .line 857
    check-cast v7, Lkotlin/reflect/KClass;

    .line 858
    .line 859
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v5

    .line 863
    check-cast v5, Ljava/util/List;

    .line 864
    .line 865
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 866
    .line 867
    .line 868
    move-result-object v5

    .line 869
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 870
    .line 871
    .line 872
    move-result v8

    .line 873
    if-eqz v8, :cond_20

    .line 874
    .line 875
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v8

    .line 879
    check-cast v8, Lkotlin/reflect/KClass;

    .line 880
    .line 881
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 882
    .line 883
    .line 884
    move-result v11

    .line 885
    add-int/2addr v11, v10

    .line 886
    if-ltz v11, :cond_1e

    .line 887
    .line 888
    :goto_12
    add-int/lit8 v12, v11, -0x1

    .line 889
    .line 890
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v13

    .line 894
    move-object v14, v8

    .line 895
    check-cast v14, Lkotlin/jvm/internal/ClassReference;

    .line 896
    .line 897
    invoke-virtual {v14, v13}, Lkotlin/jvm/internal/ClassReference;->d(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v13

    .line 901
    if-eqz v13, :cond_1c

    .line 902
    .line 903
    const/16 v32, 0x1

    .line 904
    .line 905
    aput-boolean v32, v4, v11

    .line 906
    .line 907
    goto :goto_14

    .line 908
    :cond_1c
    const/16 v32, 0x1

    .line 909
    .line 910
    if-gez v12, :cond_1d

    .line 911
    .line 912
    goto :goto_13

    .line 913
    :cond_1d
    move v11, v12

    .line 914
    goto :goto_12

    .line 915
    :cond_1e
    const/16 v32, 0x1

    .line 916
    .line 917
    :goto_13
    move v11, v10

    .line 918
    :goto_14
    if-ltz v11, :cond_1f

    .line 919
    .line 920
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v11

    .line 924
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    iget-object v12, v1, Landroidx/room/RoomDatabase;->i:Ljava/util/LinkedHashMap;

    .line 931
    .line 932
    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    goto :goto_11

    .line 936
    :cond_1f
    check-cast v8, Lkotlin/jvm/internal/ClassReference;

    .line 937
    .line 938
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->b()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 943
    .line 944
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->b()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    const-string v2, " is missing in the database configuration."

    .line 949
    .line 950
    const-string v3, "A required type converter ("

    .line 951
    .line 952
    const-string v4, ") for "

    .line 953
    .line 954
    invoke-static {v3, v0, v4, v1, v2}, Lk8;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 955
    .line 956
    .line 957
    const/16 v31, 0x0

    .line 958
    .line 959
    return-object v31

    .line 960
    :cond_20
    const/16 v32, 0x1

    .line 961
    .line 962
    goto :goto_10

    .line 963
    :cond_21
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    add-int/2addr v0, v10

    .line 968
    if-ltz v0, :cond_24

    .line 969
    .line 970
    :goto_15
    add-int/lit8 v5, v0, -0x1

    .line 971
    .line 972
    aget-boolean v7, v4, v0

    .line 973
    .line 974
    if-eqz v7, :cond_23

    .line 975
    .line 976
    if-gez v5, :cond_22

    .line 977
    .line 978
    goto :goto_16

    .line 979
    :cond_22
    move v0, v5

    .line 980
    goto :goto_15

    .line 981
    :cond_23
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    const-string v1, "Unexpected type converter "

    .line 986
    .line 987
    const-string v2, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 988
    .line 989
    invoke-static {v1, v0, v2}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 990
    .line 991
    .line 992
    const/16 v31, 0x0

    .line 993
    .line 994
    return-object v31

    .line 995
    :cond_24
    :goto_16
    iget-object v0, v9, Landroidx/room/DatabaseConfiguration;->h:Ljava/util/concurrent/Executor;

    .line 996
    .line 997
    iput-object v0, v1, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    .line 998
    .line 999
    new-instance v0, Landroidx/room/TransactionExecutor;

    .line 1000
    .line 1001
    iget-object v4, v9, Landroidx/room/DatabaseConfiguration;->i:Ljava/util/concurrent/Executor;

    .line 1002
    .line 1003
    invoke-direct {v0, v4}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1004
    .line 1005
    .line 1006
    iput-object v0, v1, Landroidx/room/RoomDatabase;->c:Landroidx/room/TransactionExecutor;

    .line 1007
    .line 1008
    iget-object v0, v1, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    .line 1009
    .line 1010
    if-eqz v0, :cond_2e

    .line 1011
    .line 1012
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->a(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v4

    .line 1020
    invoke-static {v0, v4}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    iput-object v0, v1, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    .line 1029
    .line 1030
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 1031
    .line 1032
    iget-object v4, v1, Landroidx/room/RoomDatabase;->c:Landroidx/room/TransactionExecutor;

    .line 1033
    .line 1034
    if-eqz v4, :cond_2d

    .line 1035
    .line 1036
    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->a(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1041
    .line 1042
    .line 1043
    iget-boolean v0, v9, Landroidx/room/DatabaseConfiguration;->f:Z

    .line 1044
    .line 1045
    iput-boolean v0, v1, Landroidx/room/RoomDatabase;->g:Z

    .line 1046
    .line 1047
    iget-object v0, v1, Landroidx/room/RoomDatabase;->d:Landroidx/room/RoomConnectionManager;

    .line 1048
    .line 1049
    const-string v4, "connectionManager"

    .line 1050
    .line 1051
    if-eqz v0, :cond_2c

    .line 1052
    .line 1053
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->g()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    if-nez v0, :cond_26

    .line 1058
    .line 1059
    :cond_25
    const/4 v0, 0x0

    .line 1060
    goto :goto_18

    .line 1061
    :cond_26
    :goto_17
    instance-of v5, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 1062
    .line 1063
    if-eqz v5, :cond_27

    .line 1064
    .line 1065
    goto :goto_18

    .line 1066
    :cond_27
    instance-of v5, v0, Landroidx/room/DelegatingOpenHelper;

    .line 1067
    .line 1068
    if-eqz v5, :cond_25

    .line 1069
    .line 1070
    check-cast v0, Landroidx/room/DelegatingOpenHelper;

    .line 1071
    .line 1072
    invoke-interface {v0}, Landroidx/room/DelegatingOpenHelper;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    goto :goto_17

    .line 1077
    :goto_18
    check-cast v0, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 1078
    .line 1079
    iget-object v0, v1, Landroidx/room/RoomDatabase;->d:Landroidx/room/RoomConnectionManager;

    .line 1080
    .line 1081
    if-eqz v0, :cond_2b

    .line 1082
    .line 1083
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->g()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    if-nez v0, :cond_29

    .line 1088
    .line 1089
    :cond_28
    const/4 v7, 0x0

    .line 1090
    goto :goto_1a

    .line 1091
    :cond_29
    :goto_19
    instance-of v4, v0, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 1092
    .line 1093
    if-eqz v4, :cond_2a

    .line 1094
    .line 1095
    move-object v7, v0

    .line 1096
    goto :goto_1a

    .line 1097
    :cond_2a
    instance-of v4, v0, Landroidx/room/DelegatingOpenHelper;

    .line 1098
    .line 1099
    if-eqz v4, :cond_28

    .line 1100
    .line 1101
    check-cast v0, Landroidx/room/DelegatingOpenHelper;

    .line 1102
    .line 1103
    invoke-interface {v0}, Landroidx/room/DelegatingOpenHelper;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    goto :goto_19

    .line 1108
    :goto_1a
    check-cast v7, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 1109
    .line 1110
    move-object v4, v1

    .line 1111
    check-cast v4, Landroidx/work/impl/WorkDatabase;

    .line 1112
    .line 1113
    new-instance v5, Landroidx/work/impl/constraints/trackers/Trackers;

    .line 1114
    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    .line 1121
    .line 1122
    invoke-direct {v5, v0, v3}, Landroidx/work/impl/constraints/trackers/Trackers;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v6, Landroidx/work/impl/Processor;

    .line 1126
    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    invoke-direct {v6, v0, v2, v3, v4}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/WorkDatabase;)V

    .line 1132
    .line 1133
    .line 1134
    sget-object v0, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->r:Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;

    .line 1135
    .line 1136
    move-object/from16 v1, p0

    .line 1137
    .line 1138
    invoke-virtual/range {v0 .. v6}, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    check-cast v0, Ljava/util/List;

    .line 1143
    .line 1144
    move-object v7, v5

    .line 1145
    move-object v5, v0

    .line 1146
    new-instance v0, Landroidx/work/impl/WorkManagerImpl;

    .line 1147
    .line 1148
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    move-object/from16 v2, p1

    .line 1153
    .line 1154
    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Landroidx/work/impl/constraints/trackers/Trackers;)V

    .line 1155
    .line 1156
    .line 1157
    return-object v0

    .line 1158
    :cond_2b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    const/16 v31, 0x0

    .line 1162
    .line 1163
    throw v31

    .line 1164
    :cond_2c
    const/16 v31, 0x0

    .line 1165
    .line 1166
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    throw v31

    .line 1170
    :cond_2d
    const/16 v31, 0x0

    .line 1171
    .line 1172
    const-string v0, "internalTransactionExecutor"

    .line 1173
    .line 1174
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    throw v31

    .line 1178
    :cond_2e
    const/16 v31, 0x0

    .line 1179
    .line 1180
    const-string v0, "internalQueryExecutor"

    .line 1181
    .line 1182
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    throw v31

    .line 1186
    :cond_2f
    const/16 v31, 0x0

    .line 1187
    .line 1188
    new-instance v0, Landroidx/room/RoomConnectionManager;

    .line 1189
    .line 1190
    new-instance v2, Lwc;

    .line 1191
    .line 1192
    const/16 v3, 0x9

    .line 1193
    .line 1194
    invoke-direct {v2, v3, v1}, Lwc;-><init>(ILjava/lang/Object;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-direct {v0, v9, v2}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Lwc;)V

    .line 1198
    .line 1199
    .line 1200
    throw v31

    .line 1201
    :catch_1
    move-exception v0

    .line 1202
    goto :goto_1b

    .line 1203
    :catch_2
    move-exception v0

    .line 1204
    goto :goto_1c

    .line 1205
    :catch_3
    move-exception v0

    .line 1206
    goto :goto_1d

    .line 1207
    :goto_1b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1208
    .line 1209
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    const-string v4, "Failed to create an instance of "

    .line 1216
    .line 1217
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1228
    .line 1229
    .line 1230
    throw v2

    .line 1231
    :goto_1c
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1232
    .line 1233
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    const-string v4, "Cannot access the constructor "

    .line 1240
    .line 1241
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    .line 1253
    .line 1254
    throw v2

    .line 1255
    :goto_1d
    new-instance v2, Ljava/lang/RuntimeException;

    .line 1256
    .line 1257
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1262
    .line 1263
    const-string v4, "Cannot find implementation for "

    .line 1264
    .line 1265
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    const-string v1, ". "

    .line 1272
    .line 1273
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    const-string v1, " does not exist. Is Room annotation processor correctly configured?"

    .line 1280
    .line 1281
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v1

    .line 1288
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1289
    .line 1290
    .line 1291
    throw v2

    .line 1292
    :cond_30
    invoke-static {v4}, Lu2;->g(Ljava/lang/String;)V

    .line 1293
    .line 1294
    .line 1295
    const/16 v31, 0x0

    .line 1296
    .line 1297
    return-object v31

    .line 1298
    :cond_31
    move-object/from16 v31, v7

    .line 1299
    .line 1300
    invoke-static {v4}, Lu2;->g(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    return-object v31

    .line 1304
    :cond_32
    move-object/from16 v31, v7

    .line 1305
    .line 1306
    const-string v0, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    .line 1307
    .line 1308
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    return-object v31
.end method
