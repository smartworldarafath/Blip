.class public abstract Landroidx/compose/material/SwitchKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:F = 14.0f

.field public static final b:Landroidx/compose/animation/core/TweenSpec;

.field public static final c:F

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    const/16 v3, 0x64

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/SwitchKt;->b:Landroidx/compose/animation/core/TweenSpec;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    sput v0, Landroidx/compose/material/SwitchKt;->c:F

    .line 15
    .line 16
    const/high16 v0, 0x40c00000    # 6.0f

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/SwitchKt;->d:F

    .line 19
    .line 20
    const/high16 v0, 0x42fa0000    # 125.0f

    .line 21
    .line 22
    sput v0, Landroidx/compose/material/SwitchKt;->e:F

    .line 23
    .line 24
    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    .line 1
    move/from16 v1, p0

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
    move/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v11, p5

    .line 12
    .line 13
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x18ab249

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v6, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v6

    .line 37
    :goto_1
    and-int/lit8 v8, v6, 0x30

    .line 38
    .line 39
    if-nez v8, :cond_3

    .line 40
    .line 41
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    const/16 v8, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v8, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v8

    .line 53
    :cond_3
    and-int/lit16 v8, v6, 0x180

    .line 54
    .line 55
    if-nez v8, :cond_5

    .line 56
    .line 57
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_4

    .line 62
    .line 63
    const/16 v8, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v8, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v8

    .line 69
    :cond_5
    and-int/lit16 v8, v6, 0xc00

    .line 70
    .line 71
    const/4 v13, 0x1

    .line 72
    if-nez v8, :cond_7

    .line 73
    .line 74
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    const/16 v8, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v8, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v8

    .line 86
    :cond_7
    and-int/lit16 v8, v6, 0x6000

    .line 87
    .line 88
    if-nez v8, :cond_9

    .line 89
    .line 90
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_8

    .line 95
    .line 96
    const/16 v8, 0x4000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    const/16 v8, 0x2000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v8

    .line 102
    :cond_9
    const/high16 v8, 0x30000

    .line 103
    .line 104
    and-int/2addr v8, v6

    .line 105
    if-nez v8, :cond_b

    .line 106
    .line 107
    move-object/from16 v8, p4

    .line 108
    .line 109
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_a

    .line 114
    .line 115
    const/high16 v9, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v9, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v0, v9

    .line 121
    goto :goto_7

    .line 122
    :cond_b
    move-object/from16 v8, p4

    .line 123
    .line 124
    :goto_7
    const v9, 0x12493

    .line 125
    .line 126
    .line 127
    and-int/2addr v9, v0

    .line 128
    const v10, 0x12492

    .line 129
    .line 130
    .line 131
    const/4 v12, 0x0

    .line 132
    if-eq v9, v10, :cond_c

    .line 133
    .line 134
    move v9, v13

    .line 135
    goto :goto_8

    .line 136
    :cond_c
    move v9, v12

    .line 137
    :goto_8
    and-int/lit8 v10, v0, 0x1

    .line 138
    .line 139
    invoke-virtual {v11, v10, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_24

    .line 144
    .line 145
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v9, v6, 0x1

    .line 149
    .line 150
    if-eqz v9, :cond_e

    .line 151
    .line 152
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_d

    .line 157
    .line 158
    goto :goto_9

    .line 159
    :cond_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 160
    .line 161
    .line 162
    :cond_e
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 163
    .line 164
    .line 165
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 166
    .line 167
    if-nez v4, :cond_10

    .line 168
    .line 169
    const v10, 0x6b4653f2

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    if-ne v10, v9, :cond_f

    .line 180
    .line 181
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_f
    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 189
    .line 190
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_a

    .line 194
    :cond_10
    const v10, -0x3658947b

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 201
    .line 202
    .line 203
    move-object v10, v4

    .line 204
    :goto_a
    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 205
    .line 206
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 211
    .line 212
    const/high16 v13, 0x41600000    # 14.0f

    .line 213
    .line 214
    invoke-interface {v15, v13}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    if-ne v15, v9, :cond_11

    .line 223
    .line 224
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_11
    move-object/from16 v20, v15

    .line 234
    .line 235
    check-cast v20, Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 242
    .line 243
    sget v15, Landroidx/compose/material/SwitchKt;->e:F

    .line 244
    .line 245
    invoke-interface {v14, v15}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 254
    .line 255
    .line 256
    move-result v16

    .line 257
    or-int v15, v15, v16

    .line 258
    .line 259
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    if-nez v15, :cond_12

    .line 264
    .line 265
    if-ne v12, v9, :cond_15

    .line 266
    .line 267
    :cond_12
    new-instance v12, Landroidx/compose/material/MapDraggableAnchors;

    .line 268
    .line 269
    new-instance v15, Landroidx/compose/material/DraggableAnchorsConfig;

    .line 270
    .line 271
    invoke-direct {v15}, Landroidx/compose/material/DraggableAnchorsConfig;-><init>()V

    .line 272
    .line 273
    .line 274
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 275
    .line 276
    const/4 v7, 0x0

    .line 277
    invoke-virtual {v15, v7, v5}, Landroidx/compose/material/DraggableAnchorsConfig;->a(FLjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {v15, v13, v5}, Landroidx/compose/material/DraggableAnchorsConfig;->a(FLjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object v5, v15, Landroidx/compose/material/DraggableAnchorsConfig;->a:Ljava/util/LinkedHashMap;

    .line 286
    .line 287
    invoke-direct {v12, v5}, Landroidx/compose/material/MapDraggableAnchors;-><init>(Ljava/util/Map;)V

    .line 288
    .line 289
    .line 290
    new-instance v22, Landroidx/compose/material/AnchoredDraggableState;

    .line 291
    .line 292
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 293
    .line 294
    .line 295
    move-result-object v23

    .line 296
    new-instance v5, Lle;

    .line 297
    .line 298
    const/16 v7, 0x1b

    .line 299
    .line 300
    invoke-direct {v5, v7}, Lle;-><init>(I)V

    .line 301
    .line 302
    .line 303
    new-instance v7, Lmg;

    .line 304
    .line 305
    invoke-direct {v7, v14}, Lmg;-><init>(F)V

    .line 306
    .line 307
    .line 308
    new-instance v13, Lh;

    .line 309
    .line 310
    const/4 v14, 0x2

    .line 311
    invoke-direct {v13, v14}, Lh;-><init>(I)V

    .line 312
    .line 313
    .line 314
    sget-object v26, Landroidx/compose/material/SwitchKt;->b:Landroidx/compose/animation/core/TweenSpec;

    .line 315
    .line 316
    move-object/from16 v24, v5

    .line 317
    .line 318
    move-object/from16 v25, v7

    .line 319
    .line 320
    move-object/from16 v27, v13

    .line 321
    .line 322
    invoke-direct/range {v22 .. v27}, Landroidx/compose/material/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v5, v22

    .line 326
    .line 327
    move-object/from16 v7, v23

    .line 328
    .line 329
    iget-object v13, v5, Landroidx/compose/material/AnchoredDraggableState;->m:Landroidx/compose/runtime/MutableState;

    .line 330
    .line 331
    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 332
    .line 333
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    iget-object v12, v5, Landroidx/compose/material/AnchoredDraggableState;->e:Landroidx/compose/material/InternalMutatorMutex;

    .line 337
    .line 338
    iget-object v12, v12, Landroidx/compose/material/InternalMutatorMutex;->b:Lkotlinx/coroutines/sync/MutexImpl;

    .line 339
    .line 340
    invoke-virtual {v12}, Lkotlinx/coroutines/sync/MutexImpl;->f()Z

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-eqz v13, :cond_14

    .line 345
    .line 346
    :try_start_0
    iget-object v13, v5, Landroidx/compose/material/AnchoredDraggableState;->n:Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;

    .line 347
    .line 348
    invoke-virtual {v5}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    check-cast v14, Landroidx/compose/material/MapDraggableAnchors;

    .line 353
    .line 354
    invoke-virtual {v14, v7}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 359
    .line 360
    .line 361
    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    if-nez v15, :cond_13

    .line 363
    .line 364
    :try_start_1
    invoke-static {v13, v14}, Landroidx/compose/material/AnchoredDragScope;->a(Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .line 366
    .line 367
    const/4 v13, 0x0

    .line 368
    :try_start_2
    invoke-virtual {v5, v13}, Landroidx/compose/material/AnchoredDraggableState;->h(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto :goto_b

    .line 372
    :catchall_0
    move-exception v0

    .line 373
    const/4 v13, 0x0

    .line 374
    goto :goto_c

    .line 375
    :cond_13
    const/4 v13, 0x0

    .line 376
    :goto_b
    invoke-virtual {v5, v7}, Landroidx/compose/material/AnchoredDraggableState;->g(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    .line 378
    .line 379
    invoke-virtual {v12, v13}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    goto :goto_e

    .line 383
    :goto_c
    const/4 v13, 0x0

    .line 384
    goto :goto_d

    .line 385
    :catchall_1
    move-exception v0

    .line 386
    goto :goto_c

    .line 387
    :goto_d
    invoke-virtual {v12, v13}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :cond_14
    :goto_e
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    move-object v12, v5

    .line 395
    :cond_15
    check-cast v12, Landroidx/compose/material/AnchoredDraggableState;

    .line 396
    .line 397
    shr-int/lit8 v5, v0, 0x3

    .line 398
    .line 399
    invoke-static {v2, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 404
    .line 405
    .line 406
    move-result-object v13

    .line 407
    and-int/lit8 v14, v0, 0xe

    .line 408
    .line 409
    invoke-static {v13, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v15

    .line 417
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v16

    .line 421
    or-int v15, v15, v16

    .line 422
    .line 423
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v16

    .line 427
    or-int v15, v15, v16

    .line 428
    .line 429
    move/from16 v22, v0

    .line 430
    .line 431
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-nez v15, :cond_16

    .line 436
    .line 437
    if-ne v0, v9, :cond_17

    .line 438
    .line 439
    :cond_16
    new-instance v16, Landroidx/compose/material/SwitchKt$Switch$1$1;

    .line 440
    .line 441
    const/16 v21, 0x0

    .line 442
    .line 443
    move-object/from16 v19, v7

    .line 444
    .line 445
    move-object/from16 v17, v12

    .line 446
    .line 447
    move-object/from16 v18, v13

    .line 448
    .line 449
    invoke-direct/range {v16 .. v21}, Landroidx/compose/material/SwitchKt$Switch$1$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v0, v16

    .line 453
    .line 454
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_17
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 458
    .line 459
    invoke-static {v11, v12, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 460
    .line 461
    .line 462
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    check-cast v7, Ljava/lang/Boolean;

    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    const/4 v13, 0x4

    .line 476
    if-ne v14, v13, :cond_18

    .line 477
    .line 478
    const/4 v13, 0x1

    .line 479
    goto :goto_f

    .line 480
    :cond_18
    const/4 v13, 0x0

    .line 481
    :goto_f
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v14

    .line 485
    or-int/2addr v13, v14

    .line 486
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    if-nez v13, :cond_19

    .line 491
    .line 492
    if-ne v14, v9, :cond_1a

    .line 493
    .line 494
    :cond_19
    new-instance v14, Landroidx/compose/material/SwitchKt$Switch$2$1;

    .line 495
    .line 496
    const/4 v13, 0x0

    .line 497
    invoke-direct {v14, v1, v12, v13}, Landroidx/compose/material/SwitchKt$Switch$2$1;-><init>(ZLandroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    :cond_1a
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 504
    .line 505
    invoke-static {v0, v7, v14, v11}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 506
    .line 507
    .line 508
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 509
    .line 510
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 515
    .line 516
    if-ne v0, v7, :cond_1b

    .line 517
    .line 518
    const/16 v20, 0x1

    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_1b
    const/16 v20, 0x0

    .line 522
    .line 523
    :goto_10
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 524
    .line 525
    if-eqz v2, :cond_1c

    .line 526
    .line 527
    new-instance v7, Landroidx/compose/ui/semantics/Role;

    .line 528
    .line 529
    const/4 v14, 0x2

    .line 530
    invoke-direct {v7, v14}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 531
    .line 532
    .line 533
    invoke-static {v1, v10, v7, v2}, Landroidx/compose/foundation/selection/ToggleableKt;->a(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    goto :goto_11

    .line 538
    :cond_1c
    move-object v7, v0

    .line 539
    :goto_11
    if-eqz v2, :cond_1d

    .line 540
    .line 541
    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 542
    .line 543
    sget-object v0, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 544
    .line 545
    :cond_1d
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-interface {v0, v7}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 550
    .line 551
    .line 552
    move-result-object v14

    .line 553
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 554
    .line 555
    if-eqz v2, :cond_1e

    .line 556
    .line 557
    const/16 v16, 0x1

    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_1e
    const/16 v16, 0x0

    .line 561
    .line 562
    :goto_12
    iget-object v15, v12, Landroidx/compose/material/AnchoredDraggableState;->f:Landroidx/compose/material/AnchoredDraggableState$draggableState$1;

    .line 563
    .line 564
    new-instance v0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1;

    .line 565
    .line 566
    const/4 v13, 0x0

    .line 567
    invoke-direct {v0, v12, v13}, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    .line 568
    .line 569
    .line 570
    const/16 v18, 0x0

    .line 571
    .line 572
    move-object/from16 v19, v0

    .line 573
    .line 574
    move-object/from16 v17, v10

    .line 575
    .line 576
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->q(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const/high16 v7, 0x40000000    # 2.0f

    .line 585
    .line 586
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 595
    .line 596
    const/4 v13, 0x0

    .line 597
    invoke-static {v7, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 602
    .line 603
    .line 604
    move-result v13

    .line 605
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 606
    .line 607
    .line 608
    move-result-object v14

    .line 609
    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 614
    .line 615
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 619
    .line 620
    .line 621
    iget-boolean v15, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 622
    .line 623
    if-eqz v15, :cond_1f

    .line 624
    .line 625
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 626
    .line 627
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 628
    .line 629
    .line 630
    goto :goto_13

    .line 631
    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 632
    .line 633
    .line 634
    :goto_13
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 635
    .line 636
    invoke-static {v11, v7, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 637
    .line 638
    .line 639
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 640
    .line 641
    invoke-static {v11, v14, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 642
    .line 643
    .line 644
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 645
    .line 646
    if-nez v7, :cond_20

    .line 647
    .line 648
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v7

    .line 660
    if-nez v7, :cond_21

    .line 661
    .line 662
    :cond_20
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 663
    .line 664
    invoke-static {v13, v11, v13, v7}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 665
    .line 666
    .line 667
    :cond_21
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 668
    .line 669
    invoke-static {v11, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v12, Landroidx/compose/material/AnchoredDraggableState;->h:Landroidx/compose/runtime/State;

    .line 673
    .line 674
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Ljava/lang/Boolean;

    .line 679
    .line 680
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v13

    .line 692
    if-nez v0, :cond_22

    .line 693
    .line 694
    if-ne v13, v9, :cond_23

    .line 695
    .line 696
    :cond_22
    new-instance v13, Lf0;

    .line 697
    .line 698
    const/4 v0, 0x3

    .line 699
    invoke-direct {v13, v12, v0}, Lf0;-><init>(Landroidx/compose/material/AnchoredDraggableState;I)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    :cond_23
    move-object v9, v13

    .line 706
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 707
    .line 708
    and-int/lit16 v0, v5, 0x380

    .line 709
    .line 710
    const/4 v5, 0x6

    .line 711
    or-int/2addr v0, v5

    .line 712
    shr-int/lit8 v5, v22, 0x6

    .line 713
    .line 714
    and-int/lit16 v5, v5, 0x1c00

    .line 715
    .line 716
    or-int v12, v0, v5

    .line 717
    .line 718
    invoke-static/range {v7 .. v12}, Landroidx/compose/material/SwitchKt;->b(ZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 719
    .line 720
    .line 721
    const/4 v0, 0x1

    .line 722
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 723
    .line 724
    .line 725
    goto :goto_14

    .line 726
    :cond_24
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 727
    .line 728
    .line 729
    :goto_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 730
    .line 731
    .line 732
    move-result-object v7

    .line 733
    if-eqz v7, :cond_25

    .line 734
    .line 735
    new-instance v0, Lib;

    .line 736
    .line 737
    move-object/from16 v5, p4

    .line 738
    .line 739
    invoke-direct/range {v0 .. v6}, Lib;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;I)V

    .line 740
    .line 741
    .line 742
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 743
    .line 744
    :cond_25
    return-void
.end method

.method public static final b(ZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move/from16 v1, p0

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
    move/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v10, p4

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, 0x439fbf2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v5, 0x6

    .line 22
    .line 23
    sget-object v13, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int/2addr v0, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v5

    .line 39
    :goto_1
    and-int/lit8 v6, v5, 0x30

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v6, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v6

    .line 55
    :cond_3
    and-int/lit16 v6, v5, 0x180

    .line 56
    .line 57
    const/4 v14, 0x1

    .line 58
    if-nez v6, :cond_5

    .line 59
    .line 60
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    const/16 v6, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v6, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v6

    .line 72
    :cond_5
    and-int/lit16 v6, v5, 0xc00

    .line 73
    .line 74
    if-nez v6, :cond_7

    .line 75
    .line 76
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    const/16 v6, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v6, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v6

    .line 88
    :cond_7
    and-int/lit16 v6, v5, 0x6000

    .line 89
    .line 90
    if-nez v6, :cond_9

    .line 91
    .line 92
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_8

    .line 97
    .line 98
    const/16 v6, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v6, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v0, v6

    .line 104
    :cond_9
    const/high16 v6, 0x30000

    .line 105
    .line 106
    and-int/2addr v6, v5

    .line 107
    const/high16 v7, 0x20000

    .line 108
    .line 109
    if-nez v6, :cond_b

    .line 110
    .line 111
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_a

    .line 116
    .line 117
    move v6, v7

    .line 118
    goto :goto_6

    .line 119
    :cond_a
    const/high16 v6, 0x10000

    .line 120
    .line 121
    :goto_6
    or-int/2addr v0, v6

    .line 122
    :cond_b
    const v6, 0x12493

    .line 123
    .line 124
    .line 125
    and-int/2addr v6, v0

    .line 126
    const v8, 0x12492

    .line 127
    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    if-eq v6, v8, :cond_c

    .line 131
    .line 132
    move v6, v14

    .line 133
    goto :goto_7

    .line 134
    :cond_c
    move v6, v9

    .line 135
    :goto_7
    and-int/lit8 v8, v0, 0x1

    .line 136
    .line 137
    invoke-virtual {v10, v8, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_18

    .line 142
    .line 143
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 148
    .line 149
    if-ne v6, v8, :cond_d

    .line 150
    .line 151
    new-instance v6, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 152
    .line 153
    invoke-direct {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_d
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 160
    .line 161
    const/high16 v11, 0x70000

    .line 162
    .line 163
    and-int/2addr v11, v0

    .line 164
    if-ne v11, v7, :cond_e

    .line 165
    .line 166
    move v7, v14

    .line 167
    goto :goto_8

    .line 168
    :cond_e
    move v7, v9

    .line 169
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-nez v7, :cond_f

    .line 174
    .line 175
    if-ne v11, v8, :cond_10

    .line 176
    .line 177
    :cond_f
    new-instance v11, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    invoke-direct {v11, v4, v6, v7}, Landroidx/compose/material/SwitchKt$SwitchImpl$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_10
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 187
    .line 188
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-nez v6, :cond_11

    .line 196
    .line 197
    sget v6, Landroidx/compose/material/SwitchKt;->d:F

    .line 198
    .line 199
    :goto_9
    move/from16 v17, v6

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_11
    sget v6, Landroidx/compose/material/SwitchKt;->c:F

    .line 203
    .line 204
    goto :goto_9

    .line 205
    :goto_a
    invoke-interface {v2, v1, v10}, Landroidx/compose/material/SwitchColors;->b(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 210
    .line 211
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 212
    .line 213
    invoke-virtual {v13, v11, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    const/high16 v12, 0x3f800000    # 1.0f

    .line 218
    .line 219
    invoke-static {v7, v12}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    if-nez v12, :cond_12

    .line 232
    .line 233
    if-ne v15, v8, :cond_13

    .line 234
    .line 235
    :cond_12
    new-instance v15, Lu7;

    .line 236
    .line 237
    invoke-direct {v15, v6, v14}, Lu7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_13
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 244
    .line 245
    invoke-static {v9, v10, v7, v15}, Landroidx/compose/foundation/CanvasKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v2, v1, v10}, Landroidx/compose/material/SwitchColors;->a(ZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    sget-object v7, Landroidx/compose/material/ElevationOverlayKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 253
    .line 254
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Landroidx/compose/material/ElevationOverlay;

    .line 259
    .line 260
    sget-object v12, Landroidx/compose/material/ElevationOverlayKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 261
    .line 262
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    check-cast v12, Landroidx/compose/ui/unit/Dp;

    .line 267
    .line 268
    iget v12, v12, Landroidx/compose/ui/unit/Dp;->j:F

    .line 269
    .line 270
    add-float v12, v12, v17

    .line 271
    .line 272
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    check-cast v15, Landroidx/compose/ui/graphics/Color;

    .line 277
    .line 278
    iget-wide v14, v15, Landroidx/compose/ui/graphics/Color;->a:J

    .line 279
    .line 280
    invoke-static {v10}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 281
    .line 282
    .line 283
    move-result-object v19

    .line 284
    move-object/from16 v20, v10

    .line 285
    .line 286
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/material/Colors;->f()J

    .line 287
    .line 288
    .line 289
    move-result-wide v9

    .line 290
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-eqz v9, :cond_14

    .line 295
    .line 296
    if-eqz v7, :cond_14

    .line 297
    .line 298
    const v9, -0x28393dc5

    .line 299
    .line 300
    .line 301
    move-object/from16 v10, v20

    .line 302
    .line 303
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 311
    .line 312
    iget-wide v14, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 313
    .line 314
    move-object v6, v11

    .line 315
    const/4 v11, 0x0

    .line 316
    check-cast v7, Landroidx/compose/material/DefaultElevationOverlay;

    .line 317
    .line 318
    move v9, v12

    .line 319
    const/4 v12, 0x0

    .line 320
    move-wide/from16 v22, v14

    .line 321
    .line 322
    move-object v15, v6

    .line 323
    move-object v6, v7

    .line 324
    move-object v14, v8

    .line 325
    move-wide/from16 v7, v22

    .line 326
    .line 327
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/material/DefaultElevationOverlay;->a(JFLandroidx/compose/runtime/Composer;I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v6

    .line 331
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 332
    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_14
    move-object v14, v8

    .line 336
    move-object v15, v11

    .line 337
    move-object/from16 v10, v20

    .line 338
    .line 339
    const/4 v12, 0x0

    .line 340
    const v7, -0x2837e25a

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 354
    .line 355
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 356
    .line 357
    move-object/from16 v20, v10

    .line 358
    .line 359
    :goto_b
    const/4 v10, 0x0

    .line 360
    const/16 v11, 0xe

    .line 361
    .line 362
    const/4 v8, 0x0

    .line 363
    move-object/from16 v9, v20

    .line 364
    .line 365
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    move-object v10, v9

    .line 370
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    .line 371
    .line 372
    invoke-virtual {v13, v15, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    const v8, 0xe000

    .line 377
    .line 378
    .line 379
    and-int/2addr v0, v8

    .line 380
    const/16 v8, 0x4000

    .line 381
    .line 382
    if-ne v0, v8, :cond_15

    .line 383
    .line 384
    const/4 v9, 0x1

    .line 385
    goto :goto_c

    .line 386
    :cond_15
    move v9, v12

    .line 387
    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-nez v9, :cond_16

    .line 392
    .line 393
    if-ne v0, v14, :cond_17

    .line 394
    .line 395
    :cond_16
    new-instance v0, Lhc;

    .line 396
    .line 397
    const/4 v8, 0x1

    .line 398
    invoke-direct {v0, v8, v3}, Lhc;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 405
    .line 406
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-wide/16 v7, 0x0

    .line 411
    .line 412
    const/4 v9, 0x4

    .line 413
    invoke-static {v9, v7, v8, v12}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-static {v0, v4, v7}, Landroidx/compose/foundation/IndicationKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 422
    .line 423
    .line 424
    move-result-object v16

    .line 425
    sget-object v18, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 426
    .line 427
    const-wide/16 v19, 0x0

    .line 428
    .line 429
    const/16 v21, 0x18

    .line 430
    .line 431
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    move-object/from16 v7, v18

    .line 436
    .line 437
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 442
    .line 443
    iget-wide v8, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 444
    .line 445
    invoke-static {v0, v8, v9, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 450
    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 454
    .line 455
    .line 456
    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    if-eqz v6, :cond_19

    .line 461
    .line 462
    new-instance v0, Lgd;

    .line 463
    .line 464
    invoke-direct/range {v0 .. v5}, Lgd;-><init>(ZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;I)V

    .line 465
    .line 466
    .line 467
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 468
    .line 469
    :cond_19
    return-void
.end method
