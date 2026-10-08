.class public abstract Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;I)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move/from16 v5, p9

    .line 12
    .line 13
    int-to-long v6, v3

    .line 14
    new-array v8, v5, [I

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    :goto_0
    const/16 v18, 0x0

    .line 27
    .line 28
    if-ge v11, v5, :cond_9

    .line 29
    .line 30
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v19

    .line 34
    const/16 v20, 0x1

    .line 35
    .line 36
    move-object/from16 v9, v19

    .line 37
    .line 38
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 39
    .line 40
    move-wide/from16 v21, v6

    .line 41
    .line 42
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v13, :cond_3

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    iget-object v6, v6, Landroidx/compose/foundation/layout/RowColumnParentData;->c:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object/from16 v6, v18

    .line 58
    .line 59
    :goto_1
    if-eqz v6, :cond_1

    .line 60
    .line 61
    instance-of v6, v6, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const/4 v6, 0x0

    .line 65
    :goto_2
    if-eqz v6, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    const/4 v13, 0x0

    .line 69
    goto :goto_4

    .line 70
    :cond_3
    :goto_3
    move/from16 v13, v20

    .line 71
    .line 72
    :goto_4
    cmpl-float v6, v7, v17

    .line 73
    .line 74
    if-lez v6, :cond_4

    .line 75
    .line 76
    add-float v16, v16, v7

    .line 77
    .line 78
    add-int/lit8 v12, v12, 0x1

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_4
    sub-int v6, v1, v14

    .line 82
    .line 83
    aget-object v7, p8, v11

    .line 84
    .line 85
    if-nez v7, :cond_7

    .line 86
    .line 87
    const v15, 0x7fffffff

    .line 88
    .line 89
    .line 90
    if-ne v1, v15, :cond_5

    .line 91
    .line 92
    move/from16 v18, v6

    .line 93
    .line 94
    const v7, 0x7fffffff

    .line 95
    .line 96
    .line 97
    :goto_5
    const/4 v15, 0x0

    .line 98
    goto :goto_6

    .line 99
    :cond_5
    if-gez v6, :cond_6

    .line 100
    .line 101
    move/from16 v18, v6

    .line 102
    .line 103
    const/4 v7, 0x0

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    move v7, v6

    .line 106
    move/from16 v18, v7

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :goto_6
    invoke-interface {v0, v15, v7, v2, v15}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->d(IIIZ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    invoke-interface {v9, v6, v7}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    goto :goto_7

    .line 118
    :cond_7
    move/from16 v18, v6

    .line 119
    .line 120
    :goto_7
    invoke-interface {v0, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->f(Landroidx/compose/ui/layout/Placeable;)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-interface {v0, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->j(Landroidx/compose/ui/layout/Placeable;)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    aput v6, v8, v11

    .line 129
    .line 130
    sub-int v15, v18, v6

    .line 131
    .line 132
    if-gez v15, :cond_8

    .line 133
    .line 134
    const/4 v15, 0x0

    .line 135
    :cond_8
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    add-int/2addr v6, v15

    .line 140
    add-int/2addr v14, v6

    .line 141
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    aput-object v7, p8, v11

    .line 146
    .line 147
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 148
    .line 149
    move-wide/from16 v6, v21

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    move-wide/from16 v21, v6

    .line 153
    .line 154
    const/16 v20, 0x1

    .line 155
    .line 156
    if-nez v12, :cond_a

    .line 157
    .line 158
    sub-int/2addr v14, v15

    .line 159
    const/4 v15, 0x0

    .line 160
    goto/16 :goto_11

    .line 161
    .line 162
    :cond_a
    const v15, 0x7fffffff

    .line 163
    .line 164
    .line 165
    if-eq v1, v15, :cond_b

    .line 166
    .line 167
    move v3, v1

    .line 168
    goto :goto_9

    .line 169
    :cond_b
    move/from16 v3, p1

    .line 170
    .line 171
    :goto_9
    add-int/lit8 v12, v12, -0x1

    .line 172
    .line 173
    int-to-long v6, v12

    .line 174
    mul-long v6, v6, v21

    .line 175
    .line 176
    sub-int/2addr v3, v14

    .line 177
    int-to-long v11, v3

    .line 178
    sub-long/2addr v11, v6

    .line 179
    const-wide/16 v21, 0x0

    .line 180
    .line 181
    cmp-long v3, v11, v21

    .line 182
    .line 183
    if-gez v3, :cond_c

    .line 184
    .line 185
    move-wide/from16 v11, v21

    .line 186
    .line 187
    :cond_c
    long-to-float v3, v11

    .line 188
    div-float v3, v3, v16

    .line 189
    .line 190
    const/4 v15, 0x0

    .line 191
    :goto_a
    if-ge v15, v5, :cond_d

    .line 192
    .line 193
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 198
    .line 199
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    mul-float/2addr v9, v3

    .line 208
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    move-wide/from16 v21, v6

    .line 213
    .line 214
    int-to-long v6, v9

    .line 215
    sub-long/2addr v11, v6

    .line 216
    add-int/lit8 v15, v15, 0x1

    .line 217
    .line 218
    move-wide/from16 v6, v21

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_d
    move-wide/from16 v21, v6

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    :goto_b
    if-ge v15, v5, :cond_14

    .line 226
    .line 227
    aget-object v7, p8, v15

    .line 228
    .line 229
    if-nez v7, :cond_13

    .line 230
    .line 231
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 236
    .line 237
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 242
    .line 243
    .line 244
    move-result v16

    .line 245
    cmpl-float v19, v16, v17

    .line 246
    .line 247
    if-lez v19, :cond_e

    .line 248
    .line 249
    move/from16 v19, v20

    .line 250
    .line 251
    goto :goto_c

    .line 252
    :cond_e
    const/16 v19, 0x0

    .line 253
    .line 254
    :goto_c
    if-nez v19, :cond_f

    .line 255
    .line 256
    const-string v19, "All weights <= 0 should have placeables"

    .line 257
    .line 258
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_f
    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    move/from16 p5, v3

    .line 266
    .line 267
    int-to-long v3, v1

    .line 268
    sub-long/2addr v11, v3

    .line 269
    mul-float v3, p5, v16

    .line 270
    .line 271
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    add-int/2addr v3, v1

    .line 276
    const/4 v1, 0x0

    .line 277
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v9, :cond_10

    .line 282
    .line 283
    iget-boolean v4, v9, Landroidx/compose/foundation/layout/RowColumnParentData;->b:Z

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_10
    move/from16 v4, v20

    .line 287
    .line 288
    :goto_d
    if-eqz v4, :cond_11

    .line 289
    .line 290
    const v4, 0x7fffffff

    .line 291
    .line 292
    .line 293
    if-eq v3, v4, :cond_12

    .line 294
    .line 295
    move v9, v3

    .line 296
    :goto_e
    move/from16 v1, v20

    .line 297
    .line 298
    goto :goto_f

    .line 299
    :cond_11
    const v4, 0x7fffffff

    .line 300
    .line 301
    .line 302
    :cond_12
    move v9, v1

    .line 303
    goto :goto_e

    .line 304
    :goto_f
    invoke-interface {v0, v9, v3, v2, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->d(IIIZ)J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    invoke-interface {v7, v4, v5}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->f(Landroidx/compose/ui/layout/Placeable;)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    invoke-interface {v0, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->j(Landroidx/compose/ui/layout/Placeable;)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    aput v4, v8, v15

    .line 321
    .line 322
    add-int/2addr v6, v4

    .line 323
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    aput-object v3, p8, v15

    .line 328
    .line 329
    move v10, v4

    .line 330
    goto :goto_10

    .line 331
    :cond_13
    move/from16 p5, v3

    .line 332
    .line 333
    move/from16 v1, v20

    .line 334
    .line 335
    :goto_10
    add-int/lit8 v15, v15, 0x1

    .line 336
    .line 337
    move/from16 v3, p5

    .line 338
    .line 339
    move-object/from16 v4, p7

    .line 340
    .line 341
    move/from16 v5, p9

    .line 342
    .line 343
    move/from16 v20, v1

    .line 344
    .line 345
    move/from16 v1, p3

    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_14
    int-to-long v1, v6

    .line 349
    add-long v1, v1, v21

    .line 350
    .line 351
    long-to-int v15, v1

    .line 352
    sub-int v1, p3, v14

    .line 353
    .line 354
    if-gez v15, :cond_15

    .line 355
    .line 356
    const/4 v15, 0x0

    .line 357
    :cond_15
    if-le v15, v1, :cond_16

    .line 358
    .line 359
    move v15, v1

    .line 360
    :cond_16
    :goto_11
    move/from16 v5, p9

    .line 361
    .line 362
    const/4 v1, 0x0

    .line 363
    if-eqz v13, :cond_1e

    .line 364
    .line 365
    const/4 v2, 0x0

    .line 366
    const/4 v3, 0x0

    .line 367
    :goto_12
    if-ge v1, v5, :cond_1d

    .line 368
    .line 369
    aget-object v4, p8, v1

    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-interface {v4}, Landroidx/compose/ui/layout/Measured;->a()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    instance-of v7, v6, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 379
    .line 380
    if-eqz v7, :cond_17

    .line 381
    .line 382
    check-cast v6, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 383
    .line 384
    goto :goto_13

    .line 385
    :cond_17
    move-object/from16 v6, v18

    .line 386
    .line 387
    :goto_13
    if-eqz v6, :cond_18

    .line 388
    .line 389
    iget-object v6, v6, Landroidx/compose/foundation/layout/RowColumnParentData;->c:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 390
    .line 391
    goto :goto_14

    .line 392
    :cond_18
    move-object/from16 v6, v18

    .line 393
    .line 394
    :goto_14
    if-eqz v6, :cond_19

    .line 395
    .line 396
    invoke-virtual {v6, v4}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->b(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    goto :goto_15

    .line 401
    :cond_19
    move-object/from16 v6, v18

    .line 402
    .line 403
    :goto_15
    if-eqz v6, :cond_1c

    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    invoke-interface {v0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->j(Landroidx/compose/ui/layout/Placeable;)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    const/high16 v9, -0x80000000

    .line 414
    .line 415
    if-eq v7, v9, :cond_1a

    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    goto :goto_16

    .line 422
    :cond_1a
    const/4 v6, 0x0

    .line 423
    :goto_16
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eq v7, v9, :cond_1b

    .line 428
    .line 429
    goto :goto_17

    .line 430
    :cond_1b
    move v7, v4

    .line 431
    :goto_17
    sub-int/2addr v4, v7

    .line 432
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 437
    .line 438
    goto :goto_12

    .line 439
    :cond_1d
    move v1, v3

    .line 440
    move v3, v2

    .line 441
    goto :goto_18

    .line 442
    :cond_1e
    const/4 v3, 0x0

    .line 443
    :goto_18
    add-int/2addr v14, v15

    .line 444
    if-gez v14, :cond_1f

    .line 445
    .line 446
    const/4 v9, 0x0

    .line 447
    :goto_19
    move/from16 v2, p1

    .line 448
    .line 449
    goto :goto_1a

    .line 450
    :cond_1f
    move v9, v14

    .line 451
    goto :goto_19

    .line 452
    :goto_1a
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    add-int/2addr v1, v3

    .line 457
    move/from16 v4, p2

    .line 458
    .line 459
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 464
    .line 465
    .line 466
    move-result v6

    .line 467
    new-array v4, v5, [I

    .line 468
    .line 469
    move-object/from16 v1, p6

    .line 470
    .line 471
    invoke-interface {v0, v2, v1, v8, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->c(ILandroidx/compose/ui/layout/MeasureScope;[I[I)V

    .line 472
    .line 473
    .line 474
    move v5, v2

    .line 475
    move-object v2, v1

    .line 476
    move-object/from16 v1, p8

    .line 477
    .line 478
    invoke-interface/range {v0 .. v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->h([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;I[III)Landroidx/compose/ui/layout/MeasureResult;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    return-object v0
.end method
