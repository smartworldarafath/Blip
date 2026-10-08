.class public abstract Lnet/blip/android/ui/components/StyledTextFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/runtime/Composer;II)V
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v14, p14

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p12

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v2, -0x2b0fcc52

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    :goto_0
    or-int v2, p13, v2

    .line 28
    .line 29
    move-object/from16 v4, p1

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/16 v5, 0x10

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v3, v5

    .line 43
    :goto_1
    or-int/2addr v2, v3

    .line 44
    and-int/lit8 v3, v14, 0x10

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    move-object/from16 v3, p4

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    const/16 v6, 0x4000

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object/from16 v3, p4

    .line 60
    .line 61
    :cond_3
    const/16 v6, 0x2000

    .line 62
    .line 63
    :goto_2
    or-int/2addr v2, v6

    .line 64
    and-int/lit8 v6, v14, 0x20

    .line 65
    .line 66
    const/high16 v7, 0x30000

    .line 67
    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    or-int/2addr v2, v7

    .line 71
    :cond_4
    move-object/from16 v7, p5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    and-int v7, p13, v7

    .line 75
    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    move-object/from16 v7, p5

    .line 79
    .line 80
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_6

    .line 85
    .line 86
    const/high16 v8, 0x20000

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/high16 v8, 0x10000

    .line 90
    .line 91
    :goto_3
    or-int/2addr v2, v8

    .line 92
    :goto_4
    and-int/lit8 v8, v14, 0x40

    .line 93
    .line 94
    if-eqz v8, :cond_7

    .line 95
    .line 96
    const/high16 v9, 0x180000

    .line 97
    .line 98
    or-int/2addr v2, v9

    .line 99
    move-object/from16 v9, p6

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_7
    move-object/from16 v9, p6

    .line 103
    .line 104
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_8

    .line 109
    .line 110
    const/high16 v11, 0x100000

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_8
    const/high16 v11, 0x80000

    .line 114
    .line 115
    :goto_5
    or-int/2addr v2, v11

    .line 116
    :goto_6
    and-int/lit16 v11, v14, 0x100

    .line 117
    .line 118
    if-nez v11, :cond_9

    .line 119
    .line 120
    move-object/from16 v11, p8

    .line 121
    .line 122
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_a

    .line 127
    .line 128
    const/high16 v12, 0x4000000

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_9
    move-object/from16 v11, p8

    .line 132
    .line 133
    :cond_a
    const/high16 v12, 0x2000000

    .line 134
    .line 135
    :goto_7
    or-int/2addr v2, v12

    .line 136
    const/high16 v12, 0x30000000

    .line 137
    .line 138
    or-int/2addr v2, v12

    .line 139
    const v13, 0x12492493

    .line 140
    .line 141
    .line 142
    and-int/2addr v13, v2

    .line 143
    const v15, 0x12492492

    .line 144
    .line 145
    .line 146
    move/from16 p12, v12

    .line 147
    .line 148
    if-ne v13, v15, :cond_b

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    goto :goto_8

    .line 152
    :cond_b
    const/4 v13, 0x1

    .line 153
    :goto_8
    and-int/lit8 v15, v2, 0x1

    .line 154
    .line 155
    invoke-virtual {v0, v15, v13}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    if-eqz v13, :cond_1f

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 162
    .line 163
    .line 164
    and-int/lit8 v13, p13, 0x1

    .line 165
    .line 166
    const v15, -0xe000001

    .line 167
    .line 168
    .line 169
    const v16, -0xe001

    .line 170
    .line 171
    .line 172
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 173
    .line 174
    if-eqz v13, :cond_f

    .line 175
    .line 176
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-eqz v13, :cond_c

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 184
    .line 185
    .line 186
    and-int/lit8 v5, v14, 0x10

    .line 187
    .line 188
    if-eqz v5, :cond_d

    .line 189
    .line 190
    and-int v2, v2, v16

    .line 191
    .line 192
    :cond_d
    and-int/lit16 v5, v14, 0x100

    .line 193
    .line 194
    if-eqz v5, :cond_e

    .line 195
    .line 196
    and-int/2addr v2, v15

    .line 197
    :cond_e
    move/from16 v13, p9

    .line 198
    .line 199
    move/from16 v8, p10

    .line 200
    .line 201
    move/from16 v34, v2

    .line 202
    .line 203
    move-object v15, v3

    .line 204
    move-object v2, v7

    .line 205
    move-object v7, v9

    .line 206
    move/from16 v9, p11

    .line 207
    .line 208
    goto :goto_d

    .line 209
    :cond_f
    :goto_9
    and-int/lit8 v13, v14, 0x10

    .line 210
    .line 211
    if-eqz v13, :cond_10

    .line 212
    .line 213
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 220
    .line 221
    iget-object v3, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 222
    .line 223
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 224
    .line 225
    .line 226
    move-result-wide v20

    .line 227
    const/16 v28, 0x0

    .line 228
    .line 229
    const v29, 0xfffffd

    .line 230
    .line 231
    .line 232
    const-wide/16 v18, 0x0

    .line 233
    .line 234
    const/16 v22, 0x0

    .line 235
    .line 236
    const-wide/16 v23, 0x0

    .line 237
    .line 238
    const-wide/16 v25, 0x0

    .line 239
    .line 240
    const/16 v27, 0x0

    .line 241
    .line 242
    move-object/from16 v17, v3

    .line 243
    .line 244
    invoke-static/range {v17 .. v29}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    and-int v2, v2, v16

    .line 249
    .line 250
    :cond_10
    if-eqz v6, :cond_12

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    if-ne v5, v10, :cond_11

    .line 257
    .line 258
    new-instance v5, Landroidx/compose/ui/focus/FocusRequester;

    .line 259
    .line 260
    invoke-direct {v5}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_11
    check-cast v5, Landroidx/compose/ui/focus/FocusRequester;

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_12
    move-object v5, v7

    .line 270
    :goto_a
    if-eqz v8, :cond_13

    .line 271
    .line 272
    sget-object v6, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lfe;

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_13
    move-object v6, v9

    .line 276
    :goto_b
    and-int/lit16 v7, v14, 0x100

    .line 277
    .line 278
    if-eqz v7, :cond_14

    .line 279
    .line 280
    new-instance v7, Landroidx/compose/foundation/text/KeyboardActions;

    .line 281
    .line 282
    invoke-direct {v7}, Landroidx/compose/foundation/text/KeyboardActions;-><init>()V

    .line 283
    .line 284
    .line 285
    and-int/2addr v2, v15

    .line 286
    goto :goto_c

    .line 287
    :cond_14
    move-object v7, v11

    .line 288
    :goto_c
    move/from16 v34, v2

    .line 289
    .line 290
    move-object v15, v3

    .line 291
    move-object v2, v5

    .line 292
    move-object v11, v7

    .line 293
    const/4 v8, 0x1

    .line 294
    const/4 v9, 0x1

    .line 295
    const/4 v13, 0x1

    .line 296
    move-object v7, v6

    .line 297
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    if-ne v3, v10, :cond_15

    .line 305
    .line 306
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_15
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 316
    .line 317
    const/high16 v5, 0x41400000    # 12.0f

    .line 318
    .line 319
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    sget-object v6, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 324
    .line 325
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    move-object/from16 v12, v16

    .line 330
    .line 331
    check-cast v12, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 332
    .line 333
    move-object/from16 p4, v7

    .line 334
    .line 335
    move/from16 p5, v8

    .line 336
    .line 337
    iget-wide v7, v12, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 338
    .line 339
    const/16 v26, 0x0

    .line 340
    .line 341
    const v27, 0xfffffe

    .line 342
    .line 343
    .line 344
    const-wide/16 v18, 0x0

    .line 345
    .line 346
    const/16 v20, 0x0

    .line 347
    .line 348
    const-wide/16 v21, 0x0

    .line 349
    .line 350
    const-wide/16 v23, 0x0

    .line 351
    .line 352
    const/16 v25, 0x0

    .line 353
    .line 354
    move-wide/from16 v16, v7

    .line 355
    .line 356
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    check-cast v8, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 365
    .line 366
    move-object/from16 p6, v7

    .line 367
    .line 368
    iget-wide v7, v8, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 369
    .line 370
    const/high16 v12, 0x3f000000    # 0.5f

    .line 371
    .line 372
    invoke-static {v7, v8, v12}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 373
    .line 374
    .line 375
    move-result-wide v16

    .line 376
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    move-object/from16 v35, v15

    .line 381
    .line 382
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    check-cast v8, Ljava/lang/Boolean;

    .line 387
    .line 388
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    const/16 v36, 0x0

    .line 393
    .line 394
    if-eqz v8, :cond_16

    .line 395
    .line 396
    const/high16 v8, 0x3f800000    # 1.0f

    .line 397
    .line 398
    :goto_e
    move/from16 p8, v12

    .line 399
    .line 400
    goto :goto_f

    .line 401
    :cond_16
    move/from16 v8, v36

    .line 402
    .line 403
    goto :goto_e

    .line 404
    :goto_f
    const/4 v12, 0x0

    .line 405
    const/16 v15, 0x1e

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    invoke-static {v8, v12, v0, v4, v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 417
    .line 418
    move-object/from16 p10, v7

    .line 419
    .line 420
    move-object/from16 p11, v8

    .line 421
    .line 422
    iget-wide v7, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 423
    .line 424
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    check-cast v4, Ljava/lang/Number;

    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    const v12, 0x3ecccccd    # 0.4f

    .line 435
    .line 436
    .line 437
    mul-float/2addr v4, v12

    .line 438
    invoke-static {v7, v8, v4}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 439
    .line 440
    .line 441
    move-result-wide v7

    .line 442
    const/high16 v4, 0x41700000    # 15.0f

    .line 443
    .line 444
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    .line 449
    .line 450
    invoke-direct {v12, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 451
    .line 452
    .line 453
    new-instance v7, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 454
    .line 455
    const/high16 v8, 0x40600000    # 3.5f

    .line 456
    .line 457
    invoke-direct {v7, v8, v12, v4}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/Shape;)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v1, v7}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 473
    .line 474
    iget-wide v7, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 475
    .line 476
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    check-cast v12, Ljava/lang/Number;

    .line 481
    .line 482
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 483
    .line 484
    .line 485
    move-result v12

    .line 486
    mul-float v12, v12, p8

    .line 487
    .line 488
    invoke-static {v7, v8, v12}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 489
    .line 490
    .line 491
    move-result-wide v7

    .line 492
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    .line 493
    .line 494
    invoke-direct {v12, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 495
    .line 496
    .line 497
    new-instance v7, Landroidx/compose/foundation/BorderModifierNodeElement;

    .line 498
    .line 499
    const/high16 v8, 0x3f800000    # 1.0f

    .line 500
    .line 501
    invoke-direct {v7, v8, v12, v5}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/Shape;)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v4, v7}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-static {v4, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    check-cast v5, Ljava/lang/Boolean;

    .line 517
    .line 518
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    if-eqz v5, :cond_17

    .line 523
    .line 524
    const v5, 0x59b2c0a5

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 535
    .line 536
    iget-wide v7, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 537
    .line 538
    const v5, 0x3d23d70a    # 0.04f

    .line 539
    .line 540
    .line 541
    invoke-static {v7, v8, v5}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 542
    .line 543
    .line 544
    move-result-wide v7

    .line 545
    const/4 v5, 0x0

    .line 546
    :goto_10
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 547
    .line 548
    .line 549
    goto :goto_11

    .line 550
    :cond_17
    const/4 v5, 0x0

    .line 551
    const v7, 0x59b2c79c

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 562
    .line 563
    iget-wide v7, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 564
    .line 565
    goto :goto_10

    .line 566
    :goto_11
    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 567
    .line 568
    invoke-static {v4, v7, v8, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 573
    .line 574
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    move/from16 v24, v9

    .line 579
    .line 580
    iget-wide v8, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 581
    .line 582
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 595
    .line 596
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 600
    .line 601
    .line 602
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 603
    .line 604
    if-eqz v9, :cond_18

    .line 605
    .line 606
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 607
    .line 608
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 609
    .line 610
    .line 611
    goto :goto_12

    .line 612
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 613
    .line 614
    .line 615
    :goto_12
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 616
    .line 617
    invoke-static {v0, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 618
    .line 619
    .line 620
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 621
    .line 622
    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 623
    .line 624
    .line 625
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 630
    .line 631
    invoke-static {v0, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 632
    .line 633
    .line 634
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 635
    .line 636
    .line 637
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 638
    .line 639
    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 640
    .line 641
    .line 642
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 643
    .line 644
    const/high16 v8, 0x3f800000    # 1.0f

    .line 645
    .line 646
    invoke-static {v12, v8}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    const/high16 v5, 0x41800000    # 16.0f

    .line 651
    .line 652
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-static {v4, v2}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    if-ne v5, v10, :cond_19

    .line 669
    .line 670
    new-instance v5, Li2;

    .line 671
    .line 672
    const/16 v7, 0xf

    .line 673
    .line 674
    invoke-direct {v5, v3, v7}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 681
    .line 682
    invoke-static {v4, v5}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 683
    .line 684
    .line 685
    move-result-object v17

    .line 686
    invoke-static/range {p6 .. p6}, Lnet/blip/shared/DynamicFontTrackingKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 687
    .line 688
    .line 689
    move-result-object v19

    .line 690
    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    .line 691
    .line 692
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 697
    .line 698
    iget-wide v4, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 699
    .line 700
    invoke-direct {v15, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 701
    .line 702
    .line 703
    move-object v4, v3

    .line 704
    new-instance v3, Lcg;

    .line 705
    .line 706
    move-object/from16 v5, p3

    .line 707
    .line 708
    move-object/from16 v7, p4

    .line 709
    .line 710
    move/from16 v8, p5

    .line 711
    .line 712
    move-object/from16 v6, p10

    .line 713
    .line 714
    move-object/from16 v37, v4

    .line 715
    .line 716
    move/from16 v9, v24

    .line 717
    .line 718
    move-object/from16 v4, p1

    .line 719
    .line 720
    invoke-direct/range {v3 .. v9}, Lcg;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;II)V

    .line 721
    .line 722
    .line 723
    move/from16 v23, v8

    .line 724
    .line 725
    const v4, -0x1c83ffb5

    .line 726
    .line 727
    .line 728
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 729
    .line 730
    .line 731
    move-result-object v29

    .line 732
    shr-int/lit8 v3, v34, 0x3

    .line 733
    .line 734
    const v4, 0xff8007e

    .line 735
    .line 736
    .line 737
    and-int/2addr v3, v4

    .line 738
    or-int v31, v3, p12

    .line 739
    .line 740
    shr-int/lit8 v3, v34, 0xf

    .line 741
    .line 742
    and-int/lit8 v3, v3, 0x70

    .line 743
    .line 744
    const v4, 0x30006

    .line 745
    .line 746
    .line 747
    or-int v32, v4, v3

    .line 748
    .line 749
    const/16 v33, 0x3018

    .line 750
    .line 751
    const/16 v18, 0x0

    .line 752
    .line 753
    const/16 v26, 0x0

    .line 754
    .line 755
    const/16 v27, 0x0

    .line 756
    .line 757
    move-object/from16 v16, p2

    .line 758
    .line 759
    move-object/from16 v20, p7

    .line 760
    .line 761
    move-object/from16 v30, v0

    .line 762
    .line 763
    move-object/from16 v25, v7

    .line 764
    .line 765
    move-object/from16 v21, v11

    .line 766
    .line 767
    move/from16 v22, v13

    .line 768
    .line 769
    move-object/from16 v28, v15

    .line 770
    .line 771
    move-object/from16 v15, p1

    .line 772
    .line 773
    invoke-static/range {v15 .. v33}, Landroidx/compose/foundation/text/BasicTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    .line 774
    .line 775
    .line 776
    invoke-interface/range {v37 .. v37}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    check-cast v3, Ljava/lang/Boolean;

    .line 781
    .line 782
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eqz v3, :cond_1a

    .line 787
    .line 788
    :goto_13
    move/from16 v3, v36

    .line 789
    .line 790
    goto :goto_14

    .line 791
    :cond_1a
    const/high16 v36, 0x40000000    # 2.0f

    .line 792
    .line 793
    goto :goto_13

    .line 794
    :goto_14
    invoke-static {v12, v3}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 799
    .line 800
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 801
    .line 802
    .line 803
    move-result-object v25

    .line 804
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    if-ne v3, v10, :cond_1b

    .line 809
    .line 810
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    :cond_1b
    move-object/from16 v26, v3

    .line 818
    .line 819
    check-cast v26, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 820
    .line 821
    const-wide/16 v3, 0x0

    .line 822
    .line 823
    const/4 v5, 0x7

    .line 824
    const/4 v6, 0x0

    .line 825
    invoke-static {v5, v3, v4, v6}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 826
    .line 827
    .line 828
    move-result-object v27

    .line 829
    const/high16 v3, 0x70000

    .line 830
    .line 831
    and-int v3, v34, v3

    .line 832
    .line 833
    const/high16 v4, 0x20000

    .line 834
    .line 835
    if-ne v3, v4, :cond_1c

    .line 836
    .line 837
    const/4 v4, 0x1

    .line 838
    goto :goto_15

    .line 839
    :cond_1c
    const/4 v4, 0x0

    .line 840
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    if-nez v4, :cond_1e

    .line 845
    .line 846
    if-ne v3, v10, :cond_1d

    .line 847
    .line 848
    goto :goto_16

    .line 849
    :cond_1d
    const/4 v4, 0x1

    .line 850
    goto :goto_17

    .line 851
    :cond_1e
    :goto_16
    new-instance v3, Lye;

    .line 852
    .line 853
    const/4 v4, 0x1

    .line 854
    invoke-direct {v3, v2, v4}, Lye;-><init>(Landroidx/compose/ui/focus/FocusRequester;I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    :goto_17
    move-object/from16 v30, v3

    .line 861
    .line 862
    check-cast v30, Lkotlin/jvm/functions/Function0;

    .line 863
    .line 864
    const/16 v31, 0x1c

    .line 865
    .line 866
    const/16 v28, 0x0

    .line 867
    .line 868
    const/16 v29, 0x0

    .line 869
    .line 870
    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    const/4 v5, 0x0

    .line 875
    invoke-static {v3, v0, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 879
    .line 880
    .line 881
    move-object v6, v2

    .line 882
    move-object/from16 v9, v21

    .line 883
    .line 884
    move/from16 v10, v22

    .line 885
    .line 886
    move/from16 v11, v23

    .line 887
    .line 888
    move/from16 v12, v24

    .line 889
    .line 890
    move-object/from16 v5, v35

    .line 891
    .line 892
    goto :goto_18

    .line 893
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 894
    .line 895
    .line 896
    move/from16 v10, p9

    .line 897
    .line 898
    move/from16 v12, p11

    .line 899
    .line 900
    move-object v5, v3

    .line 901
    move-object v6, v7

    .line 902
    move-object v7, v9

    .line 903
    move-object v9, v11

    .line 904
    move/from16 v11, p10

    .line 905
    .line 906
    :goto_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 907
    .line 908
    .line 909
    move-result-object v15

    .line 910
    if-eqz v15, :cond_20

    .line 911
    .line 912
    new-instance v0, Ldg;

    .line 913
    .line 914
    move-object/from16 v2, p1

    .line 915
    .line 916
    move-object/from16 v3, p2

    .line 917
    .line 918
    move-object/from16 v4, p3

    .line 919
    .line 920
    move-object/from16 v8, p7

    .line 921
    .line 922
    move/from16 v13, p13

    .line 923
    .line 924
    invoke-direct/range {v0 .. v14}, Ldg;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIIII)V

    .line 925
    .line 926
    .line 927
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 928
    .line 929
    :cond_20
    return-void
.end method
