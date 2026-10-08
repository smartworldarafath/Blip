.class public abstract Lnet/blip/android/ui/gallery/GalleryPagerContentKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/net/Uri;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object/from16 v14, p5

    .line 19
    .line 20
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    const v0, -0x7a180907

    .line 23
    .line 24
    .line 25
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v6, 0x4

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v4

    .line 39
    :goto_0
    or-int v0, p6, v0

    .line 40
    .line 41
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v7, 0x10

    .line 51
    .line 52
    :goto_1
    or-int/2addr v0, v7

    .line 53
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    const/16 v7, 0x100

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v7, 0x80

    .line 63
    .line 64
    :goto_2
    or-int/2addr v0, v7

    .line 65
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    const/16 v7, 0x4000

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const/16 v7, 0x2000

    .line 75
    .line 76
    :goto_3
    or-int/2addr v0, v7

    .line 77
    and-int/lit16 v7, v0, 0x2493

    .line 78
    .line 79
    const/16 v10, 0x2492

    .line 80
    .line 81
    const/4 v11, 0x1

    .line 82
    const/4 v12, 0x0

    .line 83
    if-eq v7, v10, :cond_4

    .line 84
    .line 85
    move v7, v11

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    move v7, v12

    .line 88
    :goto_4
    and-int/lit8 v10, v0, 0x1

    .line 89
    .line 90
    invoke-virtual {v14, v10, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_f

    .line 95
    .line 96
    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    check-cast v10, Landroid/content/Context;

    .line 103
    .line 104
    sget-object v13, Lnet/blip/libblip/FileType;->j:Lnet/blip/libblip/FileType$Companion;

    .line 105
    .line 106
    invoke-static {v13, v10, v1}, Lnet/blip/android/filetypes/FileType_UriKt;->a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 117
    .line 118
    const/16 p5, 0x10

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    if-eq v10, v11, :cond_b

    .line 122
    .line 123
    if-eq v10, v4, :cond_b

    .line 124
    .line 125
    if-eq v10, v6, :cond_9

    .line 126
    .line 127
    const v6, -0x32f61e64

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 131
    .line 132
    .line 133
    const/high16 v6, 0x41800000    # 16.0f

    .line 134
    .line 135
    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const/16 v7, 0x36

    .line 140
    .line 141
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 142
    .line 143
    invoke-static {v6, v8, v14, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    iget-wide v7, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 148
    .line 149
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {v14, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 162
    .line 163
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 167
    .line 168
    .line 169
    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 170
    .line 171
    if-eqz v13, :cond_5

    .line 172
    .line 173
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 174
    .line 175
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 180
    .line 181
    .line 182
    :goto_5
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 183
    .line 184
    invoke-static {v14, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 188
    .line 189
    invoke-static {v14, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 197
    .line 198
    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 202
    .line 203
    .line 204
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 205
    .line 206
    invoke-static {v14, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 221
    .line 222
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 227
    .line 228
    iget-object v8, v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 229
    .line 230
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide v19

    .line 234
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 235
    .line 236
    sget-object v10, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 237
    .line 238
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    check-cast v13, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 243
    .line 244
    move-object/from16 v29, v10

    .line 245
    .line 246
    iget-wide v9, v13, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 247
    .line 248
    const/16 v27, 0x0

    .line 249
    .line 250
    const v28, 0xff7ff8

    .line 251
    .line 252
    .line 253
    const-wide/16 v22, 0x0

    .line 254
    .line 255
    const-wide/16 v24, 0x0

    .line 256
    .line 257
    const/16 v26, 0x0

    .line 258
    .line 259
    move-object/from16 v16, v8

    .line 260
    .line 261
    move-wide/from16 v17, v9

    .line 262
    .line 263
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    move-object v9, v15

    .line 268
    const/4 v15, 0x0

    .line 269
    const/16 v16, 0x1fa

    .line 270
    .line 271
    move-object v10, v7

    .line 272
    const/4 v7, 0x0

    .line 273
    move-object v13, v9

    .line 274
    const/4 v9, 0x0

    .line 275
    move-object/from16 v17, v10

    .line 276
    .line 277
    const/4 v10, 0x0

    .line 278
    move/from16 v18, v11

    .line 279
    .line 280
    const/4 v11, 0x0

    .line 281
    move/from16 v19, v12

    .line 282
    .line 283
    const/4 v12, 0x0

    .line 284
    move-object/from16 v20, v13

    .line 285
    .line 286
    const/4 v13, 0x0

    .line 287
    move-object/from16 v4, v17

    .line 288
    .line 289
    move-object/from16 v2, v20

    .line 290
    .line 291
    const/16 v3, 0x4000

    .line 292
    .line 293
    move/from16 v17, v0

    .line 294
    .line 295
    move-object/from16 v0, v29

    .line 296
    .line 297
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 305
    .line 306
    iget-object v4, v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 307
    .line 308
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 313
    .line 314
    iget-wide v6, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 315
    .line 316
    const/16 v41, 0x0

    .line 317
    .line 318
    const v42, 0xff7ffe

    .line 319
    .line 320
    .line 321
    const-wide/16 v33, 0x0

    .line 322
    .line 323
    const/16 v35, 0x0

    .line 324
    .line 325
    const-wide/16 v36, 0x0

    .line 326
    .line 327
    const-wide/16 v38, 0x0

    .line 328
    .line 329
    const/16 v40, 0x0

    .line 330
    .line 331
    move-object/from16 v30, v4

    .line 332
    .line 333
    move-wide/from16 v31, v6

    .line 334
    .line 335
    invoke-static/range {v30 .. v42}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    const/4 v15, 0x6

    .line 340
    const-string v6, "Gallery can\'t (yet) preview this type of file"

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 344
    .line 345
    .line 346
    const v0, 0xe000

    .line 347
    .line 348
    .line 349
    and-int v0, v17, v0

    .line 350
    .line 351
    if-ne v0, v3, :cond_6

    .line 352
    .line 353
    const/4 v11, 0x1

    .line 354
    goto :goto_6

    .line 355
    :cond_6
    const/4 v11, 0x0

    .line 356
    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-nez v11, :cond_7

    .line 361
    .line 362
    if-ne v0, v2, :cond_8

    .line 363
    .line 364
    :cond_7
    new-instance v0, Ls;

    .line 365
    .line 366
    const/4 v2, 0x2

    .line 367
    invoke-direct {v0, v2, v5}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    move-object v6, v0

    .line 374
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 375
    .line 376
    const/high16 v15, 0x30000000

    .line 377
    .line 378
    const/16 v16, 0x1fe

    .line 379
    .line 380
    const/4 v7, 0x0

    .line 381
    const/4 v8, 0x0

    .line 382
    const/4 v9, 0x0

    .line 383
    const/4 v10, 0x0

    .line 384
    const/4 v11, 0x0

    .line 385
    const/4 v12, 0x0

    .line 386
    sget-object v13, Lnet/blip/android/ui/gallery/ComposableSingletons$GalleryPagerContentKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 387
    .line 388
    invoke-static/range {v6 .. v16}, Landroidx/compose/material/ButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 389
    .line 390
    .line 391
    const/4 v0, 0x1

    .line 392
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 393
    .line 394
    .line 395
    const/4 v3, 0x0

    .line 396
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 397
    .line 398
    .line 399
    :goto_7
    move-object/from16 v2, p3

    .line 400
    .line 401
    goto/16 :goto_a

    .line 402
    .line 403
    :cond_9
    move/from16 v17, v0

    .line 404
    .line 405
    move v0, v11

    .line 406
    move v3, v12

    .line 407
    const v2, -0x32f896fc

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 411
    .line 412
    .line 413
    if-nez p1, :cond_a

    .line 414
    .line 415
    if-eqz p2, :cond_a

    .line 416
    .line 417
    move v11, v0

    .line 418
    goto :goto_8

    .line 419
    :cond_a
    move v11, v3

    .line 420
    :goto_8
    shl-int/lit8 v0, v17, 0x3

    .line 421
    .line 422
    and-int/lit8 v0, v0, 0x70

    .line 423
    .line 424
    invoke-static {v8, v1, v11, v14, v0}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->a(Landroidx/compose/ui/Modifier;Landroid/net/Uri;ZLandroidx/compose/runtime/Composer;I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_b
    move v0, v11

    .line 432
    move v3, v12

    .line 433
    move-object v2, v15

    .line 434
    const v4, -0x32fd6e42    # -1.3691184E8f

    .line 435
    .line 436
    .line 437
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 438
    .line 439
    .line 440
    sget-object v4, Lcoil3/compose/AsyncImagePainter;->E:Lh;

    .line 441
    .line 442
    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 443
    .line 444
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    check-cast v7, Landroid/content/Context;

    .line 449
    .line 450
    invoke-static {v7}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    sget-object v9, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 455
    .line 456
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    check-cast v9, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    .line 461
    .line 462
    const v10, -0x4a168af5

    .line 463
    .line 464
    .line 465
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 466
    .line 467
    .line 468
    const-string v10, "rememberAsyncImagePainter"

    .line 469
    .line 470
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :try_start_0
    invoke-static {v1, v14}, Lcoil3/compose/internal/UtilsKt;->d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Lcoil3/request/ImageRequest;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-static {v10}, Lcoil3/compose/internal/UtilsKt;->g(Lcoil3/request/ImageRequest;)V

    .line 478
    .line 479
    .line 480
    new-instance v11, Lcoil3/compose/AsyncImagePainter$Input;

    .line 481
    .line 482
    invoke-direct {v11, v7, v10, v9}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    if-ne v7, v2, :cond_c

    .line 490
    .line 491
    new-instance v7, Lcoil3/compose/AsyncImagePainter;

    .line 492
    .line 493
    invoke-direct {v7, v11}, Lcoil3/compose/AsyncImagePainter;-><init>(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_c
    check-cast v7, Lcoil3/compose/AsyncImagePainter;

    .line 500
    .line 501
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    if-ne v9, v2, :cond_d

    .line 506
    .line 507
    invoke-static {v14}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    :cond_d
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 515
    .line 516
    iput-object v9, v7, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/CoroutineScope;

    .line 517
    .line 518
    iput-object v4, v7, Lcoil3/compose/AsyncImagePainter;->v:Lkotlin/jvm/functions/Function1;

    .line 519
    .line 520
    iput-object v8, v7, Lcoil3/compose/AsyncImagePainter;->w:Lkotlin/jvm/functions/Function1;

    .line 521
    .line 522
    iput-object v6, v7, Lcoil3/compose/AsyncImagePainter;->x:Landroidx/compose/ui/layout/ContentScale;

    .line 523
    .line 524
    iput v0, v7, Lcoil3/compose/AsyncImagePainter;->y:I

    .line 525
    .line 526
    invoke-static {v14}, Lcoil3/compose/internal/UtilsKt;->b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    iput-object v4, v7, Lcoil3/compose/AsyncImagePainter;->z:Lcoil3/compose/AsyncImagePreviewHandler;

    .line 531
    .line 532
    invoke-virtual {v7, v11}, Lcoil3/compose/AsyncImagePainter;->n(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .line 537
    .line 538
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 539
    .line 540
    .line 541
    const/high16 v4, 0x3f800000    # 1.0f

    .line 542
    .line 543
    invoke-static {v13, v4}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    if-ne v4, v2, :cond_e

    .line 552
    .line 553
    new-instance v4, Ls;

    .line 554
    .line 555
    move-object/from16 v2, p3

    .line 556
    .line 557
    invoke-direct {v4, v0, v2}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_e
    move-object/from16 v2, p3

    .line 565
    .line 566
    :goto_9
    move-object v10, v4

    .line 567
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 568
    .line 569
    const/4 v12, 0x6

    .line 570
    const/4 v8, 0x0

    .line 571
    const/4 v9, 0x0

    .line 572
    move-object v11, v14

    .line 573
    invoke-static/range {v6 .. v12}, Lnet/blip/android/ui/gallery/ZoomableImageKt;->a(Landroidx/compose/ui/Modifier;Lcoil3/compose/AsyncImagePainter;FZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 577
    .line 578
    .line 579
    goto :goto_a

    .line 580
    :catchall_0
    move-exception v0

    .line 581
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :cond_f
    move-object/from16 v2, p3

    .line 586
    .line 587
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 588
    .line 589
    .line 590
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    if-eqz v7, :cond_10

    .line 595
    .line 596
    new-instance v0, Le2;

    .line 597
    .line 598
    move/from16 v3, p2

    .line 599
    .line 600
    move/from16 v6, p6

    .line 601
    .line 602
    move-object v4, v2

    .line 603
    move/from16 v2, p1

    .line 604
    .line 605
    invoke-direct/range {v0 .. v6}, Le2;-><init>(Landroid/net/Uri;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 606
    .line 607
    .line 608
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 609
    .line 610
    :cond_10
    return-void
.end method
