.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/common/collect/ImmutableMap;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/common/collect/ImmutableMap$Builder;->c:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->a()Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    throw v0

    .line 15
    :cond_1
    :goto_0
    iget v1, v0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->p:Lcom/google/common/collect/ImmutableMap;

    .line 22
    .line 23
    check-cast v1, Lcom/google/common/collect/RegularImmutableMap;

    .line 24
    .line 25
    goto/16 :goto_d

    .line 26
    .line 27
    :cond_2
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v1, v5, :cond_3

    .line 31
    .line 32
    aget-object v1, v2, v4

    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    aget-object v1, v2, v5

    .line 38
    .line 39
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    .line 43
    .line 44
    invoke-direct {v1, v5, v3, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    :cond_3
    array-length v6, v2

    .line 50
    shr-int/2addr v6, v5

    .line 51
    invoke-static {v1, v6}, Lcom/google/common/base/Preconditions;->k(II)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->k(I)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/4 v7, 0x2

    .line 59
    if-ne v1, v5, :cond_4

    .line 60
    .line 61
    aget-object v6, v2, v4

    .line 62
    .line 63
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    aget-object v6, v2, v5

    .line 67
    .line 68
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move/from16 v16, v4

    .line 72
    .line 73
    move/from16 v17, v5

    .line 74
    .line 75
    :goto_1
    move/from16 v18, v7

    .line 76
    .line 77
    goto/16 :goto_c

    .line 78
    .line 79
    :cond_4
    add-int/lit8 v8, v6, -0x1

    .line 80
    .line 81
    const/16 v9, 0x80

    .line 82
    .line 83
    const/4 v10, 0x3

    .line 84
    const/4 v11, -0x1

    .line 85
    if-gt v6, v9, :cond_a

    .line 86
    .line 87
    new-array v6, v6, [B

    .line 88
    .line 89
    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 90
    .line 91
    .line 92
    move v9, v4

    .line 93
    move v11, v9

    .line 94
    :goto_2
    if-ge v9, v1, :cond_8

    .line 95
    .line 96
    mul-int/lit8 v12, v9, 0x2

    .line 97
    .line 98
    mul-int/lit8 v13, v11, 0x2

    .line 99
    .line 100
    aget-object v14, v2, v12

    .line 101
    .line 102
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    xor-int/2addr v12, v5

    .line 106
    aget-object v12, v2, v12

    .line 107
    .line 108
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    invoke-static {v15}, Lcom/google/common/collect/Hashing;->a(I)I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    :goto_3
    and-int/2addr v15, v8

    .line 120
    move/from16 v16, v4

    .line 121
    .line 122
    aget-byte v4, v6, v15

    .line 123
    .line 124
    move/from16 v17, v5

    .line 125
    .line 126
    const/16 v5, 0xff

    .line 127
    .line 128
    and-int/2addr v4, v5

    .line 129
    if-ne v4, v5, :cond_6

    .line 130
    .line 131
    int-to-byte v4, v13

    .line 132
    aput-byte v4, v6, v15

    .line 133
    .line 134
    if-ge v11, v9, :cond_5

    .line 135
    .line 136
    aput-object v14, v2, v13

    .line 137
    .line 138
    xor-int/lit8 v4, v13, 0x1

    .line 139
    .line 140
    aput-object v12, v2, v4

    .line 141
    .line 142
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    aget-object v5, v2, v4

    .line 146
    .line 147
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_7

    .line 152
    .line 153
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 154
    .line 155
    xor-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    aget-object v5, v2, v4

    .line 158
    .line 159
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, v14, v12, v5}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    aput-object v12, v2, v4

    .line 166
    .line 167
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 168
    .line 169
    move/from16 v4, v16

    .line 170
    .line 171
    move/from16 v5, v17

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 175
    .line 176
    move/from16 v4, v16

    .line 177
    .line 178
    move/from16 v5, v17

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    move/from16 v16, v4

    .line 182
    .line 183
    move/from16 v17, v5

    .line 184
    .line 185
    if-ne v11, v1, :cond_9

    .line 186
    .line 187
    move-object v3, v6

    .line 188
    goto :goto_1

    .line 189
    :cond_9
    new-array v4, v10, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v6, v4, v16

    .line 192
    .line 193
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    aput-object v5, v4, v17

    .line 198
    .line 199
    aput-object v3, v4, v7

    .line 200
    .line 201
    :goto_5
    move-object v3, v4

    .line 202
    goto :goto_1

    .line 203
    :cond_a
    move/from16 v16, v4

    .line 204
    .line 205
    move/from16 v17, v5

    .line 206
    .line 207
    const v4, 0x8000

    .line 208
    .line 209
    .line 210
    if-gt v6, v4, :cond_10

    .line 211
    .line 212
    new-array v4, v6, [S

    .line 213
    .line 214
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 215
    .line 216
    .line 217
    move/from16 v5, v16

    .line 218
    .line 219
    move v6, v5

    .line 220
    :goto_6
    if-ge v5, v1, :cond_e

    .line 221
    .line 222
    mul-int/lit8 v9, v5, 0x2

    .line 223
    .line 224
    mul-int/lit8 v11, v6, 0x2

    .line 225
    .line 226
    aget-object v12, v2, v9

    .line 227
    .line 228
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    xor-int/lit8 v9, v9, 0x1

    .line 232
    .line 233
    aget-object v9, v2, v9

    .line 234
    .line 235
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    invoke-static {v13}, Lcom/google/common/collect/Hashing;->a(I)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    :goto_7
    and-int/2addr v13, v8

    .line 247
    aget-short v14, v4, v13

    .line 248
    .line 249
    const v15, 0xffff

    .line 250
    .line 251
    .line 252
    and-int/2addr v14, v15

    .line 253
    if-ne v14, v15, :cond_c

    .line 254
    .line 255
    int-to-short v14, v11

    .line 256
    aput-short v14, v4, v13

    .line 257
    .line 258
    if-ge v6, v5, :cond_b

    .line 259
    .line 260
    aput-object v12, v2, v11

    .line 261
    .line 262
    xor-int/lit8 v11, v11, 0x1

    .line 263
    .line 264
    aput-object v9, v2, v11

    .line 265
    .line 266
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_c
    aget-object v15, v2, v14

    .line 270
    .line 271
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    if-eqz v15, :cond_d

    .line 276
    .line 277
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 278
    .line 279
    xor-int/lit8 v11, v14, 0x1

    .line 280
    .line 281
    aget-object v13, v2, v11

    .line 282
    .line 283
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-direct {v3, v12, v9, v13}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    aput-object v9, v2, v11

    .line 290
    .line 291
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_e
    if-ne v6, v1, :cond_f

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_f
    new-array v5, v10, [Ljava/lang/Object;

    .line 301
    .line 302
    aput-object v4, v5, v16

    .line 303
    .line 304
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    aput-object v4, v5, v17

    .line 309
    .line 310
    aput-object v3, v5, v7

    .line 311
    .line 312
    move-object v3, v5

    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :cond_10
    new-array v4, v6, [I

    .line 316
    .line 317
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    .line 318
    .line 319
    .line 320
    move/from16 v5, v16

    .line 321
    .line 322
    move v6, v5

    .line 323
    :goto_9
    if-ge v5, v1, :cond_14

    .line 324
    .line 325
    mul-int/lit8 v9, v5, 0x2

    .line 326
    .line 327
    mul-int/lit8 v12, v6, 0x2

    .line 328
    .line 329
    aget-object v13, v2, v9

    .line 330
    .line 331
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    xor-int/lit8 v9, v9, 0x1

    .line 335
    .line 336
    aget-object v9, v2, v9

    .line 337
    .line 338
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    invoke-static {v14}, Lcom/google/common/collect/Hashing;->a(I)I

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    :goto_a
    and-int/2addr v14, v8

    .line 350
    aget v15, v4, v14

    .line 351
    .line 352
    if-ne v15, v11, :cond_12

    .line 353
    .line 354
    aput v12, v4, v14

    .line 355
    .line 356
    if-ge v6, v5, :cond_11

    .line 357
    .line 358
    aput-object v13, v2, v12

    .line 359
    .line 360
    xor-int/lit8 v12, v12, 0x1

    .line 361
    .line 362
    aput-object v9, v2, v12

    .line 363
    .line 364
    :cond_11
    add-int/lit8 v6, v6, 0x1

    .line 365
    .line 366
    move/from16 v18, v7

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_12
    move/from16 v18, v7

    .line 370
    .line 371
    aget-object v7, v2, v15

    .line 372
    .line 373
    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_13

    .line 378
    .line 379
    new-instance v3, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 380
    .line 381
    xor-int/lit8 v7, v15, 0x1

    .line 382
    .line 383
    aget-object v12, v2, v7

    .line 384
    .line 385
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-direct {v3, v13, v9, v12}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    aput-object v9, v2, v7

    .line 392
    .line 393
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 394
    .line 395
    move/from16 v7, v18

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 399
    .line 400
    move/from16 v7, v18

    .line 401
    .line 402
    goto :goto_a

    .line 403
    :cond_14
    move/from16 v18, v7

    .line 404
    .line 405
    if-ne v6, v1, :cond_15

    .line 406
    .line 407
    move-object v3, v4

    .line 408
    goto :goto_c

    .line 409
    :cond_15
    new-array v5, v10, [Ljava/lang/Object;

    .line 410
    .line 411
    aput-object v4, v5, v16

    .line 412
    .line 413
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    aput-object v4, v5, v17

    .line 418
    .line 419
    aput-object v3, v5, v18

    .line 420
    .line 421
    move-object v3, v5

    .line 422
    :goto_c
    instance-of v4, v3, [Ljava/lang/Object;

    .line 423
    .line 424
    if-eqz v4, :cond_16

    .line 425
    .line 426
    check-cast v3, [Ljava/lang/Object;

    .line 427
    .line 428
    aget-object v1, v3, v18

    .line 429
    .line 430
    check-cast v1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 431
    .line 432
    iput-object v1, v0, Lcom/google/common/collect/ImmutableMap$Builder;->c:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 433
    .line 434
    aget-object v1, v3, v16

    .line 435
    .line 436
    aget-object v3, v3, v17

    .line 437
    .line 438
    check-cast v3, Ljava/lang/Integer;

    .line 439
    .line 440
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    mul-int/lit8 v4, v3, 0x2

    .line 445
    .line 446
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    move/from16 v19, v3

    .line 451
    .line 452
    move-object v3, v1

    .line 453
    move/from16 v1, v19

    .line 454
    .line 455
    :cond_16
    new-instance v4, Lcom/google/common/collect/RegularImmutableMap;

    .line 456
    .line 457
    invoke-direct {v4, v1, v3, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    move-object v1, v4

    .line 461
    :goto_d
    if-eqz p1, :cond_18

    .line 462
    .line 463
    iget-object v0, v0, Lcom/google/common/collect/ImmutableMap$Builder;->c:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 464
    .line 465
    if-nez v0, :cond_17

    .line 466
    .line 467
    goto :goto_e

    .line 468
    :cond_17
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->a()Ljava/lang/IllegalArgumentException;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    throw v0

    .line 473
    :cond_18
    :goto_e
    return-object v1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-le v0, v2, :cond_0

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->b(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    :cond_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 30
    .line 31
    mul-int/lit8 v2, v1, 0x2

    .line 32
    .line 33
    aput-object p1, v0, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    aput-object p2, v0, v2

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "null value in entry: "

    .line 49
    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "=null"

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "null key in entry: null="

    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final c(Ljava/util/Set;)V
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    mul-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    if-le v1, v2, :cond_0

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    invoke-static {v2, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->b(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    .line 32
    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method
