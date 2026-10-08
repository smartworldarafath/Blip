.class public abstract Lnet/blip/android/ui/home/PeerTrayCellsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x67b4e9ab

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p6, 0x1

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    or-int/lit8 v4, p5, 0x6

    .line 19
    .line 20
    move v5, v4

    .line 21
    move-object/from16 v4, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move-object/from16 v4, p0

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v5, v3

    .line 35
    :goto_0
    or-int v5, p5, v5

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v6, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v5, v6

    .line 49
    and-int/lit8 v6, p6, 0x4

    .line 50
    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    or-int/lit16 v5, v5, 0x180

    .line 54
    .line 55
    move/from16 v8, p2

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    move/from16 v8, p2

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_4

    .line 65
    .line 66
    const/16 v9, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v9, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v5, v9

    .line 72
    :goto_4
    and-int/lit16 v9, v5, 0x493

    .line 73
    .line 74
    const/16 v10, 0x492

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    if-eq v9, v10, :cond_5

    .line 78
    .line 79
    const/4 v9, 0x1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move v9, v11

    .line 82
    :goto_5
    and-int/lit8 v10, v5, 0x1

    .line 83
    .line 84
    invoke-virtual {v0, v10, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_12

    .line 89
    .line 90
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    move-object v4, v9

    .line 95
    :cond_6
    if-eqz v6, :cond_7

    .line 96
    .line 97
    move v8, v11

    .line 98
    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v10, Lkotlin/Pair;

    .line 107
    .line 108
    invoke-direct {v10, v1, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    .line 113
    new-instance v6, Lkotlin/Pair;

    .line 114
    .line 115
    invoke-direct {v6, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10, v6}, Lkotlin/Pair;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_8

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    goto :goto_6

    .line 126
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    .line 128
    new-instance v13, Lkotlin/Pair;

    .line 129
    .line 130
    invoke-direct {v13, v6, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v13}, Lkotlin/Pair;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_9

    .line 138
    .line 139
    const v6, 0x3e4ccccd    # 0.2f

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_9
    const v6, 0x3eb33333    # 0.35f

    .line 144
    .line 145
    .line 146
    :goto_6
    sget-object v10, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 147
    .line 148
    const/16 v13, 0xc8

    .line 149
    .line 150
    invoke-static {v13, v11, v10, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    const/16 v14, 0xc00

    .line 155
    .line 156
    const/16 v15, 0x14

    .line 157
    .line 158
    invoke-static {v6, v10, v0, v14, v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    new-instance v7, Lkotlin/Pair;

    .line 171
    .line 172
    invoke-direct {v7, v10, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    new-instance v10, Lkotlin/Pair;

    .line 176
    .line 177
    invoke-direct {v10, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v10}, Lkotlin/Pair;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    const/high16 v1, 0x3f800000    # 1.0f

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    const v1, 0x3fb33333    # 1.4f

    .line 190
    .line 191
    .line 192
    :goto_7
    sget-object v7, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 193
    .line 194
    invoke-static {v13, v11, v7, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v1, v3, v0, v14, v15}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 207
    .line 208
    if-ne v3, v7, :cond_b

    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_b
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 222
    .line 223
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    and-int/lit8 v5, v5, 0x70

    .line 228
    .line 229
    const/16 v12, 0x20

    .line 230
    .line 231
    if-ne v5, v12, :cond_c

    .line 232
    .line 233
    const/4 v5, 0x1

    .line 234
    goto :goto_8

    .line 235
    :cond_c
    move v5, v11

    .line 236
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    if-nez v5, :cond_d

    .line 241
    .line 242
    if-ne v12, v7, :cond_e

    .line 243
    .line 244
    :cond_d
    new-instance v12, Lnet/blip/android/ui/home/PeerTrayCellsKt$CircularPressedState$1$1;

    .line 245
    .line 246
    const/4 v5, 0x0

    .line 247
    invoke-direct {v12, v2, v3, v5}, Lnet/blip/android/ui/home/PeerTrayCellsKt$CircularPressedState$1$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_e
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 254
    .line 255
    invoke-static {v0, v10, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 259
    .line 260
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 265
    .line 266
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 279
    .line 280
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 284
    .line 285
    .line 286
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 287
    .line 288
    if-eqz v13, :cond_f

    .line 289
    .line 290
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 291
    .line 292
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 297
    .line 298
    .line 299
    :goto_9
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 300
    .line 301
    invoke-static {v0, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 302
    .line 303
    .line 304
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 305
    .line 306
    invoke-static {v0, v10, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 314
    .line 315
    invoke-static {v0, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 319
    .line 320
    .line 321
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 322
    .line 323
    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 333
    .line 334
    iget-wide v12, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 335
    .line 336
    invoke-static {v9}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    or-int/2addr v5, v9

    .line 349
    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    or-int/2addr v5, v9

    .line 354
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    if-nez v5, :cond_10

    .line 359
    .line 360
    if-ne v9, v7, :cond_11

    .line 361
    .line 362
    :cond_10
    new-instance v9, Lhd;

    .line 363
    .line 364
    invoke-direct {v9, v12, v13, v6, v1}, Lhd;-><init>(JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_11
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 371
    .line 372
    invoke-static {v3, v9}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v1, v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 377
    .line 378
    .line 379
    const/4 v1, 0x6

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object/from16 v3, p3

    .line 385
    .line 386
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 391
    .line 392
    .line 393
    :goto_a
    move-object v1, v4

    .line 394
    move v3, v8

    .line 395
    goto :goto_b

    .line 396
    :cond_12
    move-object/from16 v3, p3

    .line 397
    .line 398
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    if-eqz v7, :cond_13

    .line 407
    .line 408
    new-instance v0, Lid;

    .line 409
    .line 410
    move-object/from16 v4, p3

    .line 411
    .line 412
    move/from16 v5, p5

    .line 413
    .line 414
    move/from16 v6, p6

    .line 415
    .line 416
    invoke-direct/range {v0 .. v6}, Lid;-><init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 417
    .line 418
    .line 419
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 420
    .line 421
    :cond_13
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 40

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    move-object/from16 v0, p6

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x777b23ec

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, p8, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    or-int/lit8 v2, v7, 0x6

    .line 20
    .line 21
    move v3, v2

    .line 22
    move-object/from16 v2, p0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    and-int/lit8 v2, v7, 0x6

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    move-object/from16 v2, p0

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x2

    .line 40
    :goto_0
    or-int/2addr v3, v7

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object/from16 v2, p0

    .line 43
    .line 44
    move v3, v7

    .line 45
    :goto_1
    and-int/lit8 v4, v7, 0x30

    .line 46
    .line 47
    move-object/from16 v8, p1

    .line 48
    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    const/16 v4, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/16 v4, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v3, v4

    .line 63
    :cond_4
    and-int/lit8 v4, p8, 0x4

    .line 64
    .line 65
    if-eqz v4, :cond_6

    .line 66
    .line 67
    or-int/lit16 v3, v3, 0x180

    .line 68
    .line 69
    :cond_5
    move-object/from16 v9, p2

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    and-int/lit16 v9, v7, 0x180

    .line 73
    .line 74
    if-nez v9, :cond_5

    .line 75
    .line 76
    move-object/from16 v9, p2

    .line 77
    .line 78
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_7

    .line 83
    .line 84
    const/16 v10, 0x100

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    const/16 v10, 0x80

    .line 88
    .line 89
    :goto_3
    or-int/2addr v3, v10

    .line 90
    :goto_4
    and-int/lit8 v10, p8, 0x8

    .line 91
    .line 92
    if-eqz v10, :cond_9

    .line 93
    .line 94
    or-int/lit16 v3, v3, 0xc00

    .line 95
    .line 96
    :cond_8
    move-object/from16 v12, p3

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_9
    and-int/lit16 v12, v7, 0xc00

    .line 100
    .line 101
    if-nez v12, :cond_8

    .line 102
    .line 103
    move-object/from16 v12, p3

    .line 104
    .line 105
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_a

    .line 110
    .line 111
    const/16 v13, 0x800

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_a
    const/16 v13, 0x400

    .line 115
    .line 116
    :goto_5
    or-int/2addr v3, v13

    .line 117
    :goto_6
    and-int/lit8 v13, p8, 0x10

    .line 118
    .line 119
    if-eqz v13, :cond_c

    .line 120
    .line 121
    or-int/lit16 v3, v3, 0x6000

    .line 122
    .line 123
    :cond_b
    move-object/from16 v14, p4

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_c
    and-int/lit16 v14, v7, 0x6000

    .line 127
    .line 128
    if-nez v14, :cond_b

    .line 129
    .line 130
    move-object/from16 v14, p4

    .line 131
    .line 132
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-eqz v15, :cond_d

    .line 137
    .line 138
    const/16 v15, 0x4000

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_d
    const/16 v15, 0x2000

    .line 142
    .line 143
    :goto_7
    or-int/2addr v3, v15

    .line 144
    :goto_8
    const/high16 v15, 0x30000

    .line 145
    .line 146
    and-int/2addr v15, v7

    .line 147
    if-nez v15, :cond_f

    .line 148
    .line 149
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

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
    goto :goto_9

    .line 158
    :cond_e
    const/high16 v15, 0x10000

    .line 159
    .line 160
    :goto_9
    or-int/2addr v3, v15

    .line 161
    :cond_f
    const v15, 0x12493

    .line 162
    .line 163
    .line 164
    and-int/2addr v15, v3

    .line 165
    const v11, 0x12492

    .line 166
    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    const/4 v9, 0x1

    .line 170
    if-eq v15, v11, :cond_10

    .line 171
    .line 172
    move v11, v9

    .line 173
    goto :goto_a

    .line 174
    :cond_10
    move v11, v5

    .line 175
    :goto_a
    and-int/lit8 v15, v3, 0x1

    .line 176
    .line 177
    invoke-virtual {v0, v15, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eqz v11, :cond_22

    .line 182
    .line 183
    sget-object v17, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 184
    .line 185
    if-eqz v1, :cond_11

    .line 186
    .line 187
    move-object/from16 v18, v17

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_11
    move-object/from16 v18, v2

    .line 191
    .line 192
    :goto_b
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 193
    .line 194
    if-eqz v4, :cond_13

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-ne v2, v1, :cond_12

    .line 201
    .line 202
    new-instance v2, Lwc;

    .line 203
    .line 204
    invoke-direct {v2, v9}, Lwc;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 211
    .line 212
    goto :goto_c

    .line 213
    :cond_13
    move-object/from16 v2, p2

    .line 214
    .line 215
    :goto_c
    const/16 v4, 0x13

    .line 216
    .line 217
    if-eqz v10, :cond_15

    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    if-ne v10, v1, :cond_14

    .line 224
    .line 225
    new-instance v10, Ln;

    .line 226
    .line 227
    invoke-direct {v10, v4}, Ln;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_14
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 234
    .line 235
    goto :goto_d

    .line 236
    :cond_15
    move-object v10, v12

    .line 237
    :goto_d
    if-eqz v13, :cond_17

    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    if-ne v11, v1, :cond_16

    .line 244
    .line 245
    new-instance v11, Ln;

    .line 246
    .line 247
    invoke-direct {v11, v4}, Ln;-><init>(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_16
    move-object v4, v11

    .line 254
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    move-object v14, v4

    .line 257
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    if-ne v4, v1, :cond_18

    .line 262
    .line 263
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_18
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 271
    .line 272
    invoke-static {v4, v0}, Landroidx/compose/foundation/interaction/PressInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    check-cast v12, Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    and-int/lit16 v13, v3, 0x380

    .line 286
    .line 287
    const/16 v15, 0x100

    .line 288
    .line 289
    if-ne v13, v15, :cond_19

    .line 290
    .line 291
    move v15, v9

    .line 292
    goto :goto_e

    .line 293
    :cond_19
    move v15, v5

    .line 294
    :goto_e
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v19

    .line 298
    or-int v15, v15, v19

    .line 299
    .line 300
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    if-nez v15, :cond_1a

    .line 305
    .line 306
    if-ne v9, v1, :cond_1b

    .line 307
    .line 308
    :cond_1a
    new-instance v9, Lnet/blip/android/ui/home/PeerTrayCellsKt$PeerTrayBaseCell$4$1;

    .line 309
    .line 310
    const/4 v15, 0x0

    .line 311
    invoke-direct {v9, v2, v11, v15}, Lnet/blip/android/ui/home/PeerTrayCellsKt$PeerTrayBaseCell$4$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_1b
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 318
    .line 319
    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    const/16 v23, 0x5

    .line 325
    .line 326
    const/16 v19, 0x0

    .line 327
    .line 328
    const/high16 v20, 0x41200000    # 10.0f

    .line 329
    .line 330
    move/from16 v22, v20

    .line 331
    .line 332
    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 333
    .line 334
    .line 335
    move-result-object v19

    .line 336
    move-object/from16 v26, v18

    .line 337
    .line 338
    move/from16 v18, v20

    .line 339
    .line 340
    const/16 v15, 0x100

    .line 341
    .line 342
    if-ne v13, v15, :cond_1c

    .line 343
    .line 344
    const/4 v9, 0x1

    .line 345
    goto :goto_f

    .line 346
    :cond_1c
    move v9, v5

    .line 347
    :goto_f
    and-int/lit16 v11, v3, 0x1c00

    .line 348
    .line 349
    const/16 v12, 0x800

    .line 350
    .line 351
    if-ne v11, v12, :cond_1d

    .line 352
    .line 353
    const/4 v11, 0x1

    .line 354
    goto :goto_10

    .line 355
    :cond_1d
    move v11, v5

    .line 356
    :goto_10
    or-int/2addr v9, v11

    .line 357
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    if-nez v9, :cond_1e

    .line 362
    .line 363
    if-ne v11, v1, :cond_1f

    .line 364
    .line 365
    :cond_1e
    new-instance v11, Lnet/blip/android/ui/home/g;

    .line 366
    .line 367
    invoke-direct {v11, v10, v2}, Lnet/blip/android/ui/home/g;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_1f
    move-object/from16 v24, v11

    .line 374
    .line 375
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 376
    .line 377
    const/16 v25, 0x1bc

    .line 378
    .line 379
    const/16 v21, 0x0

    .line 380
    .line 381
    const/16 v22, 0x0

    .line 382
    .line 383
    move-object/from16 v20, v4

    .line 384
    .line 385
    move-object/from16 v23, v14

    .line 386
    .line 387
    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 392
    .line 393
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 394
    .line 395
    const/16 v11, 0x30

    .line 396
    .line 397
    invoke-static {v9, v4, v0, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 402
    .line 403
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 416
    .line 417
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 421
    .line 422
    .line 423
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 424
    .line 425
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 426
    .line 427
    if-eqz v12, :cond_20

    .line 428
    .line 429
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 430
    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_20
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 434
    .line 435
    .line 436
    :goto_11
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 437
    .line 438
    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 439
    .line 440
    .line 441
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 442
    .line 443
    invoke-static {v0, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 444
    .line 445
    .line 446
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 451
    .line 452
    invoke-static {v0, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 453
    .line 454
    .line 455
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 456
    .line 457
    .line 458
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 459
    .line 460
    invoke-static {v0, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    const/high16 v21, 0x41000000    # 8.0f

    .line 464
    .line 465
    const/16 v22, 0x2

    .line 466
    .line 467
    const/16 v19, 0x0

    .line 468
    .line 469
    move/from16 v20, v18

    .line 470
    .line 471
    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 476
    .line 477
    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    iget-wide v14, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 482
    .line 483
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 488
    .line 489
    .line 490
    move-result-object v15

    .line 491
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 496
    .line 497
    .line 498
    move-object/from16 v19, v2

    .line 499
    .line 500
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 501
    .line 502
    if-eqz v2, :cond_21

    .line 503
    .line 504
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 505
    .line 506
    .line 507
    goto :goto_12

    .line 508
    :cond_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 509
    .line 510
    .line 511
    :goto_12
    invoke-static {v0, v5, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 512
    .line 513
    .line 514
    invoke-static {v0, v15, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v14, v0, v11, v0}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 518
    .line 519
    .line 520
    invoke-static {v0, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 521
    .line 522
    .line 523
    shr-int/lit8 v1, v3, 0xf

    .line 524
    .line 525
    and-int/lit8 v1, v1, 0xe

    .line 526
    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v6, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 536
    .line 537
    .line 538
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 539
    .line 540
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 545
    .line 546
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 547
    .line 548
    const/16 v4, 0xc

    .line 549
    .line 550
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 551
    .line 552
    .line 553
    move-result-wide v30

    .line 554
    sget-object v32, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 555
    .line 556
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 562
    .line 563
    .line 564
    move-result-wide v35

    .line 565
    const/16 v37, 0x0

    .line 566
    .line 567
    const v39, 0xdd7ff9

    .line 568
    .line 569
    .line 570
    const-wide/16 v28, 0x0

    .line 571
    .line 572
    const-wide/16 v33, 0x0

    .line 573
    .line 574
    const v38, 0x20203

    .line 575
    .line 576
    .line 577
    move-object/from16 v27, v2

    .line 578
    .line 579
    invoke-static/range {v27 .. v39}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    shr-int/lit8 v3, v3, 0x3

    .line 584
    .line 585
    and-int/lit8 v3, v3, 0xe

    .line 586
    .line 587
    const v4, 0x186000

    .line 588
    .line 589
    .line 590
    or-int v17, v3, v4

    .line 591
    .line 592
    const/16 v18, 0x1aa

    .line 593
    .line 594
    const/4 v9, 0x0

    .line 595
    const/4 v11, 0x2

    .line 596
    const/4 v12, 0x0

    .line 597
    const/4 v13, 0x2

    .line 598
    const/4 v14, 0x0

    .line 599
    const/4 v15, 0x0

    .line 600
    move-object/from16 v16, v0

    .line 601
    .line 602
    move-object v0, v10

    .line 603
    move-object v10, v2

    .line 604
    invoke-static/range {v8 .. v18}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 605
    .line 606
    .line 607
    move-object/from16 v3, v16

    .line 608
    .line 609
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 610
    .line 611
    .line 612
    move-object v4, v0

    .line 613
    move-object/from16 v3, v19

    .line 614
    .line 615
    move-object/from16 v5, v23

    .line 616
    .line 617
    move-object/from16 v1, v26

    .line 618
    .line 619
    goto :goto_13

    .line 620
    :cond_22
    move-object v3, v0

    .line 621
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 622
    .line 623
    .line 624
    move-object v1, v2

    .line 625
    move-object/from16 v16, v3

    .line 626
    .line 627
    move-object v4, v12

    .line 628
    move-object v5, v14

    .line 629
    move-object/from16 v3, p2

    .line 630
    .line 631
    :goto_13
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 632
    .line 633
    .line 634
    move-result-object v9

    .line 635
    if-eqz v9, :cond_23

    .line 636
    .line 637
    new-instance v0, Ljd;

    .line 638
    .line 639
    move-object/from16 v2, p1

    .line 640
    .line 641
    move/from16 v8, p8

    .line 642
    .line 643
    invoke-direct/range {v0 .. v8}, Ljd;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 644
    .line 645
    .line 646
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    :cond_23
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/Paintable;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x70c57dc0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    or-int/lit8 v0, p6, 0x6

    .line 18
    .line 19
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_0
    or-int/2addr v0, v1

    .line 31
    move-object/from16 v5, p4

    .line 32
    .line 33
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/16 v1, 0x4000

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v1, 0x2000

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v1

    .line 45
    and-int/lit16 v1, v0, 0x2413

    .line 46
    .line 47
    const/16 v3, 0x2412

    .line 48
    .line 49
    if-eq v1, v3, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 67
    .line 68
    if-ne v1, v3, :cond_3

    .line 69
    .line 70
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 80
    .line 81
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-ne v4, v3, :cond_4

    .line 86
    .line 87
    new-instance v4, Li2;

    .line 88
    .line 89
    const/16 v3, 0xb

    .line 90
    .line 91
    invoke-direct {v4, v1, v3}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    new-instance v3, Lzc;

    .line 100
    .line 101
    invoke-direct {v3, v1, p1}, Lzc;-><init>(Landroidx/compose/runtime/MutableState;Lnet/blip/shared/Paintable;)V

    .line 102
    .line 103
    .line 104
    const v1, 0x392d2fa3

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    shr-int/lit8 v0, v0, 0x3

    .line 112
    .line 113
    and-int/lit16 v0, v0, 0x1c00

    .line 114
    .line 115
    const v1, 0x301b6

    .line 116
    .line 117
    .line 118
    or-int v10, v1, v0

    .line 119
    .line 120
    const/16 v11, 0x10

    .line 121
    .line 122
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v6, v5

    .line 126
    move-object v5, v4

    .line 127
    move-object v4, p3

    .line 128
    invoke-static/range {v3 .. v11}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    move-object v1, v3

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 134
    .line 135
    .line 136
    move-object v1, p0

    .line 137
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    if-eqz v8, :cond_6

    .line 142
    .line 143
    new-instance v0, Lr7;

    .line 144
    .line 145
    const/4 v7, 0x3

    .line 146
    move-object v2, p1

    .line 147
    move-object v3, p2

    .line 148
    move-object v4, p3

    .line 149
    move-object/from16 v5, p4

    .line 150
    .line 151
    move/from16 v6, p6

    .line 152
    .line 153
    invoke-direct/range {v0 .. v7}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 157
    .line 158
    :cond_6
    return-void
.end method

.method public static final d(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v6, p4

    .line 11
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const p4, -0x7d55e6e2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 p4, p5, 0x6

    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 22
    .line 23
    if-nez p4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    const/4 p4, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p4, 0x2

    .line 34
    :goto_0
    or-int/2addr p4, p5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move p4, p5

    .line 37
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr p4, v1

    .line 53
    :cond_3
    and-int/lit16 v1, p5, 0x180

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const/16 v1, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v1, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr p4, v1

    .line 69
    :cond_5
    and-int/lit16 v1, p5, 0xc00

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/16 v1, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v1, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr p4, v1

    .line 85
    :cond_7
    and-int/lit16 v1, p5, 0x6000

    .line 86
    .line 87
    if-nez v1, :cond_9

    .line 88
    .line 89
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    const/16 v1, 0x4000

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    const/16 v1, 0x2000

    .line 99
    .line 100
    :goto_5
    or-int/2addr p4, v1

    .line 101
    :cond_9
    and-int/lit16 v1, p4, 0x2493

    .line 102
    .line 103
    const/16 v2, 0x2492

    .line 104
    .line 105
    if-eq v1, v2, :cond_a

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/4 v1, 0x0

    .line 110
    :goto_6
    and-int/lit8 v2, p4, 0x1

    .line 111
    .line 112
    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_d

    .line 117
    .line 118
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 123
    .line 124
    if-ne v1, v2, :cond_b

    .line 125
    .line 126
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_b
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 136
    .line 137
    move-object v3, v1

    .line 138
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-ne v4, v2, :cond_c

    .line 147
    .line 148
    new-instance v4, Li2;

    .line 149
    .line 150
    const/16 v2, 0xc

    .line 151
    .line 152
    invoke-direct {v4, v3, v2}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_c
    move-object v2, v4

    .line 159
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    new-instance v4, Lv7;

    .line 162
    .line 163
    invoke-direct {v4, p1, v3, p0}, Lv7;-><init>(ZLandroidx/compose/runtime/MutableState;Lnet/blip/libblip/Peer;)V

    .line 164
    .line 165
    .line 166
    const v3, -0x71bc7cff

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    and-int/lit8 v3, p4, 0xe

    .line 174
    .line 175
    const v4, 0x30180

    .line 176
    .line 177
    .line 178
    or-int/2addr v3, v4

    .line 179
    and-int/lit16 v4, p4, 0x1c00

    .line 180
    .line 181
    or-int/2addr v3, v4

    .line 182
    const v4, 0xe000

    .line 183
    .line 184
    .line 185
    and-int/2addr p4, v4

    .line 186
    or-int v7, v3, p4

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    move-object v3, p2

    .line 190
    move-object v4, p3

    .line 191
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 192
    .line 193
    .line 194
    move-object p3, v3

    .line 195
    move-object p4, v4

    .line 196
    goto :goto_7

    .line 197
    :cond_d
    move-object p4, p3

    .line 198
    move-object p3, p2

    .line 199
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 200
    .line 201
    .line 202
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    move p2, p1

    .line 209
    move-object p1, p0

    .line 210
    new-instance p0, Lgd;

    .line 211
    .line 212
    invoke-direct/range {p0 .. p5}, Lgd;-><init>(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 213
    .line 214
    .line 215
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 216
    .line 217
    :cond_e
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x5bf5e5df

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    or-int/lit8 p1, p2, 0x6

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    and-int/2addr p1, v2

    .line 22
    invoke-virtual {v6, p1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p0, Lz6;

    .line 29
    .line 30
    const/16 p1, 0x12

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lz6;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const p1, -0x4749663c

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const v7, 0x30030

    .line 43
    .line 44
    .line 45
    const/16 v8, 0x1d

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    const-string v1, ""

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    new-instance v0, Lr4;

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-direct {v0, p0, p2, v1}, Lr4;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 75
    .line 76
    :cond_2
    return-void
.end method
