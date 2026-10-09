.class public abstract Lnet/blip/android/ui/transfer/TransferHeaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v7, p7

    .line 15
    .line 16
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v0, -0x11345800

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    or-int/lit8 v0, p8, 0x6

    .line 25
    .line 26
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v1, 0x10

    .line 36
    .line 37
    :goto_0
    or-int/2addr v0, v1

    .line 38
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v1, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v1

    .line 50
    move/from16 v1, p3

    .line 51
    .line 52
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const/16 v4, 0x800

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v4, 0x400

    .line 62
    .line 63
    :goto_2
    or-int/2addr v0, v4

    .line 64
    move-object/from16 v12, p4

    .line 65
    .line 66
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    const/16 v4, 0x4000

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/16 v4, 0x2000

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v4

    .line 78
    move-object/from16 v13, p5

    .line 79
    .line 80
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    const/high16 v4, 0x20000

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    const/high16 v4, 0x10000

    .line 90
    .line 91
    :goto_4
    or-int/2addr v0, v4

    .line 92
    move-object/from16 v14, p6

    .line 93
    .line 94
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    const/high16 v4, 0x100000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    const/high16 v4, 0x80000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v0, v4

    .line 106
    const v4, 0x92493

    .line 107
    .line 108
    .line 109
    and-int/2addr v4, v0

    .line 110
    const v5, 0x92492

    .line 111
    .line 112
    .line 113
    if-eq v4, v5, :cond_6

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    goto :goto_6

    .line 117
    :cond_6
    const/4 v4, 0x0

    .line 118
    :goto_6
    and-int/lit8 v5, v0, 0x1

    .line 119
    .line 120
    invoke-virtual {v7, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_f

    .line 125
    .line 126
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 131
    .line 132
    if-ne v4, v5, :cond_7

    .line 133
    .line 134
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 144
    .line 145
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 146
    .line 147
    const/high16 v9, 0x3f800000    # 1.0f

    .line 148
    .line 149
    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    sget-object v11, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 154
    .line 155
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    check-cast v11, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 160
    .line 161
    move-object/from16 p7, v7

    .line 162
    .line 163
    iget-wide v6, v11, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 164
    .line 165
    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 166
    .line 167
    invoke-static {v10, v6, v7, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->b:J

    .line 172
    .line 173
    const v7, 0x3c75c28f    # 0.015f

    .line 174
    .line 175
    .line 176
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 177
    .line 178
    .line 179
    move-result-wide v10

    .line 180
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v7, Lq4;

    .line 184
    .line 185
    invoke-direct {v7, v10, v11}, Lq4;-><init>(J)V

    .line 186
    .line 187
    .line 188
    invoke-static {v6, v7}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-static {v6}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    move-object/from16 v10, p7

    .line 204
    .line 205
    move/from16 p7, v0

    .line 206
    .line 207
    iget-wide v0, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 208
    .line 209
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v10, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 222
    .line 223
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 227
    .line 228
    .line 229
    iget-boolean v11, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 230
    .line 231
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 232
    .line 233
    if-eqz v11, :cond_8

    .line 234
    .line 235
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 240
    .line 241
    .line 242
    :goto_7
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 243
    .line 244
    invoke-static {v10, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 248
    .line 249
    invoke-static {v10, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 257
    .line 258
    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 262
    .line 263
    .line 264
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 265
    .line 266
    invoke-static {v10, v6, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 267
    .line 268
    .line 269
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 270
    .line 271
    const/16 v17, 0x1

    .line 272
    .line 273
    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 274
    .line 275
    move-object/from16 v18, v4

    .line 276
    .line 277
    const/16 v4, 0x30

    .line 278
    .line 279
    invoke-static {v15, v6, v10, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    move-object v15, v5

    .line 284
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 285
    .line 286
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-static {v10, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 299
    .line 300
    .line 301
    move-object/from16 v19, v8

    .line 302
    .line 303
    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 304
    .line 305
    if-eqz v8, :cond_9

    .line 306
    .line 307
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 312
    .line 313
    .line 314
    :goto_8
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v10, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v5, v10, v1, v10}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v10, v12, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    xor-int/lit8 v4, v0, 0x1

    .line 337
    .line 338
    const/16 v0, 0xc8

    .line 339
    .line 340
    const/4 v1, 0x0

    .line 341
    const/4 v5, 0x6

    .line 342
    const/4 v6, 0x0

    .line 343
    invoke-static {v0, v6, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const/4 v12, 0x2

    .line 348
    invoke-static {v7, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-static {v0, v6, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const/16 v8, 0xe

    .line 357
    .line 358
    invoke-static {v0, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->b(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v7, v0}, Landroidx/compose/animation/EnterTransition;->a(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const/16 v7, 0x14d

    .line 367
    .line 368
    invoke-static {v7, v6, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-static {v9, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-static {v7, v6, v1, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-static {v5, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->g(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v9, v5}, Landroidx/compose/animation/ExitTransition;->a(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    new-instance v5, Lz;

    .line 389
    .line 390
    const/4 v6, 0x3

    .line 391
    invoke-direct {v5, v6, v2, v3}, Lz;-><init>(ILjava/lang/Object;Z)V

    .line 392
    .line 393
    .line 394
    const v6, 0x6de5f0ac

    .line 395
    .line 396
    .line 397
    invoke-static {v6, v5, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    const v11, 0x186c06

    .line 402
    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    move v6, v8

    .line 406
    const/4 v8, 0x0

    .line 407
    move/from16 v16, v6

    .line 408
    .line 409
    move-object v12, v15

    .line 410
    move-object/from16 v15, v18

    .line 411
    .line 412
    move-object/from16 v13, v19

    .line 413
    .line 414
    move-object v6, v0

    .line 415
    const/high16 v0, 0x3f800000    # 1.0f

    .line 416
    .line 417
    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 418
    .line 419
    .line 420
    if-eqz v3, :cond_a

    .line 421
    .line 422
    move v9, v0

    .line 423
    goto :goto_9

    .line 424
    :cond_a
    const v9, 0x3e99999a    # 0.3f

    .line 425
    .line 426
    .line 427
    :goto_9
    const/16 v4, 0xc00

    .line 428
    .line 429
    const/16 v5, 0x16

    .line 430
    .line 431
    invoke-static {v9, v1, v10, v4, v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    if-nez v8, :cond_b

    .line 448
    .line 449
    if-ne v9, v12, :cond_c

    .line 450
    .line 451
    :cond_b
    new-instance v9, Lu7;

    .line 452
    .line 453
    const/4 v8, 0x2

    .line 454
    invoke-direct {v9, v6, v8}, Lu7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 461
    .line 462
    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    const/16 v8, 0x12

    .line 471
    .line 472
    if-ne v7, v12, :cond_d

    .line 473
    .line 474
    new-instance v7, Li2;

    .line 475
    .line 476
    invoke-direct {v7, v15, v8}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 483
    .line 484
    shr-int/lit8 v9, p7, 0x9

    .line 485
    .line 486
    and-int/lit8 v9, v9, 0x70

    .line 487
    .line 488
    const v11, 0xc00180

    .line 489
    .line 490
    .line 491
    or-int/2addr v9, v11

    .line 492
    shl-int/lit8 v11, p7, 0x3

    .line 493
    .line 494
    and-int/lit16 v12, v11, 0x1c00

    .line 495
    .line 496
    or-int/2addr v9, v12

    .line 497
    const v12, 0xe000

    .line 498
    .line 499
    .line 500
    and-int/2addr v12, v11

    .line 501
    or-int/2addr v9, v12

    .line 502
    const/high16 v12, 0x380000

    .line 503
    .line 504
    and-int/2addr v11, v12

    .line 505
    or-int v12, v9, v11

    .line 506
    .line 507
    move-object/from16 v19, v13

    .line 508
    .line 509
    const/16 v13, 0x20

    .line 510
    .line 511
    move v9, v5

    .line 512
    const-string v5, "Search for someone to send to"

    .line 513
    .line 514
    move v11, v8

    .line 515
    const/4 v8, 0x0

    .line 516
    move-object/from16 p0, v6

    .line 517
    .line 518
    move v6, v3

    .line 519
    move-object/from16 v3, p0

    .line 520
    .line 521
    move/from16 p0, v0

    .line 522
    .line 523
    move v2, v4

    .line 524
    move v0, v9

    .line 525
    move/from16 v18, v11

    .line 526
    .line 527
    move-object/from16 v20, v19

    .line 528
    .line 529
    move-object/from16 v4, p4

    .line 530
    .line 531
    move-object/from16 v9, p5

    .line 532
    .line 533
    move-object v11, v10

    .line 534
    move-object v10, v7

    .line 535
    move/from16 v7, p3

    .line 536
    .line 537
    invoke-static/range {v3 .. v13}, Lnet/blip/android/ui/components/SearchFieldKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 538
    .line 539
    .line 540
    move-object v10, v11

    .line 541
    move/from16 v3, v17

    .line 542
    .line 543
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 544
    .line 545
    .line 546
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    check-cast v3, Ljava/lang/Boolean;

    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    if-eqz v3, :cond_e

    .line 557
    .line 558
    const/4 v9, 0x0

    .line 559
    goto :goto_a

    .line 560
    :cond_e
    move/from16 v9, p0

    .line 561
    .line 562
    :goto_a
    invoke-static {v9, v1, v10, v2, v0}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 567
    .line 568
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 569
    .line 570
    move-object/from16 v13, v20

    .line 571
    .line 572
    invoke-virtual {v2, v13, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    check-cast v2, Ljava/lang/Number;

    .line 581
    .line 582
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    sub-float v9, p0, v2

    .line 587
    .line 588
    const/high16 v2, 0x42700000    # 60.0f

    .line 589
    .line 590
    mul-float/2addr v9, v2

    .line 591
    const/high16 v2, 0x40c00000    # 6.0f

    .line 592
    .line 593
    sub-float/2addr v2, v9

    .line 594
    const/high16 v3, 0x41400000    # 12.0f

    .line 595
    .line 596
    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->b(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    check-cast v0, Ljava/lang/Number;

    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    mul-float v0, v0, p0

    .line 611
    .line 612
    invoke-static {v1, v0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    shr-int/lit8 v0, p7, 0x12

    .line 617
    .line 618
    and-int/lit8 v0, v0, 0xe

    .line 619
    .line 620
    or-int/lit16 v8, v0, 0x6000

    .line 621
    .line 622
    const/16 v9, 0xc

    .line 623
    .line 624
    const/4 v5, 0x0

    .line 625
    sget-object v6, Lnet/blip/android/ui/transfer/ComposableSingletons$TransferHeaderKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 626
    .line 627
    move-object v7, v10

    .line 628
    move-object v3, v14

    .line 629
    invoke-static/range {v3 .. v9}, Landroidx/compose/material/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 630
    .line 631
    .line 632
    const/4 v3, 0x1

    .line 633
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 634
    .line 635
    .line 636
    move-object v1, v13

    .line 637
    goto :goto_b

    .line 638
    :cond_f
    move-object v10, v7

    .line 639
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 640
    .line 641
    .line 642
    move-object/from16 v1, p0

    .line 643
    .line 644
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    if-eqz v9, :cond_10

    .line 649
    .line 650
    new-instance v0, Lrh;

    .line 651
    .line 652
    move-object/from16 v2, p1

    .line 653
    .line 654
    move/from16 v3, p2

    .line 655
    .line 656
    move/from16 v4, p3

    .line 657
    .line 658
    move-object/from16 v5, p4

    .line 659
    .line 660
    move-object/from16 v6, p5

    .line 661
    .line 662
    move-object/from16 v7, p6

    .line 663
    .line 664
    move/from16 v8, p8

    .line 665
    .line 666
    invoke-direct/range {v0 .. v8}, Lrh;-><init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    .line 667
    .line 668
    .line 669
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 670
    .line 671
    :cond_10
    return-void
.end method
