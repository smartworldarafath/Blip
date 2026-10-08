.class public final synthetic Landroidx/work/impl/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkerWrapper$Resolution;

.field public final synthetic b:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper$Resolution;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/b;->a:Landroidx/work/impl/WorkerWrapper$Resolution;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/b;->b:Landroidx/work/impl/WorkerWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/impl/b;->b:Landroidx/work/impl/WorkerWrapper;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/work/impl/WorkerWrapper;->l:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/work/impl/b;->a:Landroidx/work/impl/WorkerWrapper$Resolution;

    .line 12
    .line 13
    instance-of v5, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 14
    .line 15
    const-string v6, "Worker result FAILURE for "

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    if-eqz v5, :cond_7

    .line 20
    .line 21
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;->a:Landroidx/work/ListenableWorker$Result;

    .line 24
    .line 25
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v9, v0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/impl/WorkDatabase;

    .line 32
    .line 33
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Landroidx/work/impl/model/WorkProgressDao;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Landroidx/work/impl/model/WorkProgressDao_Impl;

    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v9, v9, Landroidx/work/impl/model/WorkProgressDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 43
    .line 44
    new-instance v10, Lq7;

    .line 45
    .line 46
    const/16 v11, 0x9

    .line 47
    .line 48
    invoke-direct {v10, v2, v11}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v9, v8, v7, v10}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object v9, Landroidx/work/WorkInfo$State;->k:Landroidx/work/WorkInfo$State;

    .line 58
    .line 59
    if-ne v5, v9, :cond_6

    .line 60
    .line 61
    instance-of v5, p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    sget-object v5, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v10, "Worker result SUCCESS for "

    .line 74
    .line 75
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v6, v5, v1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    move v7, v8

    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    sget-object v1, Landroidx/work/WorkInfo$State;->l:Landroidx/work/WorkInfo$State;

    .line 101
    .line 102
    invoke-virtual {v3, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    check-cast p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/work/ListenableWorker$Result$Success;->a:Landroidx/work/Data;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v1, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 113
    .line 114
    new-instance v4, Lec;

    .line 115
    .line 116
    const/16 v5, 0x1d

    .line 117
    .line 118
    invoke-direct {v4, v5, p0, v2}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v8, v7, v4}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget-object p0, v0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/SystemClock;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    iget-object p0, v0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/DependencyDao;

    .line 134
    .line 135
    check-cast p0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroidx/work/impl/model/DependencyDao_Impl;->a(Ljava/lang/String;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_1

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    sget-object v6, Landroidx/work/WorkInfo$State;->n:Landroidx/work/WorkInfo$State;

    .line 162
    .line 163
    if-ne v2, v6, :cond_3

    .line 164
    .line 165
    iget-object v2, p0, Landroidx/work/impl/model/DependencyDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 166
    .line 167
    new-instance v6, Lq7;

    .line 168
    .line 169
    invoke-direct {v6, v1, v7}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v7, v8, v6}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_3

    .line 183
    .line 184
    sget-object v2, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const-string v9, "Setting status to enqueued for "

    .line 191
    .line 192
    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v6, v2, v9}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v2, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 200
    .line 201
    invoke-virtual {v3, v2, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4, v5, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->e(JLjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    sget-object v2, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v3, v2, v1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_5
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->d(Landroidx/work/ListenableWorker$Result;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_6
    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->a()Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-nez p0, :cond_1

    .line 250
    .line 251
    const/16 p0, -0x200

    .line 252
    .line 253
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->b(I)V

    .line 254
    .line 255
    .line 256
    :goto_2
    move v8, v7

    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :cond_7
    instance-of v5, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 260
    .line 261
    if-eqz v5, :cond_9

    .line 262
    .line 263
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 264
    .line 265
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;->a:Landroidx/work/ListenableWorker$Result;

    .line 266
    .line 267
    sget-object v2, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v3, v2, v1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_8

    .line 293
    .line 294
    invoke-virtual {v0}, Landroidx/work/impl/WorkerWrapper;->c()V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_8
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->d(Landroidx/work/ListenableWorker$Result;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_9
    instance-of v1, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 305
    .line 306
    if-eqz v1, :cond_c

    .line 307
    .line 308
    check-cast p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 309
    .line 310
    iget p0, p0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;->a:I

    .line 311
    .line 312
    iget-object v1, v4, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    .line 313
    .line 314
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_a

    .line 321
    .line 322
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v5, "Worker "

    .line 331
    .line 332
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v4, " was interrupted. Backing off."

    .line 341
    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v2, v1, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkerWrapper;->b(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_a
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 357
    .line 358
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    const-string v1, " is "

    .line 363
    .line 364
    const-string v4, "Status for "

    .line 365
    .line 366
    if-eqz v0, :cond_b

    .line 367
    .line 368
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->a()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-nez v5, :cond_b

    .line 373
    .line 374
    sget-object v5, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 375
    .line 376
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v0, "; not doing any work and rescheduling for later execution"

    .line 395
    .line 396
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v6, v5, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    sget-object v0, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 407
    .line 408
    invoke-virtual {v3, v0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3, p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->g(ILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-wide/16 v0, -0x1

    .line 415
    .line 416
    invoke-virtual {v3, v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 417
    .line 418
    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :cond_b
    sget-object p0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 422
    .line 423
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, " ; not doing any work"

    .line 442
    .line 443
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v3, p0, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    return-object p0

    .line 460
    :cond_c
    invoke-static {}, Lk8;->e()V

    .line 461
    .line 462
    .line 463
    const/4 p0, 0x0

    .line 464
    return-object p0
.end method
