.class public abstract Landroidx/compose/material/MenuKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x4037b988

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x2

    .line 24
    const/4 v6, 0x4

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    or-int v0, p6, v0

    .line 31
    .line 32
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    const/16 v7, 0x100

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v7, 0x80

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v7

    .line 44
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/16 v7, 0x800

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v7, 0x400

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v7

    .line 56
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    const/16 v7, 0x4000

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v7, 0x2000

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v7

    .line 68
    and-int/lit16 v7, v0, 0x2493

    .line 69
    .line 70
    const/16 v8, 0x2492

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    const/4 v13, 0x0

    .line 74
    if-eq v7, v8, :cond_4

    .line 75
    .line 76
    move v7, v9

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move v7, v13

    .line 79
    :goto_4
    and-int/lit8 v8, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {v11, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_d

    .line 86
    .line 87
    and-int/lit8 v0, v0, 0xe

    .line 88
    .line 89
    const/16 v7, 0x30

    .line 90
    .line 91
    or-int/2addr v0, v7

    .line 92
    const-string v7, "DropDownMenu"

    .line 93
    .line 94
    invoke-static {v1, v7, v11, v0}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v7, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 99
    .line 100
    iget-object v8, v0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 101
    .line 102
    invoke-virtual {v7}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const v10, -0x6d4ea05c

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 116
    .line 117
    .line 118
    const v12, 0x3f4ccccd    # 0.8f

    .line 119
    .line 120
    .line 121
    if-eqz v7, :cond_5

    .line 122
    .line 123
    const/high16 v7, 0x3f800000    # 1.0f

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    move v7, v12

    .line 127
    :goto_5
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 128
    .line 129
    .line 130
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    move-object v15, v8

    .line 135
    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 136
    .line 137
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 148
    .line 149
    .line 150
    if-eqz v8, :cond_6

    .line 151
    .line 152
    const/high16 v12, 0x3f800000    # 1.0f

    .line 153
    .line 154
    :cond_6
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 155
    .line 156
    .line 157
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const v12, 0x1a8d69bf

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 169
    .line 170
    .line 171
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 172
    .line 173
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-interface {v10, v12, v14}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    move-object/from16 v16, v12

    .line 180
    .line 181
    const/4 v12, 0x0

    .line 182
    if-eqz v10, :cond_7

    .line 183
    .line 184
    const/16 v6, 0x78

    .line 185
    .line 186
    sget-object v9, Landroidx/compose/animation/core/EasingKt;->b:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 187
    .line 188
    invoke-static {v6, v13, v9, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_6
    move-object v9, v2

    .line 193
    goto :goto_7

    .line 194
    :cond_7
    const/16 v2, 0x4a

    .line 195
    .line 196
    invoke-static {v9, v2, v12, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    goto :goto_6

    .line 201
    :goto_7
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 202
    .line 203
    .line 204
    sget-object v10, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 205
    .line 206
    move-object v2, v12

    .line 207
    const/4 v12, 0x0

    .line 208
    move-object v6, v0

    .line 209
    move-object/from16 v0, v16

    .line 210
    .line 211
    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iget-object v8, v6, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 216
    .line 217
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    const v9, -0x5e139348

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 231
    .line 232
    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    if-eqz v8, :cond_8

    .line 236
    .line 237
    const/high16 v8, 0x3f800000    # 1.0f

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_8
    move/from16 v8, v16

    .line 241
    .line 242
    :goto_8
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 243
    .line 244
    .line 245
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    check-cast v15, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 260
    .line 261
    .line 262
    if-eqz v15, :cond_9

    .line 263
    .line 264
    const/high16 v16, 0x3f800000    # 1.0f

    .line 265
    .line 266
    :cond_9
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 267
    .line 268
    .line 269
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    const v12, 0x29c876d3

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v15, v0, v14}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const/4 v12, 0x6

    .line 288
    if-eqz v0, :cond_a

    .line 289
    .line 290
    const/16 v0, 0x1e

    .line 291
    .line 292
    invoke-static {v0, v13, v2, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    goto :goto_9

    .line 297
    :cond_a
    const/16 v0, 0x4b

    .line 298
    .line 299
    invoke-static {v0, v13, v2, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :goto_9
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 304
    .line 305
    .line 306
    move-object v12, v9

    .line 307
    move-object v9, v0

    .line 308
    move-object v0, v7

    .line 309
    move-object v7, v8

    .line 310
    move-object v8, v12

    .line 311
    const/4 v12, 0x0

    .line 312
    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    or-int/2addr v6, v7

    .line 325
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    const/16 v8, 0xa

    .line 330
    .line 331
    if-nez v6, :cond_c

    .line 332
    .line 333
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 334
    .line 335
    if-ne v7, v6, :cond_b

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_b
    move-object/from16 v6, p1

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_c
    :goto_a
    new-instance v7, Lp2;

    .line 342
    .line 343
    move-object/from16 v6, p1

    .line 344
    .line 345
    invoke-direct {v7, v6, v0, v2, v8}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :goto_b
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 352
    .line 353
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 354
    .line 355
    invoke-static {v0, v7}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v2, Lu;

    .line 360
    .line 361
    invoke-direct {v2, v4, v3, v5, v8}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 362
    .line 363
    .line 364
    const v7, -0x2a2547bb

    .line 365
    .line 366
    .line 367
    invoke-static {v7, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 368
    .line 369
    .line 370
    move-result-object v13

    .line 371
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget-object v7, v2, Landroidx/compose/material/Shapes;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 376
    .line 377
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->f()J

    .line 382
    .line 383
    .line 384
    move-result-wide v8

    .line 385
    move-object v14, v11

    .line 386
    invoke-static {v8, v9, v14}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 387
    .line 388
    .line 389
    move-result-wide v10

    .line 390
    const/high16 v15, 0x1b0000

    .line 391
    .line 392
    const/16 v16, 0x0

    .line 393
    .line 394
    const/high16 v12, 0x41000000    # 8.0f

    .line 395
    .line 396
    move-object v6, v0

    .line 397
    invoke-static/range {v6 .. v16}, Landroidx/compose/material/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 398
    .line 399
    .line 400
    move-object v11, v14

    .line 401
    goto :goto_c

    .line 402
    :cond_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 403
    .line 404
    .line 405
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    if-eqz v7, :cond_e

    .line 410
    .line 411
    new-instance v0, Lg1;

    .line 412
    .line 413
    move-object/from16 v2, p1

    .line 414
    .line 415
    move/from16 v6, p6

    .line 416
    .line 417
    invoke-direct/range {v0 .. v6}, Lg1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 418
    .line 419
    .line 420
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 421
    .line 422
    :cond_e
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v7, p4

    .line 2
    move/from16 v8, p6

    .line 3
    .line 4
    move-object/from16 v9, p5

    .line 5
    .line 6
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, -0x2832668a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    and-int/lit8 v0, v8, 0x6

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, v8

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v8

    .line 30
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    const/16 v4, 0x20

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/16 v4, 0x10

    .line 44
    .line 45
    :goto_2
    or-int/2addr v0, v4

    .line 46
    :cond_3
    and-int/lit16 v4, v8, 0x180

    .line 47
    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    const/16 v4, 0x100

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/16 v4, 0x80

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v4

    .line 62
    :cond_5
    and-int/lit16 v4, v8, 0xc00

    .line 63
    .line 64
    if-nez v4, :cond_7

    .line 65
    .line 66
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    const/16 v4, 0x800

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    const/16 v4, 0x400

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v4

    .line 78
    :cond_7
    and-int/lit16 v4, v8, 0x6000

    .line 79
    .line 80
    if-nez v4, :cond_9

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_8

    .line 88
    .line 89
    const/16 v4, 0x4000

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    const/16 v4, 0x2000

    .line 93
    .line 94
    :goto_5
    or-int/2addr v0, v4

    .line 95
    :cond_9
    const/high16 v4, 0x30000

    .line 96
    .line 97
    and-int/2addr v4, v8

    .line 98
    if-nez v4, :cond_b

    .line 99
    .line 100
    invoke-virtual {v9, p4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_a

    .line 105
    .line 106
    const/high16 v4, 0x20000

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/high16 v4, 0x10000

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v4

    .line 112
    :cond_b
    const v4, 0x12493

    .line 113
    .line 114
    .line 115
    and-int/2addr v4, v0

    .line 116
    const v5, 0x12492

    .line 117
    .line 118
    .line 119
    const/4 v10, 0x1

    .line 120
    if-eq v4, v5, :cond_c

    .line 121
    .line 122
    move v4, v10

    .line 123
    goto :goto_7

    .line 124
    :cond_c
    const/4 v4, 0x0

    .line 125
    :goto_7
    and-int/2addr v0, v10

    .line 126
    invoke-virtual {v9, v0, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_10

    .line 131
    .line 132
    const-wide/16 v4, 0x0

    .line 133
    .line 134
    const/4 v0, 0x6

    .line 135
    invoke-static {v0, v4, v5, v10}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/4 v4, 0x0

    .line 140
    const/16 v6, 0x18

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    move-object v5, p0

    .line 144
    move v3, p2

    .line 145
    move-object v2, v0

    .line 146
    move-object v0, p1

    .line 147
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/high16 v1, 0x438c0000    # 280.0f

    .line 158
    .line 159
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 160
    .line 161
    const/high16 v4, 0x42e00000    # 112.0f

    .line 162
    .line 163
    const/high16 v5, 0x42400000    # 48.0f

    .line 164
    .line 165
    invoke-static {v0, v4, v5, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->m(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0, p3}, Landroidx/compose/foundation/layout/PaddingKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 174
    .line 175
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 176
    .line 177
    const/16 v4, 0x30

    .line 178
    .line 179
    invoke-static {v2, v1, v9, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v9}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 201
    .line 202
    .line 203
    iget-boolean v6, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 204
    .line 205
    if-eqz v6, :cond_d

    .line 206
    .line 207
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 208
    .line 209
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 210
    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 214
    .line 215
    .line 216
    :goto_8
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 217
    .line 218
    invoke-static {v9, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 222
    .line 223
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    .line 225
    .line 226
    iget-boolean v1, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 227
    .line 228
    if-nez v1, :cond_e

    .line 229
    .line 230
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_f

    .line 243
    .line 244
    :cond_e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 245
    .line 246
    invoke-static {v2, v9, v2, v1}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 247
    .line 248
    .line 249
    :cond_f
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 250
    .line 251
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v9}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v0, v0, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 259
    .line 260
    new-instance v1, Lt;

    .line 261
    .line 262
    invoke-direct {v1, p2, p4}, Lt;-><init>(ZLkotlin/jvm/functions/Function3;)V

    .line 263
    .line 264
    .line 265
    const v2, -0x4a23075

    .line 266
    .line 267
    .line 268
    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v0, v1, v9, v4}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    if-eqz v9, :cond_11

    .line 287
    .line 288
    new-instance v0, Lib;

    .line 289
    .line 290
    move-object v1, p0

    .line 291
    move-object v2, p1

    .line 292
    move v3, p2

    .line 293
    move-object v4, p3

    .line 294
    move-object v5, v7

    .line 295
    move v6, v8

    .line 296
    invoke-direct/range {v0 .. v6}, Lib;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V

    .line 297
    .line 298
    .line 299
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 300
    .line 301
    :cond_11
    return-void
.end method
