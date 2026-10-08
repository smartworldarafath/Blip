.class final Landroidx/compose/material/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/material/TextFieldTransitionScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope;->a:Landroidx/compose/material/TextFieldTransitionScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    move/from16 v8, p7

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object/from16 v14, p9

    .line 11
    .line 12
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v2, 0x1e5d6f90

    .line 15
    .line 16
    .line 17
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    :goto_0
    or-int v2, p10, v2

    .line 35
    .line 36
    move-wide/from16 v4, p2

    .line 37
    .line 38
    invoke-virtual {v14, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x20

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x10

    .line 48
    .line 49
    :goto_1
    or-int/2addr v2, v6

    .line 50
    move-wide/from16 v9, p4

    .line 51
    .line 52
    invoke-virtual {v14, v9, v10}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    const/16 v6, 0x100

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v6, 0x80

    .line 62
    .line 63
    :goto_2
    or-int/2addr v2, v6

    .line 64
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    const/16 v6, 0x800

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/16 v6, 0x400

    .line 74
    .line 75
    :goto_3
    or-int/2addr v2, v6

    .line 76
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    const/16 v6, 0x4000

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/16 v6, 0x2000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v2, v6

    .line 88
    const v6, 0x12493

    .line 89
    .line 90
    .line 91
    and-int/2addr v6, v2

    .line 92
    const v11, 0x12492

    .line 93
    .line 94
    .line 95
    const/4 v12, 0x1

    .line 96
    if-eq v6, v11, :cond_5

    .line 97
    .line 98
    move v6, v12

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    move v6, v0

    .line 101
    :goto_5
    and-int/lit8 v11, v2, 0x1

    .line 102
    .line 103
    invoke-virtual {v14, v11, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_19

    .line 108
    .line 109
    and-int/lit8 v6, v2, 0xe

    .line 110
    .line 111
    or-int/lit8 v6, v6, 0x30

    .line 112
    .line 113
    const-string v11, "TextFieldInputState"

    .line 114
    .line 115
    move-object/from16 v13, p1

    .line 116
    .line 117
    invoke-static {v13, v11, v14, v6}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/TransitionInstance;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iget-object v11, v6, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 122
    .line 123
    iget-object v15, v6, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 124
    .line 125
    invoke-virtual {v11}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v16

    .line 129
    check-cast v16, Landroidx/compose/material/InputPhase;

    .line 130
    .line 131
    const v0, 0x173dd27e

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/high16 v17, 0x3f800000    # 1.0f

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    if-eq v0, v12, :cond_8

    .line 148
    .line 149
    if-ne v0, v3, :cond_7

    .line 150
    .line 151
    :cond_6
    move/from16 v0, v17

    .line 152
    .line 153
    :goto_6
    const/4 v3, 0x0

    .line 154
    goto :goto_7

    .line 155
    :cond_7
    invoke-static {}, Lk8;->e()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_8
    move/from16 v0, v16

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :goto_7
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v3, v15

    .line 170
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    check-cast v15, Landroidx/compose/material/InputPhase;

    .line 177
    .line 178
    const v12, 0x173dd27e

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eqz v12, :cond_9

    .line 189
    .line 190
    const/4 v15, 0x1

    .line 191
    if-eq v12, v15, :cond_b

    .line 192
    .line 193
    const/4 v15, 0x2

    .line 194
    if-ne v12, v15, :cond_a

    .line 195
    .line 196
    :cond_9
    move/from16 v12, v17

    .line 197
    .line 198
    :goto_8
    const/4 v15, 0x0

    .line 199
    goto :goto_9

    .line 200
    :cond_a
    invoke-static {}, Lk8;->e()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_b
    move/from16 v12, v16

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :goto_9
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 208
    .line 209
    .line 210
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 215
    .line 216
    .line 217
    const v15, -0x34a96f9e

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 221
    .line 222
    .line 223
    const/16 v15, 0x96

    .line 224
    .line 225
    move-object/from16 p9, v0

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    move-object/from16 v20, v3

    .line 229
    .line 230
    const/4 v3, 0x6

    .line 231
    move-object v5, v11

    .line 232
    move-object v11, v12

    .line 233
    const/4 v4, 0x0

    .line 234
    invoke-static {v15, v4, v0, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 239
    .line 240
    .line 241
    sget-object v13, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 242
    .line 243
    move v4, v15

    .line 244
    const/high16 v15, 0x30000

    .line 245
    .line 246
    move-object/from16 v10, p9

    .line 247
    .line 248
    move-object v9, v6

    .line 249
    const/4 v6, 0x1

    .line 250
    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 251
    .line 252
    .line 253
    move-result-object v19

    .line 254
    new-instance v10, Landroidx/compose/material/o;

    .line 255
    .line 256
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    check-cast v11, Landroidx/compose/material/InputPhase;

    .line 264
    .line 265
    const v12, 0x4a52d57d    # 3454303.2f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-eqz v11, :cond_e

    .line 276
    .line 277
    if-eq v11, v6, :cond_d

    .line 278
    .line 279
    const/4 v15, 0x2

    .line 280
    if-ne v11, v15, :cond_c

    .line 281
    .line 282
    :goto_a
    move/from16 v11, v16

    .line 283
    .line 284
    :goto_b
    const/4 v15, 0x0

    .line 285
    goto :goto_c

    .line 286
    :cond_c
    invoke-static {}, Lk8;->e()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_d
    if-eqz v8, :cond_e

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_e
    move/from16 v11, v17

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :goto_c
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 297
    .line 298
    .line 299
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    check-cast v15, Landroidx/compose/material/InputPhase;

    .line 308
    .line 309
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    if-eqz v12, :cond_11

    .line 317
    .line 318
    if-eq v12, v6, :cond_10

    .line 319
    .line 320
    const/4 v15, 0x2

    .line 321
    if-ne v12, v15, :cond_f

    .line 322
    .line 323
    :goto_d
    const/4 v15, 0x0

    .line 324
    goto :goto_e

    .line 325
    :cond_f
    invoke-static {}, Lk8;->e()V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_10
    if-eqz v8, :cond_11

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :cond_11
    move/from16 v16, v17

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :goto_e
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 336
    .line 337
    .line 338
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 343
    .line 344
    .line 345
    move-result-object v15

    .line 346
    invoke-virtual {v10, v15, v14, v1}, Landroidx/compose/material/o;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 351
    .line 352
    move-object v10, v11

    .line 353
    move-object v11, v12

    .line 354
    const/high16 v15, 0x30000

    .line 355
    .line 356
    move-object v12, v1

    .line 357
    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 366
    .line 367
    const v11, -0x77530c62

    .line 368
    .line 369
    .line 370
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 371
    .line 372
    .line 373
    sget-object v12, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->a:[I

    .line 374
    .line 375
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    aget v10, v12, v10

    .line 380
    .line 381
    if-ne v10, v6, :cond_12

    .line 382
    .line 383
    move-wide/from16 v17, p2

    .line 384
    .line 385
    :goto_f
    const/4 v10, 0x0

    .line 386
    goto :goto_10

    .line 387
    :cond_12
    move-wide/from16 v17, p4

    .line 388
    .line 389
    goto :goto_f

    .line 390
    :goto_10
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 391
    .line 392
    .line 393
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v15

    .line 405
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 406
    .line 407
    if-nez v13, :cond_13

    .line 408
    .line 409
    if-ne v15, v0, :cond_14

    .line 410
    .line 411
    :cond_13
    sget v13, Landroidx/compose/ui/graphics/Color;->i:I

    .line 412
    .line 413
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->a()Lkotlin/jvm/functions/Function1;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    invoke-interface {v13, v10}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    move-object v15, v10

    .line 422
    check-cast v15, Landroidx/compose/animation/core/TwoWayConverter;

    .line 423
    .line 424
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    :cond_14
    move-object v13, v15

    .line 428
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 429
    .line 430
    invoke-virtual {v5}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 435
    .line 436
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    aget v10, v12, v10

    .line 444
    .line 445
    if-ne v10, v6, :cond_15

    .line 446
    .line 447
    move-wide/from16 v3, p2

    .line 448
    .line 449
    :goto_11
    const/4 v15, 0x0

    .line 450
    goto :goto_12

    .line 451
    :cond_15
    move-wide/from16 v3, p4

    .line 452
    .line 453
    goto :goto_11

    .line 454
    :goto_12
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 455
    .line 456
    .line 457
    new-instance v10, Landroidx/compose/ui/graphics/Color;

    .line 458
    .line 459
    invoke-direct {v10, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Landroidx/compose/material/InputPhase;

    .line 467
    .line 468
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    aget v3, v12, v3

    .line 476
    .line 477
    if-ne v3, v6, :cond_16

    .line 478
    .line 479
    move-wide/from16 v3, p2

    .line 480
    .line 481
    goto :goto_13

    .line 482
    :cond_16
    move-wide/from16 v3, p4

    .line 483
    .line 484
    :goto_13
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 485
    .line 486
    .line 487
    new-instance v11, Landroidx/compose/ui/graphics/Color;

    .line 488
    .line 489
    invoke-direct {v11, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 493
    .line 494
    .line 495
    const v3, -0x78455a97

    .line 496
    .line 497
    .line 498
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 499
    .line 500
    .line 501
    const/4 v3, 0x0

    .line 502
    const/16 v4, 0x96

    .line 503
    .line 504
    const/4 v6, 0x6

    .line 505
    invoke-static {v4, v15, v3, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 510
    .line 511
    .line 512
    const/high16 v15, 0x30000

    .line 513
    .line 514
    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    and-int/lit16 v2, v2, 0x1c00

    .line 519
    .line 520
    or-int/lit16 v2, v2, 0x180

    .line 521
    .line 522
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    shr-int/lit8 v6, v2, 0x6

    .line 527
    .line 528
    and-int/lit8 v6, v6, 0x70

    .line 529
    .line 530
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    move-object v10, v7

    .line 535
    check-cast v10, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;

    .line 536
    .line 537
    invoke-virtual {v10, v4, v14, v6}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 542
    .line 543
    iget-wide v11, v4, Landroidx/compose/ui/graphics/Color;->a:J

    .line 544
    .line 545
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->f(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    if-nez v6, :cond_17

    .line 558
    .line 559
    if-ne v11, v0, :cond_18

    .line 560
    .line 561
    :cond_17
    sget v0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 562
    .line 563
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->a()Lkotlin/jvm/functions/Function1;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    move-object v11, v0

    .line 572
    check-cast v11, Landroidx/compose/animation/core/TwoWayConverter;

    .line 573
    .line 574
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    :cond_18
    move-object v13, v11

    .line 578
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 579
    .line 580
    shl-int/lit8 v0, v2, 0x3

    .line 581
    .line 582
    const v2, 0xe000

    .line 583
    .line 584
    .line 585
    and-int/2addr v0, v2

    .line 586
    const/16 v2, 0xc00

    .line 587
    .line 588
    or-int/2addr v0, v2

    .line 589
    invoke-virtual {v5}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    shr-int/lit8 v0, v0, 0x9

    .line 594
    .line 595
    and-int/lit8 v0, v0, 0x70

    .line 596
    .line 597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-virtual {v10, v2, v14, v4}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v10, v4, v14, v0}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v11

    .line 617
    invoke-virtual {v9}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 618
    .line 619
    .line 620
    const v0, -0x462218a2

    .line 621
    .line 622
    .line 623
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 624
    .line 625
    .line 626
    const/4 v0, 0x0

    .line 627
    const/16 v4, 0x96

    .line 628
    .line 629
    const/4 v6, 0x6

    .line 630
    const/4 v15, 0x0

    .line 631
    invoke-static {v4, v15, v0, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 632
    .line 633
    .line 634
    move-result-object v12

    .line 635
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 636
    .line 637
    .line 638
    const/high16 v15, 0x30000

    .line 639
    .line 640
    move-object v10, v2

    .line 641
    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    check-cast v2, Ljava/lang/Number;

    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 656
    .line 657
    .line 658
    move-result-object v10

    .line 659
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 664
    .line 665
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 666
    .line 667
    new-instance v11, Landroidx/compose/ui/graphics/Color;

    .line 668
    .line 669
    invoke-direct {v11, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 677
    .line 678
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 679
    .line 680
    new-instance v12, Landroidx/compose/ui/graphics/Color;

    .line 681
    .line 682
    invoke-direct {v12, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    check-cast v0, Ljava/lang/Number;

    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 696
    .line 697
    .line 698
    move-result-object v13

    .line 699
    const/16 v0, 0x6000

    .line 700
    .line 701
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 702
    .line 703
    .line 704
    move-result-object v15

    .line 705
    move-object/from16 v9, p8

    .line 706
    .line 707
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    goto :goto_14

    .line 711
    :cond_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 712
    .line 713
    .line 714
    :goto_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    if-eqz v11, :cond_1a

    .line 719
    .line 720
    new-instance v0, Landroidx/compose/material/p;

    .line 721
    .line 722
    move-object/from16 v1, p0

    .line 723
    .line 724
    move-object/from16 v2, p1

    .line 725
    .line 726
    move-wide/from16 v3, p2

    .line 727
    .line 728
    move-wide/from16 v5, p4

    .line 729
    .line 730
    move-object/from16 v9, p8

    .line 731
    .line 732
    move/from16 v10, p10

    .line 733
    .line 734
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/p;-><init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 735
    .line 736
    .line 737
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 738
    .line 739
    :cond_1a
    return-void
.end method
