.class public abstract Landroidx/compose/foundation/lazy/LazyDslKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(IILandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 24

    .line 1
    move/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v0, p7

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x3335543

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v10, 0x6

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    move-object/from16 v1, p9

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v10

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object/from16 v1, p9

    .line 33
    .line 34
    move v2, v10

    .line 35
    :goto_1
    and-int/lit8 v3, v10, 0x30

    .line 36
    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    and-int/lit8 v3, v11, 0x2

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    move-object/from16 v3, p6

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object/from16 v3, p6

    .line 55
    .line 56
    :cond_3
    const/16 v4, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v2, v4

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move-object/from16 v3, p6

    .line 61
    .line 62
    :goto_3
    and-int/lit16 v4, v10, 0x180

    .line 63
    .line 64
    if-nez v4, :cond_6

    .line 65
    .line 66
    move-object/from16 v4, p5

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    const/16 v5, 0x100

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    const/16 v5, 0x80

    .line 78
    .line 79
    :goto_4
    or-int/2addr v2, v5

    .line 80
    goto :goto_5

    .line 81
    :cond_6
    move-object/from16 v4, p5

    .line 82
    .line 83
    :goto_5
    and-int/lit8 v5, v11, 0x8

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    or-int/lit16 v2, v2, 0xc00

    .line 89
    .line 90
    goto :goto_7

    .line 91
    :cond_7
    and-int/lit16 v5, v10, 0xc00

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    const/16 v5, 0x800

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/16 v5, 0x400

    .line 105
    .line 106
    :goto_6
    or-int/2addr v2, v5

    .line 107
    :cond_9
    :goto_7
    and-int/lit16 v5, v10, 0x6000

    .line 108
    .line 109
    if-nez v5, :cond_c

    .line 110
    .line 111
    and-int/lit8 v5, v11, 0x10

    .line 112
    .line 113
    if-nez v5, :cond_a

    .line 114
    .line 115
    move-object/from16 v5, p4

    .line 116
    .line 117
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_b

    .line 122
    .line 123
    const/16 v7, 0x4000

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_a
    move-object/from16 v5, p4

    .line 127
    .line 128
    :cond_b
    const/16 v7, 0x2000

    .line 129
    .line 130
    :goto_8
    or-int/2addr v2, v7

    .line 131
    goto :goto_9

    .line 132
    :cond_c
    move-object/from16 v5, p4

    .line 133
    .line 134
    :goto_9
    and-int/lit8 v7, v11, 0x20

    .line 135
    .line 136
    const/high16 v8, 0x30000

    .line 137
    .line 138
    if-eqz v7, :cond_e

    .line 139
    .line 140
    or-int/2addr v2, v8

    .line 141
    :cond_d
    move-object/from16 v8, p8

    .line 142
    .line 143
    goto :goto_b

    .line 144
    :cond_e
    and-int/2addr v8, v10

    .line 145
    if-nez v8, :cond_d

    .line 146
    .line 147
    move-object/from16 v8, p8

    .line 148
    .line 149
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_f

    .line 154
    .line 155
    const/high16 v9, 0x20000

    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_f
    const/high16 v9, 0x10000

    .line 159
    .line 160
    :goto_a
    or-int/2addr v2, v9

    .line 161
    :goto_b
    const/high16 v9, 0x180000

    .line 162
    .line 163
    and-int/2addr v9, v10

    .line 164
    if-nez v9, :cond_12

    .line 165
    .line 166
    and-int/lit8 v9, v11, 0x40

    .line 167
    .line 168
    if-nez v9, :cond_10

    .line 169
    .line 170
    move-object/from16 v9, p3

    .line 171
    .line 172
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-eqz v12, :cond_11

    .line 177
    .line 178
    const/high16 v12, 0x100000

    .line 179
    .line 180
    goto :goto_c

    .line 181
    :cond_10
    move-object/from16 v9, p3

    .line 182
    .line 183
    :cond_11
    const/high16 v12, 0x80000

    .line 184
    .line 185
    :goto_c
    or-int/2addr v2, v12

    .line 186
    goto :goto_d

    .line 187
    :cond_12
    move-object/from16 v9, p3

    .line 188
    .line 189
    :goto_d
    and-int/lit16 v12, v11, 0x80

    .line 190
    .line 191
    const/high16 v13, 0xc00000

    .line 192
    .line 193
    if-eqz v12, :cond_14

    .line 194
    .line 195
    or-int/2addr v2, v13

    .line 196
    :cond_13
    move/from16 v13, p11

    .line 197
    .line 198
    goto :goto_f

    .line 199
    :cond_14
    and-int/2addr v13, v10

    .line 200
    if-nez v13, :cond_13

    .line 201
    .line 202
    move/from16 v13, p11

    .line 203
    .line 204
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 205
    .line 206
    .line 207
    move-result v14

    .line 208
    if-eqz v14, :cond_15

    .line 209
    .line 210
    const/high16 v14, 0x800000

    .line 211
    .line 212
    goto :goto_e

    .line 213
    :cond_15
    const/high16 v14, 0x400000

    .line 214
    .line 215
    :goto_e
    or-int/2addr v2, v14

    .line 216
    :goto_f
    const/high16 v14, 0x6000000

    .line 217
    .line 218
    and-int/2addr v14, v10

    .line 219
    if-nez v14, :cond_16

    .line 220
    .line 221
    const/high16 v14, 0x2000000

    .line 222
    .line 223
    or-int/2addr v2, v14

    .line 224
    :cond_16
    const/high16 v14, 0x30000000

    .line 225
    .line 226
    and-int/2addr v14, v10

    .line 227
    if-nez v14, :cond_18

    .line 228
    .line 229
    move-object/from16 v14, p10

    .line 230
    .line 231
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    if-eqz v15, :cond_17

    .line 236
    .line 237
    const/high16 v15, 0x20000000

    .line 238
    .line 239
    goto :goto_10

    .line 240
    :cond_17
    const/high16 v15, 0x10000000

    .line 241
    .line 242
    :goto_10
    or-int/2addr v2, v15

    .line 243
    goto :goto_11

    .line 244
    :cond_18
    move-object/from16 v14, p10

    .line 245
    .line 246
    :goto_11
    const v15, 0x12492493

    .line 247
    .line 248
    .line 249
    and-int/2addr v15, v2

    .line 250
    const v6, 0x12492492

    .line 251
    .line 252
    .line 253
    const/16 v16, 0x1

    .line 254
    .line 255
    if-eq v15, v6, :cond_19

    .line 256
    .line 257
    move/from16 v6, v16

    .line 258
    .line 259
    goto :goto_12

    .line 260
    :cond_19
    const/4 v6, 0x0

    .line 261
    :goto_12
    and-int/lit8 v15, v2, 0x1

    .line 262
    .line 263
    invoke-virtual {v0, v15, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_24

    .line 268
    .line 269
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 270
    .line 271
    .line 272
    and-int/lit8 v6, v10, 0x1

    .line 273
    .line 274
    const v15, -0xe000001

    .line 275
    .line 276
    .line 277
    const v17, -0x380001

    .line 278
    .line 279
    .line 280
    const v18, -0xe001

    .line 281
    .line 282
    .line 283
    if-eqz v6, :cond_1e

    .line 284
    .line 285
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-eqz v6, :cond_1a

    .line 290
    .line 291
    goto :goto_14

    .line 292
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 293
    .line 294
    .line 295
    and-int/lit8 v6, v11, 0x2

    .line 296
    .line 297
    if-eqz v6, :cond_1b

    .line 298
    .line 299
    and-int/lit8 v2, v2, -0x71

    .line 300
    .line 301
    :cond_1b
    and-int/lit8 v6, v11, 0x10

    .line 302
    .line 303
    if-eqz v6, :cond_1c

    .line 304
    .line 305
    and-int v2, v2, v18

    .line 306
    .line 307
    :cond_1c
    and-int/lit8 v6, v11, 0x40

    .line 308
    .line 309
    if-eqz v6, :cond_1d

    .line 310
    .line 311
    and-int v2, v2, v17

    .line 312
    .line 313
    :cond_1d
    and-int/2addr v2, v15

    .line 314
    move-object/from16 v20, v8

    .line 315
    .line 316
    move-object v15, v9

    .line 317
    move-object/from16 v8, p2

    .line 318
    .line 319
    :goto_13
    move-object/from16 v18, v3

    .line 320
    .line 321
    move-object/from16 v16, v5

    .line 322
    .line 323
    move/from16 v23, v13

    .line 324
    .line 325
    goto :goto_17

    .line 326
    :cond_1e
    :goto_14
    and-int/lit8 v6, v11, 0x2

    .line 327
    .line 328
    if-eqz v6, :cond_1f

    .line 329
    .line 330
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    and-int/lit8 v2, v2, -0x71

    .line 335
    .line 336
    :cond_1f
    and-int/lit8 v6, v11, 0x10

    .line 337
    .line 338
    if-eqz v6, :cond_20

    .line 339
    .line 340
    and-int v2, v2, v18

    .line 341
    .line 342
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 343
    .line 344
    :cond_20
    if-eqz v7, :cond_21

    .line 345
    .line 346
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 347
    .line 348
    goto :goto_15

    .line 349
    :cond_21
    move-object v6, v8

    .line 350
    :goto_15
    and-int/lit8 v7, v11, 0x40

    .line 351
    .line 352
    if-eqz v7, :cond_22

    .line 353
    .line 354
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    and-int v2, v2, v17

    .line 359
    .line 360
    goto :goto_16

    .line 361
    :cond_22
    move-object v7, v9

    .line 362
    :goto_16
    if-eqz v12, :cond_23

    .line 363
    .line 364
    move/from16 v13, v16

    .line 365
    .line 366
    :cond_23
    invoke-static {v0}, Landroidx/compose/foundation/OverscrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    and-int/2addr v2, v15

    .line 371
    move-object/from16 v20, v6

    .line 372
    .line 373
    move-object v15, v7

    .line 374
    goto :goto_13

    .line 375
    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 376
    .line 377
    .line 378
    and-int/lit8 v3, v2, 0xe

    .line 379
    .line 380
    or-int/lit16 v3, v3, 0x6000

    .line 381
    .line 382
    and-int/lit8 v5, v2, 0x70

    .line 383
    .line 384
    or-int/2addr v3, v5

    .line 385
    and-int/lit16 v5, v2, 0x380

    .line 386
    .line 387
    or-int/2addr v3, v5

    .line 388
    and-int/lit16 v5, v2, 0x1c00

    .line 389
    .line 390
    or-int/2addr v3, v5

    .line 391
    shr-int/lit8 v5, v2, 0x3

    .line 392
    .line 393
    const/high16 v6, 0x70000

    .line 394
    .line 395
    and-int/2addr v6, v5

    .line 396
    or-int/2addr v3, v6

    .line 397
    const/high16 v6, 0x380000

    .line 398
    .line 399
    and-int/2addr v5, v6

    .line 400
    or-int/2addr v3, v5

    .line 401
    shl-int/lit8 v5, v2, 0xc

    .line 402
    .line 403
    const/high16 v6, 0x70000000

    .line 404
    .line 405
    and-int/2addr v5, v6

    .line 406
    or-int v12, v3, v5

    .line 407
    .line 408
    shr-int/lit8 v3, v2, 0xc

    .line 409
    .line 410
    and-int/lit8 v3, v3, 0xe

    .line 411
    .line 412
    shr-int/lit8 v2, v2, 0x12

    .line 413
    .line 414
    and-int/lit16 v2, v2, 0x1c00

    .line 415
    .line 416
    or-int v13, v3, v2

    .line 417
    .line 418
    move-object/from16 v19, v0

    .line 419
    .line 420
    move-object/from16 v21, v1

    .line 421
    .line 422
    move-object/from16 v17, v4

    .line 423
    .line 424
    move-object/from16 v22, v14

    .line 425
    .line 426
    move-object v14, v8

    .line 427
    invoke-static/range {v12 .. v23}, Landroidx/compose/foundation/lazy/LazyListKt;->a(IILandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 428
    .line 429
    .line 430
    move-object v6, v15

    .line 431
    move-object/from16 v4, v16

    .line 432
    .line 433
    move-object/from16 v2, v18

    .line 434
    .line 435
    move-object/from16 v5, v20

    .line 436
    .line 437
    move/from16 v7, v23

    .line 438
    .line 439
    goto :goto_18

    .line 440
    :cond_24
    move-object/from16 v19, v0

    .line 441
    .line 442
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 443
    .line 444
    .line 445
    move-object v2, v3

    .line 446
    move-object v4, v5

    .line 447
    move-object v5, v8

    .line 448
    move-object v6, v9

    .line 449
    move v7, v13

    .line 450
    move-object/from16 v8, p2

    .line 451
    .line 452
    :goto_18
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    if-eqz v12, :cond_25

    .line 457
    .line 458
    new-instance v0, Lca;

    .line 459
    .line 460
    move-object/from16 v3, p5

    .line 461
    .line 462
    move-object/from16 v1, p9

    .line 463
    .line 464
    move-object/from16 v9, p10

    .line 465
    .line 466
    invoke-direct/range {v0 .. v11}, Lca;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    .line 467
    .line 468
    .line 469
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 470
    .line 471
    :cond_25
    return-void
.end method
