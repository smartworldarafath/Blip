.class public abstract Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(II[F)F
    .locals 0

    .line 1
    sub-int/2addr p0, p1

    .line 2
    mul-int/lit8 p0, p0, 0x2

    .line 3
    .line 4
    add-int/lit8 p0, p0, 0x1

    .line 5
    .line 6
    aget p0, p2, p0

    .line 7
    .line 8
    return p0
.end method

.method public static final b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Ld;Z)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v9, v1, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v10, -0x1

    .line 34
    goto/16 :goto_1e

    .line 35
    .line 36
    :cond_1
    sub-int/2addr v1, v9

    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    new-array v11, v1, [F

    .line 40
    .line 41
    iget-object v12, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 42
    .line 43
    invoke-virtual {v12, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    sub-int v15, v14, v13

    .line 52
    .line 53
    mul-int/lit8 v15, v15, 0x2

    .line 54
    .line 55
    if-lt v1, v15, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 2"

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance v1, Landroidx/compose/ui/text/android/HorizontalPositionCache;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/android/HorizontalPositionCache;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v15, 0x0

    .line 73
    const/4 v10, 0x1

    .line 74
    if-ne v0, v10, :cond_3

    .line 75
    .line 76
    move v0, v10

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v0, v15

    .line 79
    :goto_1
    move/from16 v16, v15

    .line 80
    .line 81
    :goto_2
    if-ge v13, v14, :cond_7

    .line 82
    .line 83
    invoke-virtual {v12, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    if-nez v17, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v13, v15, v15, v10}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 92
    .line 93
    .line 94
    move-result v17

    .line 95
    add-int/lit8 v15, v13, 0x1

    .line 96
    .line 97
    invoke-virtual {v1, v15, v10, v10, v10}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    move/from16 v18, v0

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    .line 106
    if-eqz v17, :cond_5

    .line 107
    .line 108
    const/4 v15, 0x0

    .line 109
    invoke-virtual {v1, v13, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 110
    .line 111
    .line 112
    move-result v17

    .line 113
    move/from16 v18, v0

    .line 114
    .line 115
    add-int/lit8 v0, v13, 0x1

    .line 116
    .line 117
    invoke-virtual {v1, v0, v10, v10, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move/from16 v15, v17

    .line 122
    .line 123
    move/from16 v17, v0

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    move/from16 v18, v0

    .line 127
    .line 128
    const/4 v15, 0x0

    .line 129
    if-eqz v17, :cond_6

    .line 130
    .line 131
    invoke-virtual {v1, v13, v15, v15, v10}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/lit8 v15, v13, 0x1

    .line 136
    .line 137
    invoke-virtual {v1, v15, v10, v10, v10}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    :goto_3
    move v15, v0

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    invoke-virtual {v1, v13, v15, v15, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 144
    .line 145
    .line 146
    move-result v17

    .line 147
    add-int/lit8 v0, v13, 0x1

    .line 148
    .line 149
    invoke-virtual {v1, v0, v10, v10, v15}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->a(IZZZ)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    goto :goto_3

    .line 154
    :goto_4
    aput v17, v11, v16

    .line 155
    .line 156
    add-int/lit8 v0, v16, 0x1

    .line 157
    .line 158
    aput v15, v11, v0

    .line 159
    .line 160
    add-int/lit8 v16, v16, 0x2

    .line 161
    .line 162
    add-int/lit8 v13, v13, 0x1

    .line 163
    .line 164
    move/from16 v0, v18

    .line 165
    .line 166
    const/4 v15, 0x0

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    iget-object v0, v2, Landroidx/compose/ui/text/android/LayoutHelper;->a:Landroid/text/Layout;

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/4 v15, 0x0

    .line 179
    invoke-virtual {v2, v1, v15}, Landroidx/compose/ui/text/android/LayoutHelper;->d(IZ)I

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    invoke-virtual {v2, v12}, Landroidx/compose/ui/text/android/LayoutHelper;->e(I)I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    sub-int v14, v1, v13

    .line 188
    .line 189
    sub-int v13, v3, v13

    .line 190
    .line 191
    invoke-virtual {v2, v12}, Landroidx/compose/ui/text/android/LayoutHelper;->a(I)Ljava/text/Bidi;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_a

    .line 196
    .line 197
    invoke-virtual {v2, v14, v13}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_8

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_8
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    new-array v3, v0, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 209
    .line 210
    const/4 v15, 0x0

    .line 211
    :goto_5
    if-ge v15, v0, :cond_b

    .line 212
    .line 213
    new-instance v12, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 214
    .line 215
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunStart(I)I

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    add-int/2addr v13, v1

    .line 220
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    add-int/2addr v14, v1

    .line 225
    invoke-virtual {v2, v15}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 226
    .line 227
    .line 228
    move-result v16

    .line 229
    move/from16 p2, v0

    .line 230
    .line 231
    rem-int/lit8 v0, v16, 0x2

    .line 232
    .line 233
    if-ne v0, v10, :cond_9

    .line 234
    .line 235
    move v0, v10

    .line 236
    goto :goto_6

    .line 237
    :cond_9
    const/4 v0, 0x0

    .line 238
    :goto_6
    invoke-direct {v12, v13, v14, v0}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    .line 239
    .line 240
    .line 241
    aput-object v12, v3, v15

    .line 242
    .line 243
    add-int/lit8 v15, v15, 0x1

    .line 244
    .line 245
    move/from16 v0, p2

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_a
    :goto_7
    new-instance v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-direct {v2, v1, v3, v0}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    .line 255
    .line 256
    .line 257
    filled-new-array {v2}, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    :cond_b
    if-eqz p7, :cond_c

    .line 262
    .line 263
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 264
    .line 265
    array-length v1, v3

    .line 266
    sub-int/2addr v1, v10

    .line 267
    const/4 v15, 0x0

    .line 268
    invoke-direct {v0, v15, v1, v10}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 269
    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_c
    const/4 v15, 0x0

    .line 273
    array-length v0, v3

    .line 274
    sub-int/2addr v0, v10

    .line 275
    new-instance v1, Lkotlin/ranges/IntProgression;

    .line 276
    .line 277
    const/4 v2, -0x1

    .line 278
    invoke-direct {v1, v0, v15, v2}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 279
    .line 280
    .line 281
    move-object v0, v1

    .line 282
    :goto_8
    iget v1, v0, Lkotlin/ranges/IntProgression;->j:I

    .line 283
    .line 284
    iget v2, v0, Lkotlin/ranges/IntProgression;->k:I

    .line 285
    .line 286
    iget v0, v0, Lkotlin/ranges/IntProgression;->l:I

    .line 287
    .line 288
    if-lez v0, :cond_d

    .line 289
    .line 290
    if-le v1, v2, :cond_e

    .line 291
    .line 292
    :cond_d
    if-gez v0, :cond_0

    .line 293
    .line 294
    if-gt v2, v1, :cond_0

    .line 295
    .line 296
    :cond_e
    :goto_9
    aget-object v12, v3, v1

    .line 297
    .line 298
    iget-boolean v13, v12, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->c:Z

    .line 299
    .line 300
    iget v14, v12, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->a:I

    .line 301
    .line 302
    iget v12, v12, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->b:I

    .line 303
    .line 304
    if-eqz v13, :cond_f

    .line 305
    .line 306
    add-int/lit8 v15, v12, -0x1

    .line 307
    .line 308
    sub-int/2addr v15, v9

    .line 309
    mul-int/lit8 v15, v15, 0x2

    .line 310
    .line 311
    aget v15, v11, v15

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_f
    sub-int v15, v14, v9

    .line 315
    .line 316
    mul-int/lit8 v15, v15, 0x2

    .line 317
    .line 318
    aget v15, v11, v15

    .line 319
    .line 320
    :goto_a
    if-eqz v13, :cond_10

    .line 321
    .line 322
    invoke-static {v14, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 323
    .line 324
    .line 325
    move-result v16

    .line 326
    goto :goto_b

    .line 327
    :cond_10
    add-int/lit8 v10, v12, -0x1

    .line 328
    .line 329
    invoke-static {v10, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 330
    .line 331
    .line 332
    move-result v16

    .line 333
    :goto_b
    iget v10, v4, Landroid/graphics/RectF;->left:F

    .line 334
    .line 335
    move/from16 v17, v0

    .line 336
    .line 337
    if-eqz p7, :cond_24

    .line 338
    .line 339
    cmpl-float v18, v16, v10

    .line 340
    .line 341
    if-ltz v18, :cond_19

    .line 342
    .line 343
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 344
    .line 345
    cmpg-float v18, v15, v0

    .line 346
    .line 347
    if-gtz v18, :cond_19

    .line 348
    .line 349
    if-nez v13, :cond_11

    .line 350
    .line 351
    cmpg-float v10, v10, v15

    .line 352
    .line 353
    if-lez v10, :cond_12

    .line 354
    .line 355
    :cond_11
    if-eqz v13, :cond_13

    .line 356
    .line 357
    cmpl-float v0, v0, v16

    .line 358
    .line 359
    if-ltz v0, :cond_13

    .line 360
    .line 361
    :cond_12
    move v0, v14

    .line 362
    goto :goto_d

    .line 363
    :cond_13
    move v0, v12

    .line 364
    move v10, v14

    .line 365
    :goto_c
    sub-int v15, v0, v10

    .line 366
    .line 367
    move/from16 p3, v0

    .line 368
    .line 369
    const/4 v0, 0x1

    .line 370
    if-le v15, v0, :cond_17

    .line 371
    .line 372
    add-int v0, p3, v10

    .line 373
    .line 374
    div-int/lit8 v0, v0, 0x2

    .line 375
    .line 376
    sub-int v15, v0, v9

    .line 377
    .line 378
    mul-int/lit8 v15, v15, 0x2

    .line 379
    .line 380
    aget v15, v11, v15

    .line 381
    .line 382
    move/from16 v16, v0

    .line 383
    .line 384
    if-nez v13, :cond_14

    .line 385
    .line 386
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 387
    .line 388
    cmpl-float v0, v15, v0

    .line 389
    .line 390
    if-gtz v0, :cond_15

    .line 391
    .line 392
    :cond_14
    if-eqz v13, :cond_16

    .line 393
    .line 394
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 395
    .line 396
    cmpg-float v0, v15, v0

    .line 397
    .line 398
    if-gez v0, :cond_16

    .line 399
    .line 400
    :cond_15
    move/from16 v0, v16

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_16
    move/from16 v0, p3

    .line 404
    .line 405
    move/from16 v10, v16

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_17
    if-eqz v13, :cond_18

    .line 409
    .line 410
    move/from16 v0, p3

    .line 411
    .line 412
    goto :goto_d

    .line 413
    :cond_18
    move v0, v10

    .line 414
    :goto_d
    invoke-interface {v5, v0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->d(I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    const/4 v10, -0x1

    .line 419
    if-ne v0, v10, :cond_1b

    .line 420
    .line 421
    :cond_19
    :goto_e
    move-object/from16 v18, v3

    .line 422
    .line 423
    :cond_1a
    :goto_f
    const/4 v14, -0x1

    .line 424
    goto/16 :goto_1d

    .line 425
    .line 426
    :cond_1b
    invoke-interface {v5, v0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->c(I)I

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    if-lt v10, v12, :cond_1c

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_1c
    if-ge v10, v14, :cond_1d

    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_1d
    move v14, v10

    .line 437
    :goto_10
    if-le v0, v12, :cond_1e

    .line 438
    .line 439
    move v0, v12

    .line 440
    :cond_1e
    new-instance v10, Landroid/graphics/RectF;

    .line 441
    .line 442
    int-to-float v15, v7

    .line 443
    move/from16 p3, v0

    .line 444
    .line 445
    int-to-float v0, v8

    .line 446
    move-object/from16 v18, v3

    .line 447
    .line 448
    const/4 v3, 0x0

    .line 449
    invoke-direct {v10, v3, v15, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 450
    .line 451
    .line 452
    move/from16 v0, p3

    .line 453
    .line 454
    :cond_1f
    :goto_11
    if-eqz v13, :cond_20

    .line 455
    .line 456
    add-int/lit8 v3, v0, -0x1

    .line 457
    .line 458
    sub-int/2addr v3, v9

    .line 459
    mul-int/lit8 v3, v3, 0x2

    .line 460
    .line 461
    aget v3, v11, v3

    .line 462
    .line 463
    goto :goto_12

    .line 464
    :cond_20
    sub-int v3, v14, v9

    .line 465
    .line 466
    mul-int/lit8 v3, v3, 0x2

    .line 467
    .line 468
    aget v3, v11, v3

    .line 469
    .line 470
    :goto_12
    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 471
    .line 472
    if-eqz v13, :cond_21

    .line 473
    .line 474
    invoke-static {v14, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    goto :goto_13

    .line 479
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 480
    .line 481
    invoke-static {v0, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    :goto_13
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 486
    .line 487
    invoke-virtual {v6, v10, v4}, Ld;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    check-cast v0, Ljava/lang/Boolean;

    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_22

    .line 498
    .line 499
    goto/16 :goto_1d

    .line 500
    .line 501
    :cond_22
    invoke-interface {v5, v14}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->a(I)I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    const/4 v0, -0x1

    .line 506
    if-eq v14, v0, :cond_1a

    .line 507
    .line 508
    if-lt v14, v12, :cond_23

    .line 509
    .line 510
    goto :goto_f

    .line 511
    :cond_23
    invoke-interface {v5, v14}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->d(I)I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-le v0, v12, :cond_1f

    .line 516
    .line 517
    move v0, v12

    .line 518
    goto :goto_11

    .line 519
    :cond_24
    move-object/from16 v18, v3

    .line 520
    .line 521
    cmpl-float v0, v16, v10

    .line 522
    .line 523
    if-ltz v0, :cond_2d

    .line 524
    .line 525
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 526
    .line 527
    cmpg-float v3, v15, v0

    .line 528
    .line 529
    if-gtz v3, :cond_2d

    .line 530
    .line 531
    if-nez v13, :cond_25

    .line 532
    .line 533
    cmpl-float v0, v0, v16

    .line 534
    .line 535
    if-gez v0, :cond_26

    .line 536
    .line 537
    :cond_25
    if-eqz v13, :cond_27

    .line 538
    .line 539
    cmpg-float v0, v10, v15

    .line 540
    .line 541
    if-gtz v0, :cond_27

    .line 542
    .line 543
    :cond_26
    add-int/lit8 v0, v12, -0x1

    .line 544
    .line 545
    :goto_14
    const/4 v15, 0x1

    .line 546
    goto :goto_16

    .line 547
    :cond_27
    move v0, v12

    .line 548
    move v3, v14

    .line 549
    :goto_15
    sub-int v10, v0, v3

    .line 550
    .line 551
    const/4 v15, 0x1

    .line 552
    if-le v10, v15, :cond_2b

    .line 553
    .line 554
    add-int v10, v0, v3

    .line 555
    .line 556
    div-int/lit8 v10, v10, 0x2

    .line 557
    .line 558
    sub-int v15, v10, v9

    .line 559
    .line 560
    mul-int/lit8 v15, v15, 0x2

    .line 561
    .line 562
    aget v15, v11, v15

    .line 563
    .line 564
    move/from16 p3, v0

    .line 565
    .line 566
    if-nez v13, :cond_28

    .line 567
    .line 568
    iget v0, v4, Landroid/graphics/RectF;->right:F

    .line 569
    .line 570
    cmpl-float v0, v15, v0

    .line 571
    .line 572
    if-gtz v0, :cond_29

    .line 573
    .line 574
    :cond_28
    if-eqz v13, :cond_2a

    .line 575
    .line 576
    iget v0, v4, Landroid/graphics/RectF;->left:F

    .line 577
    .line 578
    cmpg-float v0, v15, v0

    .line 579
    .line 580
    if-gez v0, :cond_2a

    .line 581
    .line 582
    :cond_29
    move v0, v10

    .line 583
    goto :goto_15

    .line 584
    :cond_2a
    move/from16 v0, p3

    .line 585
    .line 586
    move v3, v10

    .line 587
    goto :goto_15

    .line 588
    :cond_2b
    move/from16 p3, v0

    .line 589
    .line 590
    if-eqz v13, :cond_2c

    .line 591
    .line 592
    move/from16 v0, p3

    .line 593
    .line 594
    goto :goto_14

    .line 595
    :cond_2c
    move v0, v3

    .line 596
    goto :goto_14

    .line 597
    :goto_16
    add-int/2addr v0, v15

    .line 598
    invoke-interface {v5, v0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->c(I)I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    const/4 v10, -0x1

    .line 603
    if-ne v0, v10, :cond_2e

    .line 604
    .line 605
    :cond_2d
    :goto_17
    const/4 v12, -0x1

    .line 606
    goto :goto_1c

    .line 607
    :cond_2e
    invoke-interface {v5, v0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->d(I)I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-gt v3, v14, :cond_2f

    .line 612
    .line 613
    goto :goto_17

    .line 614
    :cond_2f
    if-ge v0, v14, :cond_30

    .line 615
    .line 616
    move v0, v14

    .line 617
    :cond_30
    if-le v3, v12, :cond_31

    .line 618
    .line 619
    goto :goto_18

    .line 620
    :cond_31
    move v12, v3

    .line 621
    :goto_18
    new-instance v3, Landroid/graphics/RectF;

    .line 622
    .line 623
    int-to-float v10, v7

    .line 624
    int-to-float v15, v8

    .line 625
    move/from16 p3, v0

    .line 626
    .line 627
    const/4 v0, 0x0

    .line 628
    invoke-direct {v3, v0, v10, v0, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 629
    .line 630
    .line 631
    move/from16 v0, p3

    .line 632
    .line 633
    :cond_32
    :goto_19
    if-eqz v13, :cond_33

    .line 634
    .line 635
    add-int/lit8 v10, v12, -0x1

    .line 636
    .line 637
    sub-int/2addr v10, v9

    .line 638
    mul-int/lit8 v10, v10, 0x2

    .line 639
    .line 640
    aget v10, v11, v10

    .line 641
    .line 642
    goto :goto_1a

    .line 643
    :cond_33
    sub-int v10, v0, v9

    .line 644
    .line 645
    mul-int/lit8 v10, v10, 0x2

    .line 646
    .line 647
    aget v10, v11, v10

    .line 648
    .line 649
    :goto_1a
    iput v10, v3, Landroid/graphics/RectF;->left:F

    .line 650
    .line 651
    if-eqz v13, :cond_34

    .line 652
    .line 653
    invoke-static {v0, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    goto :goto_1b

    .line 658
    :cond_34
    add-int/lit8 v0, v12, -0x1

    .line 659
    .line 660
    invoke-static {v0, v9, v11}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->a(II[F)F

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    :goto_1b
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 665
    .line 666
    invoke-virtual {v6, v3, v4}, Ld;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    check-cast v0, Ljava/lang/Boolean;

    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_35

    .line 677
    .line 678
    goto :goto_1c

    .line 679
    :cond_35
    invoke-interface {v5, v12}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->b(I)I

    .line 680
    .line 681
    .line 682
    move-result v12

    .line 683
    const/4 v10, -0x1

    .line 684
    if-eq v12, v10, :cond_2d

    .line 685
    .line 686
    if-gt v12, v14, :cond_36

    .line 687
    .line 688
    goto :goto_17

    .line 689
    :cond_36
    invoke-interface {v5, v12}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->c(I)I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-ge v0, v14, :cond_32

    .line 694
    .line 695
    move v0, v14

    .line 696
    goto :goto_19

    .line 697
    :goto_1c
    move v14, v12

    .line 698
    :goto_1d
    if-ltz v14, :cond_37

    .line 699
    .line 700
    return v14

    .line 701
    :cond_37
    if-eq v1, v2, :cond_0

    .line 702
    .line 703
    add-int v1, v1, v17

    .line 704
    .line 705
    move/from16 v0, v17

    .line 706
    .line 707
    move-object/from16 v3, v18

    .line 708
    .line 709
    const/4 v10, 0x1

    .line 710
    goto/16 :goto_9

    .line 711
    .line 712
    :goto_1e
    return v10
.end method
