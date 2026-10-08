.class public abstract Landroidx/compose/material/ButtonKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    .line 1
    move-object/from16 v8, p7

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    move-object/from16 v0, p8

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, -0x40a548e5

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v1, v9, 0x6

    .line 18
    .line 19
    move-object/from16 v11, p0

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int/2addr v1, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v9

    .line 35
    :goto_1
    and-int/lit8 v3, v10, 0x2

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    or-int/lit8 v1, v1, 0x30

    .line 40
    .line 41
    :cond_2
    move-object/from16 v4, p1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    and-int/lit8 v4, v9, 0x30

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    move-object/from16 v4, p1

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    const/16 v5, 0x20

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/16 v5, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v1, v5

    .line 62
    :goto_3
    and-int/lit8 v5, v10, 0x4

    .line 63
    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    or-int/lit16 v1, v1, 0x180

    .line 67
    .line 68
    :cond_5
    move/from16 v7, p2

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_6
    and-int/lit16 v7, v9, 0x180

    .line 72
    .line 73
    if-nez v7, :cond_5

    .line 74
    .line 75
    move/from16 v7, p2

    .line 76
    .line 77
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_7

    .line 82
    .line 83
    const/16 v12, 0x100

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    const/16 v12, 0x80

    .line 87
    .line 88
    :goto_4
    or-int/2addr v1, v12

    .line 89
    :goto_5
    and-int/lit8 v12, v10, 0x8

    .line 90
    .line 91
    const/4 v13, 0x0

    .line 92
    if-eqz v12, :cond_8

    .line 93
    .line 94
    or-int/lit16 v1, v1, 0xc00

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_8
    and-int/lit16 v12, v9, 0xc00

    .line 98
    .line 99
    if-nez v12, :cond_a

    .line 100
    .line 101
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-eqz v12, :cond_9

    .line 106
    .line 107
    const/16 v12, 0x800

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    const/16 v12, 0x400

    .line 111
    .line 112
    :goto_6
    or-int/2addr v1, v12

    .line 113
    :cond_a
    :goto_7
    and-int/lit16 v12, v9, 0x6000

    .line 114
    .line 115
    if-nez v12, :cond_d

    .line 116
    .line 117
    and-int/lit8 v12, v10, 0x10

    .line 118
    .line 119
    if-nez v12, :cond_b

    .line 120
    .line 121
    move-object/from16 v12, p3

    .line 122
    .line 123
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_c

    .line 128
    .line 129
    const/16 v14, 0x4000

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_b
    move-object/from16 v12, p3

    .line 133
    .line 134
    :cond_c
    const/16 v14, 0x2000

    .line 135
    .line 136
    :goto_8
    or-int/2addr v1, v14

    .line 137
    goto :goto_9

    .line 138
    :cond_d
    move-object/from16 v12, p3

    .line 139
    .line 140
    :goto_9
    const/high16 v14, 0x30000

    .line 141
    .line 142
    and-int/2addr v14, v9

    .line 143
    if-nez v14, :cond_10

    .line 144
    .line 145
    and-int/lit8 v14, v10, 0x20

    .line 146
    .line 147
    if-nez v14, :cond_e

    .line 148
    .line 149
    move-object/from16 v14, p4

    .line 150
    .line 151
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_f

    .line 156
    .line 157
    const/high16 v15, 0x20000

    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_e
    move-object/from16 v14, p4

    .line 161
    .line 162
    :cond_f
    const/high16 v15, 0x10000

    .line 163
    .line 164
    :goto_a
    or-int/2addr v1, v15

    .line 165
    goto :goto_b

    .line 166
    :cond_10
    move-object/from16 v14, p4

    .line 167
    .line 168
    :goto_b
    and-int/lit8 v15, v10, 0x40

    .line 169
    .line 170
    const/high16 v16, 0x180000

    .line 171
    .line 172
    if-eqz v15, :cond_11

    .line 173
    .line 174
    or-int v1, v1, v16

    .line 175
    .line 176
    goto :goto_d

    .line 177
    :cond_11
    and-int v15, v9, v16

    .line 178
    .line 179
    if-nez v15, :cond_13

    .line 180
    .line 181
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-eqz v15, :cond_12

    .line 186
    .line 187
    const/high16 v15, 0x100000

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_12
    const/high16 v15, 0x80000

    .line 191
    .line 192
    :goto_c
    or-int/2addr v1, v15

    .line 193
    :cond_13
    :goto_d
    const/high16 v15, 0xc00000

    .line 194
    .line 195
    and-int/2addr v15, v9

    .line 196
    if-nez v15, :cond_16

    .line 197
    .line 198
    and-int/lit16 v15, v10, 0x80

    .line 199
    .line 200
    if-nez v15, :cond_14

    .line 201
    .line 202
    move-object/from16 v15, p5

    .line 203
    .line 204
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    if-eqz v16, :cond_15

    .line 209
    .line 210
    const/high16 v16, 0x800000

    .line 211
    .line 212
    goto :goto_e

    .line 213
    :cond_14
    move-object/from16 v15, p5

    .line 214
    .line 215
    :cond_15
    const/high16 v16, 0x400000

    .line 216
    .line 217
    :goto_e
    or-int v1, v1, v16

    .line 218
    .line 219
    goto :goto_f

    .line 220
    :cond_16
    move-object/from16 v15, p5

    .line 221
    .line 222
    :goto_f
    and-int/lit16 v6, v10, 0x100

    .line 223
    .line 224
    const/high16 v16, 0x6000000

    .line 225
    .line 226
    if-eqz v6, :cond_17

    .line 227
    .line 228
    or-int v1, v1, v16

    .line 229
    .line 230
    move-object/from16 v2, p6

    .line 231
    .line 232
    goto :goto_11

    .line 233
    :cond_17
    and-int v16, v9, v16

    .line 234
    .line 235
    move-object/from16 v2, p6

    .line 236
    .line 237
    if-nez v16, :cond_19

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v17

    .line 243
    if-eqz v17, :cond_18

    .line 244
    .line 245
    const/high16 v17, 0x4000000

    .line 246
    .line 247
    goto :goto_10

    .line 248
    :cond_18
    const/high16 v17, 0x2000000

    .line 249
    .line 250
    :goto_10
    or-int v1, v1, v17

    .line 251
    .line 252
    :cond_19
    :goto_11
    const/high16 v17, 0x30000000

    .line 253
    .line 254
    and-int v18, v9, v17

    .line 255
    .line 256
    if-nez v18, :cond_1b

    .line 257
    .line 258
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v18

    .line 262
    if-eqz v18, :cond_1a

    .line 263
    .line 264
    const/high16 v18, 0x20000000

    .line 265
    .line 266
    goto :goto_12

    .line 267
    :cond_1a
    const/high16 v18, 0x10000000

    .line 268
    .line 269
    :goto_12
    or-int v1, v1, v18

    .line 270
    .line 271
    :cond_1b
    const v18, 0x12492493

    .line 272
    .line 273
    .line 274
    and-int v13, v1, v18

    .line 275
    .line 276
    move/from16 v18, v1

    .line 277
    .line 278
    const v1, 0x12492492

    .line 279
    .line 280
    .line 281
    const/16 v20, 0x1

    .line 282
    .line 283
    if-eq v13, v1, :cond_1c

    .line 284
    .line 285
    move/from16 v1, v20

    .line 286
    .line 287
    goto :goto_13

    .line 288
    :cond_1c
    const/4 v1, 0x0

    .line 289
    :goto_13
    and-int/lit8 v13, v18, 0x1

    .line 290
    .line 291
    invoke-virtual {v0, v13, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_40

    .line 296
    .line 297
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 298
    .line 299
    .line 300
    and-int/lit8 v1, v9, 0x1

    .line 301
    .line 302
    const/high16 v2, 0x40000000    # 2.0f

    .line 303
    .line 304
    const v24, -0x1c00001

    .line 305
    .line 306
    .line 307
    const v25, -0x70001

    .line 308
    .line 309
    .line 310
    const v26, -0xe001

    .line 311
    .line 312
    .line 313
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 314
    .line 315
    if-eqz v1, :cond_21

    .line 316
    .line 317
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_1d

    .line 322
    .line 323
    goto :goto_15

    .line 324
    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 325
    .line 326
    .line 327
    and-int/lit8 v1, v10, 0x10

    .line 328
    .line 329
    if-eqz v1, :cond_1e

    .line 330
    .line 331
    and-int v1, v18, v26

    .line 332
    .line 333
    goto :goto_14

    .line 334
    :cond_1e
    move/from16 v1, v18

    .line 335
    .line 336
    :goto_14
    and-int/lit8 v3, v10, 0x20

    .line 337
    .line 338
    if-eqz v3, :cond_1f

    .line 339
    .line 340
    and-int v1, v1, v25

    .line 341
    .line 342
    :cond_1f
    and-int/lit16 v3, v10, 0x80

    .line 343
    .line 344
    if-eqz v3, :cond_20

    .line 345
    .line 346
    and-int v1, v1, v24

    .line 347
    .line 348
    :cond_20
    move-object/from16 v3, p6

    .line 349
    .line 350
    move v5, v1

    .line 351
    move-object v1, v12

    .line 352
    move-object v2, v15

    .line 353
    const/high16 v27, 0x40800000    # 4.0f

    .line 354
    .line 355
    goto/16 :goto_1a

    .line 356
    .line 357
    :cond_21
    :goto_15
    if-eqz v3, :cond_22

    .line 358
    .line 359
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 360
    .line 361
    goto :goto_16

    .line 362
    :cond_22
    move-object v1, v4

    .line 363
    :goto_16
    if-eqz v5, :cond_23

    .line 364
    .line 365
    move/from16 v7, v20

    .line 366
    .line 367
    :cond_23
    and-int/lit8 v3, v10, 0x10

    .line 368
    .line 369
    if-eqz v3, :cond_26

    .line 370
    .line 371
    sget-object v3, Landroidx/compose/material/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    const/high16 v4, 0x41000000    # 8.0f

    .line 378
    .line 379
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    or-int/2addr v3, v5

    .line 384
    const/4 v5, 0x0

    .line 385
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    or-int/2addr v3, v12

    .line 390
    const/high16 v12, 0x40800000    # 4.0f

    .line 391
    .line 392
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 393
    .line 394
    .line 395
    move-result v22

    .line 396
    or-int v3, v3, v22

    .line 397
    .line 398
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 399
    .line 400
    .line 401
    move-result v22

    .line 402
    or-int v3, v3, v22

    .line 403
    .line 404
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    if-nez v3, :cond_24

    .line 409
    .line 410
    if-ne v2, v13, :cond_25

    .line 411
    .line 412
    :cond_24
    new-instance v2, Landroidx/compose/material/DefaultButtonElevation;

    .line 413
    .line 414
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_25
    check-cast v2, Landroidx/compose/material/DefaultButtonElevation;

    .line 421
    .line 422
    and-int v3, v18, v26

    .line 423
    .line 424
    move/from16 v18, v3

    .line 425
    .line 426
    move/from16 v27, v12

    .line 427
    .line 428
    move-object v12, v2

    .line 429
    goto :goto_17

    .line 430
    :cond_26
    const/high16 v4, 0x41000000    # 8.0f

    .line 431
    .line 432
    const/4 v5, 0x0

    .line 433
    const/high16 v27, 0x40800000    # 4.0f

    .line 434
    .line 435
    :goto_17
    and-int/lit8 v2, v10, 0x20

    .line 436
    .line 437
    if-eqz v2, :cond_27

    .line 438
    .line 439
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    iget-object v2, v2, Landroidx/compose/material/Shapes;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 444
    .line 445
    and-int v18, v18, v25

    .line 446
    .line 447
    move-object v14, v2

    .line 448
    :cond_27
    and-int/lit16 v2, v10, 0x80

    .line 449
    .line 450
    if-eqz v2, :cond_28

    .line 451
    .line 452
    sget-object v2, Landroidx/compose/material/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 453
    .line 454
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->e()J

    .line 459
    .line 460
    .line 461
    move-result-wide v2

    .line 462
    invoke-static {v2, v3, v0}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v31

    .line 466
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 467
    .line 468
    .line 469
    move-result-object v15

    .line 470
    invoke-virtual {v15}, Landroidx/compose/material/Colors;->d()J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    const v15, 0x3df5c28f    # 0.12f

    .line 475
    .line 476
    .line 477
    invoke-static {v4, v5, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 478
    .line 479
    .line 480
    move-result-wide v4

    .line 481
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 482
    .line 483
    .line 484
    move-result-object v15

    .line 485
    move-object/from16 p1, v1

    .line 486
    .line 487
    move-wide/from16 v29, v2

    .line 488
    .line 489
    invoke-virtual {v15}, Landroidx/compose/material/Colors;->f()J

    .line 490
    .line 491
    .line 492
    move-result-wide v1

    .line 493
    invoke-static {v4, v5, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 494
    .line 495
    .line 496
    move-result-wide v33

    .line 497
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->d()J

    .line 502
    .line 503
    .line 504
    move-result-wide v1

    .line 505
    const v3, 0x3ec28f5c    # 0.38f

    .line 506
    .line 507
    .line 508
    invoke-static {v3, v3, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 513
    .line 514
    .line 515
    move-result-wide v35

    .line 516
    new-instance v28, Landroidx/compose/material/DefaultButtonColors;

    .line 517
    .line 518
    invoke-direct/range {v28 .. v36}, Landroidx/compose/material/DefaultButtonColors;-><init>(JJJJ)V

    .line 519
    .line 520
    .line 521
    and-int v1, v18, v24

    .line 522
    .line 523
    goto :goto_18

    .line 524
    :cond_28
    move-object/from16 p1, v1

    .line 525
    .line 526
    move-object/from16 v28, v15

    .line 527
    .line 528
    move/from16 v1, v18

    .line 529
    .line 530
    :goto_18
    if-eqz v6, :cond_29

    .line 531
    .line 532
    sget-object v2, Landroidx/compose/material/ButtonDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 533
    .line 534
    move-object/from16 v4, p1

    .line 535
    .line 536
    move v5, v1

    .line 537
    move-object v3, v2

    .line 538
    :goto_19
    move-object v1, v12

    .line 539
    move-object/from16 v2, v28

    .line 540
    .line 541
    goto :goto_1a

    .line 542
    :cond_29
    move-object/from16 v4, p1

    .line 543
    .line 544
    move-object/from16 v3, p6

    .line 545
    .line 546
    move v5, v1

    .line 547
    goto :goto_19

    .line 548
    :goto_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 549
    .line 550
    .line 551
    const v6, 0x1daaa220

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    if-ne v6, v13, :cond_2a

    .line 562
    .line 563
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    :cond_2a
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 571
    .line 572
    const/4 v12, 0x0

    .line 573
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 574
    .line 575
    .line 576
    shr-int/lit8 v12, v5, 0x6

    .line 577
    .line 578
    move-object v15, v2

    .line 579
    check-cast v15, Landroidx/compose/material/DefaultButtonColors;

    .line 580
    .line 581
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    move-object/from16 p1, v1

    .line 585
    .line 586
    const v1, -0x7f2ce0b4

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 590
    .line 591
    .line 592
    move-object/from16 p2, v2

    .line 593
    .line 594
    if-eqz v7, :cond_2b

    .line 595
    .line 596
    iget-wide v1, v15, Landroidx/compose/material/DefaultButtonColors;->b:J

    .line 597
    .line 598
    goto :goto_1b

    .line 599
    :cond_2b
    iget-wide v1, v15, Landroidx/compose/material/DefaultButtonColors;->d:J

    .line 600
    .line 601
    :goto_1b
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    .line 602
    .line 603
    invoke-direct {v15, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 604
    .line 605
    .line 606
    invoke-static {v15, v0}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    const/4 v2, 0x0

    .line 611
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v15

    .line 618
    if-ne v15, v13, :cond_2c

    .line 619
    .line 620
    new-instance v15, Lh;

    .line 621
    .line 622
    const/16 v2, 0x19

    .line 623
    .line 624
    invoke-direct {v15, v2}, Lh;-><init>(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    :cond_2c
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 633
    invoke-static {v4, v2, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 634
    .line 635
    .line 636
    move-result-object v15

    .line 637
    move-object/from16 v2, p2

    .line 638
    .line 639
    check-cast v2, Landroidx/compose/material/DefaultButtonColors;

    .line 640
    .line 641
    move-object/from16 v24, v4

    .line 642
    .line 643
    const v4, -0x270e63e3

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 647
    .line 648
    .line 649
    if-eqz v7, :cond_2d

    .line 650
    .line 651
    iget-wide v9, v2, Landroidx/compose/material/DefaultButtonColors;->a:J

    .line 652
    .line 653
    goto :goto_1c

    .line 654
    :cond_2d
    iget-wide v9, v2, Landroidx/compose/material/DefaultButtonColors;->c:J

    .line 655
    .line 656
    :goto_1c
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 657
    .line 658
    invoke-direct {v2, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 659
    .line 660
    .line 661
    invoke-static {v2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    const/4 v4, 0x0

    .line 666
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 667
    .line 668
    .line 669
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 674
    .line 675
    iget-wide v9, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 676
    .line 677
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 682
    .line 683
    move-wide/from16 v35, v9

    .line 684
    .line 685
    iget-wide v9, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 686
    .line 687
    const/high16 v2, 0x3f800000    # 1.0f

    .line 688
    .line 689
    invoke-static {v9, v10, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 690
    .line 691
    .line 692
    move-result-wide v9

    .line 693
    if-nez p1, :cond_2e

    .line 694
    .line 695
    const v2, 0x1db0d6a1

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 699
    .line 700
    .line 701
    const/4 v2, 0x0

    .line 702
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 703
    .line 704
    .line 705
    move-object/from16 p5, v6

    .line 706
    .line 707
    move v13, v7

    .line 708
    move-wide/from16 p3, v9

    .line 709
    .line 710
    move-object/from16 p6, v14

    .line 711
    .line 712
    move-object/from16 v18, v15

    .line 713
    .line 714
    const/4 v2, 0x0

    .line 715
    goto/16 :goto_24

    .line 716
    .line 717
    :cond_2e
    const v2, 0x5389d560

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 721
    .line 722
    .line 723
    move-object/from16 v2, p1

    .line 724
    .line 725
    check-cast v2, Landroidx/compose/material/DefaultButtonElevation;

    .line 726
    .line 727
    const v4, -0x5eb281ab

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    if-ne v4, v13, :cond_2f

    .line 738
    .line 739
    new-instance v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 740
    .line 741
    invoke-direct {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    :cond_2f
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 748
    .line 749
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v18

    .line 753
    move-wide/from16 p3, v9

    .line 754
    .line 755
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v9

    .line 759
    if-nez v18, :cond_30

    .line 760
    .line 761
    if-ne v9, v13, :cond_31

    .line 762
    .line 763
    :cond_30
    new-instance v9, Landroidx/compose/material/DefaultButtonElevation$elevation$1$1;

    .line 764
    .line 765
    const/4 v10, 0x0

    .line 766
    invoke-direct {v9, v6, v4, v10}, Landroidx/compose/material/DefaultButtonElevation$elevation$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    :cond_31
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 773
    .line 774
    invoke-static {v0, v6, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 775
    .line 776
    .line 777
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    .line 782
    .line 783
    if-nez v7, :cond_32

    .line 784
    .line 785
    const/4 v9, 0x0

    .line 786
    goto :goto_1e

    .line 787
    :cond_32
    instance-of v9, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 788
    .line 789
    if-eqz v9, :cond_33

    .line 790
    .line 791
    const/high16 v9, 0x41000000    # 8.0f

    .line 792
    .line 793
    goto :goto_1e

    .line 794
    :cond_33
    instance-of v9, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 795
    .line 796
    if-eqz v9, :cond_34

    .line 797
    .line 798
    :goto_1d
    move/from16 v9, v27

    .line 799
    .line 800
    goto :goto_1e

    .line 801
    :cond_34
    instance-of v9, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 802
    .line 803
    if-eqz v9, :cond_35

    .line 804
    .line 805
    goto :goto_1d

    .line 806
    :cond_35
    const/high16 v9, 0x40000000    # 2.0f

    .line 807
    .line 808
    :goto_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v10

    .line 812
    if-ne v10, v13, :cond_36

    .line 813
    .line 814
    new-instance v10, Landroidx/compose/animation/core/Animatable;

    .line 815
    .line 816
    move-object/from16 p5, v6

    .line 817
    .line 818
    new-instance v6, Landroidx/compose/ui/unit/Dp;

    .line 819
    .line 820
    invoke-direct {v6, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 821
    .line 822
    .line 823
    sget-object v11, Landroidx/compose/animation/core/VectorConvertersKt;->c:Landroidx/compose/animation/core/TwoWayConverter;

    .line 824
    .line 825
    move-object/from16 p6, v14

    .line 826
    .line 827
    const/16 v14, 0xc

    .line 828
    .line 829
    move-object/from16 v18, v15

    .line 830
    .line 831
    const/4 v15, 0x0

    .line 832
    invoke-direct {v10, v6, v11, v15, v14}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    goto :goto_1f

    .line 839
    :cond_36
    move-object/from16 p5, v6

    .line 840
    .line 841
    move-object/from16 p6, v14

    .line 842
    .line 843
    move-object/from16 v18, v15

    .line 844
    .line 845
    :goto_1f
    check-cast v10, Landroidx/compose/animation/core/Animatable;

    .line 846
    .line 847
    new-instance v6, Landroidx/compose/ui/unit/Dp;

    .line 848
    .line 849
    invoke-direct {v6, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v11

    .line 856
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 857
    .line 858
    .line 859
    move-result v14

    .line 860
    or-int/2addr v11, v14

    .line 861
    and-int/lit8 v14, v12, 0xe

    .line 862
    .line 863
    xor-int/lit8 v14, v14, 0x6

    .line 864
    .line 865
    const/4 v15, 0x4

    .line 866
    if-le v14, v15, :cond_37

    .line 867
    .line 868
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 869
    .line 870
    .line 871
    move-result v14

    .line 872
    if-nez v14, :cond_38

    .line 873
    .line 874
    :cond_37
    and-int/lit8 v14, v12, 0x6

    .line 875
    .line 876
    if-ne v14, v15, :cond_39

    .line 877
    .line 878
    :cond_38
    move/from16 v14, v20

    .line 879
    .line 880
    goto :goto_20

    .line 881
    :cond_39
    const/4 v14, 0x0

    .line 882
    :goto_20
    or-int/2addr v11, v14

    .line 883
    and-int/lit16 v14, v12, 0x380

    .line 884
    .line 885
    xor-int/lit16 v14, v14, 0x180

    .line 886
    .line 887
    const/16 v15, 0x100

    .line 888
    .line 889
    if-le v14, v15, :cond_3a

    .line 890
    .line 891
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result v14

    .line 895
    if-nez v14, :cond_3c

    .line 896
    .line 897
    :cond_3a
    and-int/lit16 v14, v12, 0x180

    .line 898
    .line 899
    if-ne v14, v15, :cond_3b

    .line 900
    .line 901
    goto :goto_21

    .line 902
    :cond_3b
    const/16 v20, 0x0

    .line 903
    .line 904
    :cond_3c
    :goto_21
    or-int v11, v11, v20

    .line 905
    .line 906
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v14

    .line 910
    or-int/2addr v11, v14

    .line 911
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v14

    .line 915
    if-nez v11, :cond_3e

    .line 916
    .line 917
    if-ne v14, v13, :cond_3d

    .line 918
    .line 919
    goto :goto_22

    .line 920
    :cond_3d
    move v13, v7

    .line 921
    goto :goto_23

    .line 922
    :cond_3e
    :goto_22
    new-instance v28, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;

    .line 923
    .line 924
    const/16 v34, 0x0

    .line 925
    .line 926
    move-object/from16 v32, v2

    .line 927
    .line 928
    move-object/from16 v33, v4

    .line 929
    .line 930
    move/from16 v31, v7

    .line 931
    .line 932
    move/from16 v30, v9

    .line 933
    .line 934
    move-object/from16 v29, v10

    .line 935
    .line 936
    invoke-direct/range {v28 .. v34}, Landroidx/compose/material/DefaultButtonElevation$elevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material/DefaultButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    .line 937
    .line 938
    .line 939
    move-object/from16 v14, v28

    .line 940
    .line 941
    move/from16 v13, v31

    .line 942
    .line 943
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 944
    .line 945
    .line 946
    :goto_23
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 947
    .line 948
    invoke-static {v0, v6, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 949
    .line 950
    .line 951
    iget-object v2, v10, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 952
    .line 953
    const/4 v4, 0x0

    .line 954
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 958
    .line 959
    .line 960
    :goto_24
    if-eqz v2, :cond_3f

    .line 961
    .line 962
    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 963
    .line 964
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 965
    .line 966
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    .line 971
    .line 972
    iget v2, v2, Landroidx/compose/ui/unit/Dp;->j:F

    .line 973
    .line 974
    move/from16 v19, v2

    .line 975
    .line 976
    goto :goto_25

    .line 977
    :cond_3f
    const/16 v19, 0x0

    .line 978
    .line 979
    :goto_25
    new-instance v2, Lu;

    .line 980
    .line 981
    const/4 v4, 0x5

    .line 982
    invoke-direct {v2, v1, v3, v8, v4}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 983
    .line 984
    .line 985
    const v1, -0x136739e

    .line 986
    .line 987
    .line 988
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 989
    .line 990
    .line 991
    move-result-object v21

    .line 992
    and-int/lit8 v1, v5, 0xe

    .line 993
    .line 994
    or-int v1, v1, v17

    .line 995
    .line 996
    and-int/lit16 v2, v5, 0x380

    .line 997
    .line 998
    or-int/2addr v1, v2

    .line 999
    and-int/lit16 v2, v12, 0x1c00

    .line 1000
    .line 1001
    or-int/2addr v1, v2

    .line 1002
    const/high16 v2, 0x380000

    .line 1003
    .line 1004
    and-int/2addr v2, v5

    .line 1005
    or-int v23, v1, v2

    .line 1006
    .line 1007
    move-object/from16 v11, p0

    .line 1008
    .line 1009
    move-object/from16 v20, p5

    .line 1010
    .line 1011
    move-object/from16 v14, p6

    .line 1012
    .line 1013
    move-object/from16 v22, v0

    .line 1014
    .line 1015
    move-object/from16 v12, v18

    .line 1016
    .line 1017
    move-wide/from16 v15, v35

    .line 1018
    .line 1019
    move-wide/from16 v17, p3

    .line 1020
    .line 1021
    invoke-static/range {v11 .. v23}, Landroidx/compose/material/SurfaceKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1022
    .line 1023
    .line 1024
    move-object/from16 v4, p1

    .line 1025
    .line 1026
    move-object/from16 v6, p2

    .line 1027
    .line 1028
    move-object v7, v3

    .line 1029
    move v3, v13

    .line 1030
    move-object/from16 v2, v24

    .line 1031
    .line 1032
    :goto_26
    move-object v5, v14

    .line 1033
    goto :goto_27

    .line 1034
    :cond_40
    move-object/from16 v22, v0

    .line 1035
    .line 1036
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1037
    .line 1038
    .line 1039
    move-object v2, v4

    .line 1040
    move v3, v7

    .line 1041
    move-object v4, v12

    .line 1042
    move-object v6, v15

    .line 1043
    move-object/from16 v7, p6

    .line 1044
    .line 1045
    goto :goto_26

    .line 1046
    :goto_27
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v11

    .line 1050
    if-eqz v11, :cond_41

    .line 1051
    .line 1052
    new-instance v0, Lu4;

    .line 1053
    .line 1054
    move-object/from16 v1, p0

    .line 1055
    .line 1056
    move/from16 v9, p9

    .line 1057
    .line 1058
    move/from16 v10, p10

    .line 1059
    .line 1060
    invoke-direct/range {v0 .. v10}, Lu4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    .line 1061
    .line 1062
    .line 1063
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 1064
    .line 1065
    :cond_41
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    move v2, p1

    .line 9
    invoke-static {p4}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v4, p1, Landroidx/compose/material/Shapes;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 14
    .line 15
    and-int/lit16 p1, v0, 0x80

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    const/4 v0, 0x7

    .line 22
    invoke-static {p1, p2, p4, v0}, Landroidx/compose/material/ButtonDefaults;->a(JLandroidx/compose/runtime/Composer;I)Landroidx/compose/material/ButtonColors;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    move-object v5, p2

    .line 27
    sget-object v6, Landroidx/compose/material/ButtonDefaults;->d:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 28
    .line 29
    const/high16 v9, 0x30000000

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move-object v7, p3

    .line 37
    move-object v8, p4

    .line 38
    invoke-static/range {v0 .. v10}, Landroidx/compose/material/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
