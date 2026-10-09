.class public abstract Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v12, p4

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v13, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v14, p11

    .line 22
    .line 23
    move/from16 v15, p13

    .line 24
    .line 25
    move/from16 v2, p14

    .line 26
    .line 27
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 28
    .line 29
    move-object/from16 v8, p12

    .line 30
    .line 31
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    const v11, -0x22247a99

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v11, v15, 0x6

    .line 40
    .line 41
    const/16 v16, 0x2

    .line 42
    .line 43
    move-object/from16 v17, v7

    .line 44
    .line 45
    if-nez v11, :cond_1

    .line 46
    .line 47
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-eqz v11, :cond_0

    .line 52
    .line 53
    const/4 v11, 0x4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move/from16 v11, v16

    .line 56
    .line 57
    :goto_0
    or-int/2addr v11, v15

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v11, v15

    .line 60
    :goto_1
    and-int/lit8 v18, v15, 0x30

    .line 61
    .line 62
    const/16 v19, 0x10

    .line 63
    .line 64
    if-nez v18, :cond_3

    .line 65
    .line 66
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v18

    .line 70
    if-eqz v18, :cond_2

    .line 71
    .line 72
    const/16 v18, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move/from16 v18, v19

    .line 76
    .line 77
    :goto_2
    or-int v11, v11, v18

    .line 78
    .line 79
    :cond_3
    and-int/lit16 v7, v15, 0x180

    .line 80
    .line 81
    const/16 v20, 0x80

    .line 82
    .line 83
    move/from16 v21, v7

    .line 84
    .line 85
    if-nez v21, :cond_5

    .line 86
    .line 87
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v21

    .line 91
    if-eqz v21, :cond_4

    .line 92
    .line 93
    const/16 v21, 0x100

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move/from16 v21, v20

    .line 97
    .line 98
    :goto_3
    or-int v11, v11, v21

    .line 99
    .line 100
    :cond_5
    and-int/lit16 v7, v15, 0xc00

    .line 101
    .line 102
    const/16 v22, 0x400

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    move/from16 v23, v7

    .line 106
    .line 107
    if-nez v23, :cond_7

    .line 108
    .line 109
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 110
    .line 111
    .line 112
    move-result v23

    .line 113
    if-eqz v23, :cond_6

    .line 114
    .line 115
    const/16 v23, 0x800

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    move/from16 v23, v22

    .line 119
    .line 120
    :goto_4
    or-int v11, v11, v23

    .line 121
    .line 122
    :cond_7
    and-int/lit16 v7, v15, 0x6000

    .line 123
    .line 124
    const/16 v24, 0x2000

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    if-nez v7, :cond_9

    .line 128
    .line 129
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_8

    .line 134
    .line 135
    const/16 v7, 0x4000

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    move/from16 v7, v24

    .line 139
    .line 140
    :goto_5
    or-int/2addr v11, v7

    .line 141
    :cond_9
    const/high16 v7, 0x30000

    .line 142
    .line 143
    and-int v26, v15, v7

    .line 144
    .line 145
    const/high16 v27, 0x10000

    .line 146
    .line 147
    if-nez v26, :cond_b

    .line 148
    .line 149
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v26

    .line 153
    if-eqz v26, :cond_a

    .line 154
    .line 155
    const/high16 v26, 0x20000

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_a
    move/from16 v26, v27

    .line 159
    .line 160
    :goto_6
    or-int v11, v11, v26

    .line 161
    .line 162
    :cond_b
    const/high16 v26, 0x180000

    .line 163
    .line 164
    and-int v29, v15, v26

    .line 165
    .line 166
    const/high16 v30, 0x80000

    .line 167
    .line 168
    move/from16 v31, v7

    .line 169
    .line 170
    if-nez v29, :cond_d

    .line 171
    .line 172
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 173
    .line 174
    .line 175
    move-result v29

    .line 176
    if-eqz v29, :cond_c

    .line 177
    .line 178
    const/high16 v29, 0x100000

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_c
    move/from16 v29, v30

    .line 182
    .line 183
    :goto_7
    or-int v11, v11, v29

    .line 184
    .line 185
    :cond_d
    const/high16 v29, 0xc00000

    .line 186
    .line 187
    and-int v32, v15, v29

    .line 188
    .line 189
    move-object/from16 v1, p5

    .line 190
    .line 191
    if-nez v32, :cond_f

    .line 192
    .line 193
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v33

    .line 197
    if-eqz v33, :cond_e

    .line 198
    .line 199
    const/high16 v33, 0x800000

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_e
    const/high16 v33, 0x400000

    .line 203
    .line 204
    :goto_8
    or-int v11, v11, v33

    .line 205
    .line 206
    :cond_f
    const/high16 v33, 0x6000000

    .line 207
    .line 208
    and-int v34, v15, v33

    .line 209
    .line 210
    if-nez v34, :cond_11

    .line 211
    .line 212
    const/4 v7, 0x0

    .line 213
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 214
    .line 215
    .line 216
    move-result v35

    .line 217
    if-eqz v35, :cond_10

    .line 218
    .line 219
    const/high16 v7, 0x4000000

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_10
    const/high16 v7, 0x2000000

    .line 223
    .line 224
    :goto_9
    or-int/2addr v11, v7

    .line 225
    :cond_11
    const/high16 v7, 0x30000000

    .line 226
    .line 227
    and-int v35, v15, v7

    .line 228
    .line 229
    move/from16 v36, v7

    .line 230
    .line 231
    if-nez v35, :cond_13

    .line 232
    .line 233
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 234
    .line 235
    .line 236
    move-result v35

    .line 237
    if-eqz v35, :cond_12

    .line 238
    .line 239
    const/high16 v35, 0x20000000

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_12
    const/high16 v35, 0x10000000

    .line 243
    .line 244
    :goto_a
    or-int v11, v11, v35

    .line 245
    .line 246
    :cond_13
    move/from16 v35, v11

    .line 247
    .line 248
    and-int/lit8 v11, v2, 0x6

    .line 249
    .line 250
    if-nez v11, :cond_15

    .line 251
    .line 252
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    if-eqz v11, :cond_14

    .line 257
    .line 258
    const/16 v16, 0x4

    .line 259
    .line 260
    :cond_14
    or-int v11, v2, v16

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_15
    move v11, v2

    .line 264
    :goto_b
    and-int/lit8 v16, v2, 0x30

    .line 265
    .line 266
    if-nez v16, :cond_17

    .line 267
    .line 268
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v16

    .line 272
    if-eqz v16, :cond_16

    .line 273
    .line 274
    const/16 v19, 0x20

    .line 275
    .line 276
    :cond_16
    or-int v11, v11, v19

    .line 277
    .line 278
    :cond_17
    and-int/lit16 v7, v2, 0x180

    .line 279
    .line 280
    const/4 v1, 0x0

    .line 281
    if-nez v7, :cond_19

    .line 282
    .line 283
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_18

    .line 288
    .line 289
    const/16 v20, 0x100

    .line 290
    .line 291
    :cond_18
    or-int v11, v11, v20

    .line 292
    .line 293
    :cond_19
    and-int/lit16 v7, v2, 0xc00

    .line 294
    .line 295
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 296
    .line 297
    if-nez v7, :cond_1b

    .line 298
    .line 299
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_1a

    .line 304
    .line 305
    const/16 v22, 0x800

    .line 306
    .line 307
    :cond_1a
    or-int v11, v11, v22

    .line 308
    .line 309
    :cond_1b
    and-int/lit16 v7, v2, 0x6000

    .line 310
    .line 311
    if-nez v7, :cond_1d

    .line 312
    .line 313
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_1c

    .line 318
    .line 319
    const/16 v24, 0x4000

    .line 320
    .line 321
    :cond_1c
    or-int v11, v11, v24

    .line 322
    .line 323
    :cond_1d
    and-int v7, v2, v31

    .line 324
    .line 325
    if-nez v7, :cond_1f

    .line 326
    .line 327
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_1e

    .line 332
    .line 333
    const/high16 v27, 0x20000

    .line 334
    .line 335
    :cond_1e
    or-int v11, v11, v27

    .line 336
    .line 337
    :cond_1f
    and-int v7, v2, v26

    .line 338
    .line 339
    if-nez v7, :cond_21

    .line 340
    .line 341
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-eqz v7, :cond_20

    .line 346
    .line 347
    const/high16 v30, 0x100000

    .line 348
    .line 349
    :cond_20
    or-int v11, v11, v30

    .line 350
    .line 351
    :cond_21
    const v7, 0x12492493

    .line 352
    .line 353
    .line 354
    and-int v7, v35, v7

    .line 355
    .line 356
    const v2, 0x12492492

    .line 357
    .line 358
    .line 359
    if-ne v7, v2, :cond_23

    .line 360
    .line 361
    const v2, 0x92493

    .line 362
    .line 363
    .line 364
    and-int/2addr v2, v11

    .line 365
    const v7, 0x92492

    .line 366
    .line 367
    .line 368
    if-eq v2, v7, :cond_22

    .line 369
    .line 370
    goto :goto_c

    .line 371
    :cond_22
    const/4 v2, 0x0

    .line 372
    goto :goto_d

    .line 373
    :cond_23
    :goto_c
    const/4 v2, 0x1

    .line 374
    :goto_d
    and-int/lit8 v7, v35, 0x1

    .line 375
    .line 376
    invoke-virtual {v8, v7, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_66

    .line 381
    .line 382
    and-int/lit8 v2, v35, 0x70

    .line 383
    .line 384
    const/16 v7, 0x20

    .line 385
    .line 386
    if-ne v2, v7, :cond_24

    .line 387
    .line 388
    const/16 v20, 0x1

    .line 389
    .line 390
    goto :goto_e

    .line 391
    :cond_24
    const/16 v20, 0x0

    .line 392
    .line 393
    :goto_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 398
    .line 399
    if-nez v20, :cond_25

    .line 400
    .line 401
    if-ne v7, v15, :cond_26

    .line 402
    .line 403
    :cond_25
    new-instance v7, Lia;

    .line 404
    .line 405
    const/4 v13, 0x0

    .line 406
    invoke-direct {v7, v3, v13}, Lia;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_26
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 413
    .line 414
    shr-int/lit8 v13, v35, 0x3

    .line 415
    .line 416
    and-int/lit8 v20, v13, 0xe

    .line 417
    .line 418
    shr-int/lit8 v22, v11, 0xf

    .line 419
    .line 420
    and-int/lit8 v24, v22, 0x70

    .line 421
    .line 422
    or-int v24, v20, v24

    .line 423
    .line 424
    move/from16 v27, v13

    .line 425
    .line 426
    and-int/lit16 v13, v11, 0x380

    .line 427
    .line 428
    or-int v13, v24, v13

    .line 429
    .line 430
    move/from16 v24, v11

    .line 431
    .line 432
    invoke-static {v14, v8}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    move/from16 v30, v13

    .line 437
    .line 438
    const/4 v13, 0x0

    .line 439
    invoke-static {v13, v8}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    and-int/lit8 v13, v30, 0xe

    .line 444
    .line 445
    xor-int/lit8 v13, v13, 0x6

    .line 446
    .line 447
    const/4 v12, 0x4

    .line 448
    if-le v13, v12, :cond_27

    .line 449
    .line 450
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    if-nez v13, :cond_28

    .line 455
    .line 456
    :cond_27
    and-int/lit8 v13, v30, 0x6

    .line 457
    .line 458
    if-ne v13, v12, :cond_29

    .line 459
    .line 460
    :cond_28
    const/4 v12, 0x1

    .line 461
    goto :goto_f

    .line 462
    :cond_29
    const/4 v12, 0x0

    .line 463
    :goto_f
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    or-int/2addr v12, v13

    .line 468
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v13

    .line 472
    or-int/2addr v12, v13

    .line 473
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v13

    .line 477
    or-int/2addr v12, v13

    .line 478
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v13

    .line 482
    if-nez v12, :cond_2a

    .line 483
    .line 484
    if-ne v13, v15, :cond_2b

    .line 485
    .line 486
    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 487
    .line 488
    .line 489
    move-result-object v12

    .line 490
    new-instance v13, Landroidx/compose/foundation/pager/d;

    .line 491
    .line 492
    invoke-direct {v13, v11, v14, v7}, Landroidx/compose/foundation/pager/d;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v12, v13}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    new-instance v12, Landroidx/compose/foundation/pager/f;

    .line 504
    .line 505
    invoke-direct {v12, v7, v3}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V

    .line 506
    .line 507
    .line 508
    invoke-static {v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 509
    .line 510
    .line 511
    move-result-object v38

    .line 512
    new-instance v37, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    .line 513
    .line 514
    const-string v41, "getValue()Ljava/lang/Object;"

    .line 515
    .line 516
    const/16 v42, 0x0

    .line 517
    .line 518
    const-class v39, Landroidx/compose/runtime/State;

    .line 519
    .line 520
    const-string v40, "value"

    .line 521
    .line 522
    invoke-direct/range {v37 .. v42}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 523
    .line 524
    .line 525
    move-object/from16 v13, v37

    .line 526
    .line 527
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_2b
    move-object v7, v13

    .line 531
    check-cast v7, Lkotlin/reflect/KProperty0;

    .line 532
    .line 533
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v11

    .line 537
    if-ne v11, v15, :cond_2c

    .line 538
    .line 539
    invoke-static {v8}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    :cond_2c
    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    .line 547
    .line 548
    const/16 v12, 0x20

    .line 549
    .line 550
    if-ne v2, v12, :cond_2d

    .line 551
    .line 552
    const/4 v12, 0x1

    .line 553
    goto :goto_10

    .line 554
    :cond_2d
    const/4 v12, 0x0

    .line 555
    :goto_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    if-nez v12, :cond_2e

    .line 560
    .line 561
    if-ne v13, v15, :cond_2f

    .line 562
    .line 563
    :cond_2e
    new-instance v13, Lia;

    .line 564
    .line 565
    const/4 v12, 0x1

    .line 566
    invoke-direct {v13, v3, v12}, Lia;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    :cond_2f
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 573
    .line 574
    const v12, 0xfff0

    .line 575
    .line 576
    .line 577
    and-int v12, v35, v12

    .line 578
    .line 579
    shr-int/lit8 v14, v35, 0x9

    .line 580
    .line 581
    const/high16 v30, 0x70000

    .line 582
    .line 583
    and-int v37, v14, v30

    .line 584
    .line 585
    or-int v12, v12, v37

    .line 586
    .line 587
    const/high16 v37, 0x380000

    .line 588
    .line 589
    and-int v14, v14, v37

    .line 590
    .line 591
    or-int/2addr v12, v14

    .line 592
    shl-int/lit8 v14, v24, 0x15

    .line 593
    .line 594
    const/high16 v38, 0x1c00000

    .line 595
    .line 596
    and-int v14, v14, v38

    .line 597
    .line 598
    or-int/2addr v12, v14

    .line 599
    shl-int/lit8 v14, v24, 0xf

    .line 600
    .line 601
    const/high16 v24, 0xe000000

    .line 602
    .line 603
    and-int v39, v14, v24

    .line 604
    .line 605
    or-int v12, v12, v39

    .line 606
    .line 607
    const/high16 v39, 0x70000000

    .line 608
    .line 609
    and-int v14, v14, v39

    .line 610
    .line 611
    or-int/2addr v12, v14

    .line 612
    and-int/lit8 v14, v12, 0x70

    .line 613
    .line 614
    xor-int/lit8 v14, v14, 0x30

    .line 615
    .line 616
    move/from16 v40, v2

    .line 617
    .line 618
    const/16 v2, 0x20

    .line 619
    .line 620
    if-le v14, v2, :cond_30

    .line 621
    .line 622
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v14

    .line 626
    if-nez v14, :cond_31

    .line 627
    .line 628
    :cond_30
    and-int/lit8 v14, v12, 0x30

    .line 629
    .line 630
    if-ne v14, v2, :cond_32

    .line 631
    .line 632
    :cond_31
    const/4 v14, 0x1

    .line 633
    goto :goto_11

    .line 634
    :cond_32
    const/4 v14, 0x0

    .line 635
    :goto_11
    and-int/lit16 v2, v12, 0x380

    .line 636
    .line 637
    xor-int/lit16 v2, v2, 0x180

    .line 638
    .line 639
    const/16 v3, 0x100

    .line 640
    .line 641
    if-le v2, v3, :cond_33

    .line 642
    .line 643
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-nez v2, :cond_34

    .line 648
    .line 649
    :cond_33
    and-int/lit16 v2, v12, 0x180

    .line 650
    .line 651
    if-ne v2, v3, :cond_35

    .line 652
    .line 653
    :cond_34
    const/4 v2, 0x1

    .line 654
    goto :goto_12

    .line 655
    :cond_35
    const/4 v2, 0x0

    .line 656
    :goto_12
    or-int/2addr v2, v14

    .line 657
    and-int/lit16 v3, v12, 0x1c00

    .line 658
    .line 659
    xor-int/lit16 v3, v3, 0xc00

    .line 660
    .line 661
    const/16 v14, 0x800

    .line 662
    .line 663
    if-le v3, v14, :cond_36

    .line 664
    .line 665
    const/4 v3, 0x0

    .line 666
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 667
    .line 668
    .line 669
    move-result v21

    .line 670
    if-nez v21, :cond_37

    .line 671
    .line 672
    :cond_36
    and-int/lit16 v3, v12, 0xc00

    .line 673
    .line 674
    if-ne v3, v14, :cond_38

    .line 675
    .line 676
    :cond_37
    const/4 v3, 0x1

    .line 677
    goto :goto_13

    .line 678
    :cond_38
    const/4 v3, 0x0

    .line 679
    :goto_13
    or-int/2addr v2, v3

    .line 680
    const v3, 0xe000

    .line 681
    .line 682
    .line 683
    and-int/2addr v3, v12

    .line 684
    xor-int/lit16 v3, v3, 0x6000

    .line 685
    .line 686
    const/16 v14, 0x4000

    .line 687
    .line 688
    if-le v3, v14, :cond_39

    .line 689
    .line 690
    const/4 v3, 0x1

    .line 691
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 692
    .line 693
    .line 694
    move-result v21

    .line 695
    if-nez v21, :cond_3a

    .line 696
    .line 697
    goto :goto_14

    .line 698
    :cond_39
    const/4 v3, 0x1

    .line 699
    :goto_14
    and-int/lit16 v3, v12, 0x6000

    .line 700
    .line 701
    if-ne v3, v14, :cond_3b

    .line 702
    .line 703
    :cond_3a
    const/4 v3, 0x1

    .line 704
    goto :goto_15

    .line 705
    :cond_3b
    const/4 v3, 0x0

    .line 706
    :goto_15
    or-int/2addr v2, v3

    .line 707
    and-int v3, v12, v24

    .line 708
    .line 709
    xor-int v3, v3, v33

    .line 710
    .line 711
    const/high16 v14, 0x4000000

    .line 712
    .line 713
    if-le v3, v14, :cond_3c

    .line 714
    .line 715
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-nez v1, :cond_3d

    .line 720
    .line 721
    :cond_3c
    and-int v1, v12, v33

    .line 722
    .line 723
    if-ne v1, v14, :cond_3e

    .line 724
    .line 725
    :cond_3d
    const/4 v1, 0x1

    .line 726
    goto :goto_16

    .line 727
    :cond_3e
    const/4 v1, 0x0

    .line 728
    :goto_16
    or-int/2addr v1, v2

    .line 729
    and-int v2, v12, v39

    .line 730
    .line 731
    xor-int v2, v2, v36

    .line 732
    .line 733
    const/high16 v3, 0x20000000

    .line 734
    .line 735
    if-le v2, v3, :cond_3f

    .line 736
    .line 737
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-nez v2, :cond_40

    .line 742
    .line 743
    :cond_3f
    and-int v2, v12, v36

    .line 744
    .line 745
    if-ne v2, v3, :cond_41

    .line 746
    .line 747
    :cond_40
    const/4 v2, 0x1

    .line 748
    goto :goto_17

    .line 749
    :cond_41
    const/4 v2, 0x0

    .line 750
    :goto_17
    or-int/2addr v1, v2

    .line 751
    and-int v2, v12, v37

    .line 752
    .line 753
    xor-int v2, v2, v26

    .line 754
    .line 755
    const/high16 v3, 0x100000

    .line 756
    .line 757
    if-le v2, v3, :cond_42

    .line 758
    .line 759
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-nez v2, :cond_43

    .line 764
    .line 765
    :cond_42
    and-int v2, v12, v26

    .line 766
    .line 767
    if-ne v2, v3, :cond_44

    .line 768
    .line 769
    :cond_43
    const/4 v2, 0x1

    .line 770
    goto :goto_18

    .line 771
    :cond_44
    const/4 v2, 0x0

    .line 772
    :goto_18
    or-int/2addr v1, v2

    .line 773
    and-int v2, v12, v38

    .line 774
    .line 775
    xor-int v2, v2, v29

    .line 776
    .line 777
    const/high16 v3, 0x800000

    .line 778
    .line 779
    if-le v2, v3, :cond_45

    .line 780
    .line 781
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    if-nez v2, :cond_46

    .line 786
    .line 787
    :cond_45
    and-int v2, v12, v29

    .line 788
    .line 789
    if-ne v2, v3, :cond_47

    .line 790
    .line 791
    :cond_46
    const/4 v2, 0x1

    .line 792
    goto :goto_19

    .line 793
    :cond_47
    const/4 v2, 0x0

    .line 794
    :goto_19
    or-int/2addr v1, v2

    .line 795
    and-int/lit8 v2, v22, 0xe

    .line 796
    .line 797
    xor-int/lit8 v2, v2, 0x6

    .line 798
    .line 799
    const/4 v3, 0x4

    .line 800
    if-le v2, v3, :cond_48

    .line 801
    .line 802
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    if-nez v2, :cond_49

    .line 807
    .line 808
    :cond_48
    and-int/lit8 v2, v22, 0x6

    .line 809
    .line 810
    if-ne v2, v3, :cond_4a

    .line 811
    .line 812
    :cond_49
    const/4 v2, 0x1

    .line 813
    goto :goto_1a

    .line 814
    :cond_4a
    const/4 v2, 0x0

    .line 815
    :goto_1a
    or-int/2addr v1, v2

    .line 816
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    or-int/2addr v1, v2

    .line 821
    and-int v2, v12, v30

    .line 822
    .line 823
    xor-int v2, v2, v31

    .line 824
    .line 825
    const/high16 v14, 0x20000

    .line 826
    .line 827
    if-le v2, v14, :cond_4b

    .line 828
    .line 829
    const/4 v2, 0x0

    .line 830
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 831
    .line 832
    .line 833
    move-result v16

    .line 834
    if-nez v16, :cond_4c

    .line 835
    .line 836
    :cond_4b
    and-int v2, v12, v31

    .line 837
    .line 838
    if-ne v2, v14, :cond_4d

    .line 839
    .line 840
    :cond_4c
    const/4 v2, 0x1

    .line 841
    goto :goto_1b

    .line 842
    :cond_4d
    const/4 v2, 0x0

    .line 843
    :goto_1b
    or-int/2addr v1, v2

    .line 844
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    or-int/2addr v1, v2

    .line 849
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    if-nez v1, :cond_4f

    .line 854
    .line 855
    if-ne v2, v15, :cond_4e

    .line 856
    .line 857
    goto :goto_1c

    .line 858
    :cond_4e
    move v14, v3

    .line 859
    move-object v10, v7

    .line 860
    move-object v12, v8

    .line 861
    move-object/from16 v1, v17

    .line 862
    .line 863
    move/from16 v13, v40

    .line 864
    .line 865
    const/16 v28, 0x1

    .line 866
    .line 867
    move-object/from16 v3, p1

    .line 868
    .line 869
    goto :goto_1d

    .line 870
    :cond_4f
    :goto_1c
    new-instance v2, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;

    .line 871
    .line 872
    move v14, v3

    .line 873
    move-object v12, v8

    .line 874
    move-object v8, v13

    .line 875
    move-object/from16 v1, v17

    .line 876
    .line 877
    move/from16 v13, v40

    .line 878
    .line 879
    const/16 v28, 0x1

    .line 880
    .line 881
    move-object/from16 v3, p1

    .line 882
    .line 883
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;FLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;)V

    .line 884
    .line 885
    .line 886
    move-object v10, v7

    .line 887
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    :goto_1d
    move-object/from16 v16, v2

    .line 891
    .line 892
    check-cast v16, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 893
    .line 894
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 895
    .line 896
    xor-int/lit8 v2, v20, 0x6

    .line 897
    .line 898
    if-le v2, v14, :cond_50

    .line 899
    .line 900
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    if-nez v2, :cond_51

    .line 905
    .line 906
    :cond_50
    and-int/lit8 v2, v27, 0x6

    .line 907
    .line 908
    if-ne v2, v14, :cond_52

    .line 909
    .line 910
    :cond_51
    move/from16 v25, v28

    .line 911
    .line 912
    :goto_1e
    const/4 v2, 0x0

    .line 913
    goto :goto_1f

    .line 914
    :cond_52
    const/16 v25, 0x0

    .line 915
    .line 916
    goto :goto_1e

    .line 917
    :goto_1f
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 918
    .line 919
    .line 920
    move-result v4

    .line 921
    or-int v4, v25, v4

    .line 922
    .line 923
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    if-nez v4, :cond_53

    .line 928
    .line 929
    if-ne v5, v15, :cond_54

    .line 930
    .line 931
    :cond_53
    new-instance v5, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    .line 932
    .line 933
    invoke-direct {v5, v3, v2}, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Z)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 937
    .line 938
    .line 939
    :cond_54
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 940
    .line 941
    const/16 v2, 0x20

    .line 942
    .line 943
    if-ne v13, v2, :cond_55

    .line 944
    .line 945
    move/from16 v4, v28

    .line 946
    .line 947
    goto :goto_20

    .line 948
    :cond_55
    const/4 v4, 0x0

    .line 949
    :goto_20
    and-int v6, v35, v30

    .line 950
    .line 951
    const/high16 v7, 0x20000

    .line 952
    .line 953
    if-ne v6, v7, :cond_56

    .line 954
    .line 955
    move/from16 v6, v28

    .line 956
    .line 957
    goto :goto_21

    .line 958
    :cond_56
    const/4 v6, 0x0

    .line 959
    :goto_21
    or-int/2addr v4, v6

    .line 960
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v6

    .line 964
    if-nez v4, :cond_57

    .line 965
    .line 966
    if-ne v6, v15, :cond_58

    .line 967
    .line 968
    :cond_57
    new-instance v6, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 969
    .line 970
    invoke-direct {v6, v0, v3}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    :cond_58
    move-object v7, v6

    .line 977
    check-cast v7, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 978
    .line 979
    sget-object v4, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 980
    .line 981
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v4

    .line 985
    check-cast v4, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 986
    .line 987
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 988
    .line 989
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v6

    .line 993
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 994
    .line 995
    if-ne v13, v2, :cond_59

    .line 996
    .line 997
    move/from16 v8, v28

    .line 998
    .line 999
    goto :goto_22

    .line 1000
    :cond_59
    const/4 v8, 0x0

    .line 1001
    :goto_22
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v9

    .line 1005
    or-int/2addr v8, v9

    .line 1006
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 1007
    .line 1008
    .line 1009
    move-result v9

    .line 1010
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v9

    .line 1014
    or-int/2addr v8, v9

    .line 1015
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v9

    .line 1019
    if-nez v8, :cond_5a

    .line 1020
    .line 1021
    if-ne v9, v15, :cond_5b

    .line 1022
    .line 1023
    :cond_5a
    new-instance v9, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    .line 1024
    .line 1025
    invoke-direct {v9, v3, v4, v6}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_5b
    check-cast v9, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    .line 1032
    .line 1033
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1034
    .line 1035
    if-eqz p4, :cond_64

    .line 1036
    .line 1037
    const v4, -0x32e2f41d    # -1.6467512E8f

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1041
    .line 1042
    .line 1043
    shr-int/lit8 v4, v35, 0x15

    .line 1044
    .line 1045
    and-int/lit8 v4, v4, 0x70

    .line 1046
    .line 1047
    or-int v4, v20, v4

    .line 1048
    .line 1049
    and-int/lit8 v6, v4, 0xe

    .line 1050
    .line 1051
    xor-int/lit8 v6, v6, 0x6

    .line 1052
    .line 1053
    if-le v6, v14, :cond_5c

    .line 1054
    .line 1055
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v6

    .line 1059
    if-nez v6, :cond_5d

    .line 1060
    .line 1061
    :cond_5c
    and-int/lit8 v6, v4, 0x6

    .line 1062
    .line 1063
    if-ne v6, v14, :cond_5e

    .line 1064
    .line 1065
    :cond_5d
    move/from16 v6, v28

    .line 1066
    .line 1067
    goto :goto_23

    .line 1068
    :cond_5e
    const/4 v6, 0x0

    .line 1069
    :goto_23
    and-int/lit8 v8, v4, 0x70

    .line 1070
    .line 1071
    xor-int/lit8 v8, v8, 0x30

    .line 1072
    .line 1073
    if-le v8, v2, :cond_5f

    .line 1074
    .line 1075
    const/4 v8, 0x0

    .line 1076
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v14

    .line 1080
    if-nez v14, :cond_61

    .line 1081
    .line 1082
    :cond_5f
    and-int/lit8 v4, v4, 0x30

    .line 1083
    .line 1084
    if-ne v4, v2, :cond_60

    .line 1085
    .line 1086
    goto :goto_24

    .line 1087
    :cond_60
    const/16 v28, 0x0

    .line 1088
    .line 1089
    :cond_61
    :goto_24
    or-int v2, v6, v28

    .line 1090
    .line 1091
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    if-nez v2, :cond_62

    .line 1096
    .line 1097
    if-ne v4, v15, :cond_63

    .line 1098
    .line 1099
    :cond_62
    new-instance v4, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    .line 1100
    .line 1101
    invoke-direct {v4, v3}, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1105
    .line 1106
    .line 1107
    :cond_63
    check-cast v4, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    .line 1108
    .line 1109
    iget-object v2, v3, Landroidx/compose/foundation/pager/PagerState;->u:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 1110
    .line 1111
    invoke-static {v4, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    const/4 v8, 0x0

    .line 1116
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_25

    .line 1120
    :cond_64
    const/4 v8, 0x0

    .line 1121
    const v2, -0x32dc6545

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1128
    .line 1129
    .line 1130
    move-object v2, v13

    .line 1131
    :goto_25
    iget-object v4, v3, Landroidx/compose/foundation/pager/PagerState;->x:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 1132
    .line 1133
    move-object/from16 v14, p0

    .line 1134
    .line 1135
    invoke-interface {v14, v4}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v4

    .line 1139
    iget-object v6, v3, Landroidx/compose/foundation/pager/PagerState;->v:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 1140
    .line 1141
    invoke-interface {v4, v6}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v4

    .line 1145
    move/from16 v6, p4

    .line 1146
    .line 1147
    invoke-static {v4, v10, v5, v1, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v4

    .line 1151
    if-eqz v6, :cond_65

    .line 1152
    .line 1153
    new-instance v5, Ls7;

    .line 1154
    .line 1155
    const/4 v15, 0x3

    .line 1156
    invoke-direct {v5, v15, v3, v11, v8}, Ls7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v13, v8, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v5

    .line 1163
    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v4

    .line 1167
    goto :goto_26

    .line 1168
    :cond_65
    invoke-interface {v4, v13}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    :goto_26
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    iget-object v8, v3, Landroidx/compose/foundation/pager/PagerState;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1177
    .line 1178
    move-object/from16 v5, p5

    .line 1179
    .line 1180
    move-object v4, v1

    .line 1181
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/ScrollableAreaKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v1

    .line 1185
    new-instance v2, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    .line 1186
    .line 1187
    invoke-direct {v2, v3}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v13, v3, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v2

    .line 1194
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    move-object/from16 v9, p8

    .line 1199
    .line 1200
    const/4 v13, 0x0

    .line 1201
    invoke-static {v1, v9, v13}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v17

    .line 1205
    iget-object v1, v3, Landroidx/compose/foundation/pager/PagerState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 1206
    .line 1207
    const/16 v21, 0x0

    .line 1208
    .line 1209
    move-object/from16 v18, v1

    .line 1210
    .line 1211
    move-object/from16 v20, v12

    .line 1212
    .line 1213
    move-object/from16 v19, v16

    .line 1214
    .line 1215
    move-object/from16 v16, v10

    .line 1216
    .line 1217
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    .line 1218
    .line 1219
    .line 1220
    goto :goto_27

    .line 1221
    :cond_66
    move-object/from16 v14, p0

    .line 1222
    .line 1223
    move-object/from16 v20, v8

    .line 1224
    .line 1225
    move-object v9, v13

    .line 1226
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1227
    .line 1228
    .line 1229
    :goto_27
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v15

    .line 1233
    if-eqz v15, :cond_67

    .line 1234
    .line 1235
    new-instance v0, Lja;

    .line 1236
    .line 1237
    move-object/from16 v4, p3

    .line 1238
    .line 1239
    move/from16 v5, p4

    .line 1240
    .line 1241
    move-object/from16 v6, p5

    .line 1242
    .line 1243
    move/from16 v7, p6

    .line 1244
    .line 1245
    move-object/from16 v8, p7

    .line 1246
    .line 1247
    move-object/from16 v10, p9

    .line 1248
    .line 1249
    move-object/from16 v11, p10

    .line 1250
    .line 1251
    move-object/from16 v12, p11

    .line 1252
    .line 1253
    move/from16 v13, p13

    .line 1254
    .line 1255
    move-object v2, v3

    .line 1256
    move-object v1, v14

    .line 1257
    move-object/from16 v3, p2

    .line 1258
    .line 1259
    move/from16 v14, p14

    .line 1260
    .line 1261
    invoke-direct/range {v0 .. v14}, Lja;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 1262
    .line 1263
    .line 1264
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 1265
    .line 1266
    :cond_67
    return-void
.end method
