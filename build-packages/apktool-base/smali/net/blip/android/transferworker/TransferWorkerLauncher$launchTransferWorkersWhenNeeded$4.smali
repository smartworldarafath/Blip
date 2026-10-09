.class final Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/android/transferworker/TransferWorkerLauncher;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferWorkerLauncher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4;->j:Lnet/blip/android/transferworker/TransferWorkerLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4;->j:Lnet/blip/android/transferworker/TransferWorkerLauncher;

    .line 8
    .line 9
    iget-object v2, v1, Lnet/blip/android/transferworker/TransferWorkerLauncher;->e:Lnet/blip/libblip/Logger;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " transfers need workers"

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    new-array v4, v4, [Lkotlin/Pair;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v2, "TransferWorkerLauncher"

    .line 39
    .line 40
    invoke-static {v2, v3, v4}, Lnet/blip/libblip/Logger;->g(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_7

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lnet/blip/libblip/frontend/Transfer;

    .line 58
    .line 59
    iget-object v3, v2, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 60
    .line 61
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 v5, 0x22

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const-string v7, "transferId"

    .line 67
    .line 68
    if-lt v4, v5, :cond_4

    .line 69
    .line 70
    iget-object v4, v1, Lnet/blip/android/transferworker/TransferWorkerLauncher;->c:Landroid/app/job/JobScheduler;

    .line 71
    .line 72
    sget-object v5, Lnet/blip/android/transferworker/TransferService;->k:Lnet/blip/libblip/Logger;

    .line 73
    .line 74
    iget-object v5, v1, Lnet/blip/android/transferworker/TransferWorkerLauncher;->a:Landroid/content/Context;

    .line 75
    .line 76
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    .line 77
    .line 78
    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 79
    .line 80
    .line 81
    const/16 v9, 0xc

    .line 82
    .line 83
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    new-instance v9, Landroid/os/PersistableBundle;

    .line 92
    .line 93
    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v10, "transfer_id"

    .line 97
    .line 98
    invoke-virtual {v9, v10, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v10, v2, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const-wide/16 v11, 0x0

    .line 108
    .line 109
    if-eq v10, v6, :cond_1

    .line 110
    .line 111
    const/4 v13, 0x2

    .line 112
    if-eq v10, v13, :cond_0

    .line 113
    .line 114
    move-wide v13, v11

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    invoke-static {v2}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v13

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    invoke-static {v2}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v13

    .line 125
    move-wide/from16 v20, v13

    .line 126
    .line 127
    move-wide v13, v11

    .line 128
    move-wide/from16 v11, v20

    .line 129
    .line 130
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v10, "transfer_service:"

    .line 133
    .line 134
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    new-instance v10, Landroid/app/job/JobInfo$Builder;

    .line 149
    .line 150
    new-instance v15, Landroid/content/ComponentName;

    .line 151
    .line 152
    const-class v6, Lnet/blip/android/transferworker/TransferService;

    .line 153
    .line 154
    invoke-direct {v15, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v10, v2, v15}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v10}, Lac;->f(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2, v8}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const/4 v5, 0x1

    .line 173
    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_3

    .line 193
    .line 194
    if-eq v2, v5, :cond_2

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_2
    new-instance v2, Lkotlin/Pair;

    .line 198
    .line 199
    invoke-direct {v2, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    const-string v3, "scheduled job"

    .line 207
    .line 208
    invoke-static {v3, v2}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_3
    new-instance v2, Lkotlin/Pair;

    .line 214
    .line 215
    invoke-direct {v2, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v4, "scheduling job failed; attempting to enqueue work"

    .line 223
    .line 224
    invoke-static {v4, v2}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    :goto_2
    sget-object v2, Lnet/blip/android/transferworker/TransferWorker;->j:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    sget-object v2, Lnet/blip/android/transferworker/TransferWorker;->k:Lnet/blip/libblip/Logger;

    .line 233
    .line 234
    new-instance v4, Lkotlin/Pair;

    .line 235
    .line 236
    invoke-direct {v4, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    filled-new-array {v4}, [Lkotlin/Pair;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    const-string v2, "starting if needed"

    .line 247
    .line 248
    invoke-static {v2, v4}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 249
    .line 250
    .line 251
    const-string v2, "work_transfer:"

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    new-instance v4, Landroidx/work/Data$Builder;

    .line 258
    .line 259
    invoke-direct {v4}, Landroidx/work/Data$Builder;-><init>()V

    .line 260
    .line 261
    .line 262
    sget-object v5, Lnet/blip/android/transferworker/TransferWorker;->j:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    iget-object v6, v4, Landroidx/work/Data$Builder;->a:Ljava/util/LinkedHashMap;

    .line 268
    .line 269
    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    new-instance v5, Landroidx/work/Constraints$Builder;

    .line 273
    .line 274
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    new-instance v9, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 278
    .line 279
    const/4 v6, 0x0

    .line 280
    invoke-direct {v9, v6}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 281
    .line 282
    .line 283
    sget-object v10, Landroidx/work/NetworkType;->j:Landroidx/work/NetworkType;

    .line 284
    .line 285
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 286
    .line 287
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 288
    .line 289
    .line 290
    const/4 v11, 0x1

    .line 291
    iput-boolean v11, v5, Landroidx/work/Constraints$Builder;->a:Z

    .line 292
    .line 293
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 294
    .line 295
    .line 296
    move-result-object v19

    .line 297
    iget-boolean v14, v5, Landroidx/work/Constraints$Builder;->a:Z

    .line 298
    .line 299
    new-instance v8, Landroidx/work/Constraints;

    .line 300
    .line 301
    const/4 v11, 0x0

    .line 302
    const/4 v12, 0x0

    .line 303
    const/4 v13, 0x0

    .line 304
    const-wide/16 v15, -0x1

    .line 305
    .line 306
    move-wide/from16 v17, v15

    .line 307
    .line 308
    invoke-direct/range {v8 .. v19}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 309
    .line 310
    .line 311
    new-instance v5, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 312
    .line 313
    const-class v9, Lnet/blip/android/transferworker/TransferWorker;

    .line 314
    .line 315
    invoke-direct {v5, v9}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 316
    .line 317
    .line 318
    iget-object v9, v5, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 319
    .line 320
    iput-object v8, v9, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 321
    .line 322
    invoke-virtual {v4}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    iget-object v8, v5, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 327
    .line 328
    iput-object v4, v8, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 329
    .line 330
    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    iget-object v8, v5, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    .line 338
    .line 339
    .line 340
    move-result-wide v9

    .line 341
    iput-wide v9, v8, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 342
    .line 343
    const-wide v8, 0x7fffffffffffffffL

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v10

    .line 352
    sub-long/2addr v8, v10

    .line 353
    iget-object v4, v5, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 354
    .line 355
    iget-wide v10, v4, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 356
    .line 357
    cmp-long v8, v8, v10

    .line 358
    .line 359
    if-lez v8, :cond_6

    .line 360
    .line 361
    sget-object v8, Landroidx/work/OutOfQuotaPolicy;->j:Landroidx/work/OutOfQuotaPolicy;

    .line 362
    .line 363
    const/4 v11, 0x1

    .line 364
    iput-boolean v11, v4, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 365
    .line 366
    iput-object v8, v4, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 367
    .line 368
    invoke-virtual {v5}, Landroidx/work/WorkRequest$Builder;->a()Landroidx/work/OneTimeWorkRequest;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    iget-object v5, v1, Lnet/blip/android/transferworker/TransferWorkerLauncher;->d:Landroidx/work/impl/WorkManagerImpl;

    .line 373
    .line 374
    sget-object v8, Landroidx/work/ExistingWorkPolicy;->j:[Landroidx/work/ExistingWorkPolicy;

    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-nez v8, :cond_5

    .line 388
    .line 389
    new-instance v6, Landroidx/work/impl/WorkContinuationImpl;

    .line 390
    .line 391
    invoke-direct {v6, v5, v2, v4}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Landroidx/work/impl/WorkContinuationImpl;->a()Landroidx/work/Operation;

    .line 395
    .line 396
    .line 397
    new-instance v2, Lkotlin/Pair;

    .line 398
    .line 399
    invoke-direct {v2, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    const-string v3, "enqueued work"

    .line 407
    .line 408
    invoke-static {v3, v2}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_5
    const-string v0, "beginUniqueWork needs at least one OneTimeWorkRequest."

    .line 414
    .line 415
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-object v6

    .line 419
    :cond_6
    const-string v0, "The given initial delay is too large and will cause an overflow!"

    .line 420
    .line 421
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-object v6

    .line 425
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 426
    .line 427
    return-object v0
.end method
