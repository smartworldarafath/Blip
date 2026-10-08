.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 31

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 7
    .line 8
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v1, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v1, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 15
    .line 16
    if-nez v4, :cond_1a

    .line 17
    .line 18
    sget v4, Lokhttp3/CacheControl;->n:I

    .line 19
    .line 20
    iget-object v4, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 21
    .line 22
    invoke-virtual {v4}, Lokhttp3/Headers;->size()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, 0x1

    .line 27
    move-object v11, v3

    .line 28
    move v10, v7

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v14, -0x1

    .line 33
    const/4 v15, -0x1

    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    const/16 v17, 0x0

    .line 37
    .line 38
    const/16 v18, 0x0

    .line 39
    .line 40
    const/16 v19, -0x1

    .line 41
    .line 42
    const/16 v20, -0x1

    .line 43
    .line 44
    const/16 v21, 0x0

    .line 45
    .line 46
    const/16 v22, 0x0

    .line 47
    .line 48
    const/16 v23, 0x0

    .line 49
    .line 50
    :goto_0
    if-ge v9, v6, :cond_18

    .line 51
    .line 52
    invoke-virtual {v4, v9}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4, v9}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v8, "Cache-Control"

    .line 61
    .line 62
    invoke-static {v5, v8, v7}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    if-eqz v11, :cond_0

    .line 69
    .line 70
    :goto_1
    const/4 v10, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    move-object v11, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const-string v8, "Pragma"

    .line 75
    .line 76
    invoke-static {v5, v8, v7}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_17

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_2
    const/4 v5, 0x0

    .line 84
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-ge v5, v8, :cond_17

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    move/from16 v26, v7

    .line 95
    .line 96
    move v7, v5

    .line 97
    :goto_4
    if-ge v7, v8, :cond_3

    .line 98
    .line 99
    move-object/from16 v27, v2

    .line 100
    .line 101
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move-object/from16 v28, v4

    .line 106
    .line 107
    const-string v4, "=,;"

    .line 108
    .line 109
    invoke-static {v4, v2}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    move-object/from16 v2, v27

    .line 119
    .line 120
    move-object/from16 v4, v28

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    move-object/from16 v27, v2

    .line 124
    .line 125
    move-object/from16 v28, v4

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    :goto_5
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v2}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eq v7, v4, :cond_a

    .line 148
    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    const/16 v5, 0x2c

    .line 154
    .line 155
    if-eq v4, v5, :cond_a

    .line 156
    .line 157
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/16 v5, 0x3b

    .line 162
    .line 163
    if-ne v4, v5, :cond_4

    .line 164
    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    sget-object v4, Lokhttp3/internal/Util;->a:[B

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    :goto_6
    if-ge v7, v4, :cond_6

    .line 176
    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    const/16 v8, 0x20

    .line 182
    .line 183
    if-eq v5, v8, :cond_5

    .line 184
    .line 185
    const/16 v8, 0x9

    .line 186
    .line 187
    if-eq v5, v8, :cond_5

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-ge v7, v4, :cond_7

    .line 202
    .line 203
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    const/16 v5, 0x22

    .line 208
    .line 209
    if-ne v4, v5, :cond_7

    .line 210
    .line 211
    add-int/lit8 v7, v7, 0x1

    .line 212
    .line 213
    const/4 v4, 0x4

    .line 214
    invoke-static {v3, v5, v7, v4}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    move-object/from16 v30, v5

    .line 225
    .line 226
    move v5, v4

    .line 227
    move-object/from16 v4, v30

    .line 228
    .line 229
    goto :goto_b

    .line 230
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    move v5, v7

    .line 235
    :goto_8
    if-ge v5, v4, :cond_9

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    move/from16 v29, v4

    .line 242
    .line 243
    const-string v4, ",;"

    .line 244
    .line 245
    invoke-static {v4, v8}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_8

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    move/from16 v4, v29

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    :goto_9
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    goto :goto_b

    .line 274
    :cond_a
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 275
    .line 276
    move v5, v7

    .line 277
    const/4 v4, 0x0

    .line 278
    :goto_b
    const-string v7, "no-cache"

    .line 279
    .line 280
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_c

    .line 285
    .line 286
    move/from16 v7, v26

    .line 287
    .line 288
    move v12, v7

    .line 289
    :cond_b
    :goto_c
    move-object/from16 v2, v27

    .line 290
    .line 291
    move-object/from16 v4, v28

    .line 292
    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :cond_c
    const-string v7, "no-store"

    .line 296
    .line 297
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_d

    .line 302
    .line 303
    move/from16 v7, v26

    .line 304
    .line 305
    move v13, v7

    .line 306
    goto :goto_c

    .line 307
    :cond_d
    const-string v7, "max-age"

    .line 308
    .line 309
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-eqz v7, :cond_e

    .line 314
    .line 315
    const/4 v7, -0x1

    .line 316
    invoke-static {v7, v4}, Lokhttp3/internal/Util;->u(ILjava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v14

    .line 320
    :goto_d
    move/from16 v7, v26

    .line 321
    .line 322
    goto :goto_c

    .line 323
    :cond_e
    const/4 v7, -0x1

    .line 324
    const-string v8, "s-maxage"

    .line 325
    .line 326
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_f

    .line 331
    .line 332
    invoke-static {v7, v4}, Lokhttp3/internal/Util;->u(ILjava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v15

    .line 336
    goto :goto_d

    .line 337
    :cond_f
    const-string v7, "private"

    .line 338
    .line 339
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_10

    .line 344
    .line 345
    move/from16 v7, v26

    .line 346
    .line 347
    move/from16 v16, v7

    .line 348
    .line 349
    goto :goto_c

    .line 350
    :cond_10
    const-string v7, "public"

    .line 351
    .line 352
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-eqz v7, :cond_11

    .line 357
    .line 358
    move/from16 v7, v26

    .line 359
    .line 360
    move/from16 v17, v7

    .line 361
    .line 362
    goto :goto_c

    .line 363
    :cond_11
    const-string v7, "must-revalidate"

    .line 364
    .line 365
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    if-eqz v7, :cond_12

    .line 370
    .line 371
    move/from16 v7, v26

    .line 372
    .line 373
    move/from16 v18, v7

    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_12
    const-string v7, "max-stale"

    .line 377
    .line 378
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-eqz v7, :cond_13

    .line 383
    .line 384
    const v2, 0x7fffffff

    .line 385
    .line 386
    .line 387
    invoke-static {v2, v4}, Lokhttp3/internal/Util;->u(ILjava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v19

    .line 391
    goto :goto_d

    .line 392
    :cond_13
    const-string v7, "min-fresh"

    .line 393
    .line 394
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-eqz v7, :cond_14

    .line 399
    .line 400
    const/4 v7, -0x1

    .line 401
    invoke-static {v7, v4}, Lokhttp3/internal/Util;->u(ILjava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v20

    .line 405
    goto :goto_d

    .line 406
    :cond_14
    const/4 v7, -0x1

    .line 407
    const-string v4, "only-if-cached"

    .line 408
    .line 409
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_15

    .line 414
    .line 415
    move/from16 v7, v26

    .line 416
    .line 417
    move/from16 v21, v7

    .line 418
    .line 419
    goto/16 :goto_c

    .line 420
    .line 421
    :cond_15
    const-string v4, "no-transform"

    .line 422
    .line 423
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-eqz v4, :cond_16

    .line 428
    .line 429
    move/from16 v7, v26

    .line 430
    .line 431
    move/from16 v22, v7

    .line 432
    .line 433
    goto/16 :goto_c

    .line 434
    .line 435
    :cond_16
    const-string v4, "immutable"

    .line 436
    .line 437
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    move/from16 v7, v26

    .line 442
    .line 443
    if-eqz v2, :cond_b

    .line 444
    .line 445
    move/from16 v23, v7

    .line 446
    .line 447
    goto/16 :goto_c

    .line 448
    .line 449
    :cond_17
    move-object/from16 v27, v2

    .line 450
    .line 451
    move-object/from16 v28, v4

    .line 452
    .line 453
    move/from16 v26, v7

    .line 454
    .line 455
    const/4 v7, -0x1

    .line 456
    add-int/lit8 v9, v9, 0x1

    .line 457
    .line 458
    move/from16 v7, v26

    .line 459
    .line 460
    move-object/from16 v2, v27

    .line 461
    .line 462
    move-object/from16 v4, v28

    .line 463
    .line 464
    const/4 v3, 0x0

    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :cond_18
    move-object/from16 v27, v2

    .line 468
    .line 469
    if-nez v10, :cond_19

    .line 470
    .line 471
    const/16 v24, 0x0

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_19
    move-object/from16 v24, v11

    .line 475
    .line 476
    :goto_e
    new-instance v11, Lokhttp3/CacheControl;

    .line 477
    .line 478
    invoke-direct/range {v11 .. v24}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iput-object v11, v1, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 482
    .line 483
    move-object v4, v11

    .line 484
    goto :goto_f

    .line 485
    :cond_1a
    move-object/from16 v27, v2

    .line 486
    .line 487
    :goto_f
    iget-boolean v2, v4, Lokhttp3/CacheControl;->j:Z

    .line 488
    .line 489
    if-eqz v2, :cond_1b

    .line 490
    .line 491
    new-instance v2, Lokhttp3/internal/cache/CacheStrategy;

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    invoke-direct {v2, v3, v3}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 495
    .line 496
    .line 497
    goto :goto_10

    .line 498
    :cond_1b
    move-object/from16 v2, v27

    .line 499
    .line 500
    :goto_10
    iget-object v3, v2, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    .line 501
    .line 502
    iget-object v2, v2, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    .line 503
    .line 504
    if-nez v3, :cond_1c

    .line 505
    .line 506
    if-nez v2, :cond_1c

    .line 507
    .line 508
    new-instance v0, Lokhttp3/Response$Builder;

    .line 509
    .line 510
    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 511
    .line 512
    .line 513
    iput-object v1, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 514
    .line 515
    sget-object v1, Lokhttp3/Protocol;->l:Lokhttp3/Protocol;

    .line 516
    .line 517
    iput-object v1, v0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 518
    .line 519
    const/16 v1, 0x1f8

    .line 520
    .line 521
    iput v1, v0, Lokhttp3/Response$Builder;->c:I

    .line 522
    .line 523
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 524
    .line 525
    iput-object v1, v0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 526
    .line 527
    sget-object v1, Lokhttp3/internal/Util;->c:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 528
    .line 529
    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 530
    .line 531
    const-wide/16 v1, -0x1

    .line 532
    .line 533
    iput-wide v1, v0, Lokhttp3/Response$Builder;->k:J

    .line 534
    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 536
    .line 537
    .line 538
    move-result-wide v1

    .line 539
    iput-wide v1, v0, Lokhttp3/Response$Builder;->l:J

    .line 540
    .line 541
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    return-object v0

    .line 546
    :cond_1c
    const-string v1, "cacheResponse"

    .line 547
    .line 548
    if-nez v3, :cond_1d

    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 562
    .line 563
    .line 564
    iput-object v2, v0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 565
    .line 566
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    return-object v0

    .line 571
    :cond_1d
    invoke-virtual {v0, v3}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v3, "networkResponse"

    .line 576
    .line 577
    if-eqz v2, :cond_28

    .line 578
    .line 579
    iget v4, v0, Lokhttp3/Response;->m:I

    .line 580
    .line 581
    const/16 v5, 0x130

    .line 582
    .line 583
    if-ne v4, v5, :cond_27

    .line 584
    .line 585
    invoke-virtual {v2}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    iget-object v5, v2, Lokhttp3/Response;->o:Lokhttp3/Headers;

    .line 590
    .line 591
    iget-object v6, v0, Lokhttp3/Response;->o:Lokhttp3/Headers;

    .line 592
    .line 593
    new-instance v7, Lokhttp3/Headers$Builder;

    .line 594
    .line 595
    invoke-direct {v7}, Lokhttp3/Headers$Builder;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    const/4 v9, 0x0

    .line 603
    :goto_11
    const-string v10, "Content-Type"

    .line 604
    .line 605
    const-string v11, "Content-Encoding"

    .line 606
    .line 607
    const-string v12, "Content-Length"

    .line 608
    .line 609
    if-ge v9, v8, :cond_23

    .line 610
    .line 611
    invoke-virtual {v5, v9}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v13

    .line 615
    invoke-virtual {v5, v9}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v14

    .line 619
    const-string v15, "Warning"

    .line 620
    .line 621
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 622
    .line 623
    .line 624
    move-result v15

    .line 625
    if-eqz v15, :cond_1e

    .line 626
    .line 627
    const-string v15, "1"

    .line 628
    .line 629
    move-object/from16 v16, v5

    .line 630
    .line 631
    const/4 v5, 0x0

    .line 632
    invoke-static {v14, v15, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 633
    .line 634
    .line 635
    move-result v15

    .line 636
    if-eqz v15, :cond_1f

    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_1e
    move-object/from16 v16, v5

    .line 640
    .line 641
    const/4 v5, 0x0

    .line 642
    :cond_1f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 643
    .line 644
    .line 645
    move-result v12

    .line 646
    if-nez v12, :cond_21

    .line 647
    .line 648
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v11

    .line 652
    if-nez v11, :cond_21

    .line 653
    .line 654
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v10

    .line 658
    if-eqz v10, :cond_20

    .line 659
    .line 660
    goto :goto_12

    .line 661
    :cond_20
    invoke-static {v13}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->b(Ljava/lang/String;)Z

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    if-eqz v10, :cond_21

    .line 666
    .line 667
    invoke-virtual {v6, v13}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v10

    .line 671
    if-nez v10, :cond_22

    .line 672
    .line 673
    :cond_21
    :goto_12
    invoke-virtual {v7, v13, v14}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    :cond_22
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 677
    .line 678
    move-object/from16 v5, v16

    .line 679
    .line 680
    goto :goto_11

    .line 681
    :cond_23
    const/4 v5, 0x0

    .line 682
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    .line 683
    .line 684
    .line 685
    move-result v8

    .line 686
    :goto_14
    if-ge v5, v8, :cond_26

    .line 687
    .line 688
    invoke-virtual {v6, v5}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 693
    .line 694
    .line 695
    move-result v13

    .line 696
    if-nez v13, :cond_25

    .line 697
    .line 698
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result v13

    .line 702
    if-nez v13, :cond_25

    .line 703
    .line 704
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v13

    .line 708
    if-eqz v13, :cond_24

    .line 709
    .line 710
    goto :goto_15

    .line 711
    :cond_24
    invoke-static {v9}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->b(Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result v13

    .line 715
    if-eqz v13, :cond_25

    .line 716
    .line 717
    invoke-virtual {v6, v5}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v13

    .line 721
    invoke-virtual {v7, v9, v13}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    :cond_25
    :goto_15
    add-int/lit8 v5, v5, 0x1

    .line 725
    .line 726
    goto :goto_14

    .line 727
    :cond_26
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    invoke-virtual {v5}, Lokhttp3/Headers;->d()Lokhttp3/Headers$Builder;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    iput-object v5, v4, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 736
    .line 737
    iget-wide v5, v0, Lokhttp3/Response;->t:J

    .line 738
    .line 739
    iput-wide v5, v4, Lokhttp3/Response$Builder;->k:J

    .line 740
    .line 741
    iget-wide v5, v0, Lokhttp3/Response;->u:J

    .line 742
    .line 743
    iput-wide v5, v4, Lokhttp3/Response$Builder;->l:J

    .line 744
    .line 745
    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 750
    .line 751
    .line 752
    iput-object v2, v4, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 753
    .line 754
    invoke-static {v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-static {v3, v1}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 759
    .line 760
    .line 761
    iput-object v1, v4, Lokhttp3/Response$Builder;->h:Lokhttp3/Response;

    .line 762
    .line 763
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 764
    .line 765
    .line 766
    iget-object v0, v0, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 767
    .line 768
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 772
    .line 773
    .line 774
    const/16 v25, 0x0

    .line 775
    .line 776
    throw v25

    .line 777
    :cond_27
    iget-object v4, v2, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 778
    .line 779
    if-eqz v4, :cond_28

    .line 780
    .line 781
    invoke-static {v4}, Lokhttp3/internal/Util;->b(Ljava/io/Closeable;)V

    .line 782
    .line 783
    .line 784
    :cond_28
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    invoke-static {v2}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 793
    .line 794
    .line 795
    iput-object v2, v4, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 796
    .line 797
    invoke-static {v0}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-static {v3, v0}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 802
    .line 803
    .line 804
    iput-object v0, v4, Lokhttp3/Response$Builder;->h:Lokhttp3/Response;

    .line 805
    .line 806
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    return-object v0
.end method
