.class public abstract Lnet/blip/android/ui/lockups/BlankStateLockupKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 55

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    move-object/from16 v4, p7

    .line 4
    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x629fa1a1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p9, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    or-int/lit8 v1, v8, 0x6

    .line 18
    .line 19
    move v2, v1

    .line 20
    move-object/from16 v1, p0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v1, v8, 0x6

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v1, p0

    .line 41
    .line 42
    move v2, v8

    .line 43
    :goto_1
    and-int/lit8 v3, p9, 0x2

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    or-int/lit8 v2, v2, 0x30

    .line 48
    .line 49
    move-object/from16 v5, p1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object/from16 v5, p1

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    const/16 v6, 0x20

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const/16 v6, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v2, v6

    .line 66
    :goto_3
    and-int/lit8 v6, p9, 0x8

    .line 67
    .line 68
    if-eqz v6, :cond_6

    .line 69
    .line 70
    or-int/lit16 v2, v2, 0xc00

    .line 71
    .line 72
    :cond_5
    move-object/from16 v9, p3

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    and-int/lit16 v9, v8, 0xc00

    .line 76
    .line 77
    if-nez v9, :cond_5

    .line 78
    .line 79
    move-object/from16 v9, p3

    .line 80
    .line 81
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    const/16 v10, 0x800

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    const/16 v10, 0x400

    .line 91
    .line 92
    :goto_4
    or-int/2addr v2, v10

    .line 93
    :goto_5
    and-int/lit8 v10, p9, 0x10

    .line 94
    .line 95
    if-eqz v10, :cond_9

    .line 96
    .line 97
    or-int/lit16 v2, v2, 0x6000

    .line 98
    .line 99
    :cond_8
    move-object/from16 v11, p4

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_9
    and-int/lit16 v11, v8, 0x6000

    .line 103
    .line 104
    if-nez v11, :cond_8

    .line 105
    .line 106
    move-object/from16 v11, p4

    .line 107
    .line 108
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-eqz v12, :cond_a

    .line 113
    .line 114
    const/16 v12, 0x4000

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const/16 v12, 0x2000

    .line 118
    .line 119
    :goto_6
    or-int/2addr v2, v12

    .line 120
    :goto_7
    and-int/lit8 v12, p9, 0x20

    .line 121
    .line 122
    const/high16 v13, 0x30000

    .line 123
    .line 124
    if-eqz v12, :cond_c

    .line 125
    .line 126
    or-int/2addr v2, v13

    .line 127
    :cond_b
    move-object/from16 v13, p5

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_c
    and-int/2addr v13, v8

    .line 131
    if-nez v13, :cond_b

    .line 132
    .line 133
    move-object/from16 v13, p5

    .line 134
    .line 135
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_d

    .line 140
    .line 141
    const/high16 v14, 0x20000

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_d
    const/high16 v14, 0x10000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v2, v14

    .line 147
    :goto_9
    and-int/lit8 v14, p9, 0x40

    .line 148
    .line 149
    const/high16 v15, 0x180000

    .line 150
    .line 151
    if-eqz v14, :cond_f

    .line 152
    .line 153
    or-int/2addr v2, v15

    .line 154
    :cond_e
    move-object/from16 v15, p6

    .line 155
    .line 156
    :goto_a
    move/from16 v20, v2

    .line 157
    .line 158
    goto :goto_c

    .line 159
    :cond_f
    and-int/2addr v15, v8

    .line 160
    if-nez v15, :cond_e

    .line 161
    .line 162
    move-object/from16 v15, p6

    .line 163
    .line 164
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v16

    .line 168
    if-eqz v16, :cond_10

    .line 169
    .line 170
    const/high16 v16, 0x100000

    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_10
    const/high16 v16, 0x80000

    .line 174
    .line 175
    :goto_b
    or-int v2, v2, v16

    .line 176
    .line 177
    goto :goto_a

    .line 178
    :goto_c
    const v2, 0x92493

    .line 179
    .line 180
    .line 181
    and-int v2, v20, v2

    .line 182
    .line 183
    const/16 p7, 0x10

    .line 184
    .line 185
    const v7, 0x92492

    .line 186
    .line 187
    .line 188
    move/from16 v16, v10

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    move/from16 v17, v12

    .line 192
    .line 193
    if-eq v2, v7, :cond_11

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    goto :goto_d

    .line 197
    :cond_11
    move v2, v10

    .line 198
    :goto_d
    and-int/lit8 v7, v20, 0x1

    .line 199
    .line 200
    invoke-virtual {v4, v7, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_1f

    .line 205
    .line 206
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 207
    .line 208
    if-eqz v0, :cond_12

    .line 209
    .line 210
    move-object v0, v7

    .line 211
    goto :goto_e

    .line 212
    :cond_12
    move-object v0, v1

    .line 213
    :goto_e
    const/4 v1, 0x0

    .line 214
    if-eqz v3, :cond_13

    .line 215
    .line 216
    move-object v5, v1

    .line 217
    :cond_13
    if-eqz v6, :cond_14

    .line 218
    .line 219
    move-object/from16 v21, v1

    .line 220
    .line 221
    goto :goto_f

    .line 222
    :cond_14
    move-object/from16 v21, v9

    .line 223
    .line 224
    :goto_f
    if-eqz v16, :cond_15

    .line 225
    .line 226
    move-object/from16 v22, v1

    .line 227
    .line 228
    goto :goto_10

    .line 229
    :cond_15
    move-object/from16 v22, v11

    .line 230
    .line 231
    :goto_10
    if-eqz v17, :cond_16

    .line 232
    .line 233
    move-object v13, v1

    .line 234
    :cond_16
    if-eqz v14, :cond_18

    .line 235
    .line 236
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 241
    .line 242
    if-ne v1, v2, :cond_17

    .line 243
    .line 244
    new-instance v1, Ln;

    .line 245
    .line 246
    const/16 v2, 0x13

    .line 247
    .line 248
    invoke-direct {v1, v2}, Ln;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_17
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    move-object/from16 v23, v1

    .line 257
    .line 258
    goto :goto_11

    .line 259
    :cond_18
    move-object/from16 v23, v15

    .line 260
    .line 261
    :goto_11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 262
    .line 263
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    .line 268
    .line 269
    const/16 v3, 0x36

    .line 270
    .line 271
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 272
    .line 273
    invoke-static {v2, v6, v4, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget-wide v14, v4, Landroidx/compose/runtime/GapComposer;->T:J

    .line 278
    .line 279
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 297
    .line 298
    .line 299
    iget-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 300
    .line 301
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 302
    .line 303
    if-eqz v9, :cond_19

    .line 304
    .line 305
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 306
    .line 307
    .line 308
    goto :goto_12

    .line 309
    :cond_19
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 310
    .line 311
    .line 312
    :goto_12
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 313
    .line 314
    invoke-static {v4, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 315
    .line 316
    .line 317
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 318
    .line 319
    invoke-static {v4, v6, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 327
    .line 328
    invoke-static {v4, v2, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 332
    .line 333
    .line 334
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 335
    .line 336
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 337
    .line 338
    .line 339
    const/16 v24, 0xe

    .line 340
    .line 341
    if-nez v5, :cond_1a

    .line 342
    .line 343
    const v1, 0x1357a288

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v25, v0

    .line 353
    .line 354
    move-object/from16 v26, v5

    .line 355
    .line 356
    move-object/from16 p0, v13

    .line 357
    .line 358
    move-object v13, v2

    .line 359
    goto :goto_13

    .line 360
    :cond_1a
    const v1, 0x1357a289

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 364
    .line 365
    .line 366
    const/high16 v1, 0x42100000    # 36.0f

    .line 367
    .line 368
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 373
    .line 374
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 379
    .line 380
    move-object/from16 p0, v13

    .line 381
    .line 382
    iget-wide v12, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 383
    .line 384
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    shr-int/lit8 v6, v20, 0x3

    .line 389
    .line 390
    and-int/lit8 v6, v6, 0xe

    .line 391
    .line 392
    or-int/lit16 v6, v6, 0x1b0

    .line 393
    .line 394
    move-object v12, v0

    .line 395
    move-object v0, v5

    .line 396
    move v5, v6

    .line 397
    const/16 v6, 0x38

    .line 398
    .line 399
    move-object v13, v2

    .line 400
    move-object v2, v1

    .line 401
    const-string v1, ""

    .line 402
    .line 403
    move-object/from16 v25, v12

    .line 404
    .line 405
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v26, v0

    .line 409
    .line 410
    const/high16 v0, 0x41600000    # 14.0f

    .line 411
    .line 412
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 420
    .line 421
    .line 422
    :goto_13
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 423
    .line 424
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 429
    .line 430
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 431
    .line 432
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 433
    .line 434
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 439
    .line 440
    iget-wide v5, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 441
    .line 442
    invoke-static/range {p7 .. p7}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v30

    .line 446
    sget-object v32, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 447
    .line 448
    const/16 v3, 0x16

    .line 449
    .line 450
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v35

    .line 454
    const/16 v37, 0x0

    .line 455
    .line 456
    const v39, 0xdd7ff8

    .line 457
    .line 458
    .line 459
    const-wide/16 v33, 0x0

    .line 460
    .line 461
    sget v38, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 462
    .line 463
    move-object/from16 v27, v1

    .line 464
    .line 465
    move-wide/from16 v28, v5

    .line 466
    .line 467
    invoke-static/range {v27 .. v39}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    const/16 v18, 0x6

    .line 472
    .line 473
    const/16 v19, 0x1fa

    .line 474
    .line 475
    move v5, v10

    .line 476
    const/4 v10, 0x0

    .line 477
    const/4 v12, 0x0

    .line 478
    move-object v6, v13

    .line 479
    const/4 v13, 0x0

    .line 480
    move-object/from16 v17, v14

    .line 481
    .line 482
    const/4 v14, 0x0

    .line 483
    move-object/from16 v27, v15

    .line 484
    .line 485
    const/4 v15, 0x0

    .line 486
    const/16 v28, 0x1

    .line 487
    .line 488
    const/16 v16, 0x0

    .line 489
    .line 490
    move-object/from16 v53, v1

    .line 491
    .line 492
    move-object/from16 v1, p0

    .line 493
    .line 494
    move/from16 p0, v3

    .line 495
    .line 496
    move-object/from16 v3, v17

    .line 497
    .line 498
    move-object/from16 v17, v4

    .line 499
    .line 500
    move v4, v5

    .line 501
    move-object v5, v11

    .line 502
    move-object/from16 v11, v53

    .line 503
    .line 504
    move-object/from16 v54, v6

    .line 505
    .line 506
    move-object v6, v9

    .line 507
    move-object/from16 v53, v27

    .line 508
    .line 509
    move-object/from16 v9, p2

    .line 510
    .line 511
    invoke-static/range {v9 .. v19}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 512
    .line 513
    .line 514
    move-object/from16 v9, v17

    .line 515
    .line 516
    const/high16 v10, 0x40800000    # 4.0f

    .line 517
    .line 518
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 523
    .line 524
    .line 525
    if-nez v21, :cond_1b

    .line 526
    .line 527
    const v0, 0x13635e05

    .line 528
    .line 529
    .line 530
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 534
    .line 535
    .line 536
    move-object/from16 v10, v21

    .line 537
    .line 538
    goto :goto_14

    .line 539
    :cond_1b
    const v10, 0x13635e06

    .line 540
    .line 541
    .line 542
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 550
    .line 551
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 552
    .line 553
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 558
    .line 559
    iget-wide v10, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 560
    .line 561
    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 562
    .line 563
    .line 564
    move-result-wide v43

    .line 565
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 566
    .line 567
    .line 568
    move-result-wide v48

    .line 569
    const/16 v50, 0x0

    .line 570
    .line 571
    const v52, 0xdd7ffc

    .line 572
    .line 573
    .line 574
    const/16 v45, 0x0

    .line 575
    .line 576
    const-wide/16 v46, 0x0

    .line 577
    .line 578
    move-object/from16 v40, v0

    .line 579
    .line 580
    move-wide/from16 v41, v10

    .line 581
    .line 582
    move/from16 v51, v38

    .line 583
    .line 584
    invoke-static/range {v40 .. v52}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 585
    .line 586
    .line 587
    move-result-object v11

    .line 588
    const/16 v18, 0x0

    .line 589
    .line 590
    const/16 v19, 0x1fa

    .line 591
    .line 592
    const/4 v10, 0x0

    .line 593
    const/4 v12, 0x0

    .line 594
    const/4 v13, 0x0

    .line 595
    const/4 v14, 0x0

    .line 596
    const/4 v15, 0x0

    .line 597
    const/16 v16, 0x0

    .line 598
    .line 599
    move-object/from16 v17, v9

    .line 600
    .line 601
    move-object/from16 v9, v21

    .line 602
    .line 603
    invoke-static/range {v9 .. v19}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 604
    .line 605
    .line 606
    move-object v10, v9

    .line 607
    move-object/from16 v9, v17

    .line 608
    .line 609
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 610
    .line 611
    .line 612
    :goto_14
    if-nez v22, :cond_1c

    .line 613
    .line 614
    const v0, 0x1369b31a

    .line 615
    .line 616
    .line 617
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 621
    .line 622
    .line 623
    move-object v13, v1

    .line 624
    move-object v4, v9

    .line 625
    move-object/from16 v1, v22

    .line 626
    .line 627
    move-object/from16 v15, v23

    .line 628
    .line 629
    move/from16 v9, v28

    .line 630
    .line 631
    goto/16 :goto_18

    .line 632
    .line 633
    :cond_1c
    const v0, 0x1369b31b

    .line 634
    .line 635
    .line 636
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 637
    .line 638
    .line 639
    const/high16 v0, 0x40c00000    # 6.0f

    .line 640
    .line 641
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 646
    .line 647
    .line 648
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 649
    .line 650
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    iget-wide v11, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 655
    .line 656
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 661
    .line 662
    .line 663
    move-result-object v11

    .line 664
    invoke-static {v9, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 669
    .line 670
    .line 671
    iget-boolean v12, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 672
    .line 673
    if-eqz v12, :cond_1d

    .line 674
    .line 675
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 676
    .line 677
    .line 678
    goto :goto_15

    .line 679
    :cond_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 680
    .line 681
    .line 682
    :goto_15
    invoke-static {v9, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 683
    .line 684
    .line 685
    invoke-static {v9, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 686
    .line 687
    .line 688
    move-object/from16 v0, v53

    .line 689
    .line 690
    invoke-static {v2, v9, v0, v9}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 691
    .line 692
    .line 693
    move-object/from16 v13, v54

    .line 694
    .line 695
    invoke-static {v9, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 696
    .line 697
    .line 698
    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 699
    .line 700
    .line 701
    move-result-wide v2

    .line 702
    shr-int/lit8 v0, v20, 0x9

    .line 703
    .line 704
    and-int/lit16 v0, v0, 0x1c00

    .line 705
    .line 706
    or-int/lit16 v6, v0, 0x180

    .line 707
    .line 708
    const/4 v0, 0x0

    .line 709
    move-object v13, v1

    .line 710
    move v7, v4

    .line 711
    move-object v5, v9

    .line 712
    move-object/from16 v1, v22

    .line 713
    .line 714
    move-object/from16 v4, v23

    .line 715
    .line 716
    move/from16 v9, v28

    .line 717
    .line 718
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/components/TextButtonKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 719
    .line 720
    .line 721
    move-object v15, v4

    .line 722
    move-object v4, v5

    .line 723
    if-nez v13, :cond_1e

    .line 724
    .line 725
    const v0, 0xc2ef40

    .line 726
    .line 727
    .line 728
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 729
    .line 730
    .line 731
    :goto_16
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 732
    .line 733
    .line 734
    goto :goto_17

    .line 735
    :cond_1e
    const v0, 0xc2ef41

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 739
    .line 740
    .line 741
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-interface {v13, v4, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    goto :goto_16

    .line 749
    :goto_17
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 753
    .line 754
    .line 755
    :goto_18
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 756
    .line 757
    .line 758
    move-object v5, v1

    .line 759
    move-object v9, v4

    .line 760
    move-object v4, v10

    .line 761
    move-object/from16 v1, v25

    .line 762
    .line 763
    move-object/from16 v2, v26

    .line 764
    .line 765
    :goto_19
    move-object v6, v13

    .line 766
    move-object v7, v15

    .line 767
    goto :goto_1a

    .line 768
    :cond_1f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 769
    .line 770
    .line 771
    move-object v2, v9

    .line 772
    move-object v9, v4

    .line 773
    move-object v4, v2

    .line 774
    move-object v2, v5

    .line 775
    move-object v5, v11

    .line 776
    goto :goto_19

    .line 777
    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 778
    .line 779
    .line 780
    move-result-object v11

    .line 781
    if-eqz v11, :cond_20

    .line 782
    .line 783
    new-instance v0, La3;

    .line 784
    .line 785
    const/4 v10, 0x1

    .line 786
    move-object/from16 v3, p2

    .line 787
    .line 788
    move/from16 v9, p9

    .line 789
    .line 790
    invoke-direct/range {v0 .. v10}, La3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;III)V

    .line 791
    .line 792
    .line 793
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 794
    .line 795
    :cond_20
    return-void
.end method
