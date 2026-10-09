.class public final Lcoil3/fetch/DataUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/DataUriFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Lcoil3/Uri;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/DataUriFetcher;->a:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/DataUriFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/fetch/DataUriFetcher;->a:Lcoil3/Uri;

    .line 4
    .line 5
    iget-object v2, v1, Lcoil3/Uri;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcoil3/Uri;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, ";base64,"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x6

    .line 13
    invoke-static {v2, v4, v5, v5, v6}, Lkotlin/text/StringsKt;->r(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v7, "invalid data uri: "

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-eq v2, v8, :cond_21

    .line 21
    .line 22
    const/16 v9, 0x3a

    .line 23
    .line 24
    invoke-static {v3, v9, v5, v6}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-eq v9, v8, :cond_20

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    add-int/2addr v9, v1

    .line 32
    invoke-virtual {v3, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    sget-object v9, Lkotlin/io/encoding/Base64;->c:Lkotlin/io/encoding/Base64$Default;

    .line 37
    .line 38
    const/16 v10, 0x8

    .line 39
    .line 40
    add-int/2addr v2, v10

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-boolean v12, v9, Lkotlin/io/encoding/Base64;->b:Z

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    invoke-static {v2, v11, v13}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Lkotlin/text/Charsets;->c:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    array-length v3, v2

    .line 71
    array-length v11, v2

    .line 72
    invoke-static {v5, v3, v11}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    .line 73
    .line 74
    .line 75
    const/16 v11, 0x3d

    .line 76
    .line 77
    const/4 v13, -0x2

    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    move/from16 p1, v1

    .line 81
    .line 82
    move v1, v5

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    if-eq v3, v1, :cond_1f

    .line 85
    .line 86
    if-eqz v12, :cond_3

    .line 87
    .line 88
    move v15, v3

    .line 89
    move v14, v5

    .line 90
    :goto_0
    move/from16 p1, v1

    .line 91
    .line 92
    if-ge v14, v3, :cond_5

    .line 93
    .line 94
    aget-byte v1, v2, v14

    .line 95
    .line 96
    and-int/lit16 v1, v1, 0xff

    .line 97
    .line 98
    sget-object v16, Lkotlin/io/encoding/Base64Kt;->a:[I

    .line 99
    .line 100
    aget v1, v16, v1

    .line 101
    .line 102
    if-gez v1, :cond_2

    .line 103
    .line 104
    if-ne v1, v13, :cond_1

    .line 105
    .line 106
    sub-int v1, v3, v14

    .line 107
    .line 108
    sub-int/2addr v15, v1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v15, v15, -0x1

    .line 111
    .line 112
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 113
    .line 114
    move/from16 v1, p1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    move/from16 p1, v1

    .line 118
    .line 119
    add-int/lit8 v1, v3, -0x1

    .line 120
    .line 121
    aget-byte v1, v2, v1

    .line 122
    .line 123
    if-ne v1, v11, :cond_4

    .line 124
    .line 125
    add-int/lit8 v15, v3, -0x1

    .line 126
    .line 127
    add-int/lit8 v1, v3, -0x2

    .line 128
    .line 129
    aget-byte v1, v2, v1

    .line 130
    .line 131
    if-ne v1, v11, :cond_5

    .line 132
    .line 133
    add-int/lit8 v15, v3, -0x2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move v15, v3

    .line 137
    :cond_5
    :goto_1
    int-to-long v14, v15

    .line 138
    const-wide/16 v16, 0x6

    .line 139
    .line 140
    mul-long v14, v14, v16

    .line 141
    .line 142
    const-wide/16 v16, 0x8

    .line 143
    .line 144
    div-long v14, v14, v16

    .line 145
    .line 146
    long-to-int v1, v14

    .line 147
    :goto_2
    new-array v14, v1, [B

    .line 148
    .line 149
    iget-boolean v9, v9, Lkotlin/io/encoding/Base64;->a:Z

    .line 150
    .line 151
    if-eqz v9, :cond_6

    .line 152
    .line 153
    sget-object v9, Lkotlin/io/encoding/Base64Kt;->b:[I

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    sget-object v9, Lkotlin/io/encoding/Base64Kt;->a:[I

    .line 157
    .line 158
    :goto_3
    const/4 v15, -0x8

    .line 159
    move v4, v5

    .line 160
    move/from16 v18, v4

    .line 161
    .line 162
    move/from16 v17, v6

    .line 163
    .line 164
    move/from16 v20, v10

    .line 165
    .line 166
    move v6, v15

    .line 167
    const/16 v19, 0x0

    .line 168
    .line 169
    :goto_4
    const-string v10, ") at index "

    .line 170
    .line 171
    const-string v11, "\'("

    .line 172
    .line 173
    if-ge v5, v3, :cond_15

    .line 174
    .line 175
    if-ne v6, v15, :cond_7

    .line 176
    .line 177
    add-int/lit8 v8, v5, 0x3

    .line 178
    .line 179
    if-ge v8, v3, :cond_7

    .line 180
    .line 181
    add-int/lit8 v21, v5, 0x1

    .line 182
    .line 183
    aget-byte v15, v2, v5

    .line 184
    .line 185
    and-int/lit16 v15, v15, 0xff

    .line 186
    .line 187
    aget v15, v9, v15

    .line 188
    .line 189
    add-int/lit8 v22, v5, 0x2

    .line 190
    .line 191
    aget-byte v13, v2, v21

    .line 192
    .line 193
    and-int/lit16 v13, v13, 0xff

    .line 194
    .line 195
    aget v13, v9, v13

    .line 196
    .line 197
    move-object/from16 v21, v2

    .line 198
    .line 199
    aget-byte v2, v21, v22

    .line 200
    .line 201
    and-int/lit16 v2, v2, 0xff

    .line 202
    .line 203
    aget v2, v9, v2

    .line 204
    .line 205
    add-int/lit8 v22, v5, 0x4

    .line 206
    .line 207
    aget-byte v8, v21, v8

    .line 208
    .line 209
    and-int/lit16 v8, v8, 0xff

    .line 210
    .line 211
    aget v8, v9, v8

    .line 212
    .line 213
    shl-int/lit8 v15, v15, 0x12

    .line 214
    .line 215
    shl-int/lit8 v13, v13, 0xc

    .line 216
    .line 217
    or-int/2addr v13, v15

    .line 218
    shl-int/lit8 v2, v2, 0x6

    .line 219
    .line 220
    or-int/2addr v2, v13

    .line 221
    or-int/2addr v2, v8

    .line 222
    if-ltz v2, :cond_8

    .line 223
    .line 224
    add-int/lit8 v5, v4, 0x1

    .line 225
    .line 226
    shr-int/lit8 v8, v2, 0x10

    .line 227
    .line 228
    int-to-byte v8, v8

    .line 229
    aput-byte v8, v14, v4

    .line 230
    .line 231
    add-int/lit8 v8, v4, 0x2

    .line 232
    .line 233
    shr-int/lit8 v10, v2, 0x8

    .line 234
    .line 235
    int-to-byte v10, v10

    .line 236
    aput-byte v10, v14, v5

    .line 237
    .line 238
    add-int/lit8 v4, v4, 0x3

    .line 239
    .line 240
    int-to-byte v2, v2

    .line 241
    aput-byte v2, v14, v8

    .line 242
    .line 243
    move-object/from16 v2, v21

    .line 244
    .line 245
    move/from16 v5, v22

    .line 246
    .line 247
    const/4 v8, -0x1

    .line 248
    const/16 v11, 0x3d

    .line 249
    .line 250
    :goto_5
    const/4 v13, -0x2

    .line 251
    const/4 v15, -0x8

    .line 252
    goto :goto_4

    .line 253
    :cond_7
    move-object/from16 v21, v2

    .line 254
    .line 255
    :cond_8
    aget-byte v2, v21, v5

    .line 256
    .line 257
    and-int/lit16 v2, v2, 0xff

    .line 258
    .line 259
    aget v8, v9, v2

    .line 260
    .line 261
    if-gez v8, :cond_13

    .line 262
    .line 263
    const/4 v13, -0x2

    .line 264
    if-ne v8, v13, :cond_11

    .line 265
    .line 266
    const/4 v8, -0x8

    .line 267
    if-eq v6, v8, :cond_10

    .line 268
    .line 269
    const/4 v2, -0x6

    .line 270
    if-eq v6, v2, :cond_f

    .line 271
    .line 272
    const/4 v2, -0x4

    .line 273
    if-eq v6, v2, :cond_a

    .line 274
    .line 275
    if-ne v6, v13, :cond_9

    .line 276
    .line 277
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_9
    const-string v0, "Unreachable"

    .line 281
    .line 282
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-object v19

    .line 286
    :cond_a
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->j:[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 287
    .line 288
    add-int/lit8 v5, v5, 0x1

    .line 289
    .line 290
    if-nez v12, :cond_b

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_b
    :goto_7
    if-ge v5, v3, :cond_d

    .line 294
    .line 295
    aget-byte v2, v21, v5

    .line 296
    .line 297
    and-int/lit16 v2, v2, 0xff

    .line 298
    .line 299
    sget-object v8, Lkotlin/io/encoding/Base64Kt;->a:[I

    .line 300
    .line 301
    aget v2, v8, v2

    .line 302
    .line 303
    const/4 v8, -0x1

    .line 304
    if-eq v2, v8, :cond_c

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_d
    :goto_8
    if-eq v5, v3, :cond_e

    .line 311
    .line 312
    aget-byte v2, v21, v5

    .line 313
    .line 314
    const/16 v13, 0x3d

    .line 315
    .line 316
    if-ne v2, v13, :cond_e

    .line 317
    .line 318
    add-int/lit8 v5, v5, 0x1

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_e
    const-string v0, "Missing one pad character at index "

    .line 322
    .line 323
    invoke-static {v5, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v19

    .line 331
    :cond_f
    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->j:[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :goto_9
    move v2, v5

    .line 335
    const/4 v13, -0x2

    .line 336
    move/from16 v5, p1

    .line 337
    .line 338
    goto/16 :goto_b

    .line 339
    .line 340
    :cond_10
    const-string v0, "Redundant pad character at index "

    .line 341
    .line 342
    invoke-static {v5, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object v19

    .line 350
    :cond_11
    const/16 v13, 0x3d

    .line 351
    .line 352
    if-eqz v12, :cond_12

    .line 353
    .line 354
    add-int/lit8 v5, v5, 0x1

    .line 355
    .line 356
    move v11, v13

    .line 357
    move-object/from16 v2, v21

    .line 358
    .line 359
    const/4 v8, -0x1

    .line 360
    goto :goto_5

    .line 361
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 362
    .line 363
    int-to-char v1, v2

    .line 364
    invoke-static/range {v20 .. v20}, Lkotlin/text/CharsKt;->b(I)V

    .line 365
    .line 366
    .line 367
    move/from16 v3, v20

    .line 368
    .line 369
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v4, "Invalid symbol \'"

    .line 379
    .line 380
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :cond_13
    const/16 v13, 0x3d

    .line 407
    .line 408
    add-int/lit8 v5, v5, 0x1

    .line 409
    .line 410
    shl-int/lit8 v2, v18, 0x6

    .line 411
    .line 412
    or-int v18, v2, v8

    .line 413
    .line 414
    add-int/lit8 v8, v6, 0x6

    .line 415
    .line 416
    if-ltz v8, :cond_14

    .line 417
    .line 418
    add-int/lit8 v2, v4, 0x1

    .line 419
    .line 420
    ushr-int v10, v18, v8

    .line 421
    .line 422
    int-to-byte v10, v10

    .line 423
    aput-byte v10, v14, v4

    .line 424
    .line 425
    shl-int v4, p1, v8

    .line 426
    .line 427
    add-int/lit8 v4, v4, -0x1

    .line 428
    .line 429
    and-int v18, v18, v4

    .line 430
    .line 431
    add-int/lit8 v6, v6, -0x2

    .line 432
    .line 433
    move v4, v2

    .line 434
    :goto_a
    move v11, v13

    .line 435
    move-object/from16 v2, v21

    .line 436
    .line 437
    const/4 v8, -0x1

    .line 438
    const/4 v13, -0x2

    .line 439
    const/4 v15, -0x8

    .line 440
    const/16 v20, 0x8

    .line 441
    .line 442
    goto/16 :goto_4

    .line 443
    .line 444
    :cond_14
    move v6, v8

    .line 445
    goto :goto_a

    .line 446
    :cond_15
    move-object/from16 v21, v2

    .line 447
    .line 448
    move v2, v5

    .line 449
    const/4 v5, 0x0

    .line 450
    :goto_b
    if-eq v6, v13, :cond_1e

    .line 451
    .line 452
    const/4 v8, -0x8

    .line 453
    if-eq v6, v8, :cond_17

    .line 454
    .line 455
    if-eqz v5, :cond_16

    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_16
    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->j:[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 459
    .line 460
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 461
    .line 462
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-object v19

    .line 466
    :cond_17
    :goto_c
    if-nez v18, :cond_1d

    .line 467
    .line 468
    if-nez v12, :cond_18

    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_18
    :goto_d
    if-ge v2, v3, :cond_1a

    .line 472
    .line 473
    aget-byte v5, v21, v2

    .line 474
    .line 475
    and-int/lit16 v5, v5, 0xff

    .line 476
    .line 477
    sget-object v6, Lkotlin/io/encoding/Base64Kt;->a:[I

    .line 478
    .line 479
    aget v5, v6, v5

    .line 480
    .line 481
    const/4 v8, -0x1

    .line 482
    if-eq v5, v8, :cond_19

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_1a
    :goto_e
    if-lt v2, v3, :cond_1c

    .line 489
    .line 490
    if-ne v4, v1, :cond_1b

    .line 491
    .line 492
    new-instance v2, Lokio/Buffer;

    .line 493
    .line 494
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v1, v14}, Lokio/Buffer;->X(I[B)V

    .line 498
    .line 499
    .line 500
    iget-object v0, v0, Lcoil3/fetch/DataUriFetcher;->b:Lcoil3/request/Options;

    .line 501
    .line 502
    iget-object v0, v0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 503
    .line 504
    new-instance v1, Lcoil3/decode/SourceImageSource;

    .line 505
    .line 506
    move-object/from16 v3, v19

    .line 507
    .line 508
    invoke-direct {v1, v2, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 509
    .line 510
    .line 511
    sget-object v0, Lcoil3/decode/DataSource;->k:Lcoil3/decode/DataSource;

    .line 512
    .line 513
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 514
    .line 515
    invoke-direct {v2, v1, v7, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 516
    .line 517
    .line 518
    return-object v2

    .line 519
    :cond_1b
    move-object/from16 v3, v19

    .line 520
    .line 521
    const-string v0, "Check failed."

    .line 522
    .line 523
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    return-object v3

    .line 527
    :cond_1c
    aget-byte v0, v21, v2

    .line 528
    .line 529
    and-int/lit16 v0, v0, 0xff

    .line 530
    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v3, "Symbol \'"

    .line 534
    .line 535
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    int-to-char v3, v0

    .line 539
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const/16 v3, 0x8

    .line 546
    .line 547
    invoke-static {v3}, Lkotlin/text/CharsKt;->b(I)V

    .line 548
    .line 549
    .line 550
    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    add-int/lit8 v2, v2, -0x1

    .line 564
    .line 565
    const-string v0, " is prohibited after the pad character"

    .line 566
    .line 567
    invoke-static {v1, v2, v0}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    const/16 v19, 0x0

    .line 575
    .line 576
    return-object v19

    .line 577
    :cond_1d
    const-string v0, "The pad bits must be zeros"

    .line 578
    .line 579
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    return-object v19

    .line 583
    :cond_1e
    const-string v0, "The last unit of input does not have enough bits"

    .line 584
    .line 585
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    return-object v19

    .line 589
    :cond_1f
    const/16 v19, 0x0

    .line 590
    .line 591
    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    .line 592
    .line 593
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    return-object v19

    .line 601
    :cond_20
    const/16 v19, 0x0

    .line 602
    .line 603
    invoke-static {v1, v7}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    return-object v19

    .line 607
    :cond_21
    const/16 v19, 0x0

    .line 608
    .line 609
    invoke-static {v1, v7}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    return-object v19
.end method
