.class public abstract Landroidx/compose/ui/graphics/ColorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 21

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    cmpg-float v0, p3, v6

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    move v0, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move/from16 v0, p3

    .line 25
    .line 26
    :goto_0
    cmpl-float v1, v0, v5

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    move v0, v5

    .line 31
    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    add-float/2addr v0, v4

    .line 35
    float-to-int v0, v0

    .line 36
    shl-int/lit8 v0, v0, 0x18

    .line 37
    .line 38
    cmpg-float v7, p0, v6

    .line 39
    .line 40
    if-gez v7, :cond_2

    .line 41
    .line 42
    move v7, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move/from16 v7, p0

    .line 45
    .line 46
    :goto_1
    cmpl-float v8, v7, v5

    .line 47
    .line 48
    if-lez v8, :cond_3

    .line 49
    .line 50
    move v7, v5

    .line 51
    :cond_3
    mul-float/2addr v7, v1

    .line 52
    add-float/2addr v7, v4

    .line 53
    float-to-int v7, v7

    .line 54
    shl-int/lit8 v2, v7, 0x10

    .line 55
    .line 56
    or-int/2addr v0, v2

    .line 57
    cmpg-float v2, p1, v6

    .line 58
    .line 59
    if-gez v2, :cond_4

    .line 60
    .line 61
    move v2, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move/from16 v2, p1

    .line 64
    .line 65
    :goto_2
    cmpl-float v7, v2, v5

    .line 66
    .line 67
    if-lez v7, :cond_5

    .line 68
    .line 69
    move v2, v5

    .line 70
    :cond_5
    mul-float/2addr v2, v1

    .line 71
    add-float/2addr v2, v4

    .line 72
    float-to-int v2, v2

    .line 73
    shl-int/lit8 v2, v2, 0x8

    .line 74
    .line 75
    or-int/2addr v0, v2

    .line 76
    cmpg-float v2, p2, v6

    .line 77
    .line 78
    if-gez v2, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    move/from16 v6, p2

    .line 82
    .line 83
    :goto_3
    cmpl-float v2, v6, v5

    .line 84
    .line 85
    if-lez v2, :cond_7

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_7
    move v5, v6

    .line 89
    :goto_4
    mul-float/2addr v5, v1

    .line 90
    add-float/2addr v5, v4

    .line 91
    float-to-int v1, v5

    .line 92
    or-int/2addr v0, v1

    .line 93
    int-to-long v0, v0

    .line 94
    shl-long/2addr v0, v3

    .line 95
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 96
    .line 97
    return-wide v0

    .line 98
    :cond_8
    iget-wide v7, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b:J

    .line 99
    .line 100
    shr-long/2addr v7, v3

    .line 101
    long-to-int v1, v7

    .line 102
    const/4 v7, 0x3

    .line 103
    if-ne v1, v7, :cond_9

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_9
    const-string v1, "Color only works with ColorSpaces with 3 components"

    .line 107
    .line 108
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_5
    iget v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 112
    .line 113
    const/4 v7, -0x1

    .line 114
    if-eq v1, v7, :cond_a

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const-string v7, "Unknown color space, please use a color space in ColorSpaces"

    .line 118
    .line 119
    invoke-static {v7}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_6
    const/4 v7, 0x0

    .line 123
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b(I)F

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->a(I)F

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    cmpg-float v10, p0, v8

    .line 132
    .line 133
    if-gez v10, :cond_b

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_b
    move/from16 v8, p0

    .line 137
    .line 138
    :goto_7
    cmpl-float v10, v8, v9

    .line 139
    .line 140
    if-lez v10, :cond_c

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_c
    move v9, v8

    .line 144
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    ushr-int/lit8 v9, v8, 0x1f

    .line 149
    .line 150
    ushr-int/lit8 v10, v8, 0x17

    .line 151
    .line 152
    const/16 v11, 0xff

    .line 153
    .line 154
    and-int/2addr v10, v11

    .line 155
    const v12, 0x7fffff

    .line 156
    .line 157
    .line 158
    and-int v13, v8, v12

    .line 159
    .line 160
    const/high16 v14, 0x800000

    .line 161
    .line 162
    const/16 v15, -0xa

    .line 163
    .line 164
    const/16 v16, 0x31

    .line 165
    .line 166
    const/16 v17, 0x200

    .line 167
    .line 168
    move/from16 v18, v2

    .line 169
    .line 170
    const/16 v2, 0x1f

    .line 171
    .line 172
    move/from16 v19, v3

    .line 173
    .line 174
    const/4 v3, 0x1

    .line 175
    if-ne v10, v11, :cond_e

    .line 176
    .line 177
    if-eqz v13, :cond_d

    .line 178
    .line 179
    move/from16 v8, v17

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_d
    move v8, v7

    .line 183
    :goto_9
    move v10, v2

    .line 184
    goto :goto_b

    .line 185
    :cond_e
    add-int/lit8 v10, v10, -0x70

    .line 186
    .line 187
    if-lt v10, v2, :cond_f

    .line 188
    .line 189
    move v8, v7

    .line 190
    move/from16 v10, v16

    .line 191
    .line 192
    goto :goto_b

    .line 193
    :cond_f
    if-gtz v10, :cond_12

    .line 194
    .line 195
    if-lt v10, v15, :cond_11

    .line 196
    .line 197
    or-int v8, v13, v14

    .line 198
    .line 199
    rsub-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    shr-int/2addr v8, v10

    .line 202
    and-int/lit16 v10, v8, 0x1000

    .line 203
    .line 204
    if-eqz v10, :cond_10

    .line 205
    .line 206
    add-int/lit16 v8, v8, 0x2000

    .line 207
    .line 208
    :cond_10
    shr-int/lit8 v8, v8, 0xd

    .line 209
    .line 210
    move v10, v7

    .line 211
    goto :goto_b

    .line 212
    :cond_11
    move v8, v7

    .line 213
    move v10, v8

    .line 214
    goto :goto_b

    .line 215
    :cond_12
    shr-int/lit8 v13, v13, 0xd

    .line 216
    .line 217
    and-int/lit16 v8, v8, 0x1000

    .line 218
    .line 219
    if-eqz v8, :cond_13

    .line 220
    .line 221
    shl-int/lit8 v8, v10, 0xa

    .line 222
    .line 223
    or-int/2addr v8, v13

    .line 224
    add-int/2addr v8, v3

    .line 225
    shl-int/lit8 v9, v9, 0xf

    .line 226
    .line 227
    or-int/2addr v8, v9

    .line 228
    :goto_a
    int-to-short v8, v8

    .line 229
    goto :goto_c

    .line 230
    :cond_13
    move v8, v13

    .line 231
    :goto_b
    shl-int/lit8 v9, v9, 0xf

    .line 232
    .line 233
    shl-int/lit8 v10, v10, 0xa

    .line 234
    .line 235
    or-int/2addr v9, v10

    .line 236
    or-int/2addr v8, v9

    .line 237
    goto :goto_a

    .line 238
    :goto_c
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b(I)F

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->a(I)F

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    cmpg-float v13, p1, v9

    .line 247
    .line 248
    if-gez v13, :cond_14

    .line 249
    .line 250
    goto :goto_d

    .line 251
    :cond_14
    move/from16 v9, p1

    .line 252
    .line 253
    :goto_d
    cmpl-float v13, v9, v10

    .line 254
    .line 255
    if-lez v13, :cond_15

    .line 256
    .line 257
    goto :goto_e

    .line 258
    :cond_15
    move v10, v9

    .line 259
    :goto_e
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    ushr-int/lit8 v10, v9, 0x1f

    .line 264
    .line 265
    ushr-int/lit8 v13, v9, 0x17

    .line 266
    .line 267
    and-int/2addr v13, v11

    .line 268
    and-int v20, v9, v12

    .line 269
    .line 270
    if-ne v13, v11, :cond_17

    .line 271
    .line 272
    if-eqz v20, :cond_16

    .line 273
    .line 274
    move/from16 v9, v17

    .line 275
    .line 276
    goto :goto_f

    .line 277
    :cond_16
    move v9, v7

    .line 278
    :goto_f
    move v13, v2

    .line 279
    goto :goto_11

    .line 280
    :cond_17
    add-int/lit8 v13, v13, -0x70

    .line 281
    .line 282
    if-lt v13, v2, :cond_18

    .line 283
    .line 284
    move v9, v7

    .line 285
    move/from16 v13, v16

    .line 286
    .line 287
    goto :goto_11

    .line 288
    :cond_18
    if-gtz v13, :cond_1b

    .line 289
    .line 290
    if-lt v13, v15, :cond_1a

    .line 291
    .line 292
    or-int v9, v20, v14

    .line 293
    .line 294
    rsub-int/lit8 v13, v13, 0x1

    .line 295
    .line 296
    shr-int/2addr v9, v13

    .line 297
    and-int/lit16 v13, v9, 0x1000

    .line 298
    .line 299
    if-eqz v13, :cond_19

    .line 300
    .line 301
    add-int/lit16 v9, v9, 0x2000

    .line 302
    .line 303
    :cond_19
    shr-int/lit8 v9, v9, 0xd

    .line 304
    .line 305
    move v13, v7

    .line 306
    goto :goto_11

    .line 307
    :cond_1a
    move v9, v7

    .line 308
    move v13, v9

    .line 309
    goto :goto_11

    .line 310
    :cond_1b
    shr-int/lit8 v20, v20, 0xd

    .line 311
    .line 312
    and-int/lit16 v9, v9, 0x1000

    .line 313
    .line 314
    if-eqz v9, :cond_1c

    .line 315
    .line 316
    shl-int/lit8 v9, v13, 0xa

    .line 317
    .line 318
    or-int v9, v9, v20

    .line 319
    .line 320
    add-int/2addr v9, v3

    .line 321
    shl-int/lit8 v10, v10, 0xf

    .line 322
    .line 323
    or-int/2addr v9, v10

    .line 324
    :goto_10
    int-to-short v9, v9

    .line 325
    goto :goto_12

    .line 326
    :cond_1c
    move/from16 v9, v20

    .line 327
    .line 328
    :goto_11
    shl-int/lit8 v10, v10, 0xf

    .line 329
    .line 330
    shl-int/lit8 v13, v13, 0xa

    .line 331
    .line 332
    or-int/2addr v10, v13

    .line 333
    or-int/2addr v9, v10

    .line 334
    goto :goto_10

    .line 335
    :goto_12
    const/4 v10, 0x2

    .line 336
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b(I)F

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->a(I)F

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    cmpg-float v10, p2, v13

    .line 345
    .line 346
    if-gez v10, :cond_1d

    .line 347
    .line 348
    goto :goto_13

    .line 349
    :cond_1d
    move/from16 v13, p2

    .line 350
    .line 351
    :goto_13
    cmpl-float v10, v13, v0

    .line 352
    .line 353
    if-lez v10, :cond_1e

    .line 354
    .line 355
    goto :goto_14

    .line 356
    :cond_1e
    move v0, v13

    .line 357
    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    ushr-int/lit8 v10, v0, 0x1f

    .line 362
    .line 363
    ushr-int/lit8 v13, v0, 0x17

    .line 364
    .line 365
    and-int/2addr v13, v11

    .line 366
    and-int/2addr v12, v0

    .line 367
    if-ne v13, v11, :cond_20

    .line 368
    .line 369
    if-eqz v12, :cond_1f

    .line 370
    .line 371
    move/from16 v7, v17

    .line 372
    .line 373
    :cond_1f
    move v0, v7

    .line 374
    move v7, v2

    .line 375
    goto :goto_16

    .line 376
    :cond_20
    add-int/lit8 v13, v13, -0x70

    .line 377
    .line 378
    if-lt v13, v2, :cond_21

    .line 379
    .line 380
    move v0, v7

    .line 381
    move/from16 v7, v16

    .line 382
    .line 383
    goto :goto_16

    .line 384
    :cond_21
    if-gtz v13, :cond_24

    .line 385
    .line 386
    if-lt v13, v15, :cond_23

    .line 387
    .line 388
    or-int v0, v12, v14

    .line 389
    .line 390
    rsub-int/lit8 v2, v13, 0x1

    .line 391
    .line 392
    shr-int/2addr v0, v2

    .line 393
    and-int/lit16 v2, v0, 0x1000

    .line 394
    .line 395
    if-eqz v2, :cond_22

    .line 396
    .line 397
    add-int/lit16 v0, v0, 0x2000

    .line 398
    .line 399
    :cond_22
    shr-int/lit8 v0, v0, 0xd

    .line 400
    .line 401
    goto :goto_16

    .line 402
    :cond_23
    move v0, v7

    .line 403
    goto :goto_16

    .line 404
    :cond_24
    shr-int/lit8 v7, v12, 0xd

    .line 405
    .line 406
    and-int/lit16 v0, v0, 0x1000

    .line 407
    .line 408
    if-eqz v0, :cond_25

    .line 409
    .line 410
    shl-int/lit8 v0, v13, 0xa

    .line 411
    .line 412
    or-int/2addr v0, v7

    .line 413
    add-int/2addr v0, v3

    .line 414
    shl-int/lit8 v2, v10, 0xf

    .line 415
    .line 416
    or-int/2addr v0, v2

    .line 417
    :goto_15
    int-to-short v0, v0

    .line 418
    goto :goto_17

    .line 419
    :cond_25
    move v0, v7

    .line 420
    move v7, v13

    .line 421
    :goto_16
    shl-int/lit8 v2, v10, 0xf

    .line 422
    .line 423
    shl-int/lit8 v3, v7, 0xa

    .line 424
    .line 425
    or-int/2addr v2, v3

    .line 426
    or-int/2addr v0, v2

    .line 427
    goto :goto_15

    .line 428
    :goto_17
    cmpg-float v2, p3, v6

    .line 429
    .line 430
    if-gez v2, :cond_26

    .line 431
    .line 432
    goto :goto_18

    .line 433
    :cond_26
    move/from16 v6, p3

    .line 434
    .line 435
    :goto_18
    cmpl-float v2, v6, v5

    .line 436
    .line 437
    if-lez v2, :cond_27

    .line 438
    .line 439
    goto :goto_19

    .line 440
    :cond_27
    move v5, v6

    .line 441
    :goto_19
    const v2, 0x447fc000    # 1023.0f

    .line 442
    .line 443
    .line 444
    mul-float/2addr v5, v2

    .line 445
    add-float/2addr v5, v4

    .line 446
    float-to-int v2, v5

    .line 447
    int-to-long v3, v8

    .line 448
    const-wide/32 v5, 0xffff

    .line 449
    .line 450
    .line 451
    and-long/2addr v3, v5

    .line 452
    const/16 v7, 0x30

    .line 453
    .line 454
    shl-long/2addr v3, v7

    .line 455
    int-to-long v7, v9

    .line 456
    and-long/2addr v7, v5

    .line 457
    shl-long v7, v7, v19

    .line 458
    .line 459
    or-long/2addr v3, v7

    .line 460
    int-to-long v7, v0

    .line 461
    and-long/2addr v5, v7

    .line 462
    shl-long v5, v5, v18

    .line 463
    .line 464
    or-long/2addr v3, v5

    .line 465
    int-to-long v5, v2

    .line 466
    const-wide/16 v7, 0x3ff

    .line 467
    .line 468
    and-long/2addr v5, v7

    .line 469
    const/4 v0, 0x6

    .line 470
    shl-long/2addr v5, v0

    .line 471
    or-long v2, v3, v5

    .line 472
    .line 473
    int-to-long v0, v1

    .line 474
    const-wide/16 v4, 0x3f

    .line 475
    .line 476
    and-long/2addr v0, v4

    .line 477
    or-long/2addr v0, v2

    .line 478
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 479
    .line 480
    return-wide v0
.end method

.method public static final b(I)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    sget p0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 6
    .line 7
    return-wide v0
.end method

.method public static final c(J)J
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shl-long/2addr p0, v0

    .line 4
    sget v0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 5
    .line 6
    return-wide p0
.end method

.method public static final d(JJ)J
    .locals 19

    .line 1
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-wide/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/Color;->a(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 20
    .line 21
    sub-float v5, v4, v3

    .line 22
    .line 23
    mul-float v6, v2, v5

    .line 24
    .line 25
    add-float/2addr v6, v3

    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)F

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->h(J)F

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const/4 v9, 0x0

    .line 35
    cmpg-float v10, v6, v9

    .line 36
    .line 37
    if-nez v10, :cond_0

    .line 38
    .line 39
    move v8, v9

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    mul-float/2addr v7, v3

    .line 42
    mul-float/2addr v8, v2

    .line 43
    mul-float/2addr v8, v5

    .line 44
    add-float/2addr v8, v7

    .line 45
    div-float/2addr v8, v6

    .line 46
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->g(J)F

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->g(J)F

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-nez v10, :cond_1

    .line 55
    .line 56
    move v11, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    mul-float/2addr v7, v3

    .line 59
    mul-float/2addr v11, v2

    .line 60
    mul-float/2addr v11, v5

    .line 61
    add-float/2addr v11, v7

    .line 62
    div-float/2addr v11, v6

    .line 63
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->e(J)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->e(J)F

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v10, :cond_2

    .line 72
    .line 73
    move v1, v9

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    mul-float/2addr v0, v3

    .line 76
    mul-float/2addr v1, v2

    .line 77
    mul-float/2addr v1, v5

    .line 78
    add-float/2addr v1, v0

    .line 79
    div-float/2addr v1, v6

    .line 80
    :goto_2
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/16 v3, 0x20

    .line 89
    .line 90
    const/16 v5, 0x10

    .line 91
    .line 92
    const/high16 v7, 0x3f000000    # 0.5f

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    const/high16 v0, 0x437f0000    # 255.0f

    .line 97
    .line 98
    mul-float/2addr v6, v0

    .line 99
    add-float/2addr v6, v7

    .line 100
    float-to-int v2, v6

    .line 101
    shl-int/lit8 v2, v2, 0x18

    .line 102
    .line 103
    mul-float/2addr v8, v0

    .line 104
    add-float/2addr v8, v7

    .line 105
    float-to-int v4, v8

    .line 106
    shl-int/2addr v4, v5

    .line 107
    or-int/2addr v2, v4

    .line 108
    mul-float/2addr v11, v0

    .line 109
    add-float/2addr v11, v7

    .line 110
    float-to-int v4, v11

    .line 111
    shl-int/lit8 v4, v4, 0x8

    .line 112
    .line 113
    or-int/2addr v2, v4

    .line 114
    mul-float/2addr v1, v0

    .line 115
    add-float/2addr v1, v7

    .line 116
    float-to-int v0, v1

    .line 117
    or-int/2addr v0, v2

    .line 118
    int-to-long v0, v0

    .line 119
    shl-long/2addr v0, v3

    .line 120
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 121
    .line 122
    goto/16 :goto_f

    .line 123
    .line 124
    :cond_3
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    ushr-int/lit8 v8, v2, 0x1f

    .line 129
    .line 130
    ushr-int/lit8 v10, v2, 0x17

    .line 131
    .line 132
    const/16 v12, 0xff

    .line 133
    .line 134
    and-int/2addr v10, v12

    .line 135
    const v13, 0x7fffff

    .line 136
    .line 137
    .line 138
    and-int v14, v2, v13

    .line 139
    .line 140
    const/high16 v15, 0x800000

    .line 141
    .line 142
    move/from16 p0, v3

    .line 143
    .line 144
    const/16 v3, -0xa

    .line 145
    .line 146
    const/16 v16, 0x31

    .line 147
    .line 148
    const/16 v17, 0x200

    .line 149
    .line 150
    const/16 v18, 0x0

    .line 151
    .line 152
    move/from16 p1, v5

    .line 153
    .line 154
    const/16 v5, 0x1f

    .line 155
    .line 156
    if-ne v10, v12, :cond_5

    .line 157
    .line 158
    if-eqz v14, :cond_4

    .line 159
    .line 160
    move/from16 v2, v17

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move/from16 v2, v18

    .line 164
    .line 165
    :goto_3
    move v10, v5

    .line 166
    goto :goto_5

    .line 167
    :cond_5
    add-int/lit8 v10, v10, -0x70

    .line 168
    .line 169
    if-lt v10, v5, :cond_6

    .line 170
    .line 171
    move/from16 v10, v16

    .line 172
    .line 173
    move/from16 v2, v18

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_6
    if-gtz v10, :cond_9

    .line 177
    .line 178
    if-lt v10, v3, :cond_8

    .line 179
    .line 180
    or-int v2, v14, v15

    .line 181
    .line 182
    rsub-int/lit8 v10, v10, 0x1

    .line 183
    .line 184
    shr-int/2addr v2, v10

    .line 185
    and-int/lit16 v10, v2, 0x1000

    .line 186
    .line 187
    if-eqz v10, :cond_7

    .line 188
    .line 189
    add-int/lit16 v2, v2, 0x2000

    .line 190
    .line 191
    :cond_7
    shr-int/lit8 v2, v2, 0xd

    .line 192
    .line 193
    move/from16 v10, v18

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    move/from16 v2, v18

    .line 197
    .line 198
    move v10, v2

    .line 199
    goto :goto_5

    .line 200
    :cond_9
    shr-int/lit8 v14, v14, 0xd

    .line 201
    .line 202
    and-int/lit16 v2, v2, 0x1000

    .line 203
    .line 204
    if-eqz v2, :cond_a

    .line 205
    .line 206
    shl-int/lit8 v2, v10, 0xa

    .line 207
    .line 208
    or-int/2addr v2, v14

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    shl-int/lit8 v8, v8, 0xf

    .line 212
    .line 213
    or-int/2addr v2, v8

    .line 214
    :goto_4
    int-to-short v2, v2

    .line 215
    goto :goto_6

    .line 216
    :cond_a
    move v2, v14

    .line 217
    :goto_5
    shl-int/lit8 v8, v8, 0xf

    .line 218
    .line 219
    shl-int/lit8 v10, v10, 0xa

    .line 220
    .line 221
    or-int/2addr v8, v10

    .line 222
    or-int/2addr v2, v8

    .line 223
    goto :goto_4

    .line 224
    :goto_6
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    ushr-int/lit8 v10, v8, 0x1f

    .line 229
    .line 230
    ushr-int/lit8 v11, v8, 0x17

    .line 231
    .line 232
    and-int/2addr v11, v12

    .line 233
    and-int v14, v8, v13

    .line 234
    .line 235
    if-ne v11, v12, :cond_c

    .line 236
    .line 237
    if-eqz v14, :cond_b

    .line 238
    .line 239
    move/from16 v8, v17

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_b
    move/from16 v8, v18

    .line 243
    .line 244
    :goto_7
    move v11, v5

    .line 245
    goto :goto_9

    .line 246
    :cond_c
    add-int/lit8 v11, v11, -0x70

    .line 247
    .line 248
    if-lt v11, v5, :cond_d

    .line 249
    .line 250
    move/from16 v11, v16

    .line 251
    .line 252
    move/from16 v8, v18

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_d
    if-gtz v11, :cond_10

    .line 256
    .line 257
    if-lt v11, v3, :cond_f

    .line 258
    .line 259
    or-int v8, v14, v15

    .line 260
    .line 261
    rsub-int/lit8 v11, v11, 0x1

    .line 262
    .line 263
    shr-int/2addr v8, v11

    .line 264
    and-int/lit16 v11, v8, 0x1000

    .line 265
    .line 266
    if-eqz v11, :cond_e

    .line 267
    .line 268
    add-int/lit16 v8, v8, 0x2000

    .line 269
    .line 270
    :cond_e
    shr-int/lit8 v8, v8, 0xd

    .line 271
    .line 272
    move/from16 v11, v18

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_f
    move/from16 v8, v18

    .line 276
    .line 277
    move v11, v8

    .line 278
    goto :goto_9

    .line 279
    :cond_10
    shr-int/lit8 v14, v14, 0xd

    .line 280
    .line 281
    and-int/lit16 v8, v8, 0x1000

    .line 282
    .line 283
    if-eqz v8, :cond_11

    .line 284
    .line 285
    shl-int/lit8 v8, v11, 0xa

    .line 286
    .line 287
    or-int/2addr v8, v14

    .line 288
    add-int/lit8 v8, v8, 0x1

    .line 289
    .line 290
    shl-int/lit8 v10, v10, 0xf

    .line 291
    .line 292
    or-int/2addr v8, v10

    .line 293
    :goto_8
    int-to-short v8, v8

    .line 294
    goto :goto_a

    .line 295
    :cond_11
    move v8, v14

    .line 296
    :goto_9
    shl-int/lit8 v10, v10, 0xf

    .line 297
    .line 298
    shl-int/lit8 v11, v11, 0xa

    .line 299
    .line 300
    or-int/2addr v10, v11

    .line 301
    or-int/2addr v8, v10

    .line 302
    goto :goto_8

    .line 303
    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    ushr-int/lit8 v10, v1, 0x1f

    .line 308
    .line 309
    ushr-int/lit8 v11, v1, 0x17

    .line 310
    .line 311
    and-int/2addr v11, v12

    .line 312
    and-int/2addr v13, v1

    .line 313
    if-ne v11, v12, :cond_13

    .line 314
    .line 315
    if-eqz v13, :cond_12

    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_12
    move/from16 v17, v18

    .line 319
    .line 320
    :goto_b
    move/from16 v16, v5

    .line 321
    .line 322
    move/from16 v18, v17

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_13
    add-int/lit8 v11, v11, -0x70

    .line 326
    .line 327
    if-lt v11, v5, :cond_14

    .line 328
    .line 329
    goto :goto_d

    .line 330
    :cond_14
    if-gtz v11, :cond_17

    .line 331
    .line 332
    if-lt v11, v3, :cond_16

    .line 333
    .line 334
    or-int v1, v13, v15

    .line 335
    .line 336
    rsub-int/lit8 v3, v11, 0x1

    .line 337
    .line 338
    shr-int/2addr v1, v3

    .line 339
    and-int/lit16 v3, v1, 0x1000

    .line 340
    .line 341
    if-eqz v3, :cond_15

    .line 342
    .line 343
    add-int/lit16 v1, v1, 0x2000

    .line 344
    .line 345
    :cond_15
    shr-int/lit8 v1, v1, 0xd

    .line 346
    .line 347
    move/from16 v16, v18

    .line 348
    .line 349
    move/from16 v18, v1

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :cond_16
    move/from16 v16, v18

    .line 353
    .line 354
    goto :goto_d

    .line 355
    :cond_17
    shr-int/lit8 v18, v13, 0xd

    .line 356
    .line 357
    and-int/lit16 v1, v1, 0x1000

    .line 358
    .line 359
    if-eqz v1, :cond_18

    .line 360
    .line 361
    shl-int/lit8 v1, v11, 0xa

    .line 362
    .line 363
    or-int v1, v1, v18

    .line 364
    .line 365
    add-int/lit8 v1, v1, 0x1

    .line 366
    .line 367
    shl-int/lit8 v3, v10, 0xf

    .line 368
    .line 369
    or-int/2addr v1, v3

    .line 370
    :goto_c
    int-to-short v1, v1

    .line 371
    goto :goto_e

    .line 372
    :cond_18
    move/from16 v16, v11

    .line 373
    .line 374
    :goto_d
    shl-int/lit8 v1, v10, 0xf

    .line 375
    .line 376
    shl-int/lit8 v3, v16, 0xa

    .line 377
    .line 378
    or-int/2addr v1, v3

    .line 379
    or-int v1, v1, v18

    .line 380
    .line 381
    goto :goto_c

    .line 382
    :goto_e
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    const v4, 0x447fc000    # 1023.0f

    .line 391
    .line 392
    .line 393
    mul-float/2addr v3, v4

    .line 394
    add-float/2addr v3, v7

    .line 395
    float-to-int v3, v3

    .line 396
    iget v0, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c:I

    .line 397
    .line 398
    int-to-long v4, v2

    .line 399
    const-wide/32 v6, 0xffff

    .line 400
    .line 401
    .line 402
    and-long/2addr v4, v6

    .line 403
    const/16 v2, 0x30

    .line 404
    .line 405
    shl-long/2addr v4, v2

    .line 406
    int-to-long v8, v8

    .line 407
    and-long/2addr v8, v6

    .line 408
    shl-long v8, v8, p0

    .line 409
    .line 410
    or-long/2addr v4, v8

    .line 411
    int-to-long v1, v1

    .line 412
    and-long/2addr v1, v6

    .line 413
    shl-long v1, v1, p1

    .line 414
    .line 415
    or-long/2addr v1, v4

    .line 416
    int-to-long v3, v3

    .line 417
    const-wide/16 v5, 0x3ff

    .line 418
    .line 419
    and-long/2addr v3, v5

    .line 420
    const/4 v5, 0x6

    .line 421
    shl-long/2addr v3, v5

    .line 422
    or-long/2addr v1, v3

    .line 423
    int-to-long v3, v0

    .line 424
    const-wide/16 v5, 0x3f

    .line 425
    .line 426
    and-long/2addr v3, v5

    .line 427
    or-long v0, v1, v3

    .line 428
    .line 429
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 430
    .line 431
    :goto_f
    return-wide v0
.end method

.method public static final e(J)F
    .locals 7

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b:J

    .line 6
    .line 7
    const-wide v3, 0x300000000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->a(JJ)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->b(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->p:Lge;

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->h(J)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    float-to-double v1, v1

    .line 42
    invoke-virtual {v0, v1, v2}, Lge;->e(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->g(J)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    float-to-double v3, v3

    .line 51
    invoke-virtual {v0, v3, v4}, Lge;->e(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->e(J)F

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    float-to-double p0, p0

    .line 60
    invoke-virtual {v0, p0, p1}, Lge;->e(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    mul-double/2addr v1, v5

    .line 70
    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    mul-double/2addr v3, v5

    .line 76
    add-double/2addr v3, v1

    .line 77
    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    mul-double/2addr p0, v0

    .line 83
    add-double/2addr p0, v3

    .line 84
    double-to-float p0, p0

    .line 85
    const/4 p1, 0x0

    .line 86
    cmpg-float v0, p0, p1

    .line 87
    .line 88
    if-gez v0, :cond_1

    .line 89
    .line 90
    move p0, p1

    .line 91
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    cmpl-float v0, p0, p1

    .line 94
    .line 95
    if-lez v0, :cond_2

    .line 96
    .line 97
    return p1

    .line 98
    :cond_2
    return p0
.end method

.method public static final f(J)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->a:[F

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->a(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    ushr-long/2addr p0, v0

    .line 12
    long-to-int p0, p0

    .line 13
    return p0
.end method
