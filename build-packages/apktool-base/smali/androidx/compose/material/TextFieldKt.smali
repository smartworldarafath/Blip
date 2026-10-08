.class public abstract Landroidx/compose/material/TextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move/from16 v9, p8

    .line 6
    .line 7
    move-object/from16 v0, p12

    .line 8
    .line 9
    move-object/from16 v1, p13

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v2, -0x57a136cd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    move-object/from16 v6, p0

    .line 20
    .line 21
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

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
    or-int v2, p14, v2

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v7, 0x80

    .line 37
    .line 38
    const/16 v8, 0x100

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move v4, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v7

    .line 45
    :goto_1
    or-int/2addr v2, v4

    .line 46
    or-int/lit16 v2, v2, 0x6c00

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    const/high16 v4, 0x20000

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/high16 v4, 0x10000

    .line 58
    .line 59
    :goto_2
    or-int/2addr v2, v4

    .line 60
    const/high16 v4, 0x36d80000

    .line 61
    .line 62
    or-int/2addr v2, v4

    .line 63
    move-object/from16 v4, p6

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_3

    .line 70
    .line 71
    move v7, v8

    .line 72
    :cond_3
    or-int/lit16 v7, v7, 0x436

    .line 73
    .line 74
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_4

    .line 79
    .line 80
    const/16 v8, 0x4000

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/16 v8, 0x2000

    .line 84
    .line 85
    :goto_3
    or-int/2addr v7, v8

    .line 86
    const/high16 v8, 0x2d90000

    .line 87
    .line 88
    or-int/2addr v7, v8

    .line 89
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    const/high16 v8, 0x20000000

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    const/high16 v8, 0x10000000

    .line 99
    .line 100
    :goto_4
    or-int/2addr v7, v8

    .line 101
    const v8, 0x12492493

    .line 102
    .line 103
    .line 104
    and-int v10, v2, v8

    .line 105
    .line 106
    const v11, 0x12492492

    .line 107
    .line 108
    .line 109
    const/4 v12, 0x1

    .line 110
    const/4 v13, 0x0

    .line 111
    if-ne v10, v11, :cond_7

    .line 112
    .line 113
    and-int/2addr v8, v7

    .line 114
    if-eq v8, v11, :cond_6

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_6
    move v8, v13

    .line 118
    goto :goto_6

    .line 119
    :cond_7
    :goto_5
    move v8, v12

    .line 120
    :goto_6
    and-int/lit8 v10, v2, 0x1

    .line 121
    .line 122
    invoke-virtual {v1, v10, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_e

    .line 127
    .line 128
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 129
    .line 130
    .line 131
    and-int/lit8 v8, p14, 0x1

    .line 132
    .line 133
    const v10, -0xe071c01

    .line 134
    .line 135
    .line 136
    if-eqz v8, :cond_9

    .line 137
    .line 138
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_8

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 146
    .line 147
    .line 148
    and-int/2addr v7, v10

    .line 149
    move/from16 v8, p3

    .line 150
    .line 151
    move-object/from16 v10, p5

    .line 152
    .line 153
    move-object/from16 v14, p7

    .line 154
    .line 155
    move/from16 v15, p9

    .line 156
    .line 157
    move/from16 v16, p10

    .line 158
    .line 159
    move-object/from16 v12, p11

    .line 160
    .line 161
    :goto_7
    move/from16 v17, v7

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_9
    :goto_8
    new-instance v8, Landroidx/compose/foundation/text/KeyboardActions;

    .line 165
    .line 166
    invoke-direct {v8}, Landroidx/compose/foundation/text/KeyboardActions;-><init>()V

    .line 167
    .line 168
    .line 169
    if-eqz v9, :cond_a

    .line 170
    .line 171
    move v11, v12

    .line 172
    goto :goto_9

    .line 173
    :cond_a
    const v11, 0x7fffffff

    .line 174
    .line 175
    .line 176
    :goto_9
    invoke-static {v1}, Landroidx/compose/material/TextFieldDefaults;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    and-int/2addr v7, v10

    .line 181
    sget-object v10, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lfe;

    .line 182
    .line 183
    move v15, v11

    .line 184
    move/from16 v16, v12

    .line 185
    .line 186
    move-object v12, v14

    .line 187
    move-object v14, v8

    .line 188
    move/from16 v8, v16

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :goto_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 192
    .line 193
    .line 194
    const v7, 0x6e677928

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 205
    .line 206
    if-ne v7, v11, :cond_b

    .line 207
    .line 208
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_b
    move-object v11, v7

    .line 216
    check-cast v11, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 217
    .line 218
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 219
    .line 220
    .line 221
    const v7, 0xbd1de01

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 228
    .line 229
    .line 230
    move-result-wide v18

    .line 231
    const-wide/16 v20, 0x10

    .line 232
    .line 233
    cmp-long v7, v18, v20

    .line 234
    .line 235
    if-eqz v7, :cond_c

    .line 236
    .line 237
    move-object/from16 p3, v10

    .line 238
    .line 239
    move v7, v13

    .line 240
    move-wide/from16 v19, v18

    .line 241
    .line 242
    goto :goto_c

    .line 243
    :cond_c
    move-object v7, v0

    .line 244
    check-cast v7, Landroidx/compose/material/DefaultTextFieldColors;

    .line 245
    .line 246
    const v13, 0x959a82

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 250
    .line 251
    .line 252
    if-eqz v8, :cond_d

    .line 253
    .line 254
    iget-wide v6, v7, Landroidx/compose/material/DefaultTextFieldColors;->a:J

    .line 255
    .line 256
    goto :goto_b

    .line 257
    :cond_d
    iget-wide v6, v7, Landroidx/compose/material/DefaultTextFieldColors;->b:J

    .line 258
    .line 259
    :goto_b
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 260
    .line 261
    invoke-direct {v13, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 262
    .line 263
    .line 264
    invoke-static {v13, v1}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    const/4 v7, 0x0

    .line 269
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 277
    .line 278
    move-object/from16 p3, v10

    .line 279
    .line 280
    iget-wide v9, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 281
    .line 282
    move-wide/from16 v19, v9

    .line 283
    .line 284
    :goto_c
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 285
    .line 286
    .line 287
    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    .line 288
    .line 289
    const/16 v30, 0x0

    .line 290
    .line 291
    const v31, 0xfffffe

    .line 292
    .line 293
    .line 294
    const-wide/16 v21, 0x0

    .line 295
    .line 296
    const/16 v23, 0x0

    .line 297
    .line 298
    const/16 v24, 0x0

    .line 299
    .line 300
    const-wide/16 v25, 0x0

    .line 301
    .line 302
    const/16 v27, 0x0

    .line 303
    .line 304
    const-wide/16 v28, 0x0

    .line 305
    .line 306
    invoke-direct/range {v18 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 307
    .line 308
    .line 309
    move-object/from16 v6, v18

    .line 310
    .line 311
    invoke-virtual {v5, v6}, Landroidx/compose/ui/text/TextStyle;->d(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 312
    .line 313
    .line 314
    move-result-object v18

    .line 315
    invoke-static {v3, v8, v11, v0}, Landroidx/compose/material/TextFieldDefaults;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;)Landroidx/compose/ui/Modifier;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const/4 v7, 0x3

    .line 320
    invoke-static {v7, v1}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    const/high16 v7, 0x438c0000    # 280.0f

    .line 324
    .line 325
    const/high16 v9, 0x42600000    # 56.0f

    .line 326
    .line 327
    invoke-static {v6, v7, v9}, Landroidx/compose/foundation/layout/SizeKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 328
    .line 329
    .line 330
    move-result-object v19

    .line 331
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    .line 332
    .line 333
    move-object v13, v0

    .line 334
    check-cast v13, Landroidx/compose/material/DefaultTextFieldColors;

    .line 335
    .line 336
    const v0, -0x5636a7d5

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 340
    .line 341
    .line 342
    iget-wide v9, v13, Landroidx/compose/material/DefaultTextFieldColors;->c:J

    .line 343
    .line 344
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 345
    .line 346
    invoke-direct {v0, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    const/4 v7, 0x0

    .line 354
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 355
    .line 356
    .line 357
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 362
    .line 363
    iget-wide v9, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 364
    .line 365
    invoke-direct {v6, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 366
    .line 367
    .line 368
    move-object v0, v6

    .line 369
    new-instance v6, Lod;

    .line 370
    .line 371
    move-object/from16 v7, p0

    .line 372
    .line 373
    move-object/from16 v10, p3

    .line 374
    .line 375
    move/from16 v9, p8

    .line 376
    .line 377
    invoke-direct/range {v6 .. v13}, Lod;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;)V

    .line 378
    .line 379
    .line 380
    move-object/from16 v25, v12

    .line 381
    .line 382
    move-object/from16 v26, v13

    .line 383
    .line 384
    const v7, 0x5d4dcd56

    .line 385
    .line 386
    .line 387
    invoke-static {v7, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 388
    .line 389
    .line 390
    move-result-object v20

    .line 391
    const v6, 0xfc7e

    .line 392
    .line 393
    .line 394
    and-int/2addr v2, v6

    .line 395
    shl-int/lit8 v6, v17, 0xc

    .line 396
    .line 397
    const/high16 v7, 0x380000

    .line 398
    .line 399
    and-int/2addr v7, v6

    .line 400
    or-int/2addr v2, v7

    .line 401
    const/high16 v7, 0xe000000

    .line 402
    .line 403
    and-int/2addr v6, v7

    .line 404
    or-int v22, v2, v6

    .line 405
    .line 406
    const v23, 0x30036

    .line 407
    .line 408
    .line 409
    const/16 v24, 0x1000

    .line 410
    .line 411
    const/16 v17, 0x0

    .line 412
    .line 413
    move-object/from16 v6, p0

    .line 414
    .line 415
    move-object/from16 v7, p1

    .line 416
    .line 417
    move/from16 v13, p8

    .line 418
    .line 419
    move-object/from16 v21, v1

    .line 420
    .line 421
    move v9, v8

    .line 422
    move-object v12, v14

    .line 423
    move v14, v15

    .line 424
    move/from16 v15, v16

    .line 425
    .line 426
    move-object/from16 v8, v19

    .line 427
    .line 428
    move-object/from16 v19, v0

    .line 429
    .line 430
    move-object/from16 v16, v10

    .line 431
    .line 432
    move-object/from16 v10, v18

    .line 433
    .line 434
    move-object/from16 v18, v11

    .line 435
    .line 436
    move-object v11, v4

    .line 437
    invoke-static/range {v6 .. v24}, Landroidx/compose/foundation/text/BasicTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    .line 438
    .line 439
    .line 440
    move v8, v9

    .line 441
    move-object/from16 v10, v16

    .line 442
    .line 443
    move v4, v8

    .line 444
    move-object v6, v10

    .line 445
    move-object v8, v12

    .line 446
    move v10, v14

    .line 447
    move v11, v15

    .line 448
    move-object/from16 v12, v25

    .line 449
    .line 450
    move-object/from16 v13, v26

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_e
    move-object/from16 v21, v1

    .line 454
    .line 455
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 456
    .line 457
    .line 458
    move/from16 v4, p3

    .line 459
    .line 460
    move-object/from16 v6, p5

    .line 461
    .line 462
    move-object/from16 v8, p7

    .line 463
    .line 464
    move/from16 v10, p9

    .line 465
    .line 466
    move/from16 v11, p10

    .line 467
    .line 468
    move-object/from16 v12, p11

    .line 469
    .line 470
    move-object v13, v0

    .line 471
    :goto_d
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 472
    .line 473
    .line 474
    move-result-object v15

    .line 475
    if-eqz v15, :cond_f

    .line 476
    .line 477
    new-instance v0, Lbh;

    .line 478
    .line 479
    move-object/from16 v1, p0

    .line 480
    .line 481
    move-object/from16 v2, p1

    .line 482
    .line 483
    move-object/from16 v7, p6

    .line 484
    .line 485
    move/from16 v9, p8

    .line 486
    .line 487
    move/from16 v14, p14

    .line 488
    .line 489
    invoke-direct/range {v0 .. v14}, Lbh;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;I)V

    .line 490
    .line 491
    .line 492
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 493
    .line 494
    :cond_f
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v0, p14

    move/from16 v1, p16

    .line 1
    move-object/from16 v2, p15

    check-cast v2, Landroidx/compose/runtime/GapComposer;

    const v4, 0xaad51e0

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v1, 0x6

    move-object/from16 v6, p0

    if-nez v4, :cond_1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v8, v1, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_4

    :cond_4
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :cond_5
    or-int/lit16 v4, v4, 0x6c00

    const/high16 v8, 0x30000

    and-int/2addr v8, v1

    if-nez v8, :cond_7

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v4, v8

    :cond_7
    const/high16 v8, 0x180000

    or-int/2addr v4, v8

    const/high16 v8, 0xc00000

    and-int/2addr v8, v1

    move-object/from16 v11, p5

    if-nez v8, :cond_9

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/high16 v8, 0x800000

    goto :goto_6

    :cond_8
    const/high16 v8, 0x400000

    :goto_6
    or-int/2addr v4, v8

    :cond_9
    const/high16 v8, 0x6000000

    and-int/2addr v8, v1

    move-object/from16 v12, p6

    if-nez v8, :cond_b

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x4000000

    goto :goto_7

    :cond_a
    const/high16 v8, 0x2000000

    :goto_7
    or-int/2addr v4, v8

    :cond_b
    const/high16 v8, 0x30000000

    and-int/2addr v8, v1

    const/high16 v9, 0x10000000

    const/high16 v10, 0x20000000

    if-nez v8, :cond_d

    move-object/from16 v8, p7

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v13, v10

    goto :goto_8

    :cond_c
    move v13, v9

    :goto_8
    or-int/2addr v4, v13

    goto :goto_9

    :cond_d
    move-object/from16 v8, p7

    :goto_9
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    move v9, v10

    :cond_e
    const v10, 0x2d965b6

    or-int/2addr v9, v10

    const v10, 0x12492493

    and-int v13, v4, v10

    const v14, 0x12492492

    const/4 v15, 0x1

    move/from16 p15, v10

    if-ne v13, v14, :cond_10

    and-int v9, v9, p15

    if-eq v9, v14, :cond_f

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    move v9, v15

    :goto_b
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v2, v13, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->S()V

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_c

    .line 2
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    move/from16 v9, p3

    move-object/from16 v15, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object/from16 v14, p13

    goto :goto_d

    .line 3
    :cond_12
    :goto_c
    new-instance v9, Landroidx/compose/foundation/text/KeyboardActions;

    invoke-direct {v9}, Landroidx/compose/foundation/text/KeyboardActions;-><init>()V

    .line 4
    invoke-static {v2}, Landroidx/compose/material/TextFieldDefaults;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lfe;

    const v16, 0x7fffffff

    move/from16 v18, v15

    move/from16 v17, v16

    move-object/from16 v16, v9

    move-object v15, v14

    move/from16 v9, v18

    move-object v14, v13

    .line 5
    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->q()V

    const v13, 0x7f7a575b

    .line 6
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v13

    .line 8
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v10, :cond_13

    .line 9
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v13

    .line 10
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 11
    :cond_13
    move-object v10, v13

    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v13, 0x0

    .line 12
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    const v13, 0x14a0ed6e

    .line 13
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->W(I)V

    invoke-virtual {v5}, Landroidx/compose/ui/text/TextStyle;->b()J

    move-result-wide v19

    const-wide/16 v21, 0x10

    cmp-long v13, v19, v21

    if-eqz v13, :cond_14

    move-wide/from16 v20, v19

    const/4 v13, 0x0

    goto :goto_f

    :cond_14
    move-object v13, v0

    check-cast v13, Landroidx/compose/material/DefaultTextFieldColors;

    const v1, 0x959a82

    .line 14
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    if-eqz v9, :cond_15

    .line 15
    iget-wide v6, v13, Landroidx/compose/material/DefaultTextFieldColors;->a:J

    goto :goto_e

    :cond_15
    iget-wide v6, v13, Landroidx/compose/material/DefaultTextFieldColors;->b:J

    .line 16
    :goto_e
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v1, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 17
    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    const/4 v13, 0x0

    .line 18
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 19
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 20
    iget-wide v6, v1, Landroidx/compose/ui/graphics/Color;->a:J

    move-wide/from16 v20, v6

    .line 21
    :goto_f
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 22
    new-instance v19, Landroidx/compose/ui/text/TextStyle;

    const/16 v31, 0x0

    const v32, 0xfffffe

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    invoke-direct/range {v19 .. v32}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    move-object/from16 v1, v19

    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/TextStyle;->d(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    .line 23
    invoke-static {v3, v9, v10, v0}, Landroidx/compose/material/TextFieldDefaults;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x3

    .line 24
    invoke-static {v7, v2}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    const/high16 v7, 0x438c0000    # 280.0f

    const/high16 v13, 0x42600000    # 56.0f

    .line 25
    invoke-static {v6, v7, v13}, Landroidx/compose/foundation/layout/SizeKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v19

    .line 26
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    move v8, v9

    move-object v9, v15

    move-object v15, v0

    check-cast v15, Landroidx/compose/material/DefaultTextFieldColors;

    const v0, -0x5636a7d5

    .line 27
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    move-object/from16 p3, v1

    .line 28
    iget-wide v0, v15, Landroidx/compose/material/DefaultTextFieldColors;->c:J

    .line 29
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 30
    invoke-static {v7, v2}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v13, 0x0

    .line 31
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 32
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 33
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 34
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    move-object v0, v6

    .line 35
    new-instance v6, Lzg;

    move-object/from16 v7, p0

    move-object/from16 v13, p7

    invoke-direct/range {v6 .. v15}, Lzg;-><init>(Ljava/lang/String;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;)V

    move-object v1, v14

    move-object/from16 v23, v15

    const v7, -0x4f7d6fd

    invoke-static {v7, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v7, 0xfc7e

    and-int/2addr v4, v7

    const/high16 v7, 0x6180000

    or-int v21, v4, v7

    const v22, 0x30036

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v7, p1

    move-object/from16 v11, p9

    move-object/from16 v20, v2

    move-object v15, v9

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v18, v0

    move v9, v8

    move-object/from16 v17, v10

    move-object/from16 v8, v19

    move-object/from16 v10, p3

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    .line 36
    invoke-static/range {v6 .. v22}, Landroidx/compose/foundation/text/BasicTextFieldKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move v8, v9

    move-object v9, v15

    move v4, v8

    move-object v11, v12

    move v12, v13

    move v13, v14

    move-object/from16 v15, v23

    move-object v14, v1

    goto :goto_10

    :cond_16
    move-object/from16 v20, v2

    .line 37
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->Q()V

    move/from16 v4, p3

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object v15, v0

    .line 38
    :goto_10
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v1, v0

    new-instance v0, Lah;

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v16, p16

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lah;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;I)V

    move-object/from16 v1, v33

    .line 39
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v0, p9

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    const v11, -0x5f12e814

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v11, v10, 0x6

    .line 32
    .line 33
    if-nez v11, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_0

    .line 40
    .line 41
    const/4 v11, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v11, 0x2

    .line 44
    :goto_0
    or-int/2addr v11, v10

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v11, v10

    .line 47
    :goto_1
    and-int/lit8 v12, v10, 0x30

    .line 48
    .line 49
    if-nez v12, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    if-eqz v12, :cond_2

    .line 56
    .line 57
    const/16 v12, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v12, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v11, v12

    .line 63
    :cond_3
    and-int/lit16 v12, v10, 0x180

    .line 64
    .line 65
    if-nez v12, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    if-eqz v12, :cond_4

    .line 72
    .line 73
    const/16 v12, 0x100

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/16 v12, 0x80

    .line 77
    .line 78
    :goto_3
    or-int/2addr v11, v12

    .line 79
    :cond_5
    and-int/lit16 v12, v10, 0xc00

    .line 80
    .line 81
    if-nez v12, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_6

    .line 88
    .line 89
    const/16 v12, 0x800

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    const/16 v12, 0x400

    .line 93
    .line 94
    :goto_4
    or-int/2addr v11, v12

    .line 95
    :cond_7
    and-int/lit16 v12, v10, 0x6000

    .line 96
    .line 97
    if-nez v12, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eqz v12, :cond_8

    .line 104
    .line 105
    const/16 v12, 0x4000

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_8
    const/16 v12, 0x2000

    .line 109
    .line 110
    :goto_5
    or-int/2addr v11, v12

    .line 111
    :cond_9
    const/high16 v12, 0x30000

    .line 112
    .line 113
    and-int/2addr v12, v10

    .line 114
    if-nez v12, :cond_b

    .line 115
    .line 116
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_a

    .line 121
    .line 122
    const/high16 v12, 0x20000

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_a
    const/high16 v12, 0x10000

    .line 126
    .line 127
    :goto_6
    or-int/2addr v11, v12

    .line 128
    :cond_b
    const/high16 v12, 0x180000

    .line 129
    .line 130
    and-int/2addr v12, v10

    .line 131
    const/high16 v13, 0x100000

    .line 132
    .line 133
    if-nez v12, :cond_d

    .line 134
    .line 135
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-eqz v12, :cond_c

    .line 140
    .line 141
    move v12, v13

    .line 142
    goto :goto_7

    .line 143
    :cond_c
    const/high16 v12, 0x80000

    .line 144
    .line 145
    :goto_7
    or-int/2addr v11, v12

    .line 146
    :cond_d
    const/high16 v12, 0xc00000

    .line 147
    .line 148
    and-int/2addr v12, v10

    .line 149
    if-nez v12, :cond_f

    .line 150
    .line 151
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    if-eqz v12, :cond_e

    .line 156
    .line 157
    const/high16 v12, 0x800000

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_e
    const/high16 v12, 0x400000

    .line 161
    .line 162
    :goto_8
    or-int/2addr v11, v12

    .line 163
    :cond_f
    const/high16 v12, 0x6000000

    .line 164
    .line 165
    and-int/2addr v12, v10

    .line 166
    if-nez v12, :cond_11

    .line 167
    .line 168
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_10

    .line 173
    .line 174
    const/high16 v12, 0x4000000

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_10
    const/high16 v12, 0x2000000

    .line 178
    .line 179
    :goto_9
    or-int/2addr v11, v12

    .line 180
    :cond_11
    const v12, 0x2492493

    .line 181
    .line 182
    .line 183
    and-int/2addr v12, v11

    .line 184
    const v15, 0x2492492

    .line 185
    .line 186
    .line 187
    if-eq v12, v15, :cond_12

    .line 188
    .line 189
    const/4 v12, 0x1

    .line 190
    goto :goto_a

    .line 191
    :cond_12
    const/4 v12, 0x0

    .line 192
    :goto_a
    and-int/lit8 v15, v11, 0x1

    .line 193
    .line 194
    invoke-virtual {v0, v15, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_2d

    .line 199
    .line 200
    const/high16 v12, 0x380000

    .line 201
    .line 202
    and-int/2addr v12, v11

    .line 203
    if-ne v12, v13, :cond_13

    .line 204
    .line 205
    const/4 v12, 0x1

    .line 206
    goto :goto_b

    .line 207
    :cond_13
    const/4 v12, 0x0

    .line 208
    :goto_b
    const/high16 v13, 0x1c00000

    .line 209
    .line 210
    and-int/2addr v13, v11

    .line 211
    const/high16 v15, 0x800000

    .line 212
    .line 213
    if-ne v13, v15, :cond_14

    .line 214
    .line 215
    const/4 v13, 0x1

    .line 216
    goto :goto_c

    .line 217
    :cond_14
    const/4 v13, 0x0

    .line 218
    :goto_c
    or-int/2addr v12, v13

    .line 219
    const/high16 v13, 0xe000000

    .line 220
    .line 221
    and-int/2addr v13, v11

    .line 222
    const/high16 v15, 0x4000000

    .line 223
    .line 224
    if-ne v13, v15, :cond_15

    .line 225
    .line 226
    const/4 v13, 0x1

    .line 227
    goto :goto_d

    .line 228
    :cond_15
    const/4 v13, 0x0

    .line 229
    :goto_d
    or-int/2addr v12, v13

    .line 230
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    if-nez v12, :cond_16

    .line 235
    .line 236
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 237
    .line 238
    if-ne v13, v12, :cond_17

    .line 239
    .line 240
    :cond_16
    new-instance v13, Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 241
    .line 242
    invoke-direct {v13, v7, v8, v9}, Landroidx/compose/material/TextFieldMeasurePolicy;-><init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_17
    check-cast v13, Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 249
    .line 250
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 251
    .line 252
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 257
    .line 258
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 271
    .line 272
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 276
    .line 277
    .line 278
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 279
    .line 280
    move/from16 v16, v1

    .line 281
    .line 282
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 283
    .line 284
    if-eqz v16, :cond_18

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 287
    .line 288
    .line 289
    goto :goto_e

    .line 290
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 291
    .line 292
    .line 293
    :goto_e
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 294
    .line 295
    invoke-static {v0, v13, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    .line 297
    .line 298
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 299
    .line 300
    invoke-static {v0, v14, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    .line 302
    .line 303
    iget-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 304
    .line 305
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 306
    .line 307
    if-nez v14, :cond_19

    .line 308
    .line 309
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    move/from16 v16, v11

    .line 314
    .line 315
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-nez v11, :cond_1a

    .line 324
    .line 325
    goto :goto_f

    .line 326
    :cond_19
    move/from16 v16, v11

    .line 327
    .line 328
    :goto_f
    invoke-static {v15, v0, v15, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 329
    .line 330
    .line 331
    :cond_1a
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 332
    .line 333
    invoke-static {v0, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    sget-object v7, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 337
    .line 338
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 339
    .line 340
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 341
    .line 342
    if-eqz v5, :cond_1e

    .line 343
    .line 344
    const v2, -0x561b0621

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 348
    .line 349
    .line 350
    const-string v2, "Leading"

    .line 351
    .line 352
    invoke-static {v14, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    sget-object v17, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 357
    .line 358
    invoke-interface {v2, v7}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    const/4 v3, 0x0

    .line 363
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 380
    .line 381
    .line 382
    move-object/from16 v17, v12

    .line 383
    .line 384
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 385
    .line 386
    if-eqz v12, :cond_1b

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 389
    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 393
    .line 394
    .line 395
    :goto_10
    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v9, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 399
    .line 400
    .line 401
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 402
    .line 403
    if-nez v4, :cond_1c

    .line 404
    .line 405
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-nez v4, :cond_1d

    .line 418
    .line 419
    :cond_1c
    invoke-static {v3, v0, v3, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 420
    .line 421
    .line 422
    :cond_1d
    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 423
    .line 424
    .line 425
    shr-int/lit8 v2, v16, 0xc

    .line 426
    .line 427
    and-int/lit8 v2, v2, 0xe

    .line 428
    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-interface {v5, v0, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    const/4 v2, 0x1

    .line 437
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 438
    .line 439
    .line 440
    const/4 v3, 0x0

    .line 441
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 442
    .line 443
    .line 444
    goto :goto_11

    .line 445
    :cond_1e
    move-object/from16 v17, v12

    .line 446
    .line 447
    const/4 v3, 0x0

    .line 448
    const v2, -0x56174521

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 455
    .line 456
    .line 457
    :goto_11
    if-eqz v6, :cond_22

    .line 458
    .line 459
    const v2, -0x56169e43

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 463
    .line 464
    .line 465
    const-string v2, "Trailing"

    .line 466
    .line 467
    invoke-static {v14, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    sget-object v4, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 472
    .line 473
    invoke-interface {v2, v7}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 494
    .line 495
    .line 496
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 497
    .line 498
    if-eqz v9, :cond_1f

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 501
    .line 502
    .line 503
    goto :goto_12

    .line 504
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 505
    .line 506
    .line 507
    :goto_12
    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v0, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 511
    .line 512
    .line 513
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 514
    .line 515
    if-nez v4, :cond_20

    .line 516
    .line 517
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    if-nez v4, :cond_21

    .line 530
    .line 531
    :cond_20
    invoke-static {v3, v0, v3, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 532
    .line 533
    .line 534
    :cond_21
    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 535
    .line 536
    .line 537
    shr-int/lit8 v2, v16, 0xf

    .line 538
    .line 539
    and-int/lit8 v2, v2, 0xe

    .line 540
    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-interface {v6, v0, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    const/4 v2, 0x1

    .line 549
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 550
    .line 551
    .line 552
    const/4 v3, 0x0

    .line 553
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 554
    .line 555
    .line 556
    :goto_13
    move-object/from16 v9, p8

    .line 557
    .line 558
    move-object/from16 v12, v17

    .line 559
    .line 560
    goto :goto_14

    .line 561
    :cond_22
    const v2, -0x5612d5c1

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 568
    .line 569
    .line 570
    goto :goto_13

    .line 571
    :goto_14
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/PaddingKt;->b(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/PaddingKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    const/4 v4, 0x0

    .line 580
    const/high16 v7, 0x41400000    # 12.0f

    .line 581
    .line 582
    if-eqz v5, :cond_23

    .line 583
    .line 584
    sub-float/2addr v2, v7

    .line 585
    cmpg-float v12, v2, v4

    .line 586
    .line 587
    if-gez v12, :cond_23

    .line 588
    .line 589
    move v2, v4

    .line 590
    :cond_23
    move/from16 v18, v2

    .line 591
    .line 592
    if-eqz v6, :cond_24

    .line 593
    .line 594
    sub-float/2addr v3, v7

    .line 595
    cmpg-float v2, v3, v4

    .line 596
    .line 597
    if-gez v2, :cond_24

    .line 598
    .line 599
    move v3, v4

    .line 600
    :cond_24
    move/from16 v20, v3

    .line 601
    .line 602
    const/16 v21, 0x0

    .line 603
    .line 604
    const/16 v22, 0xa

    .line 605
    .line 606
    const/16 v19, 0x0

    .line 607
    .line 608
    move-object/from16 v17, v14

    .line 609
    .line 610
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    move-object/from16 v3, v17

    .line 615
    .line 616
    if-eqz p3, :cond_25

    .line 617
    .line 618
    const v4, -0x5605d5bc

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 622
    .line 623
    .line 624
    const-string v4, "Hint"

    .line 625
    .line 626
    invoke-static {v3, v4}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    shr-int/lit8 v7, v16, 0x6

    .line 635
    .line 636
    and-int/lit8 v7, v7, 0x70

    .line 637
    .line 638
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    move-object/from16 v12, p3

    .line 643
    .line 644
    invoke-interface {v12, v4, v0, v7}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    const/4 v4, 0x0

    .line 648
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 649
    .line 650
    .line 651
    goto :goto_15

    .line 652
    :cond_25
    move-object/from16 v12, p3

    .line 653
    .line 654
    const/4 v4, 0x0

    .line 655
    const v7, -0x56048021

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 662
    .line 663
    .line 664
    :goto_15
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 665
    .line 666
    if-eqz p2, :cond_29

    .line 667
    .line 668
    const v14, -0x5603f95a

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 672
    .line 673
    .line 674
    const-string v14, "Label"

    .line 675
    .line 676
    invoke-static {v3, v14}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 677
    .line 678
    .line 679
    move-result-object v14

    .line 680
    invoke-interface {v14, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 681
    .line 682
    .line 683
    move-result-object v14

    .line 684
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 685
    .line 686
    .line 687
    move-result-object v15

    .line 688
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    invoke-static {v0, v14}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 697
    .line 698
    .line 699
    move-result-object v14

    .line 700
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 701
    .line 702
    .line 703
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 704
    .line 705
    if-eqz v6, :cond_26

    .line 706
    .line 707
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 708
    .line 709
    .line 710
    goto :goto_16

    .line 711
    :cond_26
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 712
    .line 713
    .line 714
    :goto_16
    invoke-static {v0, v15, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 715
    .line 716
    .line 717
    invoke-static {v0, v5, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 718
    .line 719
    .line 720
    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 721
    .line 722
    if-nez v5, :cond_27

    .line 723
    .line 724
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-nez v5, :cond_28

    .line 737
    .line 738
    :cond_27
    invoke-static {v4, v0, v4, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 739
    .line 740
    .line 741
    :cond_28
    invoke-static {v0, v14, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 742
    .line 743
    .line 744
    shr-int/lit8 v4, v16, 0x6

    .line 745
    .line 746
    and-int/lit8 v4, v4, 0xe

    .line 747
    .line 748
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    move-object/from16 v5, p2

    .line 753
    .line 754
    invoke-interface {v5, v0, v4}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    const/4 v4, 0x1

    .line 758
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 759
    .line 760
    .line 761
    const/4 v6, 0x0

    .line 762
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 763
    .line 764
    .line 765
    goto :goto_17

    .line 766
    :cond_29
    move-object/from16 v5, p2

    .line 767
    .line 768
    move v6, v4

    .line 769
    const/4 v4, 0x1

    .line 770
    const v14, -0x5602ab41

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 777
    .line 778
    .line 779
    :goto_17
    const-string v6, "TextField"

    .line 780
    .line 781
    invoke-static {v3, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    invoke-static {v7, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 798
    .line 799
    .line 800
    move-result-object v6

    .line 801
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 806
    .line 807
    .line 808
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 809
    .line 810
    if-eqz v7, :cond_2a

    .line 811
    .line 812
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 813
    .line 814
    .line 815
    goto :goto_18

    .line 816
    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 817
    .line 818
    .line 819
    :goto_18
    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 820
    .line 821
    .line 822
    invoke-static {v0, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 823
    .line 824
    .line 825
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 826
    .line 827
    if-nez v1, :cond_2b

    .line 828
    .line 829
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    if-nez v1, :cond_2c

    .line 842
    .line 843
    :cond_2b
    invoke-static {v4, v0, v4, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 844
    .line 845
    .line 846
    :cond_2c
    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 847
    .line 848
    .line 849
    shr-int/lit8 v1, v16, 0x3

    .line 850
    .line 851
    and-int/lit8 v1, v1, 0xe

    .line 852
    .line 853
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    move-object/from16 v2, p1

    .line 858
    .line 859
    invoke-interface {v2, v0, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    const/4 v4, 0x1

    .line 863
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 867
    .line 868
    .line 869
    goto :goto_19

    .line 870
    :cond_2d
    move-object v5, v3

    .line 871
    move-object v12, v4

    .line 872
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 873
    .line 874
    .line 875
    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 876
    .line 877
    .line 878
    move-result-object v11

    .line 879
    if-eqz v11, :cond_2e

    .line 880
    .line 881
    new-instance v0, Lch;

    .line 882
    .line 883
    move-object/from16 v1, p0

    .line 884
    .line 885
    move-object/from16 v6, p5

    .line 886
    .line 887
    move/from16 v7, p6

    .line 888
    .line 889
    move/from16 v8, p7

    .line 890
    .line 891
    move/from16 v10, p10

    .line 892
    .line 893
    move-object v3, v5

    .line 894
    move-object v4, v12

    .line 895
    move-object/from16 v5, p4

    .line 896
    .line 897
    invoke-direct/range {v0 .. v10}, Lch;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;I)V

    .line 898
    .line 899
    .line 900
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 901
    .line 902
    :cond_2e
    return-void
.end method

.method public static final d(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 2

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    mul-float/2addr v0, p8

    .line 4
    invoke-interface {p9}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    mul-float/2addr v1, p8

    .line 9
    invoke-interface {p9}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 10
    .line 11
    .line 12
    move-result p9

    .line 13
    mul-float/2addr p9, p8

    .line 14
    invoke-static {p0, p5}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    int-to-float p1, p2

    .line 21
    add-float/2addr p1, v0

    .line 22
    int-to-float p0, p0

    .line 23
    add-float/2addr p1, p0

    .line 24
    add-float/2addr p1, p9

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-float p0, p0

    .line 27
    add-float/2addr v1, p0

    .line 28
    add-float p1, v1, p9

    .line 29
    .line 30
    :goto_0
    invoke-static {p1}, Lkotlin/math/MathKt;->b(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0, p6, p7}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method
