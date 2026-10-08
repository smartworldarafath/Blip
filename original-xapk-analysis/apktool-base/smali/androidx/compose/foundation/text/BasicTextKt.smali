.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v6, p5

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    move/from16 v14, p9

    .line 8
    .line 9
    move-object/from16 v11, p8

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x5013ac4b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v14, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v14

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v14

    .line 35
    :goto_1
    and-int/lit8 v4, v14, 0x30

    .line 36
    .line 37
    move-object/from16 v8, p1

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v4

    .line 53
    :cond_3
    and-int/lit16 v4, v14, 0x180

    .line 54
    .line 55
    if-nez v4, :cond_5

    .line 56
    .line 57
    move-object/from16 v4, p2

    .line 58
    .line 59
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    const/16 v5, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v5, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v5

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object/from16 v4, p2

    .line 73
    .line 74
    :goto_4
    and-int/lit16 v5, v14, 0xc00

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    if-nez v5, :cond_7

    .line 78
    .line 79
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    const/16 v5, 0x800

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v5, 0x400

    .line 89
    .line 90
    :goto_5
    or-int/2addr v0, v5

    .line 91
    :cond_7
    and-int/lit16 v5, v14, 0x6000

    .line 92
    .line 93
    move/from16 v10, p3

    .line 94
    .line 95
    if-nez v5, :cond_9

    .line 96
    .line 97
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_8

    .line 102
    .line 103
    const/16 v5, 0x4000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    const/16 v5, 0x2000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v5

    .line 109
    :cond_9
    const/high16 v5, 0x30000

    .line 110
    .line 111
    and-int/2addr v5, v14

    .line 112
    if-nez v5, :cond_b

    .line 113
    .line 114
    move/from16 v5, p4

    .line 115
    .line 116
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_a

    .line 121
    .line 122
    const/high16 v12, 0x20000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_a
    const/high16 v12, 0x10000

    .line 126
    .line 127
    :goto_7
    or-int/2addr v0, v12

    .line 128
    goto :goto_8

    .line 129
    :cond_b
    move/from16 v5, p4

    .line 130
    .line 131
    :goto_8
    const/high16 v12, 0x180000

    .line 132
    .line 133
    and-int/2addr v12, v14

    .line 134
    if-nez v12, :cond_d

    .line 135
    .line 136
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_c

    .line 141
    .line 142
    const/high16 v12, 0x100000

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_c
    const/high16 v12, 0x80000

    .line 146
    .line 147
    :goto_9
    or-int/2addr v0, v12

    .line 148
    :cond_d
    const/high16 v12, 0xc00000

    .line 149
    .line 150
    and-int/2addr v12, v14

    .line 151
    if-nez v12, :cond_f

    .line 152
    .line 153
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    if-eqz v12, :cond_e

    .line 158
    .line 159
    const/high16 v12, 0x800000

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_e
    const/high16 v12, 0x400000

    .line 163
    .line 164
    :goto_a
    or-int/2addr v0, v12

    .line 165
    :cond_f
    const/high16 v12, 0x6000000

    .line 166
    .line 167
    and-int/2addr v12, v14

    .line 168
    move-object/from16 v13, p7

    .line 169
    .line 170
    if-nez v12, :cond_11

    .line 171
    .line 172
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-eqz v12, :cond_10

    .line 177
    .line 178
    const/high16 v12, 0x4000000

    .line 179
    .line 180
    goto :goto_b

    .line 181
    :cond_10
    const/high16 v12, 0x2000000

    .line 182
    .line 183
    :goto_b
    or-int/2addr v0, v12

    .line 184
    :cond_11
    const/high16 v12, 0x30000000

    .line 185
    .line 186
    and-int/2addr v12, v14

    .line 187
    if-nez v12, :cond_13

    .line 188
    .line 189
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_12

    .line 194
    .line 195
    const/high16 v9, 0x20000000

    .line 196
    .line 197
    goto :goto_c

    .line 198
    :cond_12
    const/high16 v9, 0x10000000

    .line 199
    .line 200
    :goto_c
    or-int/2addr v0, v9

    .line 201
    :cond_13
    const v9, 0x12492493

    .line 202
    .line 203
    .line 204
    and-int/2addr v9, v0

    .line 205
    const v12, 0x12492492

    .line 206
    .line 207
    .line 208
    const/4 v15, 0x0

    .line 209
    if-ne v9, v12, :cond_14

    .line 210
    .line 211
    move v9, v15

    .line 212
    goto :goto_d

    .line 213
    :cond_14
    const/4 v9, 0x1

    .line 214
    :goto_d
    and-int/lit8 v12, v0, 0x1

    .line 215
    .line 216
    invoke-virtual {v11, v12, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_20

    .line 221
    .line 222
    invoke-static {v7, v6}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->b(II)V

    .line 223
    .line 224
    .line 225
    sget-object v9, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 226
    .line 227
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    if-nez v9, :cond_1f

    .line 232
    .line 233
    const v9, 0x5eb4b1b1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 240
    .line 241
    .line 242
    sget-object v9, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    .line 243
    .line 244
    iget-object v9, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    iget-object v12, v1, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 251
    .line 252
    if-eqz v12, :cond_17

    .line 253
    .line 254
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    move v3, v15

    .line 259
    :goto_e
    if-ge v3, v10, :cond_17

    .line 260
    .line 261
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    move-object/from16 v2, v16

    .line 266
    .line 267
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 268
    .line 269
    iget-object v15, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 270
    .line 271
    instance-of v15, v15, Landroidx/compose/ui/text/StringAnnotation;

    .line 272
    .line 273
    if-eqz v15, :cond_15

    .line 274
    .line 275
    iget-object v15, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->d:Ljava/lang/String;

    .line 276
    .line 277
    move/from16 v17, v0

    .line 278
    .line 279
    const-string v0, "androidx.compose.foundation.text.inlineContent"

    .line 280
    .line 281
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_16

    .line 286
    .line 287
    iget v0, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 288
    .line 289
    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 290
    .line 291
    const/4 v15, 0x0

    .line 292
    invoke-static {v15, v9, v0, v2}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_16

    .line 297
    .line 298
    const/4 v2, 0x1

    .line 299
    goto :goto_f

    .line 300
    :cond_15
    move/from16 v17, v0

    .line 301
    .line 302
    :cond_16
    add-int/lit8 v3, v3, 0x1

    .line 303
    .line 304
    move/from16 v0, v17

    .line 305
    .line 306
    const/4 v15, 0x0

    .line 307
    goto :goto_e

    .line 308
    :cond_17
    move/from16 v17, v0

    .line 309
    .line 310
    const/4 v2, 0x0

    .line 311
    :goto_f
    invoke-static {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 316
    .line 317
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move-object v9, v3

    .line 322
    check-cast v9, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 323
    .line 324
    if-nez v2, :cond_19

    .line 325
    .line 326
    if-nez v0, :cond_19

    .line 327
    .line 328
    const v0, 0x5eb879f5

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 332
    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    move-object v0, v1

    .line 336
    move-object v1, v4

    .line 337
    move v4, v5

    .line 338
    move-object v2, v9

    .line 339
    move-object v5, v11

    .line 340
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/BasicText_androidKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ZLandroidx/compose/runtime/Composer;)V

    .line 341
    .line 342
    .line 343
    move-object v15, v5

    .line 344
    const/4 v10, 0x0

    .line 345
    const/4 v12, 0x0

    .line 346
    const/4 v9, 0x0

    .line 347
    const/4 v11, 0x0

    .line 348
    move-object/from16 v1, p0

    .line 349
    .line 350
    move/from16 v4, p3

    .line 351
    .line 352
    move/from16 v5, p4

    .line 353
    .line 354
    move-object v0, v8

    .line 355
    const/4 v13, 0x1

    .line 356
    move-object v8, v2

    .line 357
    move-object/from16 v2, p2

    .line 358
    .line 359
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    iget-wide v0, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 364
    .line 365
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    invoke-static {v15, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 383
    .line 384
    .line 385
    iget-boolean v3, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 386
    .line 387
    if-eqz v3, :cond_18

    .line 388
    .line 389
    sget-object v3, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 390
    .line 391
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 392
    .line 393
    .line 394
    goto :goto_10

    .line 395
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 396
    .line 397
    .line 398
    :goto_10
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 399
    .line 400
    sget-object v4, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 401
    .line 402
    invoke-static {v15, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 403
    .line 404
    .line 405
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 406
    .line 407
    invoke-static {v15, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 408
    .line 409
    .line 410
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 411
    .line 412
    .line 413
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 414
    .line 415
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 423
    .line 424
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 428
    .line 429
    .line 430
    const/4 v0, 0x0

    .line 431
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 432
    .line 433
    .line 434
    move-object v11, v15

    .line 435
    goto/16 :goto_12

    .line 436
    .line 437
    :cond_19
    move-object v15, v11

    .line 438
    const/4 v13, 0x1

    .line 439
    const v0, 0x5ec875d6

    .line 440
    .line 441
    .line 442
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 443
    .line 444
    .line 445
    and-int/lit8 v0, v17, 0xe

    .line 446
    .line 447
    const/4 v1, 0x4

    .line 448
    if-ne v0, v1, :cond_1a

    .line 449
    .line 450
    move v10, v13

    .line 451
    goto :goto_11

    .line 452
    :cond_1a
    const/4 v10, 0x0

    .line 453
    :goto_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 458
    .line 459
    if-nez v10, :cond_1b

    .line 460
    .line 461
    if-ne v0, v1, :cond_1c

    .line 462
    .line 463
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_1c
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 471
    .line 472
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 477
    .line 478
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    if-nez v4, :cond_1d

    .line 487
    .line 488
    if-ne v5, v1, :cond_1e

    .line 489
    .line 490
    :cond_1d
    new-instance v5, Li2;

    .line 491
    .line 492
    const/4 v1, 0x2

    .line 493
    invoke-direct {v5, v0, v1}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_1e
    move-object v10, v5

    .line 500
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 501
    .line 502
    shr-int/lit8 v0, v17, 0x3

    .line 503
    .line 504
    and-int/lit16 v0, v0, 0x38e

    .line 505
    .line 506
    shr-int/lit8 v1, v17, 0xc

    .line 507
    .line 508
    const v4, 0xe000

    .line 509
    .line 510
    .line 511
    and-int/2addr v1, v4

    .line 512
    or-int/2addr v0, v1

    .line 513
    shl-int/lit8 v1, v17, 0x9

    .line 514
    .line 515
    const/high16 v4, 0x70000

    .line 516
    .line 517
    and-int/2addr v1, v4

    .line 518
    or-int/2addr v0, v1

    .line 519
    shl-int/lit8 v1, v17, 0x6

    .line 520
    .line 521
    const/high16 v4, 0x380000

    .line 522
    .line 523
    and-int/2addr v4, v1

    .line 524
    or-int/2addr v0, v4

    .line 525
    const/high16 v4, 0x1c00000

    .line 526
    .line 527
    and-int/2addr v4, v1

    .line 528
    or-int/2addr v0, v4

    .line 529
    const/high16 v4, 0xe000000

    .line 530
    .line 531
    and-int/2addr v4, v1

    .line 532
    or-int/2addr v0, v4

    .line 533
    const/high16 v4, 0x70000000

    .line 534
    .line 535
    and-int/2addr v1, v4

    .line 536
    or-int v12, v0, v1

    .line 537
    .line 538
    shr-int/lit8 v0, v17, 0x15

    .line 539
    .line 540
    and-int/lit16 v0, v0, 0x380

    .line 541
    .line 542
    or-int/lit16 v13, v0, 0x6000

    .line 543
    .line 544
    move-object/from16 v0, p1

    .line 545
    .line 546
    move-object/from16 v4, p2

    .line 547
    .line 548
    move/from16 v5, p3

    .line 549
    .line 550
    move/from16 v6, p4

    .line 551
    .line 552
    move/from16 v7, p5

    .line 553
    .line 554
    move/from16 v8, p6

    .line 555
    .line 556
    move-object v1, v3

    .line 557
    move-object v11, v15

    .line 558
    move-object/from16 v3, p7

    .line 559
    .line 560
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 561
    .line 562
    .line 563
    const/4 v15, 0x0

    .line 564
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 565
    .line 566
    .line 567
    goto :goto_12

    .line 568
    :cond_1f
    invoke-static {}, Lio/sentry/d;->i()V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_20
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 573
    .line 574
    .line 575
    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 576
    .line 577
    .line 578
    move-result-object v10

    .line 579
    if-eqz v10, :cond_21

    .line 580
    .line 581
    new-instance v0, Lh4;

    .line 582
    .line 583
    move-object/from16 v1, p0

    .line 584
    .line 585
    move-object/from16 v2, p1

    .line 586
    .line 587
    move-object/from16 v3, p2

    .line 588
    .line 589
    move/from16 v4, p3

    .line 590
    .line 591
    move/from16 v5, p4

    .line 592
    .line 593
    move/from16 v6, p5

    .line 594
    .line 595
    move/from16 v7, p6

    .line 596
    .line 597
    move-object/from16 v8, p7

    .line 598
    .line 599
    move v9, v14

    .line 600
    invoke-direct/range {v0 .. v9}, Lh4;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;I)V

    .line 601
    .line 602
    .line 603
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 604
    .line 605
    :cond_21
    return-void
.end method

.method public static final b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move/from16 v10, p10

    .line 4
    .line 5
    move-object/from16 v0, p8

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, -0x3e089999

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v9, 0x6

    .line 16
    .line 17
    move-object/from16 v5, p0

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v9

    .line 33
    :goto_1
    and-int/lit8 v2, v10, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x30

    .line 38
    .line 39
    :cond_2
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    and-int/lit8 v3, v9, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v9, 0x180

    .line 61
    .line 62
    move-object/from16 v13, p2

    .line 63
    .line 64
    if-nez v4, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/16 v4, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v4, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v1, v4

    .line 78
    :cond_6
    and-int/lit8 v4, v10, 0x8

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v1, v1, 0xc00

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_7
    and-int/lit16 v4, v9, 0xc00

    .line 87
    .line 88
    if-nez v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_8

    .line 95
    .line 96
    const/16 v4, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    const/16 v4, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v1, v4

    .line 102
    :cond_9
    :goto_6
    and-int/lit8 v4, v10, 0x10

    .line 103
    .line 104
    if-eqz v4, :cond_b

    .line 105
    .line 106
    or-int/lit16 v1, v1, 0x6000

    .line 107
    .line 108
    :cond_a
    move/from16 v7, p3

    .line 109
    .line 110
    goto :goto_8

    .line 111
    :cond_b
    and-int/lit16 v7, v9, 0x6000

    .line 112
    .line 113
    if-nez v7, :cond_a

    .line 114
    .line 115
    move/from16 v7, p3

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_c

    .line 122
    .line 123
    const/16 v8, 0x4000

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_c
    const/16 v8, 0x2000

    .line 127
    .line 128
    :goto_7
    or-int/2addr v1, v8

    .line 129
    :goto_8
    and-int/lit8 v8, v10, 0x20

    .line 130
    .line 131
    const/high16 v11, 0x30000

    .line 132
    .line 133
    if-eqz v8, :cond_e

    .line 134
    .line 135
    or-int/2addr v1, v11

    .line 136
    :cond_d
    move/from16 v11, p4

    .line 137
    .line 138
    goto :goto_a

    .line 139
    :cond_e
    and-int/2addr v11, v9

    .line 140
    if-nez v11, :cond_d

    .line 141
    .line 142
    move/from16 v11, p4

    .line 143
    .line 144
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_f

    .line 149
    .line 150
    const/high16 v12, 0x20000

    .line 151
    .line 152
    goto :goto_9

    .line 153
    :cond_f
    const/high16 v12, 0x10000

    .line 154
    .line 155
    :goto_9
    or-int/2addr v1, v12

    .line 156
    :goto_a
    and-int/lit8 v12, v10, 0x40

    .line 157
    .line 158
    const/high16 v14, 0x180000

    .line 159
    .line 160
    if-eqz v12, :cond_11

    .line 161
    .line 162
    or-int/2addr v1, v14

    .line 163
    :cond_10
    move/from16 v14, p5

    .line 164
    .line 165
    goto :goto_c

    .line 166
    :cond_11
    and-int/2addr v14, v9

    .line 167
    if-nez v14, :cond_10

    .line 168
    .line 169
    move/from16 v14, p5

    .line 170
    .line 171
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-eqz v15, :cond_12

    .line 176
    .line 177
    const/high16 v15, 0x100000

    .line 178
    .line 179
    goto :goto_b

    .line 180
    :cond_12
    const/high16 v15, 0x80000

    .line 181
    .line 182
    :goto_b
    or-int/2addr v1, v15

    .line 183
    :goto_c
    and-int/lit16 v15, v10, 0x80

    .line 184
    .line 185
    const/high16 v16, 0xc00000

    .line 186
    .line 187
    if-eqz v15, :cond_13

    .line 188
    .line 189
    or-int v1, v1, v16

    .line 190
    .line 191
    move/from16 v6, p6

    .line 192
    .line 193
    goto :goto_e

    .line 194
    :cond_13
    and-int v16, v9, v16

    .line 195
    .line 196
    move/from16 v6, p6

    .line 197
    .line 198
    if-nez v16, :cond_15

    .line 199
    .line 200
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 201
    .line 202
    .line 203
    move-result v16

    .line 204
    if-eqz v16, :cond_14

    .line 205
    .line 206
    const/high16 v16, 0x800000

    .line 207
    .line 208
    goto :goto_d

    .line 209
    :cond_14
    const/high16 v16, 0x400000

    .line 210
    .line 211
    :goto_d
    or-int v1, v1, v16

    .line 212
    .line 213
    :cond_15
    :goto_e
    move/from16 v16, v1

    .line 214
    .line 215
    and-int/lit16 v1, v10, 0x100

    .line 216
    .line 217
    const/high16 v17, 0x6000000

    .line 218
    .line 219
    if-eqz v1, :cond_17

    .line 220
    .line 221
    or-int v16, v16, v17

    .line 222
    .line 223
    :cond_16
    move/from16 v17, v1

    .line 224
    .line 225
    move-object/from16 v1, p7

    .line 226
    .line 227
    goto :goto_10

    .line 228
    :cond_17
    and-int v17, v9, v17

    .line 229
    .line 230
    if-nez v17, :cond_16

    .line 231
    .line 232
    move/from16 v17, v1

    .line 233
    .line 234
    move-object/from16 v1, p7

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v18

    .line 240
    if-eqz v18, :cond_18

    .line 241
    .line 242
    const/high16 v18, 0x4000000

    .line 243
    .line 244
    goto :goto_f

    .line 245
    :cond_18
    const/high16 v18, 0x2000000

    .line 246
    .line 247
    :goto_f
    or-int v16, v16, v18

    .line 248
    .line 249
    :goto_10
    const/high16 v18, 0x30000000

    .line 250
    .line 251
    or-int v16, v16, v18

    .line 252
    .line 253
    const v18, 0x12492493

    .line 254
    .line 255
    .line 256
    and-int v1, v16, v18

    .line 257
    .line 258
    move/from16 v18, v2

    .line 259
    .line 260
    const v2, 0x12492492

    .line 261
    .line 262
    .line 263
    const/4 v9, 0x1

    .line 264
    if-eq v1, v2, :cond_19

    .line 265
    .line 266
    move v1, v9

    .line 267
    goto :goto_11

    .line 268
    :cond_19
    const/4 v1, 0x0

    .line 269
    :goto_11
    and-int/lit8 v2, v16, 0x1

    .line 270
    .line 271
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_23

    .line 276
    .line 277
    if-eqz v18, :cond_1a

    .line 278
    .line 279
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 280
    .line 281
    goto :goto_12

    .line 282
    :cond_1a
    move-object v1, v3

    .line 283
    :goto_12
    move v2, v15

    .line 284
    if-eqz v4, :cond_1b

    .line 285
    .line 286
    move v15, v9

    .line 287
    goto :goto_13

    .line 288
    :cond_1b
    move v15, v7

    .line 289
    :goto_13
    if-eqz v8, :cond_1c

    .line 290
    .line 291
    move v8, v9

    .line 292
    goto :goto_14

    .line 293
    :cond_1c
    move v8, v11

    .line 294
    :goto_14
    if-eqz v12, :cond_1d

    .line 295
    .line 296
    const v3, 0x7fffffff

    .line 297
    .line 298
    .line 299
    move v14, v3

    .line 300
    :cond_1d
    if-eqz v2, :cond_1e

    .line 301
    .line 302
    move v11, v9

    .line 303
    goto :goto_15

    .line 304
    :cond_1e
    move v11, v6

    .line 305
    :goto_15
    if-eqz v17, :cond_1f

    .line 306
    .line 307
    const/4 v12, 0x0

    .line 308
    goto :goto_16

    .line 309
    :cond_1f
    move-object/from16 v12, p7

    .line 310
    .line 311
    :goto_16
    invoke-static {v11, v14}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->b(II)V

    .line 312
    .line 313
    .line 314
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-nez v2, :cond_22

    .line 321
    .line 322
    const v2, 0x15483a7f

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 326
    .line 327
    .line 328
    const/4 v2, 0x0

    .line 329
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 330
    .line 331
    .line 332
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 333
    .line 334
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    move-object v7, v2

    .line 339
    check-cast v7, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 340
    .line 341
    sget-object v2, Landroidx/compose/foundation/text/BasicText_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 348
    .line 349
    if-eqz v2, :cond_20

    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-static {v3}, Landroidx/compose/foundation/text/BasicText_androidKt;->b(I)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_20

    .line 360
    .line 361
    const v3, -0x4a85808e

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 365
    .line 366
    .line 367
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 368
    .line 369
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    move-object v4, v3

    .line 374
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 375
    .line 376
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 377
    .line 378
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    move-object v6, v3

    .line 383
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 384
    .line 385
    move-object v3, v2

    .line 386
    :try_start_0
    new-instance v2, Ll4;

    .line 387
    .line 388
    move-object/from16 v20, v13

    .line 389
    .line 390
    move-object v13, v3

    .line 391
    move-object/from16 v3, v20

    .line 392
    .line 393
    invoke-direct/range {v2 .. v8}, Ll4;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v13, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .line 398
    .line 399
    :catch_0
    const/4 v2, 0x0

    .line 400
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 401
    .line 402
    .line 403
    goto :goto_17

    .line 404
    :cond_20
    const/4 v2, 0x0

    .line 405
    const v3, -0x4a69eb75

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 412
    .line 413
    .line 414
    :goto_17
    const v3, 0x1557cf53

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 421
    .line 422
    .line 423
    move/from16 v18, v11

    .line 424
    .line 425
    new-instance v11, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 426
    .line 427
    move-object/from16 v13, p2

    .line 428
    .line 429
    move/from16 v16, v8

    .line 430
    .line 431
    move-object/from16 v19, v12

    .line 432
    .line 433
    move/from16 v17, v14

    .line 434
    .line 435
    move-object/from16 v12, p0

    .line 436
    .line 437
    move-object v14, v7

    .line 438
    invoke-direct/range {v11 .. v19}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v1, v11}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 446
    .line 447
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 460
    .line 461
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 465
    .line 466
    .line 467
    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 468
    .line 469
    if-eqz v5, :cond_21

    .line 470
    .line 471
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 472
    .line 473
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 474
    .line 475
    .line 476
    goto :goto_18

    .line 477
    :cond_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 478
    .line 479
    .line 480
    :goto_18
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 481
    .line 482
    sget-object v6, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 483
    .line 484
    invoke-static {v0, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    .line 486
    .line 487
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 488
    .line 489
    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 490
    .line 491
    .line 492
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 493
    .line 494
    .line 495
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 496
    .line 497
    invoke-static {v0, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    .line 499
    .line 500
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 505
    .line 506
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 510
    .line 511
    .line 512
    move-object v2, v1

    .line 513
    move v5, v8

    .line 514
    move v4, v15

    .line 515
    move/from16 v6, v17

    .line 516
    .line 517
    move/from16 v7, v18

    .line 518
    .line 519
    move-object/from16 v8, v19

    .line 520
    .line 521
    goto :goto_19

    .line 522
    :cond_22
    invoke-static {}, Lio/sentry/d;->i()V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 527
    .line 528
    .line 529
    move-object/from16 v8, p7

    .line 530
    .line 531
    move-object v2, v3

    .line 532
    move v4, v7

    .line 533
    move v5, v11

    .line 534
    move v7, v6

    .line 535
    move v6, v14

    .line 536
    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 537
    .line 538
    .line 539
    move-result-object v12

    .line 540
    if-eqz v12, :cond_24

    .line 541
    .line 542
    new-instance v0, Lg4;

    .line 543
    .line 544
    const/4 v11, 0x0

    .line 545
    move-object/from16 v1, p0

    .line 546
    .line 547
    move-object/from16 v3, p2

    .line 548
    .line 549
    move/from16 v9, p9

    .line 550
    .line 551
    invoke-direct/range {v0 .. v11}, Lg4;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/lang/Object;III)V

    .line 552
    .line 553
    .line 554
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 555
    .line 556
    :cond_24
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v2, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v12, p12

    move/from16 v13, p13

    .line 1
    move-object/from16 v5, p11

    check-cast v5, Landroidx/compose/runtime/GapComposer;

    const v0, -0x7e46da9f

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v12, 0x6

    move-object/from16 v14, p0

    if-nez v0, :cond_1

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v12, 0x180

    const/4 v10, 0x0

    if-nez v4, :cond_5

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_5
    and-int/lit16 v4, v12, 0xc00

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-nez v4, :cond_7

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v4, v17

    goto :goto_4

    :cond_6
    move/from16 v4, v16

    :goto_4
    or-int/2addr v0, v4

    :cond_7
    and-int/lit16 v4, v12, 0x6000

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-nez v4, :cond_9

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move/from16 v4, v19

    goto :goto_5

    :cond_8
    move/from16 v4, v18

    :goto_5
    or-int/2addr v0, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v12

    if-nez v4, :cond_b

    move-object/from16 v4, p4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v20, 0x10000

    :goto_6
    or-int v0, v0, v20

    goto :goto_7

    :cond_b
    move-object/from16 v4, p4

    :goto_7
    const/high16 v20, 0x180000

    and-int v20, v12, v20

    move/from16 v8, p5

    if-nez v20, :cond_d

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v20

    if-eqz v20, :cond_c

    const/high16 v20, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v20, 0x80000

    :goto_8
    or-int v0, v0, v20

    :cond_d
    const/high16 v20, 0xc00000

    and-int v20, v12, v20

    move/from16 v1, p6

    if-nez v20, :cond_f

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    move-result v21

    if-eqz v21, :cond_e

    const/high16 v21, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v21, 0x400000

    :goto_9
    or-int v0, v0, v21

    :cond_f
    const/high16 v21, 0x6000000

    and-int v21, v12, v21

    move/from16 v11, p7

    if-nez v21, :cond_11

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v22, 0x2000000

    :goto_a
    or-int v0, v0, v22

    :cond_11
    const/high16 v22, 0x30000000

    and-int v22, v12, v22

    move/from16 v15, p8

    if-nez v22, :cond_13

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v23

    if-eqz v23, :cond_12

    const/high16 v23, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v23, 0x10000000

    :goto_b
    or-int v0, v0, v23

    :cond_13
    and-int/lit8 v23, v13, 0x6

    move-object/from16 v3, p9

    if-nez v23, :cond_15

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v20, 0x4

    goto :goto_c

    :cond_14
    const/16 v20, 0x2

    :goto_c
    or-int v20, v13, v20

    goto :goto_d

    :cond_15
    move/from16 v20, v13

    :goto_d
    and-int/lit8 v23, v13, 0x30

    if-nez v23, :cond_17

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v23, 0x20

    goto :goto_e

    :cond_16
    const/16 v23, 0x10

    :goto_e
    or-int v20, v20, v23

    :cond_17
    and-int/lit16 v9, v13, 0x180

    const/4 v10, 0x0

    if-nez v9, :cond_19

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/16 v21, 0x100

    goto :goto_f

    :cond_18
    const/16 v21, 0x80

    :goto_f
    or-int v20, v20, v21

    :cond_19
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_1b

    move-object/from16 v9, p10

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    move/from16 v16, v17

    :cond_1a
    or-int v20, v20, v16

    goto :goto_10

    :cond_1b
    move-object/from16 v9, p10

    :goto_10
    and-int/lit16 v10, v13, 0x6000

    if-nez v10, :cond_1e

    const v10, 0x8000

    and-int/2addr v10, v13

    if-nez v10, :cond_1c

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_11

    :cond_1c
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v16

    :goto_11
    if-eqz v16, :cond_1d

    move/from16 v18, v19

    :cond_1d
    or-int v20, v20, v18

    :cond_1e
    move/from16 v10, v20

    const v16, 0x12492493

    move/from16 v17, v0

    and-int v0, v17, v16

    const v1, 0x12492492

    const/4 v6, 0x0

    if-ne v0, v1, :cond_20

    and-int/lit16 v0, v10, 0x2493

    const/16 v1, 0x2492

    if-eq v0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    move v0, v6

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v1, v17, 0x1

    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2
    invoke-static {v2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_24

    const v0, 0x8ae5063

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    and-int/lit8 v0, v17, 0x70

    const/16 v1, 0x20

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_14

    :cond_21
    move v0, v6

    .line 3
    :goto_14
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_22

    if-ne v1, v10, :cond_23

    .line 4
    :cond_22
    new-instance v1, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 5
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 6
    :cond_23
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 7
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_15

    :cond_24
    const v0, 0x8af50dc

    .line 8
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 9
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    const/4 v0, 0x0

    .line 10
    :goto_15
    invoke-static {v2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x8b25723

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    and-int/lit8 v1, v17, 0x70

    const/16 v6, 0x20

    if-ne v1, v6, :cond_25

    const/4 v1, 0x1

    goto :goto_16

    :cond_25
    const/4 v1, 0x0

    .line 11
    :goto_16
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 12
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_26

    if-ne v6, v10, :cond_27

    .line 13
    :cond_26
    new-instance v6, Landroidx/compose/foundation/text/a;

    invoke-direct {v6, v0, v2}, Landroidx/compose/foundation/text/a;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)V

    .line 14
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 15
    :cond_27
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_18

    :cond_28
    const v1, 0x8b3d321

    .line 17
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    and-int/lit8 v1, v17, 0x70

    const/16 v6, 0x20

    if-ne v1, v6, :cond_29

    const/4 v1, 0x1

    goto :goto_17

    :cond_29
    const/4 v1, 0x0

    .line 18
    :goto_17
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_2a

    if-ne v6, v10, :cond_2b

    .line 19
    :cond_2a
    new-instance v6, Lr1;

    const/4 v1, 0x6

    invoke-direct {v6, v1, v2}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 21
    :cond_2b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    :goto_18
    if-eqz p2, :cond_33

    if-eqz v7, :cond_2c

    .line 23
    sget-object v1, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    .line 24
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2c
    move-object/from16 v16, v0

    move-object/from16 v20, v6

    goto/16 :goto_1d

    .line 25
    :cond_2d
    iget-object v1, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v16, v0

    .line 27
    iget-object v0, v2, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_2f

    .line 30
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    .line 31
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    move/from16 p11, v3

    .line 32
    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    move/from16 v18, v4

    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    move-object/from16 v20, v6

    iget v6, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget-object v8, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->d:Ljava/lang/String;

    .line 33
    instance-of v3, v3, Landroidx/compose/ui/text/StringAnnotation;

    if-eqz v3, :cond_2e

    .line 34
    const-string v3, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x0

    .line 35
    invoke-static {v3, v1, v6, v4}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 36
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 37
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/compose/ui/text/StringAnnotation;

    .line 39
    iget-object v0, v0, Landroidx/compose/ui/text/StringAnnotation;->a:Ljava/lang/String;

    .line 40
    invoke-direct {v3, v6, v4, v0, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v4, v18, 0x1

    move/from16 v8, p5

    move/from16 v3, p11

    move-object/from16 v0, v19

    move-object/from16 v6, v20

    goto :goto_19

    :cond_2f
    move-object/from16 v20, v6

    goto :goto_1a

    :cond_30
    move-object/from16 v20, v6

    .line 42
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 43
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_32

    .line 46
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 47
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 48
    iget-object v8, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    move-object/from16 p11, v2

    iget v2, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 49
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/text/InlineTextContent;

    move/from16 v18, v3

    if-eqz v8, :cond_31

    .line 50
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    move/from16 v19, v4

    .line 51
    iget-object v4, v8, Landroidx/compose/foundation/text/InlineTextContent;->a:Landroidx/compose/ui/text/Placeholder;

    .line 52
    invoke-direct {v3, v6, v2, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 55
    iget-object v4, v8, Landroidx/compose/foundation/text/InlineTextContent;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    invoke-direct {v3, v6, v2, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_31
    move/from16 v19, v4

    :goto_1c
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v2, p11

    move/from16 v3, v18

    goto :goto_1b

    .line 58
    :cond_32
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e

    .line 59
    :goto_1d
    sget-object v2, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a:Lkotlin/Pair;

    :goto_1e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_33
    move-object/from16 v16, v0

    move-object/from16 v20, v6

    .line 60
    new-instance v2, Lkotlin/Pair;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :goto_1f
    iget-object v1, v2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 62
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 63
    iget-object v1, v2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 64
    move-object v6, v1

    check-cast v6, Ljava/util/List;

    if-eqz p2, :cond_35

    const v1, 0x8b8a5ec

    .line 65
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 66
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_34

    .line 67
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    .line 68
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 69
    :cond_34
    check-cast v1, Landroidx/compose/runtime/MutableState;

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    move-object v8, v1

    goto :goto_20

    :cond_35
    const/4 v2, 0x0

    const v1, 0x8b9fcbc    # 1.11937E-33f

    .line 71
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 72
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    move-object v8, v0

    :goto_20
    if-eqz p2, :cond_38

    const v0, 0x8bb68fd

    .line 73
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 74
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_36

    if-ne v1, v10, :cond_37

    .line 76
    :cond_36
    new-instance v1, Li2;

    const/4 v0, 0x3

    invoke-direct {v1, v8, v0}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 77
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 78
    :cond_37
    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    :goto_21
    move-object/from16 v24, v0

    goto :goto_22

    :cond_38
    const/4 v1, 0x0

    const v2, 0x8bc7ffc

    .line 80
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 81
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_21

    :goto_22
    shr-int/lit8 v0, v17, 0x3

    and-int/lit8 v0, v0, 0xe

    move-object/from16 v1, p4

    move/from16 v4, p6

    move-object/from16 v2, p9

    move v11, v0

    move-object/from16 v9, v16

    move/from16 v7, v17

    move-object/from16 v0, p1

    .line 82
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/BasicText_androidKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ZLandroidx/compose/runtime/Composer;)V

    move-object v2, v0

    .line 83
    invoke-interface/range {v20 .. v20}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 84
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit16 v4, v7, 0x380

    const/16 v7, 0x100

    if-ne v4, v7, :cond_39

    const/4 v4, 0x1

    goto :goto_23

    :cond_39
    const/4 v4, 0x0

    :goto_23
    or-int/2addr v1, v4

    .line 85
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_3a

    if-ne v4, v10, :cond_3b

    .line 86
    :cond_3a
    new-instance v4, Lc;

    const/16 v1, 0xa

    invoke-direct {v4, v1, v9}, Lc;-><init>(ILjava/lang/Object;)V

    .line 87
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 88
    :cond_3b
    move-object/from16 v17, v4

    check-cast v17, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move-object/from16 v22, p9

    move-object/from16 v26, p10

    move-object/from16 v23, v3

    move/from16 v21, v15

    const/16 v25, 0x0

    move-object v15, v0

    .line 89
    invoke-static/range {v14 .. v26}, Landroidx/compose/foundation/text/BasicTextKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-nez p2, :cond_3e

    const v1, 0x8cef077

    .line 90
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 91
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3d

    if-ne v3, v10, :cond_3c

    goto :goto_24

    :cond_3c
    const/4 v1, 0x0

    goto :goto_25

    .line 93
    :cond_3d
    :goto_24
    new-instance v3, Li4;

    const/4 v1, 0x0

    invoke-direct {v3, v9, v1}, Li4;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 94
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 95
    :goto_25
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 96
    new-instance v4, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    invoke-direct {v4, v3}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 97
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_26

    :cond_3e
    const v1, 0x8d1a2f1

    .line 98
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 99
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_3f

    if-ne v3, v10, :cond_40

    .line 101
    :cond_3f
    new-instance v3, Li4;

    const/4 v1, 0x1

    invoke-direct {v3, v9, v1}, Li4;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 102
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 103
    :cond_40
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 104
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_41

    if-ne v4, v10, :cond_42

    .line 106
    :cond_41
    new-instance v4, Lo1;

    const/4 v1, 0x5

    invoke-direct {v4, v8, v1}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 107
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 108
    :cond_42
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 109
    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v1, v3, v4}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    move-object v4, v1

    .line 111
    :goto_26
    iget-wide v7, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 112
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    .line 113
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    .line 114
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 115
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 117
    iget-boolean v7, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_43

    .line 118
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    goto :goto_27

    .line 119
    :cond_43
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 120
    :goto_27
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 121
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 124
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    invoke-static {v5, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v9, :cond_44

    const v0, -0x19d78e09

    .line 125
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    const/4 v1, 0x0

    .line 126
    :goto_28
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_29

    :cond_44
    const/4 v1, 0x0

    const v0, -0x115988b6

    .line 127
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    invoke-virtual {v9, v1, v5}, Landroidx/compose/foundation/text/TextLinkScope;->a(ILandroidx/compose/runtime/Composer;)V

    goto :goto_28

    :goto_29
    if-nez v6, :cond_45

    const v0, -0x19d6c7af

    .line 128
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 129
    :goto_2a
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    const/4 v1, 0x1

    goto :goto_2b

    :cond_45
    const v0, -0x19d6c7ae

    .line 130
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    invoke-static {v2, v6, v5, v11}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2a

    .line 131
    :goto_2b
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    goto :goto_2c

    .line 132
    :cond_46
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 133
    :goto_2c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_47

    new-instance v0, Lj4;

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v13}, Lj4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;II)V

    .line 134
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_47
    return-void
.end method

.method public static final d(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 35
    .line 36
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->b:Ln5;

    .line 46
    .line 47
    iget-object v5, v4, Ln5;->k:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Landroidx/compose/foundation/text/TextLinkScope;

    .line 50
    .line 51
    iget-object v4, v4, Ln5;->l:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 54
    .line 55
    iget-object v5, v5, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroidx/compose/ui/text/TextLayoutResult;

    .line 64
    .line 65
    if-nez v5, :cond_0

    .line 66
    .line 67
    new-instance v4, Lvc;

    .line 68
    .line 69
    const/16 v5, 0x1c

    .line 70
    .line 71
    invoke-direct {v4, v5}, Lvc;-><init>(I)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    .line 75
    .line 76
    invoke-direct {v5, v1, v1, v4}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-static {v4, v5}, Landroidx/compose/foundation/text/TextLinkScope;->c(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_1

    .line 85
    .line 86
    new-instance v4, Lvc;

    .line 87
    .line 88
    const/16 v5, 0x1d

    .line 89
    .line 90
    invoke-direct {v4, v5}, Lvc;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    .line 94
    .line 95
    invoke-direct {v5, v1, v1, v4}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 100
    .line 101
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 102
    .line 103
    invoke-virtual {v5, v6, v4}, Landroidx/compose/ui/text/TextLayoutResult;->h(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->f()Landroidx/compose/ui/geometry/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v4}, Landroidx/compose/ui/unit/IntRectKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget v5, v4, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 116
    .line 117
    iget v6, v4, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 118
    .line 119
    sub-int/2addr v5, v6

    .line 120
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    new-instance v7, Lkb;

    .line 125
    .line 126
    const/16 v8, 0x15

    .line 127
    .line 128
    invoke-direct {v7, v8, v4}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v4, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    .line 132
    .line 133
    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    move-object v5, v4

    .line 137
    :goto_1
    iget v4, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->a:I

    .line 138
    .line 139
    iget v6, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->b:I

    .line 140
    .line 141
    invoke-static {v4, v4, v6, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    invoke-interface {v3, v6, v7}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    new-instance v4, Lkotlin/Pair;

    .line 150
    .line 151
    iget-object v5, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->c:Lkotlin/jvm/functions/Function0;

    .line 152
    .line 153
    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_2
    return-object p1

    .line 164
    :cond_3
    const/4 p0, 0x0

    .line 165
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 13

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p5

    .line 10
    .line 11
    move/from16 v7, p6

    .line 12
    .line 13
    move/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v3, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
