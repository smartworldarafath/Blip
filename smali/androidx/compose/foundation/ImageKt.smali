.class public abstract Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p8

    .line 6
    .line 7
    move-object/from16 v9, p7

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x441d0e20

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v8, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    and-int/lit8 v0, v8, 0x8

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_1
    or-int/2addr v0, v8

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v0, v8

    .line 42
    :goto_2
    and-int/lit8 v3, v8, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_4

    .line 45
    .line 46
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const/16 v3, 0x20

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/16 v3, 0x10

    .line 56
    .line 57
    :goto_3
    or-int/2addr v0, v3

    .line 58
    :cond_4
    and-int/lit8 v3, p9, 0x4

    .line 59
    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    :cond_5
    move-object/from16 v5, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v5, v8, 0x180

    .line 68
    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    move-object/from16 v5, p2

    .line 72
    .line 73
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_7

    .line 78
    .line 79
    const/16 v6, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v6, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v6

    .line 85
    :goto_5
    and-int/lit8 v6, p9, 0x8

    .line 86
    .line 87
    if-eqz v6, :cond_9

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0xc00

    .line 90
    .line 91
    :cond_8
    move-object/from16 v10, p3

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_9
    and-int/lit16 v10, v8, 0xc00

    .line 95
    .line 96
    if-nez v10, :cond_8

    .line 97
    .line 98
    move-object/from16 v10, p3

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_a

    .line 105
    .line 106
    const/16 v11, 0x800

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/16 v11, 0x400

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v11

    .line 112
    :goto_7
    and-int/lit8 v11, p9, 0x10

    .line 113
    .line 114
    if-eqz v11, :cond_c

    .line 115
    .line 116
    or-int/lit16 v0, v0, 0x6000

    .line 117
    .line 118
    :cond_b
    move-object/from16 v12, p4

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_c
    and-int/lit16 v12, v8, 0x6000

    .line 122
    .line 123
    if-nez v12, :cond_b

    .line 124
    .line 125
    move-object/from16 v12, p4

    .line 126
    .line 127
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_d

    .line 132
    .line 133
    const/16 v13, 0x4000

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_d
    const/16 v13, 0x2000

    .line 137
    .line 138
    :goto_8
    or-int/2addr v0, v13

    .line 139
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 140
    .line 141
    const/high16 v14, 0x30000

    .line 142
    .line 143
    if-eqz v13, :cond_f

    .line 144
    .line 145
    or-int/2addr v0, v14

    .line 146
    :cond_e
    move/from16 v14, p5

    .line 147
    .line 148
    goto :goto_b

    .line 149
    :cond_f
    and-int/2addr v14, v8

    .line 150
    if-nez v14, :cond_e

    .line 151
    .line 152
    move/from16 v14, p5

    .line 153
    .line 154
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-eqz v15, :cond_10

    .line 159
    .line 160
    const/high16 v15, 0x20000

    .line 161
    .line 162
    goto :goto_a

    .line 163
    :cond_10
    const/high16 v15, 0x10000

    .line 164
    .line 165
    :goto_a
    or-int/2addr v0, v15

    .line 166
    :goto_b
    and-int/lit8 v15, p9, 0x40

    .line 167
    .line 168
    const/high16 v16, 0x180000

    .line 169
    .line 170
    if-eqz v15, :cond_11

    .line 171
    .line 172
    or-int v0, v0, v16

    .line 173
    .line 174
    move-object/from16 v2, p6

    .line 175
    .line 176
    goto :goto_d

    .line 177
    :cond_11
    and-int v16, v8, v16

    .line 178
    .line 179
    move-object/from16 v2, p6

    .line 180
    .line 181
    if-nez v16, :cond_13

    .line 182
    .line 183
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    if-eqz v16, :cond_12

    .line 188
    .line 189
    const/high16 v16, 0x100000

    .line 190
    .line 191
    goto :goto_c

    .line 192
    :cond_12
    const/high16 v16, 0x80000

    .line 193
    .line 194
    :goto_c
    or-int v0, v0, v16

    .line 195
    .line 196
    :cond_13
    :goto_d
    const v16, 0x92493

    .line 197
    .line 198
    .line 199
    and-int v4, v0, v16

    .line 200
    .line 201
    move/from16 v16, v0

    .line 202
    .line 203
    const v0, 0x92492

    .line 204
    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    move/from16 v17, v6

    .line 208
    .line 209
    const/4 v6, 0x1

    .line 210
    if-eq v4, v0, :cond_14

    .line 211
    .line 212
    move v0, v6

    .line 213
    goto :goto_e

    .line 214
    :cond_14
    move v0, v1

    .line 215
    :goto_e
    and-int/lit8 v4, v16, 0x1

    .line 216
    .line 217
    invoke-virtual {v9, v4, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_20

    .line 222
    .line 223
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 224
    .line 225
    if-eqz v3, :cond_15

    .line 226
    .line 227
    move-object v3, v0

    .line 228
    goto :goto_f

    .line 229
    :cond_15
    move-object v3, v5

    .line 230
    :goto_f
    if-eqz v17, :cond_16

    .line 231
    .line 232
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 233
    .line 234
    move-object v2, v4

    .line 235
    goto :goto_10

    .line 236
    :cond_16
    move-object v2, v10

    .line 237
    :goto_10
    if-eqz v11, :cond_17

    .line 238
    .line 239
    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 240
    .line 241
    move-object v12, v4

    .line 242
    :cond_17
    if-eqz v13, :cond_18

    .line 243
    .line 244
    const/high16 v4, 0x3f800000    # 1.0f

    .line 245
    .line 246
    goto :goto_11

    .line 247
    :cond_18
    move v4, v14

    .line 248
    :goto_11
    if-eqz v15, :cond_19

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    goto :goto_12

    .line 252
    :cond_19
    move-object/from16 v5, p6

    .line 253
    .line 254
    :goto_12
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 255
    .line 256
    if-eqz v7, :cond_1d

    .line 257
    .line 258
    const v11, 0x7133d784

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 262
    .line 263
    .line 264
    and-int/lit8 v11, v16, 0x70

    .line 265
    .line 266
    const/16 v13, 0x20

    .line 267
    .line 268
    if-ne v11, v13, :cond_1a

    .line 269
    .line 270
    move v11, v6

    .line 271
    goto :goto_13

    .line 272
    :cond_1a
    move v11, v1

    .line 273
    :goto_13
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    if-nez v11, :cond_1b

    .line 278
    .line 279
    if-ne v13, v10, :cond_1c

    .line 280
    .line 281
    :cond_1b
    new-instance v13, Lq7;

    .line 282
    .line 283
    const/4 v11, 0x2

    .line 284
    invoke-direct {v13, v7, v11}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_1c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 291
    .line 292
    invoke-static {v0, v1, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 297
    .line 298
    .line 299
    goto :goto_14

    .line 300
    :cond_1d
    const v11, 0x713643c2

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 307
    .line 308
    .line 309
    :goto_14
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    move v1, v6

    .line 318
    const/4 v6, 0x2

    .line 319
    move-object v11, v3

    .line 320
    move-object v3, v12

    .line 321
    move v12, v1

    .line 322
    move-object/from16 v1, p0

    .line 323
    .line 324
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-ne v1, v10, :cond_1e

    .line 333
    .line 334
    sget-object v1, Landroidx/compose/foundation/ImageKt$Image$1$1;->a:Landroidx/compose/foundation/ImageKt$Image$1$1;

    .line 335
    .line 336
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_1e
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 340
    .line 341
    iget-wide v13, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 342
    .line 343
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 356
    .line 357
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 361
    .line 362
    .line 363
    iget-boolean v13, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 364
    .line 365
    if-eqz v13, :cond_1f

    .line 366
    .line 367
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 368
    .line 369
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 370
    .line 371
    .line 372
    goto :goto_15

    .line 373
    :cond_1f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 374
    .line 375
    .line 376
    :goto_15
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 377
    .line 378
    invoke-static {v9, v1, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 379
    .line 380
    .line 381
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 382
    .line 383
    invoke-static {v9, v10, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 387
    .line 388
    .line 389
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 390
    .line 391
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 399
    .line 400
    invoke-static {v9, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 404
    .line 405
    .line 406
    move v6, v4

    .line 407
    move-object v7, v5

    .line 408
    move-object v4, v2

    .line 409
    move-object v5, v3

    .line 410
    move-object v3, v11

    .line 411
    goto :goto_16

    .line 412
    :cond_20
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 413
    .line 414
    .line 415
    move-object/from16 v7, p6

    .line 416
    .line 417
    move-object v3, v5

    .line 418
    move-object v4, v10

    .line 419
    move-object v5, v12

    .line 420
    move v6, v14

    .line 421
    :goto_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    if-eqz v10, :cond_21

    .line 426
    .line 427
    new-instance v0, Lu9;

    .line 428
    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    move-object/from16 v2, p1

    .line 432
    .line 433
    move/from16 v9, p9

    .line 434
    .line 435
    invoke-direct/range {v0 .. v9}, Lu9;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V

    .line 436
    .line 437
    .line 438
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 439
    .line 440
    :cond_21
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 10

    .line 1
    and-int/lit8 v1, p6, 0x4

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    and-int/lit8 p2, p6, 0x40

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :cond_1
    move-object v6, p3

    .line 14
    invoke-static {p0, p4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    and-int/lit8 p2, p5, 0x70

    .line 19
    .line 20
    const/16 p3, 0x8

    .line 21
    .line 22
    or-int/2addr p2, p3

    .line 23
    and-int/lit16 p3, p5, 0x380

    .line 24
    .line 25
    or-int/2addr p2, p3

    .line 26
    and-int/lit16 p3, p5, 0x1c00

    .line 27
    .line 28
    or-int/2addr p2, p3

    .line 29
    const p3, 0xe000

    .line 30
    .line 31
    .line 32
    and-int/2addr p3, p5

    .line 33
    or-int/2addr p2, p3

    .line 34
    const/high16 p3, 0x70000

    .line 35
    .line 36
    and-int/2addr p3, p5

    .line 37
    or-int/2addr p2, p3

    .line 38
    const/high16 p3, 0x380000

    .line 39
    .line 40
    and-int/2addr p3, p5

    .line 41
    or-int v8, p2, p3

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 45
    .line 46
    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 47
    .line 48
    const/high16 v5, 0x3f800000    # 1.0f

    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p1

    .line 52
    move-object v7, p4

    .line 53
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
