.class public abstract Lnet/blip/android/ui/components/SearchFieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move/from16 v5, p4

    .line 4
    .line 5
    move-object/from16 v8, p7

    .line 6
    .line 7
    move/from16 v9, p9

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p8

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v1, 0x5869ee86

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v1, p10, 0x1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    or-int/lit8 v4, v9, 0x6

    .line 27
    .line 28
    move v6, v4

    .line 29
    move-object/from16 v4, p0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    and-int/lit8 v4, v9, 0x6

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    move-object/from16 v4, p0

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v6, 0x2

    .line 47
    :goto_0
    or-int/2addr v6, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object/from16 v4, p0

    .line 50
    .line 51
    move v6, v9

    .line 52
    :goto_1
    and-int/lit8 v7, v9, 0x30

    .line 53
    .line 54
    const/16 v26, 0x10

    .line 55
    .line 56
    if-nez v7, :cond_4

    .line 57
    .line 58
    move-object/from16 v7, p1

    .line 59
    .line 60
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_3

    .line 65
    .line 66
    const/16 v10, 0x20

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move/from16 v10, v26

    .line 70
    .line 71
    :goto_2
    or-int/2addr v6, v10

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move-object/from16 v7, p1

    .line 74
    .line 75
    :goto_3
    and-int/lit16 v10, v9, 0x180

    .line 76
    .line 77
    if-nez v10, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_5

    .line 84
    .line 85
    const/16 v10, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    const/16 v10, 0x80

    .line 89
    .line 90
    :goto_4
    or-int/2addr v6, v10

    .line 91
    :cond_6
    and-int/lit8 v10, p10, 0x8

    .line 92
    .line 93
    if-eqz v10, :cond_8

    .line 94
    .line 95
    or-int/lit16 v6, v6, 0xc00

    .line 96
    .line 97
    :cond_7
    move/from16 v11, p3

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_8
    and-int/lit16 v11, v9, 0xc00

    .line 101
    .line 102
    if-nez v11, :cond_7

    .line 103
    .line 104
    move/from16 v11, p3

    .line 105
    .line 106
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_9

    .line 111
    .line 112
    const/16 v12, 0x800

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    const/16 v12, 0x400

    .line 116
    .line 117
    :goto_5
    or-int/2addr v6, v12

    .line 118
    :goto_6
    and-int/lit16 v12, v9, 0x6000

    .line 119
    .line 120
    if-nez v12, :cond_b

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_a

    .line 127
    .line 128
    const/16 v12, 0x4000

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_a
    const/16 v12, 0x2000

    .line 132
    .line 133
    :goto_7
    or-int/2addr v6, v12

    .line 134
    :cond_b
    and-int/lit8 v12, p10, 0x20

    .line 135
    .line 136
    const/high16 v14, 0x30000

    .line 137
    .line 138
    if-eqz v12, :cond_d

    .line 139
    .line 140
    or-int/2addr v6, v14

    .line 141
    :cond_c
    move-object/from16 v14, p5

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_d
    and-int/2addr v14, v9

    .line 145
    if-nez v14, :cond_c

    .line 146
    .line 147
    move-object/from16 v14, p5

    .line 148
    .line 149
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    if-eqz v15, :cond_e

    .line 154
    .line 155
    const/high16 v15, 0x20000

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_e
    const/high16 v15, 0x10000

    .line 159
    .line 160
    :goto_8
    or-int/2addr v6, v15

    .line 161
    :goto_9
    const/high16 v15, 0x180000

    .line 162
    .line 163
    and-int/2addr v15, v9

    .line 164
    if-nez v15, :cond_10

    .line 165
    .line 166
    move-object/from16 v15, p6

    .line 167
    .line 168
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    if-eqz v16, :cond_f

    .line 173
    .line 174
    const/high16 v16, 0x100000

    .line 175
    .line 176
    goto :goto_a

    .line 177
    :cond_f
    const/high16 v16, 0x80000

    .line 178
    .line 179
    :goto_a
    or-int v6, v6, v16

    .line 180
    .line 181
    goto :goto_b

    .line 182
    :cond_10
    move-object/from16 v15, p6

    .line 183
    .line 184
    :goto_b
    const/high16 v16, 0xc00000

    .line 185
    .line 186
    and-int v16, v9, v16

    .line 187
    .line 188
    if-nez v16, :cond_12

    .line 189
    .line 190
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v16

    .line 194
    if-eqz v16, :cond_11

    .line 195
    .line 196
    const/high16 v16, 0x800000

    .line 197
    .line 198
    goto :goto_c

    .line 199
    :cond_11
    const/high16 v16, 0x400000

    .line 200
    .line 201
    :goto_c
    or-int v6, v6, v16

    .line 202
    .line 203
    :cond_12
    const v16, 0x492493

    .line 204
    .line 205
    .line 206
    and-int v2, v6, v16

    .line 207
    .line 208
    const v13, 0x492492

    .line 209
    .line 210
    .line 211
    move/from16 v17, v1

    .line 212
    .line 213
    if-eq v2, v13, :cond_13

    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    goto :goto_d

    .line 217
    :cond_13
    const/4 v2, 0x0

    .line 218
    :goto_d
    and-int/lit8 v13, v6, 0x1

    .line 219
    .line 220
    invoke-virtual {v0, v13, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_22

    .line 225
    .line 226
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 227
    .line 228
    if-eqz v17, :cond_14

    .line 229
    .line 230
    move-object v4, v2

    .line 231
    :cond_14
    if-eqz v10, :cond_15

    .line 232
    .line 233
    const/16 v27, 0x1

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_15
    move/from16 v27, v11

    .line 237
    .line 238
    :goto_e
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 239
    .line 240
    if-eqz v12, :cond_17

    .line 241
    .line 242
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    if-ne v11, v10, :cond_16

    .line 247
    .line 248
    new-instance v11, Landroidx/compose/ui/focus/FocusRequester;

    .line 249
    .line 250
    invoke-direct {v11}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_16
    check-cast v11, Landroidx/compose/ui/focus/FocusRequester;

    .line 257
    .line 258
    goto :goto_f

    .line 259
    :cond_17
    move-object v11, v14

    .line 260
    :goto_f
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 261
    .line 262
    const/4 v13, 0x0

    .line 263
    invoke-static {v12, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 268
    .line 269
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 282
    .line 283
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 287
    .line 288
    .line 289
    move-object/from16 p0, v4

    .line 290
    .line 291
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 292
    .line 293
    if-eqz v4, :cond_18

    .line 294
    .line 295
    sget-object v4, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 298
    .line 299
    .line 300
    goto :goto_10

    .line 301
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 302
    .line 303
    .line 304
    :goto_10
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 305
    .line 306
    invoke-static {v0, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 307
    .line 308
    .line 309
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 310
    .line 311
    invoke-static {v0, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 319
    .line 320
    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 324
    .line 325
    .line 326
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 327
    .line 328
    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-ne v1, v10, :cond_19

    .line 336
    .line 337
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 338
    .line 339
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    :cond_19
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 347
    .line 348
    const/high16 v4, 0x3f800000    # 1.0f

    .line 349
    .line 350
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    const/high16 v13, 0x42680000    # 58.0f

    .line 355
    .line 356
    invoke-static {v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    invoke-static {v12, v4}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-static {v4, v11}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    const/high16 v12, 0x1c00000

    .line 369
    .line 370
    and-int/2addr v12, v6

    .line 371
    const/high16 v13, 0x800000

    .line 372
    .line 373
    if-ne v12, v13, :cond_1a

    .line 374
    .line 375
    const/4 v12, 0x1

    .line 376
    goto :goto_11

    .line 377
    :cond_1a
    const/4 v12, 0x0

    .line 378
    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    if-nez v12, :cond_1b

    .line 383
    .line 384
    if-ne v13, v10, :cond_1c

    .line 385
    .line 386
    :cond_1b
    new-instance v13, Llc;

    .line 387
    .line 388
    const/4 v12, 0x1

    .line 389
    invoke-direct {v13, v12, v1, v8}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_1c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 396
    .line 397
    invoke-static {v4, v13}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v0, v4}, Lnet/blip/android/ui/util/KeyboardKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    sget-object v12, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 406
    .line 407
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v13

    .line 411
    check-cast v13, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 412
    .line 413
    iget-wide v13, v13, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 414
    .line 415
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v16

    .line 419
    move-object/from16 p3, v1

    .line 420
    .line 421
    move-object/from16 v1, v16

    .line 422
    .line 423
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 424
    .line 425
    move/from16 v28, v6

    .line 426
    .line 427
    iget-wide v6, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 428
    .line 429
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 434
    .line 435
    move-object/from16 v24, v0

    .line 436
    .line 437
    iget-wide v0, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 438
    .line 439
    move-object/from16 v16, v10

    .line 440
    .line 441
    move-wide/from16 v29, v13

    .line 442
    .line 443
    move-object v14, v11

    .line 444
    move-wide/from16 v10, v29

    .line 445
    .line 446
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->g:J

    .line 447
    .line 448
    sget-wide v22, Landroidx/compose/ui/graphics/Color;->e:J

    .line 449
    .line 450
    move-object/from16 v18, v16

    .line 451
    .line 452
    const-wide/16 v16, 0x0

    .line 453
    .line 454
    const v25, 0x17fdb2

    .line 455
    .line 456
    .line 457
    move-object/from16 v20, v18

    .line 458
    .line 459
    move-wide/from16 v18, v12

    .line 460
    .line 461
    move-wide/from16 v29, v0

    .line 462
    .line 463
    move-object v0, v14

    .line 464
    move-wide v14, v6

    .line 465
    move-object/from16 v6, v20

    .line 466
    .line 467
    move-wide/from16 v20, v29

    .line 468
    .line 469
    const/high16 v1, 0x20000

    .line 470
    .line 471
    invoke-static/range {v10 .. v25}, Landroidx/compose/material/TextFieldDefaults;->d(JJJJJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material/TextFieldColors;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    move-object/from16 v10, v24

    .line 476
    .line 477
    sget-object v11, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 478
    .line 479
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v11

    .line 483
    check-cast v11, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 484
    .line 485
    iget-object v12, v11, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 486
    .line 487
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 488
    .line 489
    .line 490
    move-result-wide v15

    .line 491
    const/16 v23, 0x0

    .line 492
    .line 493
    const v24, 0xfffffd

    .line 494
    .line 495
    .line 496
    const-wide/16 v13, 0x0

    .line 497
    .line 498
    const/16 v17, 0x0

    .line 499
    .line 500
    const-wide/16 v18, 0x0

    .line 501
    .line 502
    const-wide/16 v20, 0x0

    .line 503
    .line 504
    const/16 v22, 0x0

    .line 505
    .line 506
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 507
    .line 508
    .line 509
    move-result-object v14

    .line 510
    new-instance v15, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 511
    .line 512
    const/16 v19, 0x3

    .line 513
    .line 514
    const/16 v20, 0x77

    .line 515
    .line 516
    const/16 v16, 0x0

    .line 517
    .line 518
    const/16 v18, 0x0

    .line 519
    .line 520
    invoke-direct/range {v15 .. v20}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;III)V

    .line 521
    .line 522
    .line 523
    new-instance v11, Lw;

    .line 524
    .line 525
    const/4 v12, 0x4

    .line 526
    invoke-direct {v11, v3, v12}, Lw;-><init>(Ljava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    const v12, 0x790b5c7

    .line 530
    .line 531
    .line 532
    invoke-static {v12, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    new-instance v12, Lxe;

    .line 537
    .line 538
    invoke-direct {v12, v5}, Lxe;-><init>(Z)V

    .line 539
    .line 540
    .line 541
    const v13, -0x87a6d7b

    .line 542
    .line 543
    .line 544
    invoke-static {v13, v12, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 545
    .line 546
    .line 547
    move-result-object v17

    .line 548
    shr-int/lit8 v12, v28, 0x3

    .line 549
    .line 550
    and-int/lit8 v12, v12, 0xe

    .line 551
    .line 552
    const/high16 v13, 0x36c00000

    .line 553
    .line 554
    or-int/2addr v12, v13

    .line 555
    shr-int/lit8 v13, v28, 0xf

    .line 556
    .line 557
    and-int/lit8 v13, v13, 0x70

    .line 558
    .line 559
    or-int v26, v12, v13

    .line 560
    .line 561
    const/4 v13, 0x0

    .line 562
    sget-object v16, Lnet/blip/android/ui/components/ComposableSingletons$SearchFieldKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 563
    .line 564
    const/16 v18, 0x0

    .line 565
    .line 566
    const/16 v20, 0x0

    .line 567
    .line 568
    const/16 v21, 0x0

    .line 569
    .line 570
    const/16 v22, 0x0

    .line 571
    .line 572
    const/16 v23, 0x0

    .line 573
    .line 574
    move-object v12, v4

    .line 575
    move-object/from16 v24, v7

    .line 576
    .line 577
    move-object/from16 v25, v10

    .line 578
    .line 579
    move-object/from16 v19, v15

    .line 580
    .line 581
    move-object/from16 v10, p1

    .line 582
    .line 583
    move-object v15, v11

    .line 584
    move-object/from16 v11, p6

    .line 585
    .line 586
    invoke-static/range {v10 .. v26}, Landroidx/compose/material/TextFieldKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;I)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v10, v25

    .line 590
    .line 591
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    check-cast v4, Ljava/lang/Boolean;

    .line 596
    .line 597
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-eqz v4, :cond_1d

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    goto :goto_12

    .line 605
    :cond_1d
    const/high16 v4, 0x40000000    # 2.0f

    .line 606
    .line 607
    :goto_12
    invoke-static {v2, v4}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 612
    .line 613
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 614
    .line 615
    .line 616
    move-result-object v17

    .line 617
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    if-ne v2, v6, :cond_1e

    .line 622
    .line 623
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    :cond_1e
    move-object/from16 v18, v2

    .line 631
    .line 632
    check-cast v18, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 633
    .line 634
    const-wide/16 v11, 0x0

    .line 635
    .line 636
    const/4 v2, 0x7

    .line 637
    const/4 v13, 0x0

    .line 638
    invoke-static {v2, v11, v12, v13}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 639
    .line 640
    .line 641
    move-result-object v19

    .line 642
    const/high16 v2, 0x70000

    .line 643
    .line 644
    and-int v2, v28, v2

    .line 645
    .line 646
    if-ne v2, v1, :cond_1f

    .line 647
    .line 648
    const/4 v13, 0x1

    .line 649
    goto :goto_13

    .line 650
    :cond_1f
    const/4 v13, 0x0

    .line 651
    :goto_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    if-nez v13, :cond_21

    .line 656
    .line 657
    if-ne v1, v6, :cond_20

    .line 658
    .line 659
    goto :goto_14

    .line 660
    :cond_20
    const/4 v13, 0x0

    .line 661
    goto :goto_15

    .line 662
    :cond_21
    :goto_14
    new-instance v1, Lye;

    .line 663
    .line 664
    const/4 v13, 0x0

    .line 665
    invoke-direct {v1, v0, v13}, Lye;-><init>(Landroidx/compose/ui/focus/FocusRequester;I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    :goto_15
    move-object/from16 v22, v1

    .line 672
    .line 673
    check-cast v22, Lkotlin/jvm/functions/Function0;

    .line 674
    .line 675
    const/16 v23, 0x18

    .line 676
    .line 677
    const/16 v21, 0x0

    .line 678
    .line 679
    move/from16 v20, v27

    .line 680
    .line 681
    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-static {v1, v10, v13}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 686
    .line 687
    .line 688
    const/4 v12, 0x1

    .line 689
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v1, p0

    .line 693
    .line 694
    move-object v6, v0

    .line 695
    move/from16 v4, v20

    .line 696
    .line 697
    goto :goto_16

    .line 698
    :cond_22
    move-object v10, v0

    .line 699
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 700
    .line 701
    .line 702
    move-object v1, v4

    .line 703
    move v4, v11

    .line 704
    move-object v6, v14

    .line 705
    :goto_16
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 706
    .line 707
    .line 708
    move-result-object v11

    .line 709
    if-eqz v11, :cond_23

    .line 710
    .line 711
    new-instance v0, Lze;

    .line 712
    .line 713
    move-object/from16 v2, p1

    .line 714
    .line 715
    move-object/from16 v7, p6

    .line 716
    .line 717
    move/from16 v10, p10

    .line 718
    .line 719
    invoke-direct/range {v0 .. v10}, Lze;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 720
    .line 721
    .line 722
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 723
    .line 724
    :cond_23
    return-void
.end method
