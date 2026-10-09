.class public abstract Lcoil3/compose/AsyncImageKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move/from16 v0, p8

    .line 8
    .line 9
    move-object/from16 v2, p7

    .line 10
    .line 11
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v4, 0x49b4d5f6    # 1481406.8f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x2

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    move v4, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v6

    .line 30
    :goto_0
    or-int/2addr v4, v0

    .line 31
    and-int/lit16 v8, v0, 0x180

    .line 32
    .line 33
    if-nez v8, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    const/16 v8, 0x100

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v8, 0x80

    .line 45
    .line 46
    :goto_1
    or-int/2addr v4, v8

    .line 47
    :cond_2
    move-object/from16 v8, p3

    .line 48
    .line 49
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_3

    .line 54
    .line 55
    const/16 v9, 0x800

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/16 v9, 0x400

    .line 59
    .line 60
    :goto_2
    or-int/2addr v4, v9

    .line 61
    move-object/from16 v9, p4

    .line 62
    .line 63
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_4

    .line 68
    .line 69
    const/16 v10, 0x4000

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/16 v10, 0x2000

    .line 73
    .line 74
    :goto_3
    or-int/2addr v4, v10

    .line 75
    move-object/from16 v10, p5

    .line 76
    .line 77
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_5

    .line 82
    .line 83
    const/high16 v11, 0x20000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/high16 v11, 0x10000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v4, v11

    .line 89
    const/high16 v11, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_6

    .line 96
    .line 97
    const/high16 v11, 0x800000

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    const/high16 v11, 0x400000

    .line 101
    .line 102
    :goto_5
    or-int/2addr v4, v11

    .line 103
    const/4 v11, 0x0

    .line 104
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_7

    .line 109
    .line 110
    const/high16 v11, 0x4000000

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    const/high16 v11, 0x2000000

    .line 114
    .line 115
    :goto_6
    or-int/2addr v4, v11

    .line 116
    const/4 v14, 0x1

    .line 117
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_8

    .line 122
    .line 123
    const/high16 v11, 0x20000000

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_8
    const/high16 v11, 0x10000000

    .line 127
    .line 128
    :goto_7
    or-int/2addr v4, v11

    .line 129
    and-int/lit8 v11, p9, 0x6

    .line 130
    .line 131
    if-nez v11, :cond_a

    .line 132
    .line 133
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_9

    .line 138
    .line 139
    goto :goto_8

    .line 140
    :cond_9
    move v5, v6

    .line 141
    :goto_8
    or-int v5, p9, v5

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_a
    move/from16 v5, p9

    .line 145
    .line 146
    :goto_9
    const v11, 0x12492493

    .line 147
    .line 148
    .line 149
    and-int/2addr v11, v4

    .line 150
    const v12, 0x12492492

    .line 151
    .line 152
    .line 153
    const/4 v13, 0x0

    .line 154
    if-ne v11, v12, :cond_c

    .line 155
    .line 156
    and-int/lit8 v5, v5, 0x3

    .line 157
    .line 158
    if-eq v5, v6, :cond_b

    .line 159
    .line 160
    goto :goto_a

    .line 161
    :cond_b
    move v5, v13

    .line 162
    goto :goto_b

    .line 163
    :cond_c
    :goto_a
    move v5, v14

    .line 164
    :goto_b
    and-int/2addr v4, v14

    .line 165
    invoke-virtual {v2, v4, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_14

    .line 170
    .line 171
    iget-object v4, v1, Lcoil3/compose/internal/AsyncImageState;->a:Ljava/lang/Object;

    .line 172
    .line 173
    sget v5, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 174
    .line 175
    const v5, -0x13a0feae

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 179
    .line 180
    .line 181
    instance-of v5, v4, Lcoil3/request/ImageRequest;

    .line 182
    .line 183
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 184
    .line 185
    if-eqz v5, :cond_10

    .line 186
    .line 187
    const v5, -0x3c233d08

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 191
    .line 192
    .line 193
    move-object v5, v4

    .line 194
    check-cast v5, Lcoil3/request/ImageRequest;

    .line 195
    .line 196
    iget-object v11, v5, Lcoil3/request/ImageRequest;->s:Lcoil3/request/ImageRequest$Defined;

    .line 197
    .line 198
    iget-object v11, v11, Lcoil3/request/ImageRequest$Defined;->g:Lcoil3/size/SizeResolver;

    .line 199
    .line 200
    if-eqz v11, :cond_d

    .line 201
    .line 202
    const v4, -0x3c22a094

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 212
    .line 213
    .line 214
    :goto_c
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 215
    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_d
    const v11, -0x3c21e466

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 222
    .line 223
    .line 224
    invoke-static {v7, v2}, Lcoil3/compose/internal/UtilsKt;->c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    or-int/2addr v4, v12

    .line 237
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    if-nez v4, :cond_e

    .line 242
    .line 243
    if-ne v12, v6, :cond_f

    .line 244
    .line 245
    :cond_e
    invoke-static {v5}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    iput-object v11, v4, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 250
    .line 251
    invoke-virtual {v4}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_f
    move-object v5, v12

    .line 259
    check-cast v5, Lcoil3/request/ImageRequest;

    .line 260
    .line 261
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 265
    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_10
    const v5, -0x3c1df3ee

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 272
    .line 273
    .line 274
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 275
    .line 276
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    check-cast v5, Landroid/content/Context;

    .line 281
    .line 282
    invoke-static {v7, v2}, Lcoil3/compose/internal/UtilsKt;->c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v15

    .line 294
    or-int/2addr v12, v15

    .line 295
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    or-int/2addr v12, v15

    .line 300
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    if-nez v12, :cond_11

    .line 305
    .line 306
    if-ne v15, v6, :cond_12

    .line 307
    .line 308
    :cond_11
    new-instance v6, Lcoil3/request/ImageRequest$Builder;

    .line 309
    .line 310
    invoke-direct {v6, v5}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    iput-object v4, v6, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 314
    .line 315
    iput-object v11, v6, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 316
    .line 317
    invoke-virtual {v6}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 318
    .line 319
    .line 320
    move-result-object v15

    .line 321
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_12
    move-object v5, v15

    .line 325
    check-cast v5, Lcoil3/request/ImageRequest;

    .line 326
    .line 327
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 328
    .line 329
    .line 330
    goto :goto_c

    .line 331
    :goto_d
    invoke-static {v5}, Lcoil3/compose/internal/UtilsKt;->g(Lcoil3/request/ImageRequest;)V

    .line 332
    .line 333
    .line 334
    iget-object v6, v1, Lcoil3/compose/internal/AsyncImageState;->c:Lcoil3/ImageLoader;

    .line 335
    .line 336
    iget-object v7, v1, Lcoil3/compose/internal/AsyncImageState;->b:Lcoil3/compose/AsyncImageModelEqualityDelegate;

    .line 337
    .line 338
    invoke-static {v2}, Lcoil3/compose/internal/UtilsKt;->b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    new-instance v4, Lcoil3/compose/internal/ContentPainterElement;

    .line 343
    .line 344
    move-object/from16 v13, p1

    .line 345
    .line 346
    move-object/from16 v11, p6

    .line 347
    .line 348
    invoke-direct/range {v4 .. v13}, Lcoil3/compose/internal/ContentPainterElement;-><init>(Lcoil3/request/ImageRequest;Lcoil3/ImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Lcoil3/compose/AsyncImagePreviewHandler;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-static {}, Lcoil3/compose/internal/UtilsKt;->a()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 360
    .line 361
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 379
    .line 380
    .line 381
    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 382
    .line 383
    if-eqz v8, :cond_13

    .line 384
    .line 385
    sget-object v8, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 386
    .line 387
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 388
    .line 389
    .line 390
    goto :goto_e

    .line 391
    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 392
    .line 393
    .line 394
    :goto_e
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 395
    .line 396
    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    .line 398
    .line 399
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 400
    .line 401
    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 405
    .line 406
    .line 407
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 408
    .line 409
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 417
    .line 418
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 422
    .line 423
    .line 424
    goto :goto_f

    .line 425
    :cond_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 426
    .line 427
    .line 428
    :goto_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    if-eqz v10, :cond_15

    .line 433
    .line 434
    new-instance v0, La3;

    .line 435
    .line 436
    move-object/from16 v2, p1

    .line 437
    .line 438
    move-object/from16 v4, p3

    .line 439
    .line 440
    move-object/from16 v5, p4

    .line 441
    .line 442
    move-object/from16 v6, p5

    .line 443
    .line 444
    move-object/from16 v7, p6

    .line 445
    .line 446
    move/from16 v8, p8

    .line 447
    .line 448
    move/from16 v9, p9

    .line 449
    .line 450
    invoke-direct/range {v0 .. v9}, La3;-><init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;II)V

    .line 451
    .line 452
    .line 453
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 454
    .line 455
    :cond_15
    return-void
.end method
