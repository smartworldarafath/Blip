.class public abstract Lio/ktor/http/CodecsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 4
    .line 5
    .line 6
    move-result-object v17

    .line 7
    const/16 v0, 0x3b

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 10
    .line 11
    .line 12
    move-result-object v16

    .line 13
    const/16 v0, 0x2c

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    const/16 v0, 0x2a

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/16 v0, 0x29

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const/16 v0, 0x28

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const/16 v0, 0x27

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v0, 0x40

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/16 v0, 0x23

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 52
    .line 53
    .line 54
    move-result-object v19

    .line 55
    const/16 v0, 0x3a

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v0, 0x2b

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 64
    .line 65
    .line 66
    move-result-object v22

    .line 67
    const/16 v0, 0x26

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/16 v0, 0x24

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const/16 v0, 0x21

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 82
    .line 83
    .line 84
    move-result-object v18

    .line 85
    const/16 v0, 0x7e

    .line 86
    .line 87
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 88
    .line 89
    .line 90
    move-result-object v21

    .line 91
    const/16 v0, 0x5f

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 94
    .line 95
    .line 96
    move-result-object v20

    .line 97
    const/16 v0, 0x2e

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 100
    .line 101
    .line 102
    move-result-object v24

    .line 103
    const/16 v0, 0x2d

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 106
    .line 107
    .line 108
    move-result-object v23

    .line 109
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 110
    .line 111
    const/16 v3, 0x61

    .line 112
    .line 113
    const/16 v10, 0x7a

    .line 114
    .line 115
    invoke-direct {v0, v3, v10}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lkotlin/ranges/CharRange;

    .line 119
    .line 120
    const/16 v13, 0x41

    .line 121
    .line 122
    const/16 v14, 0x5a

    .line 123
    .line 124
    invoke-direct {v12, v13, v14}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->H(Lkotlin/ranges/CharRange;Lkotlin/ranges/CharRange;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v12, Lkotlin/ranges/CharRange;

    .line 132
    .line 133
    const/16 v15, 0x30

    .line 134
    .line 135
    const/16 v13, 0x39

    .line 136
    .line 137
    invoke-direct {v12, v15, v13}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v12, Ljava/util/ArrayList;

    .line 145
    .line 146
    const/16 v13, 0xa

    .line 147
    .line 148
    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_0

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    check-cast v15, Ljava/lang/Character;

    .line 170
    .line 171
    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    int-to-byte v15, v15

    .line 176
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_0
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sput-object v0, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 189
    .line 190
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 191
    .line 192
    invoke-direct {v0, v3, v10}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 193
    .line 194
    .line 195
    new-instance v10, Lkotlin/ranges/CharRange;

    .line 196
    .line 197
    const/16 v12, 0x41

    .line 198
    .line 199
    invoke-direct {v10, v12, v14}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->H(Lkotlin/ranges/CharRange;Lkotlin/ranges/CharRange;)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v10, Lkotlin/ranges/CharRange;

    .line 207
    .line 208
    const/16 v12, 0x30

    .line 209
    .line 210
    const/16 v14, 0x39

    .line 211
    .line 212
    invoke-direct {v10, v12, v14}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, Lio/ktor/http/CodecsKt;->b:Ljava/util/Set;

    .line 224
    .line 225
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 226
    .line 227
    const/16 v10, 0x66

    .line 228
    .line 229
    invoke-direct {v0, v3, v10}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 230
    .line 231
    .line 232
    new-instance v3, Lkotlin/ranges/CharRange;

    .line 233
    .line 234
    const/16 v10, 0x46

    .line 235
    .line 236
    const/16 v12, 0x41

    .line 237
    .line 238
    invoke-direct {v3, v12, v10}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->H(Lkotlin/ranges/CharRange;Lkotlin/ranges/CharRange;)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v3, Lkotlin/ranges/CharRange;

    .line 246
    .line 247
    const/16 v12, 0x30

    .line 248
    .line 249
    const/16 v14, 0x39

    .line 250
    .line 251
    invoke-direct {v3, v12, v14}, Lkotlin/ranges/CharProgression;-><init>(CC)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    const/16 v0, 0x2f

    .line 262
    .line 263
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const/16 v3, 0x3f

    .line 268
    .line 269
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    const/16 v10, 0x5b

    .line 274
    .line 275
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    const/16 v12, 0x5d

    .line 280
    .line 281
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    move-object v14, v10

    .line 286
    move-object v10, v5

    .line 287
    move-object v5, v14

    .line 288
    move-object v14, v9

    .line 289
    move-object v15, v11

    .line 290
    move-object v9, v4

    .line 291
    move-object v11, v6

    .line 292
    move-object v6, v12

    .line 293
    move-object/from16 v4, v19

    .line 294
    .line 295
    move-object/from16 v19, v24

    .line 296
    .line 297
    move-object v12, v7

    .line 298
    move-object v7, v2

    .line 299
    move-object v2, v0

    .line 300
    move v0, v13

    .line 301
    move-object v13, v8

    .line 302
    move-object/from16 v8, v18

    .line 303
    .line 304
    move-object/from16 v18, v23

    .line 305
    .line 306
    filled-new-array/range {v1 .. v22}, [Ljava/lang/Character;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    move-object v3, v2

    .line 311
    move-object v2, v7

    .line 312
    move-object v5, v10

    .line 313
    move-object v6, v11

    .line 314
    move-object v7, v12

    .line 315
    move-object v11, v15

    .line 316
    move-object/from16 v19, v4

    .line 317
    .line 318
    move-object/from16 v18, v8

    .line 319
    .line 320
    move-object v4, v9

    .line 321
    move-object v8, v13

    .line 322
    move-object v9, v14

    .line 323
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Ljava/lang/Iterable;

    .line 328
    .line 329
    new-instance v10, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    if-eqz v12, :cond_1

    .line 347
    .line 348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    check-cast v12, Ljava/lang/Character;

    .line 353
    .line 354
    invoke-virtual {v12}, Ljava/lang/Character;->charValue()C

    .line 355
    .line 356
    .line 357
    move-result v12

    .line 358
    int-to-byte v12, v12

    .line 359
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_1
    sput-object v10, Lio/ktor/http/CodecsKt;->c:Ljava/util/ArrayList;

    .line 368
    .line 369
    move-object/from16 v12, v16

    .line 370
    .line 371
    move-object/from16 v13, v17

    .line 372
    .line 373
    move-object/from16 v3, v18

    .line 374
    .line 375
    move-object/from16 v16, v20

    .line 376
    .line 377
    move-object/from16 v17, v21

    .line 378
    .line 379
    move-object/from16 v10, v22

    .line 380
    .line 381
    move-object/from16 v14, v23

    .line 382
    .line 383
    move-object/from16 v15, v24

    .line 384
    .line 385
    filled-new-array/range {v1 .. v17}, [Ljava/lang/Character;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 390
    .line 391
    .line 392
    sget-object v1, Lio/ktor/http/CodecsKt;->b:Ljava/util/Set;

    .line 393
    .line 394
    const/16 v2, 0x5e

    .line 395
    .line 396
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 397
    .line 398
    .line 399
    move-result-object v25

    .line 400
    const/16 v2, 0x60

    .line 401
    .line 402
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 403
    .line 404
    .line 405
    move-result-object v27

    .line 406
    const/16 v2, 0x7c

    .line 407
    .line 408
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 409
    .line 410
    .line 411
    move-result-object v28

    .line 412
    move-object/from16 v26, v20

    .line 413
    .line 414
    move-object/from16 v29, v21

    .line 415
    .line 416
    move-object/from16 v20, v4

    .line 417
    .line 418
    move-object/from16 v21, v5

    .line 419
    .line 420
    filled-new-array/range {v18 .. v29}, [Ljava/lang/Character;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    move-object/from16 v4, v26

    .line 425
    .line 426
    move-object/from16 v3, v29

    .line 427
    .line 428
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Ljava/lang/Iterable;

    .line 433
    .line 434
    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 435
    .line 436
    .line 437
    filled-new-array {v14, v15, v4, v3}, [Ljava/lang/Character;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    new-instance v2, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .line 453
    .line 454
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_2

    .line 463
    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    check-cast v1, Ljava/lang/Character;

    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    int-to-byte v1, v1

    .line 475
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    goto :goto_2

    .line 483
    :cond_2
    sput-object v2, Lio/ktor/http/CodecsKt;->d:Ljava/util/ArrayList;

    .line 484
    .line 485
    return-void
.end method

.method public static final a(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x47

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x67

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public static final b(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .line 1
    move v0, p0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_b

    .line 3
    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x2b

    .line 9
    .line 10
    const/16 v3, 0x25

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    sub-int v1, p1, p0

    .line 23
    .line 24
    const/16 v4, 0xff

    .line 25
    .line 26
    if-le v1, v4, :cond_2

    .line 27
    .line 28
    div-int/lit8 v1, v1, 0x3

    .line 29
    .line 30
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    if-le v0, p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v4, p2, p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_3
    const/4 p0, 0x0

    .line 41
    :goto_2
    if-ge v0, p1, :cond_a

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz p3, :cond_4

    .line 48
    .line 49
    if-ne v1, v2, :cond_4

    .line 50
    .line 51
    const/16 v1, 0x20

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    if-ne v1, v3, :cond_9

    .line 60
    .line 61
    if-nez p0, :cond_5

    .line 62
    .line 63
    sub-int p0, p1, v0

    .line 64
    .line 65
    div-int/lit8 p0, p0, 0x3

    .line 66
    .line 67
    new-array p0, p0, [B

    .line 68
    .line 69
    :cond_5
    const/4 v1, 0x0

    .line 70
    move v5, v1

    .line 71
    :goto_4
    if-ge v0, p1, :cond_8

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ne v6, v3, :cond_8

    .line 78
    .line 79
    add-int/lit8 v6, v0, 0x2

    .line 80
    .line 81
    const-string v7, ", in "

    .line 82
    .line 83
    if-ge v6, p1, :cond_7

    .line 84
    .line 85
    add-int/lit8 v8, v0, 0x1

    .line 86
    .line 87
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-static {v9}, Lio/ktor/http/CodecsKt;->a(C)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-static {v10}, Lio/ktor/http/CodecsKt;->a(C)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const/4 v11, -0x1

    .line 104
    if-eq v9, v11, :cond_6

    .line 105
    .line 106
    if-eq v10, v11, :cond_6

    .line 107
    .line 108
    add-int/lit8 v6, v5, 0x1

    .line 109
    .line 110
    mul-int/lit8 v9, v9, 0x10

    .line 111
    .line 112
    add-int/2addr v9, v10

    .line 113
    int-to-byte v7, v9

    .line 114
    aput-byte v7, p0, v5

    .line 115
    .line 116
    add-int/lit8 v0, v0, 0x3

    .line 117
    .line 118
    move v5, v6

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    new-instance p0, Lio/ktor/http/URLDecodeException;

    .line 121
    .line 122
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Wrong HEX escape: %"

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p1, ", at "

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_7
    new-instance p0, Lio/ktor/http/URLDecodeException;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "Incomplete trailing HEX escape: "

    .line 178
    .line 179
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, " at "

    .line 196
    .line 197
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_8
    const/4 v6, 0x4

    .line 212
    invoke-static {v1, v5, v6, p0}, Lkotlin/text/StringsKt;->k(III[B)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :cond_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :cond_b
    if-nez p0, :cond_c

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    if-ne p1, p3, :cond_c

    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :cond_c
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0, p0, v1}, Lio/ktor/http/CodecsKt;->b(IILjava/lang/String;Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static d(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x1

    .line 21
    :goto_0
    sget-object p3, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, p0, v1}, Lio/ktor/http/CodecsKt;->b(IILjava/lang/String;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final e(B)Ljava/lang/String;
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x30

    .line 12
    .line 13
    :goto_0
    int-to-char v0, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x41

    .line 16
    .line 17
    int-to-char v0, v0

    .line 18
    sub-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    and-int/lit8 p0, p0, 0xf

    .line 21
    .line 22
    if-ltz p0, :cond_1

    .line 23
    .line 24
    if-ge p0, v1, :cond_1

    .line 25
    .line 26
    add-int/lit8 p0, p0, 0x30

    .line 27
    .line 28
    :goto_2
    int-to-char p0, p0

    .line 29
    goto :goto_3

    .line 30
    :cond_1
    add-int/lit8 p0, p0, 0x41

    .line 31
    .line 32
    int-to-char p0, p0

    .line 33
    sub-int/2addr p0, v1

    .line 34
    goto :goto_2

    .line 35
    :goto_3
    const/4 v1, 0x3

    .line 36
    new-array v1, v1, [C

    .line 37
    .line 38
    const/16 v2, 0x25

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-char v2, v1, v3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aput-char v0, v1, v2

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    aput-char p0, v1, v0

    .line 48
    .line 49
    new-instance p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method
