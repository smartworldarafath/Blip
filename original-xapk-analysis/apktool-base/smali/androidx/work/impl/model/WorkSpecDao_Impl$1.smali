.class public final Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p2, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/work/impl/model/WorkTypeConverters;->f(Landroidx/work/WorkInfo$State;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    int-to-long v1, p0

    .line 22
    const/4 p0, 0x2

    .line 23
    invoke-interface {p1, p0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-interface {p1, v2, v1}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-interface {p1, v3, v1}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 39
    .line 40
    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-interface {p1, v4, v1}, Landroidx/sqlite/SQLiteStatement;->k(I[B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p2, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 51
    .line 52
    invoke-static {v1}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v5, 0x6

    .line 57
    invoke-interface {p1, v5, v1}, Landroidx/sqlite/SQLiteStatement;->k(I[B)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x7

    .line 61
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 62
    .line 63
    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 69
    .line 70
    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x9

    .line 74
    .line 75
    iget-wide v5, p2, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 76
    .line 77
    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 78
    .line 79
    .line 80
    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 81
    .line 82
    int-to-long v5, v1

    .line 83
    const/16 v1, 0xa

    .line 84
    .line 85
    invoke-interface {p1, v1, v5, v6}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 86
    .line 87
    .line 88
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const/4 v6, 0x0

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    if-ne v5, v0, :cond_0

    .line 101
    .line 102
    move v5, v0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    move v5, v6

    .line 109
    :goto_0
    int-to-long v7, v5

    .line 110
    const/16 v5, 0xb

    .line 111
    .line 112
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 113
    .line 114
    .line 115
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 116
    .line 117
    const/16 v5, 0xc

    .line 118
    .line 119
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 120
    .line 121
    .line 122
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 123
    .line 124
    const/16 v5, 0xd

    .line 125
    .line 126
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 127
    .line 128
    .line 129
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 130
    .line 131
    const/16 v5, 0xe

    .line 132
    .line 133
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 134
    .line 135
    .line 136
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 137
    .line 138
    const/16 v5, 0xf

    .line 139
    .line 140
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 141
    .line 142
    .line 143
    iget-boolean v5, p2, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 144
    .line 145
    int-to-long v7, v5

    .line 146
    const/16 v5, 0x10

    .line 147
    .line 148
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 149
    .line 150
    .line 151
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_3

    .line 161
    .line 162
    if-ne v5, v0, :cond_2

    .line 163
    .line 164
    move v5, v0

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_3
    move v5, v6

    .line 171
    :goto_1
    int-to-long v7, v5

    .line 172
    const/16 v5, 0x11

    .line 173
    .line 174
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 175
    .line 176
    .line 177
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->s:I

    .line 178
    .line 179
    int-to-long v7, v5

    .line 180
    const/16 v5, 0x12

    .line 181
    .line 182
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 183
    .line 184
    .line 185
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->t:I

    .line 186
    .line 187
    int-to-long v7, v5

    .line 188
    const/16 v5, 0x13

    .line 189
    .line 190
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 191
    .line 192
    .line 193
    const/16 v5, 0x14

    .line 194
    .line 195
    iget-wide v7, p2, Landroidx/work/impl/model/WorkSpec;->u:J

    .line 196
    .line 197
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 198
    .line 199
    .line 200
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 201
    .line 202
    int-to-long v7, v5

    .line 203
    const/16 v5, 0x15

    .line 204
    .line 205
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 206
    .line 207
    .line 208
    iget v5, p2, Landroidx/work/impl/model/WorkSpec;->w:I

    .line 209
    .line 210
    int-to-long v7, v5

    .line 211
    const/16 v5, 0x16

    .line 212
    .line 213
    invoke-interface {p1, v5, v7, v8}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 214
    .line 215
    .line 216
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 217
    .line 218
    const/16 v7, 0x17

    .line 219
    .line 220
    if-nez v5, :cond_4

    .line 221
    .line 222
    invoke-interface {p1, v7}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    invoke-interface {p1, v7, v5}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :goto_2
    iget-object v5, p2, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    .line 230
    .line 231
    if-eqz v5, :cond_5

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    goto :goto_3

    .line 242
    :cond_5
    const/4 v5, 0x0

    .line 243
    :goto_3
    const/16 v7, 0x18

    .line 244
    .line 245
    if-nez v5, :cond_6

    .line 246
    .line 247
    invoke-interface {p1, v7}, Landroidx/sqlite/SQLiteStatement;->l(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    int-to-long v8, v5

    .line 256
    invoke-interface {p1, v7, v8, v9}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 257
    .line 258
    .line 259
    :goto_4
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 260
    .line 261
    iget-object v5, p2, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 262
    .line 263
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    const/16 v8, 0x1e

    .line 271
    .line 272
    if-eqz v7, :cond_b

    .line 273
    .line 274
    if-eq v7, v0, :cond_c

    .line 275
    .line 276
    if-eq v7, p0, :cond_a

    .line 277
    .line 278
    if-eq v7, v2, :cond_9

    .line 279
    .line 280
    if-eq v7, v3, :cond_8

    .line 281
    .line 282
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 283
    .line 284
    if-lt p0, v8, :cond_7

    .line 285
    .line 286
    sget-object p0, Landroidx/work/NetworkType;->o:Landroidx/work/NetworkType;

    .line 287
    .line 288
    if-ne v5, p0, :cond_7

    .line 289
    .line 290
    move v0, v4

    .line 291
    goto :goto_5

    .line 292
    :cond_7
    const-string p0, "Could not convert "

    .line 293
    .line 294
    const-string p1, " to int"

    .line 295
    .line 296
    invoke-static {p0, v5, p1}, Lio/sentry/d;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_8
    move v0, v3

    .line 301
    goto :goto_5

    .line 302
    :cond_9
    move v0, v2

    .line 303
    goto :goto_5

    .line 304
    :cond_a
    move v0, p0

    .line 305
    goto :goto_5

    .line 306
    :cond_b
    move v0, v6

    .line 307
    :cond_c
    :goto_5
    const/16 p0, 0x19

    .line 308
    .line 309
    int-to-long v2, v0

    .line 310
    invoke-interface {p1, p0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 311
    .line 312
    .line 313
    iget-object p0, p2, Landroidx/work/Constraints;->b:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 314
    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    iget-object p0, p0, Landroidx/work/impl/utils/NetworkRequestCompat;->a:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p0, Landroid/net/NetworkRequest;

    .line 321
    .line 322
    const/16 v0, 0x1f

    .line 323
    .line 324
    if-nez p0, :cond_d

    .line 325
    .line 326
    new-array p0, v6, [B

    .line 327
    .line 328
    goto/16 :goto_c

    .line 329
    .line 330
    :cond_d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 333
    .line 334
    .line 335
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 336
    .line 337
    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 338
    .line 339
    .line 340
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 341
    .line 342
    if-lt v4, v0, :cond_e

    .line 343
    .line 344
    invoke-static {p0}, Ldb;->w(Landroid/net/NetworkRequest;)[I

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_e
    new-array v4, v1, [I

    .line 353
    .line 354
    fill-array-data v4, :array_0

    .line 355
    .line 356
    .line 357
    new-instance v5, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    move v7, v6

    .line 363
    :goto_6
    if-ge v7, v1, :cond_10

    .line 364
    .line 365
    aget v9, v4, v7

    .line 366
    .line 367
    invoke-virtual {p0, v9}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    if-eqz v10, :cond_f

    .line 372
    .line 373
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_10
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->W(Ljava/util/List;)[I

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    :goto_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .line 389
    if-lt v4, v0, :cond_11

    .line 390
    .line 391
    invoke-static {p0}, Ldb;->B(Landroid/net/NetworkRequest;)[I

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_11
    new-array v4, v8, [I

    .line 400
    .line 401
    fill-array-data v4, :array_1

    .line 402
    .line 403
    .line 404
    new-instance v5, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .line 408
    .line 409
    move v7, v6

    .line 410
    :goto_8
    if-ge v7, v8, :cond_13

    .line 411
    .line 412
    aget v9, v4, v7

    .line 413
    .line 414
    invoke-virtual {p0, v9}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    if-eqz v10, :cond_12

    .line 419
    .line 420
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 428
    .line 429
    goto :goto_8

    .line 430
    :cond_13
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->W(Ljava/util/List;)[I

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    :goto_9
    array-length v4, v1

    .line 435
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 436
    .line 437
    .line 438
    array-length v4, v1

    .line 439
    move v5, v6

    .line 440
    :goto_a
    if-ge v5, v4, :cond_14

    .line 441
    .line 442
    aget v7, v1, v5

    .line 443
    .line 444
    invoke-virtual {v3, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 445
    .line 446
    .line 447
    add-int/lit8 v5, v5, 0x1

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :catchall_0
    move-exception p0

    .line 451
    goto/16 :goto_11

    .line 452
    .line 453
    :cond_14
    array-length v1, p0

    .line 454
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 455
    .line 456
    .line 457
    array-length v1, p0

    .line 458
    move v4, v6

    .line 459
    :goto_b
    if-ge v4, v1, :cond_15

    .line 460
    .line 461
    aget v5, p0, v4

    .line 462
    .line 463
    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .line 465
    .line 466
    add-int/lit8 v4, v4, 0x1

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_15
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    :goto_c
    const/16 v1, 0x1a

    .line 483
    .line 484
    invoke-interface {p1, v1, p0}, Landroidx/sqlite/SQLiteStatement;->k(I[B)V

    .line 485
    .line 486
    .line 487
    iget-boolean p0, p2, Landroidx/work/Constraints;->c:Z

    .line 488
    .line 489
    const/16 v1, 0x1b

    .line 490
    .line 491
    int-to-long v2, p0

    .line 492
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 493
    .line 494
    .line 495
    iget-boolean p0, p2, Landroidx/work/Constraints;->d:Z

    .line 496
    .line 497
    const/16 v1, 0x1c

    .line 498
    .line 499
    int-to-long v2, p0

    .line 500
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 501
    .line 502
    .line 503
    iget-boolean p0, p2, Landroidx/work/Constraints;->e:Z

    .line 504
    .line 505
    const/16 v1, 0x1d

    .line 506
    .line 507
    int-to-long v2, p0

    .line 508
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 509
    .line 510
    .line 511
    iget-boolean p0, p2, Landroidx/work/Constraints;->f:Z

    .line 512
    .line 513
    int-to-long v1, p0

    .line 514
    invoke-interface {p1, v8, v1, v2}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 515
    .line 516
    .line 517
    iget-wide v1, p2, Landroidx/work/Constraints;->g:J

    .line 518
    .line 519
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 520
    .line 521
    .line 522
    const/16 p0, 0x20

    .line 523
    .line 524
    iget-wide v0, p2, Landroidx/work/Constraints;->h:J

    .line 525
    .line 526
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 527
    .line 528
    .line 529
    iget-object p0, p2, Landroidx/work/Constraints;->i:Ljava/util/Set;

    .line 530
    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result p2

    .line 538
    if-eqz p2, :cond_16

    .line 539
    .line 540
    new-array p0, v6, [B

    .line 541
    .line 542
    goto :goto_e

    .line 543
    :cond_16
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 544
    .line 545
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 546
    .line 547
    .line 548
    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 549
    .line 550
    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 551
    .line 552
    .line 553
    :try_start_4
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 558
    .line 559
    .line 560
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_17

    .line 569
    .line 570
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    check-cast v1, Landroidx/work/Constraints$ContentUriTrigger;

    .line 575
    .line 576
    iget-object v2, v1, Landroidx/work/Constraints$ContentUriTrigger;->a:Landroid/net/Uri;

    .line 577
    .line 578
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-boolean v1, v1, Landroidx/work/Constraints$ContentUriTrigger;->b:Z

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 588
    .line 589
    .line 590
    goto :goto_d

    .line 591
    :catchall_1
    move-exception p0

    .line 592
    goto :goto_f

    .line 593
    :cond_17
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 600
    .line 601
    .line 602
    move-result-object p0

    .line 603
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    :goto_e
    const/16 p2, 0x21

    .line 607
    .line 608
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/SQLiteStatement;->k(I[B)V

    .line 609
    .line 610
    .line 611
    return-void

    .line 612
    :catchall_2
    move-exception p0

    .line 613
    goto :goto_10

    .line 614
    :goto_f
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 615
    :catchall_3
    move-exception p1

    .line 616
    :try_start_7
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 617
    .line 618
    .line 619
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 620
    :goto_10
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 621
    :catchall_4
    move-exception p1

    .line 622
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 623
    .line 624
    .line 625
    throw p1

    .line 626
    :catchall_5
    move-exception p0

    .line 627
    goto :goto_12

    .line 628
    :goto_11
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 629
    :catchall_6
    move-exception p1

    .line 630
    :try_start_a
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 631
    .line 632
    .line 633
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 634
    :goto_12
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 635
    :catchall_7
    move-exception p1

    .line 636
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 637
    .line 638
    .line 639
    throw p1

    .line 640
    nop

    .line 641
    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_1
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object p0
.end method
