.class public abstract Landroidx/compose/ui/graphics/vector/PathParserKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 50

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v5, p5

    .line 4
    .line 5
    move-wide/from16 v3, p9

    .line 6
    .line 7
    const-wide v7, 0x4066800000000000L    # 180.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    div-double v7, p13, v7

    .line 13
    .line 14
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-double/2addr v7, v9

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v11

    .line 24
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v13

    .line 28
    mul-double v15, v1, v11

    .line 29
    .line 30
    mul-double v17, p3, v13

    .line 31
    .line 32
    add-double v17, v17, v15

    .line 33
    .line 34
    div-double v17, v17, v3

    .line 35
    .line 36
    move-wide v15, v9

    .line 37
    neg-double v9, v1

    .line 38
    mul-double/2addr v9, v13

    .line 39
    mul-double v19, p3, v11

    .line 40
    .line 41
    add-double v19, v19, v9

    .line 42
    .line 43
    div-double v19, v19, p11

    .line 44
    .line 45
    mul-double v9, v5, v11

    .line 46
    .line 47
    mul-double v21, p7, v13

    .line 48
    .line 49
    add-double v21, v21, v9

    .line 50
    .line 51
    div-double v21, v21, v3

    .line 52
    .line 53
    neg-double v9, v5

    .line 54
    mul-double/2addr v9, v13

    .line 55
    mul-double v23, p7, v11

    .line 56
    .line 57
    add-double v23, v23, v9

    .line 58
    .line 59
    div-double v23, v23, p11

    .line 60
    .line 61
    sub-double v9, v17, v21

    .line 62
    .line 63
    sub-double v25, v19, v23

    .line 64
    .line 65
    add-double v27, v17, v21

    .line 66
    .line 67
    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    .line 68
    .line 69
    div-double v27, v27, v29

    .line 70
    .line 71
    add-double v31, v19, v23

    .line 72
    .line 73
    div-double v31, v31, v29

    .line 74
    .line 75
    mul-double v33, v9, v9

    .line 76
    .line 77
    mul-double v35, v25, v25

    .line 78
    .line 79
    add-double v35, v35, v33

    .line 80
    .line 81
    const-wide/16 v33, 0x0

    .line 82
    .line 83
    cmpg-double v0, v35, v33

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_0
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    .line 90
    .line 91
    div-double v39, v37, v35

    .line 92
    .line 93
    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    .line 94
    .line 95
    sub-double v39, v39, v41

    .line 96
    .line 97
    cmpg-double v0, v39, v33

    .line 98
    .line 99
    if-gez v0, :cond_1

    .line 100
    .line 101
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    const-wide v9, 0x3ffffff583a53b8eL    # 1.99999

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    div-double/2addr v7, v9

    .line 111
    double-to-float v0, v7

    .line 112
    float-to-double v7, v0

    .line 113
    mul-double v9, v3, v7

    .line 114
    .line 115
    mul-double v11, p11, v7

    .line 116
    .line 117
    move-object/from16 v0, p0

    .line 118
    .line 119
    move-wide/from16 v3, p3

    .line 120
    .line 121
    move-wide/from16 v7, p7

    .line 122
    .line 123
    move-wide/from16 v13, p13

    .line 124
    .line 125
    move/from16 v15, p15

    .line 126
    .line 127
    move/from16 v16, p16

    .line 128
    .line 129
    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/vector/PathParserKt;->a(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_1
    move/from16 v0, p16

    .line 134
    .line 135
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    mul-double/2addr v9, v1

    .line 140
    mul-double v1, v1, v25

    .line 141
    .line 142
    move/from16 v5, p15

    .line 143
    .line 144
    if-ne v5, v0, :cond_2

    .line 145
    .line 146
    sub-double v27, v27, v1

    .line 147
    .line 148
    add-double v31, v31, v9

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    add-double v27, v27, v1

    .line 152
    .line 153
    sub-double v31, v31, v9

    .line 154
    .line 155
    :goto_0
    sub-double v1, v19, v31

    .line 156
    .line 157
    sub-double v5, v17, v27

    .line 158
    .line 159
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    sub-double v5, v23, v31

    .line 164
    .line 165
    sub-double v9, v21, v27

    .line 166
    .line 167
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    sub-double/2addr v5, v1

    .line 172
    cmpl-double v9, v5, v33

    .line 173
    .line 174
    if-ltz v9, :cond_3

    .line 175
    .line 176
    const/16 v17, 0x1

    .line 177
    .line 178
    move/from16 v10, v17

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    const/4 v10, 0x0

    .line 182
    :goto_1
    if-eq v0, v10, :cond_5

    .line 183
    .line 184
    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    if-lez v9, :cond_4

    .line 190
    .line 191
    sub-double v5, v5, v17

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    add-double v5, v5, v17

    .line 195
    .line 196
    :cond_5
    :goto_2
    mul-double v27, v27, v3

    .line 197
    .line 198
    mul-double v31, v31, p11

    .line 199
    .line 200
    mul-double v9, v27, v11

    .line 201
    .line 202
    mul-double v17, v31, v13

    .line 203
    .line 204
    sub-double v9, v9, v17

    .line 205
    .line 206
    mul-double v27, v27, v13

    .line 207
    .line 208
    mul-double v31, v31, v11

    .line 209
    .line 210
    add-double v31, v31, v27

    .line 211
    .line 212
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    .line 213
    .line 214
    mul-double v13, v5, v11

    .line 215
    .line 216
    div-double/2addr v13, v15

    .line 217
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 218
    .line 219
    .line 220
    move-result-wide v13

    .line 221
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 222
    .line 223
    .line 224
    move-result-wide v13

    .line 225
    double-to-int v0, v13

    .line 226
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v7

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 235
    .line 236
    .line 237
    move-result-wide v15

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v17

    .line 242
    move-wide/from16 p6, v11

    .line 243
    .line 244
    neg-double v11, v3

    .line 245
    mul-double v19, v11, v13

    .line 246
    .line 247
    mul-double v21, v19, v17

    .line 248
    .line 249
    mul-double v23, p11, v7

    .line 250
    .line 251
    mul-double v25, v23, v15

    .line 252
    .line 253
    sub-double v21, v21, v25

    .line 254
    .line 255
    mul-double/2addr v11, v7

    .line 256
    mul-double v17, v17, v11

    .line 257
    .line 258
    mul-double v25, p11, v13

    .line 259
    .line 260
    mul-double v15, v15, v25

    .line 261
    .line 262
    add-double v15, v15, v17

    .line 263
    .line 264
    move-wide/from16 p13, v1

    .line 265
    .line 266
    int-to-double v1, v0

    .line 267
    div-double/2addr v5, v1

    .line 268
    move-wide/from16 v17, p13

    .line 269
    .line 270
    move-wide/from16 v27, v21

    .line 271
    .line 272
    const/4 v1, 0x0

    .line 273
    move-wide/from16 v21, v15

    .line 274
    .line 275
    move-wide/from16 v15, p3

    .line 276
    .line 277
    :goto_3
    if-ge v1, v0, :cond_6

    .line 278
    .line 279
    add-double v33, v17, v5

    .line 280
    .line 281
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    .line 282
    .line 283
    .line 284
    move-result-wide v35

    .line 285
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    .line 286
    .line 287
    .line 288
    move-result-wide v39

    .line 289
    mul-double v41, v3, v13

    .line 290
    .line 291
    mul-double v41, v41, v39

    .line 292
    .line 293
    add-double v41, v41, v9

    .line 294
    .line 295
    mul-double v43, v23, v35

    .line 296
    .line 297
    move v2, v0

    .line 298
    move/from16 p3, v1

    .line 299
    .line 300
    sub-double v0, v41, v43

    .line 301
    .line 302
    mul-double v41, v3, v7

    .line 303
    .line 304
    mul-double v41, v41, v39

    .line 305
    .line 306
    add-double v41, v41, v31

    .line 307
    .line 308
    mul-double v43, v25, v35

    .line 309
    .line 310
    move/from16 p4, v2

    .line 311
    .line 312
    add-double v2, v43, v41

    .line 313
    .line 314
    mul-double v41, v19, v35

    .line 315
    .line 316
    mul-double v43, v23, v39

    .line 317
    .line 318
    sub-double v41, v41, v43

    .line 319
    .line 320
    mul-double v35, v35, v11

    .line 321
    .line 322
    mul-double v39, v39, v25

    .line 323
    .line 324
    add-double v35, v39, v35

    .line 325
    .line 326
    sub-double v17, v33, v17

    .line 327
    .line 328
    div-double v39, v17, v29

    .line 329
    .line 330
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->tan(D)D

    .line 331
    .line 332
    .line 333
    move-result-wide v39

    .line 334
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v17

    .line 338
    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    .line 339
    .line 340
    mul-double v45, v39, v43

    .line 341
    .line 342
    mul-double v45, v45, v39

    .line 343
    .line 344
    add-double v45, v45, p6

    .line 345
    .line 346
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v39

    .line 350
    sub-double v39, v39, v37

    .line 351
    .line 352
    mul-double v39, v39, v17

    .line 353
    .line 354
    div-double v39, v39, v43

    .line 355
    .line 356
    mul-double v27, v27, v39

    .line 357
    .line 358
    move-wide/from16 p11, v5

    .line 359
    .line 360
    add-double v4, v27, p1

    .line 361
    .line 362
    mul-double v21, v21, v39

    .line 363
    .line 364
    move-wide/from16 p13, v7

    .line 365
    .line 366
    add-double v6, v21, v15

    .line 367
    .line 368
    mul-double v15, v39, v41

    .line 369
    .line 370
    move-wide/from16 p15, v9

    .line 371
    .line 372
    sub-double v8, v0, v15

    .line 373
    .line 374
    mul-double v39, v39, v35

    .line 375
    .line 376
    move-wide v15, v11

    .line 377
    sub-double v10, v2, v39

    .line 378
    .line 379
    double-to-float v4, v4

    .line 380
    double-to-float v5, v6

    .line 381
    double-to-float v6, v8

    .line 382
    double-to-float v7, v10

    .line 383
    double-to-float v8, v0

    .line 384
    double-to-float v9, v2

    .line 385
    move-object/from16 v43, p0

    .line 386
    .line 387
    check-cast v43, Landroidx/compose/ui/graphics/AndroidPath;

    .line 388
    .line 389
    move/from16 v44, v4

    .line 390
    .line 391
    move/from16 v45, v5

    .line 392
    .line 393
    move/from16 v46, v6

    .line 394
    .line 395
    move/from16 v47, v7

    .line 396
    .line 397
    move/from16 v48, v8

    .line 398
    .line 399
    move/from16 v49, v9

    .line 400
    .line 401
    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v4, p3, 0x1

    .line 405
    .line 406
    move-wide/from16 v5, p11

    .line 407
    .line 408
    move-wide/from16 v7, p13

    .line 409
    .line 410
    move-wide/from16 v9, p15

    .line 411
    .line 412
    move-wide/from16 p1, v0

    .line 413
    .line 414
    move v1, v4

    .line 415
    move-wide v11, v15

    .line 416
    move-wide/from16 v17, v33

    .line 417
    .line 418
    move-wide/from16 v21, v35

    .line 419
    .line 420
    move-wide/from16 v27, v41

    .line 421
    .line 422
    move/from16 v0, p4

    .line 423
    .line 424
    move-wide v15, v2

    .line 425
    move-wide/from16 v3, p9

    .line 426
    .line 427
    goto/16 :goto_3

    .line 428
    .line 429
    :cond_6
    :goto_4
    return-void
.end method

.method public static final b(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 8
    .line 9
    iget-object v3, v1, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    move v2, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v6

    .line 24
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 25
    .line 26
    .line 27
    if-ne v2, v5, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 31
    .line 32
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/graphics/vector/PathNode$Close;->c:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 49
    .line 50
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    const/4 v11, 0x0

    .line 55
    move v12, v6

    .line 56
    move v4, v11

    .line 57
    move v5, v4

    .line 58
    move v13, v5

    .line 59
    move v14, v13

    .line 60
    move/from16 v18, v14

    .line 61
    .line 62
    move/from16 v19, v18

    .line 63
    .line 64
    :goto_3
    if-ge v12, v10, :cond_1a

    .line 65
    .line 66
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    move-object v15, v6

    .line 71
    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 72
    .line 73
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 78
    .line 79
    .line 80
    move-object/from16 p1, v3

    .line 81
    .line 82
    move/from16 v20, v10

    .line 83
    .line 84
    move/from16 v24, v11

    .line 85
    .line 86
    move/from16 v21, v12

    .line 87
    .line 88
    move-object/from16 v22, v15

    .line 89
    .line 90
    move/from16 v4, v18

    .line 91
    .line 92
    move v13, v4

    .line 93
    move/from16 v5, v19

    .line 94
    .line 95
    move v14, v5

    .line 96
    goto/16 :goto_c

    .line 97
    .line 98
    :cond_3
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 99
    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    move-object v2, v15

    .line 103
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 104
    .line 105
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->c:F

    .line 106
    .line 107
    add-float/2addr v13, v6

    .line 108
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->d:F

    .line 109
    .line 110
    add-float/2addr v14, v2

    .line 111
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 112
    .line 113
    .line 114
    move-object/from16 p1, v3

    .line 115
    .line 116
    move/from16 v20, v10

    .line 117
    .line 118
    move/from16 v24, v11

    .line 119
    .line 120
    move/from16 v21, v12

    .line 121
    .line 122
    move/from16 v18, v13

    .line 123
    .line 124
    move/from16 v19, v14

    .line 125
    .line 126
    :goto_4
    move-object/from16 v22, v15

    .line 127
    .line 128
    goto/16 :goto_c

    .line 129
    .line 130
    :cond_4
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    move-object v2, v15

    .line 135
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 136
    .line 137
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->c:F

    .line 138
    .line 139
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->d:F

    .line 140
    .line 141
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    .line 143
    .line 144
    move v14, v2

    .line 145
    move/from16 v19, v14

    .line 146
    .line 147
    move-object/from16 p1, v3

    .line 148
    .line 149
    move v13, v6

    .line 150
    move/from16 v18, v13

    .line 151
    .line 152
    :goto_5
    move/from16 v20, v10

    .line 153
    .line 154
    move/from16 v24, v11

    .line 155
    .line 156
    move/from16 v21, v12

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 160
    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    move-object v2, v15

    .line 164
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 165
    .line 166
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->d:F

    .line 167
    .line 168
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->c:F

    .line 169
    .line 170
    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 171
    .line 172
    .line 173
    add-float/2addr v13, v2

    .line 174
    add-float/2addr v14, v6

    .line 175
    :goto_6
    move-object/from16 p1, v3

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_6
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 179
    .line 180
    if-eqz v6, :cond_7

    .line 181
    .line 182
    move-object v2, v15

    .line 183
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 184
    .line 185
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->d:F

    .line 186
    .line 187
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->c:F

    .line 188
    .line 189
    invoke-virtual {v1, v2, v6}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 190
    .line 191
    .line 192
    move v13, v2

    .line 193
    move-object/from16 p1, v3

    .line 194
    .line 195
    move v14, v6

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 198
    .line 199
    if-eqz v6, :cond_8

    .line 200
    .line 201
    move-object v2, v15

    .line 202
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 203
    .line 204
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->c:F

    .line 205
    .line 206
    invoke-virtual {v3, v2, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 207
    .line 208
    .line 209
    add-float/2addr v13, v2

    .line 210
    goto :goto_6

    .line 211
    :cond_8
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 212
    .line 213
    if-eqz v6, :cond_9

    .line 214
    .line 215
    move-object v2, v15

    .line 216
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 217
    .line 218
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->c:F

    .line 219
    .line 220
    invoke-virtual {v1, v2, v14}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 221
    .line 222
    .line 223
    move v13, v2

    .line 224
    goto :goto_6

    .line 225
    :cond_9
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 226
    .line 227
    if-eqz v6, :cond_a

    .line 228
    .line 229
    move-object v2, v15

    .line 230
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 231
    .line 232
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->c:F

    .line 233
    .line 234
    invoke-virtual {v3, v11, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 235
    .line 236
    .line 237
    add-float/2addr v14, v2

    .line 238
    goto :goto_6

    .line 239
    :cond_a
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 240
    .line 241
    if-eqz v6, :cond_b

    .line 242
    .line 243
    move-object v2, v15

    .line 244
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 245
    .line 246
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->c:F

    .line 247
    .line 248
    invoke-virtual {v1, v13, v2}, Landroidx/compose/ui/graphics/AndroidPath;->g(FF)V

    .line 249
    .line 250
    .line 251
    move v14, v2

    .line 252
    goto :goto_6

    .line 253
    :cond_b
    instance-of v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 254
    .line 255
    if-eqz v6, :cond_c

    .line 256
    .line 257
    move-object v2, v15

    .line 258
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 259
    .line 260
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->c:F

    .line 261
    .line 262
    iget v5, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->d:F

    .line 263
    .line 264
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->e:F

    .line 265
    .line 266
    iget v7, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->f:F

    .line 267
    .line 268
    iget v8, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->g:F

    .line 269
    .line 270
    iget v9, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->h:F

    .line 271
    .line 272
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 273
    .line 274
    .line 275
    move-object v8, v3

    .line 276
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->e:F

    .line 277
    .line 278
    add-float/2addr v3, v13

    .line 279
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->f:F

    .line 280
    .line 281
    add-float/2addr v4, v14

    .line 282
    iget v5, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->g:F

    .line 283
    .line 284
    add-float/2addr v13, v5

    .line 285
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->h:F

    .line 286
    .line 287
    :goto_7
    add-float/2addr v14, v2

    .line 288
    move v5, v4

    .line 289
    move-object/from16 p1, v8

    .line 290
    .line 291
    move/from16 v20, v10

    .line 292
    .line 293
    move/from16 v24, v11

    .line 294
    .line 295
    move/from16 v21, v12

    .line 296
    .line 297
    move-object/from16 v22, v15

    .line 298
    .line 299
    move v4, v3

    .line 300
    goto/16 :goto_c

    .line 301
    .line 302
    :cond_c
    move-object v8, v3

    .line 303
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 304
    .line 305
    if-eqz v3, :cond_d

    .line 306
    .line 307
    move-object v9, v15

    .line 308
    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 309
    .line 310
    iget v2, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->c:F

    .line 311
    .line 312
    iget v3, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->d:F

    .line 313
    .line 314
    iget v4, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->e:F

    .line 315
    .line 316
    iget v5, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->f:F

    .line 317
    .line 318
    iget v6, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->g:F

    .line 319
    .line 320
    iget v7, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->h:F

    .line 321
    .line 322
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 323
    .line 324
    .line 325
    iget v2, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->e:F

    .line 326
    .line 327
    iget v3, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->f:F

    .line 328
    .line 329
    iget v4, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->g:F

    .line 330
    .line 331
    iget v5, v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->h:F

    .line 332
    .line 333
    :goto_8
    move v13, v4

    .line 334
    move v14, v5

    .line 335
    move-object/from16 p1, v8

    .line 336
    .line 337
    move/from16 v20, v10

    .line 338
    .line 339
    move/from16 v24, v11

    .line 340
    .line 341
    move/from16 v21, v12

    .line 342
    .line 343
    move-object/from16 v22, v15

    .line 344
    .line 345
    move v4, v2

    .line 346
    move v5, v3

    .line 347
    goto/16 :goto_c

    .line 348
    .line 349
    :cond_d
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 350
    .line 351
    if-eqz v3, :cond_f

    .line 352
    .line 353
    iget-boolean v2, v2, Landroidx/compose/ui/graphics/vector/PathNode;->a:Z

    .line 354
    .line 355
    if-eqz v2, :cond_e

    .line 356
    .line 357
    sub-float v2, v13, v4

    .line 358
    .line 359
    sub-float v3, v14, v5

    .line 360
    .line 361
    move v4, v2

    .line 362
    move v5, v3

    .line 363
    goto :goto_9

    .line 364
    :cond_e
    move v4, v11

    .line 365
    move v5, v4

    .line 366
    :goto_9
    move-object v2, v15

    .line 367
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 368
    .line 369
    iget v6, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->c:F

    .line 370
    .line 371
    iget v7, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->d:F

    .line 372
    .line 373
    move-object v3, v8

    .line 374
    iget v8, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->e:F

    .line 375
    .line 376
    iget v9, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->f:F

    .line 377
    .line 378
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 379
    .line 380
    .line 381
    move-object v8, v3

    .line 382
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->c:F

    .line 383
    .line 384
    add-float/2addr v3, v13

    .line 385
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->d:F

    .line 386
    .line 387
    add-float/2addr v4, v14

    .line 388
    iget v5, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->e:F

    .line 389
    .line 390
    add-float/2addr v13, v5

    .line 391
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->f:F

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_f
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 395
    .line 396
    const/high16 v6, 0x40000000    # 2.0f

    .line 397
    .line 398
    if-eqz v3, :cond_11

    .line 399
    .line 400
    iget-boolean v2, v2, Landroidx/compose/ui/graphics/vector/PathNode;->a:Z

    .line 401
    .line 402
    if-eqz v2, :cond_10

    .line 403
    .line 404
    mul-float/2addr v13, v6

    .line 405
    sub-float/2addr v13, v4

    .line 406
    mul-float/2addr v6, v14

    .line 407
    sub-float v14, v6, v5

    .line 408
    .line 409
    :cond_10
    move v2, v13

    .line 410
    move v3, v14

    .line 411
    move-object v9, v15

    .line 412
    check-cast v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 413
    .line 414
    iget v4, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->c:F

    .line 415
    .line 416
    iget v5, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->d:F

    .line 417
    .line 418
    iget v6, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->e:F

    .line 419
    .line 420
    iget v7, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->f:F

    .line 421
    .line 422
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/AndroidPath;->e(FFFFFF)V

    .line 423
    .line 424
    .line 425
    iget v2, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->c:F

    .line 426
    .line 427
    iget v3, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->d:F

    .line 428
    .line 429
    iget v4, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->e:F

    .line 430
    .line 431
    iget v5, v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->f:F

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_11
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 435
    .line 436
    if-eqz v3, :cond_12

    .line 437
    .line 438
    move-object v2, v15

    .line 439
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 440
    .line 441
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->f:F

    .line 442
    .line 443
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->e:F

    .line 444
    .line 445
    iget v5, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->d:F

    .line 446
    .line 447
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->c:F

    .line 448
    .line 449
    invoke-virtual {v8, v2, v5, v4, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 450
    .line 451
    .line 452
    add-float/2addr v2, v13

    .line 453
    add-float/2addr v5, v14

    .line 454
    add-float/2addr v13, v4

    .line 455
    add-float/2addr v14, v3

    .line 456
    move v4, v2

    .line 457
    :goto_a
    move-object/from16 p1, v8

    .line 458
    .line 459
    goto/16 :goto_5

    .line 460
    .line 461
    :cond_12
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 462
    .line 463
    if-eqz v3, :cond_13

    .line 464
    .line 465
    move-object v2, v15

    .line 466
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 467
    .line 468
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->f:F

    .line 469
    .line 470
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->e:F

    .line 471
    .line 472
    iget v5, v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->d:F

    .line 473
    .line 474
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->c:F

    .line 475
    .line 476
    invoke-virtual {v8, v2, v5, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 477
    .line 478
    .line 479
    move v14, v3

    .line 480
    move v13, v4

    .line 481
    move-object/from16 p1, v8

    .line 482
    .line 483
    move/from16 v20, v10

    .line 484
    .line 485
    move/from16 v24, v11

    .line 486
    .line 487
    move/from16 v21, v12

    .line 488
    .line 489
    move-object/from16 v22, v15

    .line 490
    .line 491
    move v4, v2

    .line 492
    goto/16 :goto_c

    .line 493
    .line 494
    :cond_13
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 495
    .line 496
    if-eqz v3, :cond_15

    .line 497
    .line 498
    iget-boolean v2, v2, Landroidx/compose/ui/graphics/vector/PathNode;->b:Z

    .line 499
    .line 500
    if-eqz v2, :cond_14

    .line 501
    .line 502
    sub-float v2, v13, v4

    .line 503
    .line 504
    sub-float v3, v14, v5

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_14
    move v2, v11

    .line 508
    move v3, v2

    .line 509
    :goto_b
    move-object v4, v15

    .line 510
    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 511
    .line 512
    iget v5, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->d:F

    .line 513
    .line 514
    iget v4, v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->c:F

    .line 515
    .line 516
    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 517
    .line 518
    .line 519
    add-float/2addr v2, v13

    .line 520
    add-float/2addr v3, v14

    .line 521
    add-float/2addr v13, v4

    .line 522
    add-float/2addr v14, v5

    .line 523
    move v4, v2

    .line 524
    move v5, v3

    .line 525
    goto :goto_a

    .line 526
    :cond_15
    instance-of v3, v15, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 527
    .line 528
    if-eqz v3, :cond_17

    .line 529
    .line 530
    iget-boolean v2, v2, Landroidx/compose/ui/graphics/vector/PathNode;->b:Z

    .line 531
    .line 532
    if-eqz v2, :cond_16

    .line 533
    .line 534
    mul-float/2addr v13, v6

    .line 535
    sub-float/2addr v13, v4

    .line 536
    mul-float/2addr v6, v14

    .line 537
    sub-float v14, v6, v5

    .line 538
    .line 539
    :cond_16
    move-object v2, v15

    .line 540
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 541
    .line 542
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->d:F

    .line 543
    .line 544
    iget v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->c:F

    .line 545
    .line 546
    invoke-virtual {v8, v13, v14, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 547
    .line 548
    .line 549
    move-object/from16 p1, v8

    .line 550
    .line 551
    move/from16 v20, v10

    .line 552
    .line 553
    move/from16 v24, v11

    .line 554
    .line 555
    move/from16 v21, v12

    .line 556
    .line 557
    move v4, v13

    .line 558
    move v5, v14

    .line 559
    move-object/from16 v22, v15

    .line 560
    .line 561
    move v13, v2

    .line 562
    move v14, v3

    .line 563
    goto/16 :goto_c

    .line 564
    .line 565
    :cond_17
    instance-of v2, v15, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 566
    .line 567
    if-eqz v2, :cond_18

    .line 568
    .line 569
    move-object v2, v15

    .line 570
    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 571
    .line 572
    iget v3, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->h:F

    .line 573
    .line 574
    add-float/2addr v3, v13

    .line 575
    iget v4, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->i:F

    .line 576
    .line 577
    add-float/2addr v4, v14

    .line 578
    float-to-double v5, v13

    .line 579
    float-to-double v13, v14

    .line 580
    move-wide/from16 v16, v5

    .line 581
    .line 582
    float-to-double v6, v3

    .line 583
    move-object v5, v8

    .line 584
    float-to-double v8, v4

    .line 585
    iget v11, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->c:F

    .line 586
    .line 587
    move-object/from16 v20, v1

    .line 588
    .line 589
    float-to-double v0, v11

    .line 590
    iget v11, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->d:F

    .line 591
    .line 592
    move-wide/from16 v21, v0

    .line 593
    .line 594
    float-to-double v0, v11

    .line 595
    iget v11, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->e:F

    .line 596
    .line 597
    move-wide/from16 v23, v0

    .line 598
    .line 599
    float-to-double v0, v11

    .line 600
    iget-boolean v11, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->f:Z

    .line 601
    .line 602
    iget-boolean v2, v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->g:Z

    .line 603
    .line 604
    move-object/from16 p1, v5

    .line 605
    .line 606
    move-wide/from16 v27, v16

    .line 607
    .line 608
    move/from16 v17, v2

    .line 609
    .line 610
    move/from16 v16, v11

    .line 611
    .line 612
    move-wide/from16 v29, v21

    .line 613
    .line 614
    move/from16 v22, v3

    .line 615
    .line 616
    move/from16 v21, v12

    .line 617
    .line 618
    move-wide/from16 v2, v27

    .line 619
    .line 620
    move-wide/from16 v27, v23

    .line 621
    .line 622
    move/from16 v23, v4

    .line 623
    .line 624
    move-wide v4, v13

    .line 625
    move-wide/from16 v12, v27

    .line 626
    .line 627
    const/16 v24, 0x0

    .line 628
    .line 629
    move-object/from16 v27, v20

    .line 630
    .line 631
    move/from16 v20, v10

    .line 632
    .line 633
    move-wide/from16 v10, v29

    .line 634
    .line 635
    move-wide/from16 v28, v0

    .line 636
    .line 637
    move-object v0, v15

    .line 638
    move-wide/from16 v14, v28

    .line 639
    .line 640
    move-object/from16 v1, v27

    .line 641
    .line 642
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->a(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 643
    .line 644
    .line 645
    move/from16 v4, v22

    .line 646
    .line 647
    move v13, v4

    .line 648
    move/from16 v5, v23

    .line 649
    .line 650
    move v14, v5

    .line 651
    move-object/from16 v22, v0

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_18
    move-object/from16 p1, v8

    .line 655
    .line 656
    move/from16 v20, v10

    .line 657
    .line 658
    move/from16 v24, v11

    .line 659
    .line 660
    move/from16 v21, v12

    .line 661
    .line 662
    move-object v0, v15

    .line 663
    instance-of v2, v0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 664
    .line 665
    if-eqz v2, :cond_19

    .line 666
    .line 667
    float-to-double v2, v13

    .line 668
    float-to-double v4, v14

    .line 669
    move-object v15, v0

    .line 670
    check-cast v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 671
    .line 672
    iget v6, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->i:F

    .line 673
    .line 674
    iget v7, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->h:F

    .line 675
    .line 676
    float-to-double v8, v7

    .line 677
    move-wide v10, v8

    .line 678
    float-to-double v8, v6

    .line 679
    iget v12, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->c:F

    .line 680
    .line 681
    float-to-double v12, v12

    .line 682
    iget v14, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->d:F

    .line 683
    .line 684
    move-object/from16 v22, v0

    .line 685
    .line 686
    move-object/from16 v16, v1

    .line 687
    .line 688
    float-to-double v0, v14

    .line 689
    iget v14, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->e:F

    .line 690
    .line 691
    move-wide/from16 v25, v0

    .line 692
    .line 693
    float-to-double v0, v14

    .line 694
    iget-boolean v14, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->f:Z

    .line 695
    .line 696
    iget-boolean v15, v15, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->g:Z

    .line 697
    .line 698
    move/from16 v23, v7

    .line 699
    .line 700
    move/from16 v17, v15

    .line 701
    .line 702
    move-wide/from16 v27, v0

    .line 703
    .line 704
    move v0, v6

    .line 705
    move-wide v6, v10

    .line 706
    move-wide v10, v12

    .line 707
    move-object/from16 v1, v16

    .line 708
    .line 709
    move-wide/from16 v12, v25

    .line 710
    .line 711
    move/from16 v16, v14

    .line 712
    .line 713
    move-wide/from16 v14, v27

    .line 714
    .line 715
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->a(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 716
    .line 717
    .line 718
    move v5, v0

    .line 719
    move v14, v5

    .line 720
    move/from16 v4, v23

    .line 721
    .line 722
    move v13, v4

    .line 723
    :goto_c
    add-int/lit8 v12, v21, 0x1

    .line 724
    .line 725
    move-object/from16 v0, p0

    .line 726
    .line 727
    move-object/from16 v3, p1

    .line 728
    .line 729
    move/from16 v10, v20

    .line 730
    .line 731
    move-object/from16 v2, v22

    .line 732
    .line 733
    move/from16 v11, v24

    .line 734
    .line 735
    goto/16 :goto_3

    .line 736
    .line 737
    :cond_19
    invoke-static {}, Lk8;->e()V

    .line 738
    .line 739
    .line 740
    :cond_1a
    return-void
.end method
