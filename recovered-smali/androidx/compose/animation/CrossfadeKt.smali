.class public abstract Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

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
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 12
    .line 13
    move-object/from16 v4, p5

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v7, -0x6fe6665e

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v7, v6, 0x6

    .line 24
    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v7, 0x2

    .line 36
    :goto_0
    or-int/2addr v7, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v7, v6

    .line 39
    :goto_1
    and-int/lit8 v9, v6, 0x30

    .line 40
    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v9, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v7, v9

    .line 55
    :cond_3
    and-int/lit16 v9, v6, 0x180

    .line 56
    .line 57
    if-nez v9, :cond_5

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_4

    .line 64
    .line 65
    const/16 v9, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v9, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v7, v9

    .line 71
    :cond_5
    or-int/lit16 v7, v7, 0xc00

    .line 72
    .line 73
    and-int/lit16 v9, v6, 0x6000

    .line 74
    .line 75
    if-nez v9, :cond_7

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_6

    .line 82
    .line 83
    const/16 v9, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v9, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v7, v9

    .line 89
    :cond_7
    and-int/lit16 v9, v7, 0x2493

    .line 90
    .line 91
    const/16 v10, 0x2492

    .line 92
    .line 93
    const/4 v11, 0x1

    .line 94
    const/4 v12, 0x0

    .line 95
    if-eq v9, v10, :cond_8

    .line 96
    .line 97
    move v9, v11

    .line 98
    goto :goto_5

    .line 99
    :cond_8
    move v9, v12

    .line 100
    :goto_5
    and-int/lit8 v10, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v4, v10, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_1a

    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 113
    .line 114
    if-ne v9, v10, :cond_9

    .line 115
    .line 116
    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->k:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 117
    .line 118
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-ne v13, v10, :cond_a

    .line 128
    .line 129
    new-instance v13, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 130
    .line 131
    invoke-direct {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_a
    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 145
    .line 146
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-ne v14, v10, :cond_b

    .line 151
    .line 152
    sget-object v14, Landroidx/collection/ScatterMapKt;->a:[J

    .line 153
    .line 154
    new-instance v14, Landroidx/collection/MutableScatterMap;

    .line 155
    .line 156
    invoke-direct {v14}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_b
    check-cast v14, Landroidx/collection/MutableScatterMap;

    .line 163
    .line 164
    iget-object v15, v1, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 171
    .line 172
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_11

    .line 181
    .line 182
    const v0, 0x13244968

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ne v0, v11, :cond_d

    .line 193
    .line 194
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_c

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_c
    const v0, 0x13293d80

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_d
    :goto_6
    const v0, 0x1326563a

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 223
    .line 224
    .line 225
    and-int/lit8 v0, v7, 0xe

    .line 226
    .line 227
    const/4 v7, 0x4

    .line 228
    if-ne v0, v7, :cond_e

    .line 229
    .line 230
    move v0, v11

    .line 231
    goto :goto_7

    .line 232
    :cond_e
    move v0, v12

    .line 233
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    if-nez v0, :cond_f

    .line 238
    .line 239
    if-ne v7, v10, :cond_10

    .line 240
    .line 241
    :cond_f
    new-instance v7, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    .line 242
    .line 243
    invoke-direct {v7, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/TransitionInstance;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_10
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 250
    .line 251
    invoke-static {v13, v7}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap;->h()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 258
    .line 259
    .line 260
    :goto_8
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_11
    const v0, 0x132954c0

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 271
    .line 272
    .line 273
    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v14, v0}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_16

    .line 282
    .line 283
    const v0, 0x132a41bb

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move v7, v12

    .line 294
    :goto_a
    move-object v8, v0

    .line 295
    check-cast v8, Landroidx/compose/runtime/snapshots/StateListIterator;

    .line 296
    .line 297
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    const/4 v11, -0x1

    .line 302
    if-eqz v10, :cond_13

    .line 303
    .line 304
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-eqz v8, :cond_12

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 328
    .line 329
    const/4 v11, 0x1

    .line 330
    goto :goto_a

    .line 331
    :cond_13
    move v7, v11

    .line 332
    :goto_b
    if-ne v7, v11, :cond_14

    .line 333
    .line 334
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_14
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v13, v7, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    :goto_c
    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap;->h()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    move v7, v12

    .line 357
    :goto_d
    if-ge v7, v0, :cond_15

    .line 358
    .line 359
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    new-instance v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    .line 364
    .line 365
    invoke-direct {v10, v1, v3, v8, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 366
    .line 367
    .line 368
    const v11, -0x37b2e7f5

    .line 369
    .line 370
    .line 371
    invoke-static {v11, v10, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    invoke-virtual {v14, v8, v10}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    add-int/lit8 v7, v7, 0x1

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_15
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 382
    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_16
    const v0, 0x13359780

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 392
    .line 393
    .line 394
    :goto_e
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 395
    .line 396
    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->T:J

    .line 401
    .line 402
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-static {v4, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 415
    .line 416
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 420
    .line 421
    .line 422
    iget-boolean v11, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 423
    .line 424
    if-eqz v11, :cond_17

    .line 425
    .line 426
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 427
    .line 428
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 429
    .line 430
    .line 431
    goto :goto_f

    .line 432
    :cond_17
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 433
    .line 434
    .line 435
    :goto_f
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 436
    .line 437
    invoke-static {v4, v0, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 438
    .line 439
    .line 440
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 441
    .line 442
    invoke-static {v4, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;)V

    .line 450
    .line 451
    .line 452
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 453
    .line 454
    .line 455
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 456
    .line 457
    invoke-static {v4, v10, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 458
    .line 459
    .line 460
    const v0, -0x4e3e53b8

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    move v7, v12

    .line 471
    :goto_10
    if-ge v7, v0, :cond_19

    .line 472
    .line 473
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    const v10, 0x45d4d0b9

    .line 478
    .line 479
    .line 480
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->U(ILjava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 492
    .line 493
    if-nez v8, :cond_18

    .line 494
    .line 495
    const v8, 0x74c5d4d0

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 499
    .line 500
    .line 501
    :goto_11
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 502
    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_18
    const v10, 0x45d4d551

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 509
    .line 510
    .line 511
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    invoke-interface {v8, v4, v10}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    goto :goto_11

    .line 519
    :goto_12
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 520
    .line 521
    .line 522
    add-int/lit8 v7, v7, 0x1

    .line 523
    .line 524
    goto :goto_10

    .line 525
    :cond_19
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x1

    .line 529
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 530
    .line 531
    .line 532
    goto :goto_13

    .line 533
    :cond_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 534
    .line 535
    .line 536
    move-object/from16 v9, p3

    .line 537
    .line 538
    :goto_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    if-eqz v7, :cond_1b

    .line 543
    .line 544
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    .line 545
    .line 546
    move-object v4, v9

    .line 547
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 548
    .line 549
    .line 550
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 551
    .line 552
    :cond_1b
    return-void
.end method

.method public static final b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 7

    .line 1
    move-object v5, p5

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p5, -0x1e970fed

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p5}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    const/4 p5, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p5, 0x2

    .line 19
    :goto_0
    or-int/2addr p5, p6

    .line 20
    and-int/lit8 v0, p7, 0x2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    or-int/lit8 p5, p5, 0x30

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr p5, v1

    .line 39
    :goto_2
    or-int/lit16 p5, p5, 0x180

    .line 40
    .line 41
    and-int/lit16 v1, p5, 0x2493

    .line 42
    .line 43
    const/16 v2, 0x2492

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eq v1, v2, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move v1, v3

    .line 51
    :goto_3
    and-int/lit8 v2, p5, 0x1

    .line 52
    .line 53
    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 62
    .line 63
    :cond_4
    move-object v1, p1

    .line 64
    const/4 p1, 0x7

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-static {v3, v3, p2, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    and-int/lit8 p1, p5, 0xe

    .line 71
    .line 72
    or-int/lit8 p1, p1, 0x30

    .line 73
    .line 74
    invoke-static {p0, p3, v5, p1}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/TransitionInstance;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const p1, 0xe3f0

    .line 79
    .line 80
    .line 81
    and-int v6, p5, p1

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    move-object v4, p4

    .line 85
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->a(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    move-object p5, v4

    .line 89
    move-object p4, p3

    .line 90
    move-object p2, v1

    .line 91
    move-object p3, v2

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move-object p5, p4

    .line 94
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 95
    .line 96
    .line 97
    move-object p4, p3

    .line 98
    move-object p3, p2

    .line 99
    move-object p2, p1

    .line 100
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    move-object p1, p0

    .line 107
    new-instance p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    .line 108
    .line 109
    invoke-direct/range {p0 .. p7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 110
    .line 111
    .line 112
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 113
    .line 114
    :cond_6
    return-void
.end method
