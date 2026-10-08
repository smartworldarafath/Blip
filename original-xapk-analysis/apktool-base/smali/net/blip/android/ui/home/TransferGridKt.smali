.class public abstract Lnet/blip/android/ui/home/TransferGridKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    .line 1
    move-object/from16 v14, p8

    .line 2
    .line 3
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0xe3d3c6d

    .line 6
    .line 7
    .line 8
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p9, 0x6

    .line 12
    .line 13
    move-object/from16 v6, p3

    .line 14
    .line 15
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x800

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0x400

    .line 25
    .line 26
    :goto_0
    or-int/2addr v0, v1

    .line 27
    move-object/from16 v9, p4

    .line 28
    .line 29
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x4000

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x2000

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v1

    .line 41
    move-object/from16 v7, p6

    .line 42
    .line 43
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/high16 v1, 0x100000

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/high16 v1, 0x80000

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v1

    .line 55
    const v1, 0x492493

    .line 56
    .line 57
    .line 58
    and-int/2addr v1, v0

    .line 59
    const v8, 0x492492

    .line 60
    .line 61
    .line 62
    const/4 v13, 0x0

    .line 63
    if-eq v1, v8, :cond_3

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v1, v13

    .line 68
    :goto_3
    and-int/lit8 v8, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {v14, v8, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_10

    .line 75
    .line 76
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 77
    .line 78
    invoke-static {v1, v14}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 83
    .line 84
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/content/Context;

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_4

    .line 97
    .line 98
    const/16 v16, 0x1

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_4
    move/from16 v16, v13

    .line 102
    .line 103
    :goto_4
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 104
    .line 105
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 106
    .line 107
    invoke-static {v8, v11, v14, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    iget-wide v11, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 112
    .line 113
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 122
    .line 123
    invoke-static {v14, v15}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 133
    .line 134
    .line 135
    iget-boolean v4, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 136
    .line 137
    sget-object v2, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 138
    .line 139
    if-eqz v4, :cond_5

    .line 140
    .line 141
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 146
    .line 147
    .line 148
    :goto_5
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 149
    .line 150
    invoke-static {v14, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 154
    .line 155
    invoke-static {v14, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 163
    .line 164
    invoke-static {v14, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 168
    .line 169
    .line 170
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 171
    .line 172
    invoke-static {v14, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    sget-object v5, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 176
    .line 177
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v18

    .line 181
    move-object/from16 v13, v18

    .line 182
    .line 183
    check-cast v13, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 184
    .line 185
    move-object/from16 p0, v4

    .line 186
    .line 187
    move-object/from16 v18, v5

    .line 188
    .line 189
    iget-wide v4, v13, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 190
    .line 191
    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 192
    .line 193
    invoke-static {v15, v4, v5, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const/high16 v5, 0x3f800000    # 1.0f

    .line 198
    .line 199
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v19

    .line 203
    new-instance v20, Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 204
    .line 205
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    const/high16 v4, 0x43200000    # 160.0f

    .line 209
    .line 210
    move-object/from16 v21, v15

    .line 211
    .line 212
    const/4 v15, 0x0

    .line 213
    invoke-static {v4, v15}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-lez v4, :cond_6

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_6
    const-string v4, "Provided min size should be larger than zero."

    .line 221
    .line 222
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_6
    if-eqz v16, :cond_7

    .line 226
    .line 227
    const v4, -0x9c57715

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 231
    .line 232
    .line 233
    const/4 v4, 0x0

    .line 234
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 235
    .line 236
    .line 237
    move v5, v15

    .line 238
    :goto_7
    move-object/from16 v22, v13

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_7
    const/4 v4, 0x0

    .line 242
    const v5, -0x9c57224

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 246
    .line 247
    .line 248
    sget-object v5, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 249
    .line 250
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 255
    .line 256
    iget v5, v5, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 257
    .line 258
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :goto_8
    new-instance v13, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 263
    .line 264
    const/high16 v4, 0x41c00000    # 24.0f

    .line 265
    .line 266
    invoke-direct {v13, v4, v15, v4, v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 267
    .line 268
    .line 269
    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 270
    .line 271
    .line 272
    move-result-object v24

    .line 273
    invoke-static {v15}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 274
    .line 275
    .line 276
    move-result-object v25

    .line 277
    and-int/lit16 v4, v0, 0x1c00

    .line 278
    .line 279
    const/16 v5, 0x800

    .line 280
    .line 281
    if-eq v4, v5, :cond_8

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    goto :goto_9

    .line 285
    :cond_8
    const/4 v4, 0x1

    .line 286
    :goto_9
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    or-int/2addr v4, v5

    .line 291
    const v5, 0xe000

    .line 292
    .line 293
    .line 294
    and-int/2addr v5, v0

    .line 295
    const/16 v15, 0x4000

    .line 296
    .line 297
    if-ne v5, v15, :cond_9

    .line 298
    .line 299
    const/4 v5, 0x1

    .line 300
    goto :goto_a

    .line 301
    :cond_9
    const/4 v5, 0x0

    .line 302
    :goto_a
    or-int/2addr v4, v5

    .line 303
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    or-int/2addr v4, v5

    .line 308
    const/high16 v5, 0x380000

    .line 309
    .line 310
    and-int/2addr v0, v5

    .line 311
    const/high16 v5, 0x100000

    .line 312
    .line 313
    if-ne v0, v5, :cond_a

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    goto :goto_b

    .line 317
    :cond_a
    const/4 v0, 0x0

    .line 318
    :goto_b
    or-int/2addr v0, v4

    .line 319
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-nez v0, :cond_c

    .line 324
    .line 325
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 326
    .line 327
    if-ne v4, v0, :cond_b

    .line 328
    .line 329
    goto :goto_c

    .line 330
    :cond_b
    move-object/from16 v15, p0

    .line 331
    .line 332
    move-object/from16 v26, v8

    .line 333
    .line 334
    move-object/from16 v28, v11

    .line 335
    .line 336
    move-object/from16 v27, v12

    .line 337
    .line 338
    move-object/from16 v0, v18

    .line 339
    .line 340
    const/high16 v1, 0x3f800000    # 1.0f

    .line 341
    .line 342
    const/16 v23, 0x0

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_c
    :goto_c
    new-instance v4, Lph;

    .line 346
    .line 347
    move-object/from16 v15, p0

    .line 348
    .line 349
    move-object/from16 v5, p1

    .line 350
    .line 351
    move-object/from16 v26, v8

    .line 352
    .line 353
    move-object/from16 v28, v11

    .line 354
    .line 355
    move-object/from16 v27, v12

    .line 356
    .line 357
    move-object/from16 v0, v18

    .line 358
    .line 359
    const/16 v23, 0x0

    .line 360
    .line 361
    move-object/from16 v8, p5

    .line 362
    .line 363
    move-object/from16 v12, p7

    .line 364
    .line 365
    move-object v11, v7

    .line 366
    move-object v7, v1

    .line 367
    const/high16 v1, 0x3f800000    # 1.0f

    .line 368
    .line 369
    invoke-direct/range {v4 .. v12}, Lph;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :goto_d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 376
    .line 377
    move-object v5, v15

    .line 378
    const/high16 v15, 0x1b0000

    .line 379
    .line 380
    const/4 v6, 0x0

    .line 381
    const/4 v10, 0x0

    .line 382
    const/4 v11, 0x0

    .line 383
    const/4 v12, 0x0

    .line 384
    move-object/from16 v29, v5

    .line 385
    .line 386
    move-object v7, v13

    .line 387
    move-object/from16 v5, v19

    .line 388
    .line 389
    move-object/from16 v3, v21

    .line 390
    .line 391
    move-object/from16 v30, v22

    .line 392
    .line 393
    move-object/from16 v9, v24

    .line 394
    .line 395
    move-object/from16 v8, v25

    .line 396
    .line 397
    move-object v13, v4

    .line 398
    move-object/from16 v4, v20

    .line 399
    .line 400
    invoke-static/range {v4 .. v15}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->a(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 401
    .line 402
    .line 403
    if-eqz v16, :cond_f

    .line 404
    .line 405
    const v4, -0x2eb67a77

    .line 406
    .line 407
    .line 408
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 409
    .line 410
    .line 411
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 420
    .line 421
    iget-wide v5, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 422
    .line 423
    move-object/from16 v0, v30

    .line 424
    .line 425
    invoke-static {v4, v5, v6, v0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const/high16 v4, 0x42800000    # 64.0f

    .line 430
    .line 431
    const/4 v5, 0x2

    .line 432
    const/4 v6, 0x0

    .line 433
    invoke-static {v0, v4, v6, v5}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    sget-object v0, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 438
    .line 439
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 444
    .line 445
    iget v11, v0, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 446
    .line 447
    const/4 v12, 0x7

    .line 448
    const/4 v8, 0x0

    .line 449
    const/4 v9, 0x0

    .line 450
    const/4 v10, 0x0

    .line 451
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 456
    .line 457
    const/4 v5, 0x0

    .line 458
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 463
    .line 464
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 477
    .line 478
    .line 479
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 480
    .line 481
    if-eqz v9, :cond_d

    .line 482
    .line 483
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 484
    .line 485
    .line 486
    :goto_e
    move-object/from16 v15, v29

    .line 487
    .line 488
    goto :goto_f

    .line 489
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 490
    .line 491
    .line 492
    goto :goto_e

    .line 493
    :goto_f
    invoke-static {v14, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v6, v26

    .line 497
    .line 498
    invoke-static {v14, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 499
    .line 500
    .line 501
    move-object/from16 v8, v27

    .line 502
    .line 503
    invoke-static {v7, v14, v8, v14}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 504
    .line 505
    .line 506
    move-object/from16 v7, v28

    .line 507
    .line 508
    invoke-static {v14, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 509
    .line 510
    .line 511
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const v1, 0x3f666666    # 0.9f

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 527
    .line 528
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 541
    .line 542
    .line 543
    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 544
    .line 545
    if-eqz v10, :cond_e

    .line 546
    .line 547
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 548
    .line 549
    .line 550
    goto :goto_10

    .line 551
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 552
    .line 553
    .line 554
    :goto_10
    invoke-static {v14, v1, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v14, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 558
    .line 559
    .line 560
    invoke-static {v4, v14, v8, v14}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 561
    .line 562
    .line 563
    invoke-static {v14, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 564
    .line 565
    .line 566
    const/4 v0, 0x6

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    move-object/from16 v1, p2

    .line 572
    .line 573
    invoke-interface {v1, v14, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    const/4 v0, 0x1

    .line 577
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 584
    .line 585
    .line 586
    goto :goto_11

    .line 587
    :cond_f
    move-object/from16 v1, p2

    .line 588
    .line 589
    const/4 v0, 0x1

    .line 590
    const/4 v5, 0x0

    .line 591
    const v2, -0x2eadcc27

    .line 592
    .line 593
    .line 594
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 598
    .line 599
    .line 600
    :goto_11
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 601
    .line 602
    .line 603
    goto :goto_12

    .line 604
    :cond_10
    move-object/from16 v1, p2

    .line 605
    .line 606
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 607
    .line 608
    .line 609
    move-object/from16 v3, p0

    .line 610
    .line 611
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 612
    .line 613
    .line 614
    move-result-object v10

    .line 615
    if-eqz v10, :cond_11

    .line 616
    .line 617
    new-instance v0, Lqh;

    .line 618
    .line 619
    move-object v2, v3

    .line 620
    move-object v3, v1

    .line 621
    move-object v1, v2

    .line 622
    move-object/from16 v2, p1

    .line 623
    .line 624
    move-object/from16 v4, p3

    .line 625
    .line 626
    move-object/from16 v5, p4

    .line 627
    .line 628
    move-object/from16 v6, p5

    .line 629
    .line 630
    move-object/from16 v7, p6

    .line 631
    .line 632
    move-object/from16 v8, p7

    .line 633
    .line 634
    move/from16 v9, p9

    .line 635
    .line 636
    invoke-direct/range {v0 .. v9}, Lqh;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 637
    .line 638
    .line 639
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 640
    .line 641
    :cond_11
    return-void
.end method

.method public static final b(Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->m:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v6

    .line 55
    :cond_2
    iget-object p1, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->n:Landroidx/navigation/NavController;

    .line 56
    .line 57
    iget-object p0, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->m:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast p3, Lnet/blip/android/FlavorAndroid;

    .line 67
    .line 68
    iget-object p3, p3, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p0, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->m:Landroid/content/Context;

    .line 71
    .line 72
    iput-object p1, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->n:Landroidx/navigation/NavController;

    .line 73
    .line 74
    iput v5, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 75
    .line 76
    invoke-static {p2, p3, v0}, Lnet/blip/libblip/Transfer_DerivedKt;->e(Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    if-ne p4, v1, :cond_4

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    :goto_1
    check-cast p4, Ljava/lang/Iterable;

    .line 84
    .line 85
    new-instance p2, Ljava/util/ArrayList;

    .line 86
    .line 87
    const/16 p3, 0xa

    .line 88
    .line 89
    invoke-static {p4, p3}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    if-eqz p4, :cond_5

    .line 105
    .line 106
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    check-cast p4, Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {p4}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_6

    .line 125
    .line 126
    return-object v4

    .line 127
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-le p3, v5, :cond_7

    .line 132
    .line 133
    invoke-static {p2}, Lnet/blip/android/ui/navigation/Screens$Gallery;->a(Ljava/util/List;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p1, p0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v4

    .line 141
    :cond_7
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/net/Uri;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    if-eqz p3, :cond_8

    .line 155
    .line 156
    const/16 p4, 0x2e

    .line 157
    .line 158
    const-string v2, ""

    .line 159
    .line 160
    invoke-static {p3, p4, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    move-object p3, v6

    .line 166
    :goto_3
    const-string p4, "url"

    .line 167
    .line 168
    invoke-static {p3, p4, v5}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eqz p3, :cond_b

    .line 173
    .line 174
    iput-object p0, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->m:Landroid/content/Context;

    .line 175
    .line 176
    iput-object v6, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->n:Landroidx/navigation/NavController;

    .line 177
    .line 178
    iput v3, v0, Lnet/blip/android/ui/home/TransferGridKt$handleTransferClick$1;->p:I

    .line 179
    .line 180
    invoke-static {p0, p2, v0}, Lnet/blip/android/internetshortcut/InternetShortcutKt;->a(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    if-ne p4, v1, :cond_9

    .line 185
    .line 186
    :goto_4
    return-object v1

    .line 187
    :cond_9
    :goto_5
    check-cast p4, Landroid/net/Uri;

    .line 188
    .line 189
    if-eqz p4, :cond_a

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance p1, Landroid/content/Intent;

    .line 195
    .line 196
    const-string p2, "android.intent.action.VIEW"

    .line 197
    .line 198
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    .line 203
    .line 204
    return-object v4

    .line 205
    :cond_a
    const-string p1, "Couldn\'t open link"

    .line 206
    .line 207
    const/4 p2, 0x0

    .line 208
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 213
    .line 214
    .line 215
    return-object v4

    .line 216
    :cond_b
    sget-object p3, Lnet/blip/libblip/FileType;->j:Lnet/blip/libblip/FileType$Companion;

    .line 217
    .line 218
    invoke-static {p3, p0, p2}, Lnet/blip/android/filetypes/FileType_UriKt;->a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    if-eq p3, v5, :cond_c

    .line 227
    .line 228
    if-eq p3, v3, :cond_c

    .line 229
    .line 230
    const/4 p4, 0x4

    .line 231
    if-eq p3, p4, :cond_c

    .line 232
    .line 233
    invoke-static {p0, p2}, Lnet/blip/android/intents/OutboundIntent;->b(Landroid/content/Context;Landroid/net/Uri;)V

    .line 234
    .line 235
    .line 236
    return-object v4

    .line 237
    :cond_c
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p0}, Lnet/blip/android/ui/navigation/Screens$Gallery;->a(Ljava/util/List;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {p1, p0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object v4
.end method
