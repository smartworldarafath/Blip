.class public final synthetic Ld6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld6;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Ld6;->j:I

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x30

    .line 11
    .line 12
    const/16 v6, 0x10

    .line 13
    .line 14
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v0, p1

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 24
    .line 25
    move-object/from16 v1, p2

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 28
    .line 29
    move-object/from16 v2, p3

    .line 30
    .line 31
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/16 v3, 0xf

    .line 40
    .line 41
    invoke-static {v9, v9, v9, v9, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget v1, v6, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget v1, v6, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_0
    iget-wide v3, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 60
    .line 61
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-wide v2, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    int-to-long v3, v1

    .line 72
    const/16 v1, 0x20

    .line 73
    .line 74
    shl-long/2addr v3, v1

    .line 75
    int-to-long v7, v2

    .line 76
    const-wide v9, 0xffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    and-long/2addr v7, v9

    .line 82
    or-long v2, v3, v7

    .line 83
    .line 84
    iget v4, v6, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    iget v5, v6, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 88
    .line 89
    int-to-float v5, v5

    .line 90
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    int-to-long v7, v4

    .line 95
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    int-to-long v4, v4

    .line 100
    shl-long/2addr v7, v1

    .line 101
    and-long/2addr v4, v9

    .line 102
    or-long/2addr v4, v7

    .line 103
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    shr-long v7, v2, v1

    .line 108
    .line 109
    long-to-int v7, v7

    .line 110
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    shr-long v11, v4, v1

    .line 115
    .line 116
    long-to-int v8, v11

    .line 117
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    div-float/2addr v7, v11

    .line 122
    and-long/2addr v2, v9

    .line 123
    long-to-int v2, v2

    .line 124
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    and-long v11, v4, v9

    .line 129
    .line 130
    long-to-int v3, v11

    .line 131
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    div-float/2addr v2, v11

    .line 136
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    mul-float/2addr v2, v11

    .line 145
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    mul-float/2addr v3, v11

    .line 150
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    int-to-long v7, v2

    .line 155
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    int-to-long v2, v2

    .line 160
    shl-long/2addr v7, v1

    .line 161
    and-long/2addr v2, v9

    .line 162
    or-long/2addr v7, v2

    .line 163
    shr-long v1, v7, v1

    .line 164
    .line 165
    long-to-int v1, v1

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    and-long v2, v7, v9

    .line 175
    .line 176
    long-to-int v2, v2

    .line 177
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-static {v2}, Lkotlin/math/MathKt;->b(F)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    move-wide v9, v4

    .line 186
    new-instance v5, Llb;

    .line 187
    .line 188
    invoke-direct/range {v5 .. v11}, Llb;-><init>(Landroidx/compose/ui/layout/Placeable;JJF)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {v0, v1, v2, v3, v5}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_1

    .line 200
    :cond_1
    :goto_0
    iget-wide v3, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 201
    .line 202
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iget-wide v2, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 207
    .line 208
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    new-instance v3, Lla;

    .line 213
    .line 214
    const/4 v4, 0x6

    .line 215
    invoke-direct {v3, v4}, Lla;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-interface {v0, v1, v2, v4, v3}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :goto_1
    return-object v0

    .line 227
    :pswitch_0
    move-object/from16 v0, p1

    .line 228
    .line 229
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 230
    .line 231
    move-object/from16 v1, p2

    .line 232
    .line 233
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 234
    .line 235
    move-object/from16 v2, p3

    .line 236
    .line 237
    check-cast v2, Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    and-int/lit8 v0, v2, 0x11

    .line 247
    .line 248
    if-eq v0, v6, :cond_2

    .line 249
    .line 250
    move v9, v8

    .line 251
    :cond_2
    and-int/lit8 v0, v2, 0x1

    .line 252
    .line 253
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 254
    .line 255
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_3

    .line 260
    .line 261
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 268
    .line 269
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 270
    .line 271
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 278
    .line 279
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 280
    .line 281
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 282
    .line 283
    .line 284
    move-result-wide v11

    .line 285
    const/16 v19, 0x0

    .line 286
    .line 287
    const v20, 0xfffffc

    .line 288
    .line 289
    .line 290
    const/4 v13, 0x0

    .line 291
    const-wide/16 v14, 0x0

    .line 292
    .line 293
    const-wide/16 v16, 0x0

    .line 294
    .line 295
    const/16 v18, 0x0

    .line 296
    .line 297
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    const/16 v19, 0x6

    .line 302
    .line 303
    const/16 v20, 0x1fa

    .line 304
    .line 305
    const-string v10, "Cancel"

    .line 306
    .line 307
    const/4 v11, 0x0

    .line 308
    const/4 v13, 0x0

    .line 309
    const/4 v14, 0x0

    .line 310
    const/4 v15, 0x0

    .line 311
    const/16 v16, 0x0

    .line 312
    .line 313
    const/16 v17, 0x0

    .line 314
    .line 315
    move-object/from16 v18, v1

    .line 316
    .line 317
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_3
    move-object/from16 v18, v1

    .line 322
    .line 323
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 324
    .line 325
    .line 326
    :goto_2
    return-object v7

    .line 327
    :pswitch_1
    move-object/from16 v0, p1

    .line 328
    .line 329
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 330
    .line 331
    move-object/from16 v1, p2

    .line 332
    .line 333
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 334
    .line 335
    move-object/from16 v2, p3

    .line 336
    .line 337
    check-cast v2, Ljava/lang/Integer;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    and-int/lit8 v0, v2, 0x11

    .line 347
    .line 348
    if-eq v0, v6, :cond_4

    .line 349
    .line 350
    move v9, v8

    .line 351
    :cond_4
    and-int/lit8 v0, v2, 0x1

    .line 352
    .line 353
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 354
    .line 355
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_5

    .line 360
    .line 361
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 368
    .line 369
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 370
    .line 371
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 372
    .line 373
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 378
    .line 379
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 380
    .line 381
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 382
    .line 383
    .line 384
    move-result-wide v11

    .line 385
    const/16 v19, 0x0

    .line 386
    .line 387
    const v20, 0xfffffc

    .line 388
    .line 389
    .line 390
    const/4 v13, 0x0

    .line 391
    const-wide/16 v14, 0x0

    .line 392
    .line 393
    const-wide/16 v16, 0x0

    .line 394
    .line 395
    const/16 v18, 0x0

    .line 396
    .line 397
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    const/16 v19, 0x6

    .line 402
    .line 403
    const/16 v20, 0x1fa

    .line 404
    .line 405
    const-string v10, "Delete Transfers & Files"

    .line 406
    .line 407
    const/4 v11, 0x0

    .line 408
    const/4 v13, 0x0

    .line 409
    const/4 v14, 0x0

    .line 410
    const/4 v15, 0x0

    .line 411
    const/16 v16, 0x0

    .line 412
    .line 413
    const/16 v17, 0x0

    .line 414
    .line 415
    move-object/from16 v18, v1

    .line 416
    .line 417
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 418
    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_5
    move-object/from16 v18, v1

    .line 422
    .line 423
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 424
    .line 425
    .line 426
    :goto_3
    return-object v7

    .line 427
    :pswitch_2
    move-object/from16 v0, p1

    .line 428
    .line 429
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 430
    .line 431
    move-object/from16 v1, p2

    .line 432
    .line 433
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 434
    .line 435
    move-object/from16 v2, p3

    .line 436
    .line 437
    check-cast v2, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    and-int/lit8 v0, v2, 0x11

    .line 447
    .line 448
    if-eq v0, v6, :cond_6

    .line 449
    .line 450
    move v9, v8

    .line 451
    :cond_6
    and-int/lit8 v0, v2, 0x1

    .line 452
    .line 453
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 454
    .line 455
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_7

    .line 460
    .line 461
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 462
    .line 463
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 468
    .line 469
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 470
    .line 471
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 472
    .line 473
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 478
    .line 479
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 480
    .line 481
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v11

    .line 485
    const/16 v19, 0x0

    .line 486
    .line 487
    const v20, 0xfffffc

    .line 488
    .line 489
    .line 490
    const/4 v13, 0x0

    .line 491
    const-wide/16 v14, 0x0

    .line 492
    .line 493
    const-wide/16 v16, 0x0

    .line 494
    .line 495
    const/16 v18, 0x0

    .line 496
    .line 497
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 498
    .line 499
    .line 500
    move-result-object v12

    .line 501
    const/16 v19, 0x6

    .line 502
    .line 503
    const/16 v20, 0x1fa

    .line 504
    .line 505
    const-string v10, "Delete Transfers"

    .line 506
    .line 507
    const/4 v11, 0x0

    .line 508
    const/4 v13, 0x0

    .line 509
    const/4 v14, 0x0

    .line 510
    const/4 v15, 0x0

    .line 511
    const/16 v16, 0x0

    .line 512
    .line 513
    const/16 v17, 0x0

    .line 514
    .line 515
    move-object/from16 v18, v1

    .line 516
    .line 517
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 518
    .line 519
    .line 520
    goto :goto_4

    .line 521
    :cond_7
    move-object/from16 v18, v1

    .line 522
    .line 523
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 524
    .line 525
    .line 526
    :goto_4
    return-object v7

    .line 527
    :pswitch_3
    move-object/from16 v0, p1

    .line 528
    .line 529
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 530
    .line 531
    move-object/from16 v1, p2

    .line 532
    .line 533
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 534
    .line 535
    move-object/from16 v2, p3

    .line 536
    .line 537
    check-cast v2, Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    and-int/lit8 v0, v2, 0x11

    .line 547
    .line 548
    if-eq v0, v6, :cond_8

    .line 549
    .line 550
    move v9, v8

    .line 551
    :cond_8
    and-int/lit8 v0, v2, 0x1

    .line 552
    .line 553
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 554
    .line 555
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_9

    .line 560
    .line 561
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 562
    .line 563
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 568
    .line 569
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 570
    .line 571
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 572
    .line 573
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 578
    .line 579
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 580
    .line 581
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 582
    .line 583
    .line 584
    move-result-wide v11

    .line 585
    const/16 v19, 0x0

    .line 586
    .line 587
    const v20, 0xfffffc

    .line 588
    .line 589
    .line 590
    const/4 v13, 0x0

    .line 591
    const-wide/16 v14, 0x0

    .line 592
    .line 593
    const-wide/16 v16, 0x0

    .line 594
    .line 595
    const/16 v18, 0x0

    .line 596
    .line 597
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 598
    .line 599
    .line 600
    move-result-object v12

    .line 601
    const/16 v19, 0x6

    .line 602
    .line 603
    const/16 v20, 0x1fa

    .line 604
    .line 605
    const-string v10, "Cancel"

    .line 606
    .line 607
    const/4 v11, 0x0

    .line 608
    const/4 v13, 0x0

    .line 609
    const/4 v14, 0x0

    .line 610
    const/4 v15, 0x0

    .line 611
    const/16 v16, 0x0

    .line 612
    .line 613
    const/16 v17, 0x0

    .line 614
    .line 615
    move-object/from16 v18, v1

    .line 616
    .line 617
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 618
    .line 619
    .line 620
    goto :goto_5

    .line 621
    :cond_9
    move-object/from16 v18, v1

    .line 622
    .line 623
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 624
    .line 625
    .line 626
    :goto_5
    return-object v7

    .line 627
    :pswitch_4
    move-object/from16 v0, p1

    .line 628
    .line 629
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 630
    .line 631
    move-object/from16 v1, p2

    .line 632
    .line 633
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 634
    .line 635
    move-object/from16 v2, p3

    .line 636
    .line 637
    check-cast v2, Ljava/lang/Integer;

    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    and-int/lit8 v0, v2, 0x11

    .line 647
    .line 648
    if-eq v0, v6, :cond_a

    .line 649
    .line 650
    move v9, v8

    .line 651
    :cond_a
    and-int/lit8 v0, v2, 0x1

    .line 652
    .line 653
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 654
    .line 655
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_b

    .line 660
    .line 661
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 662
    .line 663
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 668
    .line 669
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 670
    .line 671
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 672
    .line 673
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 678
    .line 679
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 680
    .line 681
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 682
    .line 683
    .line 684
    move-result-wide v11

    .line 685
    const/16 v19, 0x0

    .line 686
    .line 687
    const v20, 0xfffffc

    .line 688
    .line 689
    .line 690
    const/4 v13, 0x0

    .line 691
    const-wide/16 v14, 0x0

    .line 692
    .line 693
    const-wide/16 v16, 0x0

    .line 694
    .line 695
    const/16 v18, 0x0

    .line 696
    .line 697
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 698
    .line 699
    .line 700
    move-result-object v12

    .line 701
    const/16 v19, 0x6

    .line 702
    .line 703
    const/16 v20, 0x1fa

    .line 704
    .line 705
    const-string v10, "Delete Transfer & Files"

    .line 706
    .line 707
    const/4 v11, 0x0

    .line 708
    const/4 v13, 0x0

    .line 709
    const/4 v14, 0x0

    .line 710
    const/4 v15, 0x0

    .line 711
    const/16 v16, 0x0

    .line 712
    .line 713
    const/16 v17, 0x0

    .line 714
    .line 715
    move-object/from16 v18, v1

    .line 716
    .line 717
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 718
    .line 719
    .line 720
    goto :goto_6

    .line 721
    :cond_b
    move-object/from16 v18, v1

    .line 722
    .line 723
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 724
    .line 725
    .line 726
    :goto_6
    return-object v7

    .line 727
    :pswitch_5
    move-object/from16 v0, p1

    .line 728
    .line 729
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 730
    .line 731
    move-object/from16 v1, p2

    .line 732
    .line 733
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 734
    .line 735
    move-object/from16 v2, p3

    .line 736
    .line 737
    check-cast v2, Ljava/lang/Integer;

    .line 738
    .line 739
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    and-int/lit8 v0, v2, 0x11

    .line 747
    .line 748
    if-eq v0, v6, :cond_c

    .line 749
    .line 750
    move v9, v8

    .line 751
    :cond_c
    and-int/lit8 v0, v2, 0x1

    .line 752
    .line 753
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 754
    .line 755
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    if-eqz v0, :cond_d

    .line 760
    .line 761
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 762
    .line 763
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 768
    .line 769
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 770
    .line 771
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 772
    .line 773
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 778
    .line 779
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 780
    .line 781
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 782
    .line 783
    .line 784
    move-result-wide v11

    .line 785
    const/16 v19, 0x0

    .line 786
    .line 787
    const v20, 0xfffffc

    .line 788
    .line 789
    .line 790
    const/4 v13, 0x0

    .line 791
    const-wide/16 v14, 0x0

    .line 792
    .line 793
    const-wide/16 v16, 0x0

    .line 794
    .line 795
    const/16 v18, 0x0

    .line 796
    .line 797
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 798
    .line 799
    .line 800
    move-result-object v12

    .line 801
    const/16 v19, 0x6

    .line 802
    .line 803
    const/16 v20, 0x1fa

    .line 804
    .line 805
    const-string v10, "Delete Transfer"

    .line 806
    .line 807
    const/4 v11, 0x0

    .line 808
    const/4 v13, 0x0

    .line 809
    const/4 v14, 0x0

    .line 810
    const/4 v15, 0x0

    .line 811
    const/16 v16, 0x0

    .line 812
    .line 813
    const/16 v17, 0x0

    .line 814
    .line 815
    move-object/from16 v18, v1

    .line 816
    .line 817
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 818
    .line 819
    .line 820
    goto :goto_7

    .line 821
    :cond_d
    move-object/from16 v18, v1

    .line 822
    .line 823
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 824
    .line 825
    .line 826
    :goto_7
    return-object v7

    .line 827
    :pswitch_6
    move-object/from16 v0, p1

    .line 828
    .line 829
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 830
    .line 831
    move-object/from16 v1, p2

    .line 832
    .line 833
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 834
    .line 835
    move-object/from16 v2, p3

    .line 836
    .line 837
    check-cast v2, Ljava/lang/Integer;

    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    and-int/lit8 v0, v2, 0x11

    .line 847
    .line 848
    if-eq v0, v6, :cond_e

    .line 849
    .line 850
    move v9, v8

    .line 851
    :cond_e
    and-int/lit8 v0, v2, 0x1

    .line 852
    .line 853
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 854
    .line 855
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_f

    .line 860
    .line 861
    const-string v0, "Delete"

    .line 862
    .line 863
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 864
    .line 865
    .line 866
    goto :goto_8

    .line 867
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 868
    .line 869
    .line 870
    :goto_8
    return-object v7

    .line 871
    :pswitch_7
    move-object/from16 v0, p1

    .line 872
    .line 873
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 874
    .line 875
    move-object/from16 v1, p2

    .line 876
    .line 877
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 878
    .line 879
    move-object/from16 v2, p3

    .line 880
    .line 881
    check-cast v2, Ljava/lang/Integer;

    .line 882
    .line 883
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    and-int/lit8 v0, v2, 0x11

    .line 891
    .line 892
    if-eq v0, v6, :cond_10

    .line 893
    .line 894
    move v9, v8

    .line 895
    :cond_10
    and-int/lit8 v0, v2, 0x1

    .line 896
    .line 897
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 898
    .line 899
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    if-eqz v0, :cond_11

    .line 904
    .line 905
    const-string v0, "Copy"

    .line 906
    .line 907
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 908
    .line 909
    .line 910
    goto :goto_9

    .line 911
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 912
    .line 913
    .line 914
    :goto_9
    return-object v7

    .line 915
    :pswitch_8
    move-object/from16 v0, p1

    .line 916
    .line 917
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    .line 918
    .line 919
    move-object/from16 v1, p2

    .line 920
    .line 921
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 922
    .line 923
    move-object/from16 v2, p3

    .line 924
    .line 925
    check-cast v2, Ljava/lang/Integer;

    .line 926
    .line 927
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 928
    .line 929
    .line 930
    move-result v2

    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    and-int/lit8 v0, v2, 0x11

    .line 935
    .line 936
    if-eq v0, v6, :cond_12

    .line 937
    .line 938
    move v9, v8

    .line 939
    :cond_12
    and-int/lit8 v0, v2, 0x1

    .line 940
    .line 941
    move-object v14, v1

    .line 942
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 943
    .line 944
    invoke-virtual {v14, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-eqz v0, :cond_13

    .line 949
    .line 950
    const/high16 v5, 0x41200000    # 10.0f

    .line 951
    .line 952
    const/4 v6, 0x5

    .line 953
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 954
    .line 955
    const/4 v2, 0x0

    .line 956
    const/high16 v3, 0x41a00000    # 20.0f

    .line 957
    .line 958
    const/4 v4, 0x0

    .line 959
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 960
    .line 961
    .line 962
    move-result-object v10

    .line 963
    const/16 v15, 0x36

    .line 964
    .line 965
    const/16 v16, 0x4

    .line 966
    .line 967
    const-string v11, "Received"

    .line 968
    .line 969
    const-wide/16 v12, 0x0

    .line 970
    .line 971
    invoke-static/range {v10 .. v16}, Lnet/blip/android/ui/components/SubheadingKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 972
    .line 973
    .line 974
    goto :goto_a

    .line 975
    :cond_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 976
    .line 977
    .line 978
    :goto_a
    return-object v7

    .line 979
    :pswitch_9
    move-object/from16 v0, p1

    .line 980
    .line 981
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 982
    .line 983
    move-object/from16 v1, p2

    .line 984
    .line 985
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 986
    .line 987
    move-object/from16 v2, p3

    .line 988
    .line 989
    check-cast v2, Ljava/lang/Integer;

    .line 990
    .line 991
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 992
    .line 993
    .line 994
    move-result v2

    .line 995
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    and-int/lit8 v0, v2, 0x11

    .line 999
    .line 1000
    if-eq v0, v6, :cond_14

    .line 1001
    .line 1002
    move v9, v8

    .line 1003
    :cond_14
    and-int/lit8 v0, v2, 0x1

    .line 1004
    .line 1005
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1006
    .line 1007
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    if-eqz v0, :cond_15

    .line 1012
    .line 1013
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1014
    .line 1015
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1020
    .line 1021
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1022
    .line 1023
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1024
    .line 1025
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1030
    .line 1031
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1032
    .line 1033
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v11

    .line 1037
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1038
    .line 1039
    const/16 v19, 0x0

    .line 1040
    .line 1041
    const v20, 0xfffff8

    .line 1042
    .line 1043
    .line 1044
    const-wide/16 v14, 0x0

    .line 1045
    .line 1046
    const-wide/16 v16, 0x0

    .line 1047
    .line 1048
    const/16 v18, 0x0

    .line 1049
    .line 1050
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v12

    .line 1054
    const/16 v19, 0x6

    .line 1055
    .line 1056
    const/16 v20, 0x1fa

    .line 1057
    .line 1058
    const-string v10, "Accept"

    .line 1059
    .line 1060
    const/4 v11, 0x0

    .line 1061
    const/4 v13, 0x0

    .line 1062
    const/4 v14, 0x0

    .line 1063
    const/4 v15, 0x0

    .line 1064
    const/16 v16, 0x0

    .line 1065
    .line 1066
    const/16 v17, 0x0

    .line 1067
    .line 1068
    move-object/from16 v18, v1

    .line 1069
    .line 1070
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_b

    .line 1074
    :cond_15
    move-object/from16 v18, v1

    .line 1075
    .line 1076
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1077
    .line 1078
    .line 1079
    :goto_b
    return-object v7

    .line 1080
    :pswitch_a
    move-object/from16 v0, p1

    .line 1081
    .line 1082
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1083
    .line 1084
    move-object/from16 v1, p2

    .line 1085
    .line 1086
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1087
    .line 1088
    move-object/from16 v2, p3

    .line 1089
    .line 1090
    check-cast v2, Ljava/lang/Integer;

    .line 1091
    .line 1092
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1093
    .line 1094
    .line 1095
    move-result v2

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    and-int/lit8 v0, v2, 0x11

    .line 1100
    .line 1101
    if-eq v0, v6, :cond_16

    .line 1102
    .line 1103
    move v9, v8

    .line 1104
    :cond_16
    and-int/lit8 v0, v2, 0x1

    .line 1105
    .line 1106
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1107
    .line 1108
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-eqz v0, :cond_17

    .line 1113
    .line 1114
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1115
    .line 1116
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1121
    .line 1122
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1123
    .line 1124
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1125
    .line 1126
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1131
    .line 1132
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1133
    .line 1134
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v11

    .line 1138
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1139
    .line 1140
    const/16 v19, 0x0

    .line 1141
    .line 1142
    const v20, 0xfffff8

    .line 1143
    .line 1144
    .line 1145
    const-wide/16 v14, 0x0

    .line 1146
    .line 1147
    const-wide/16 v16, 0x0

    .line 1148
    .line 1149
    const/16 v18, 0x0

    .line 1150
    .line 1151
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v12

    .line 1155
    const/16 v19, 0x6

    .line 1156
    .line 1157
    const/16 v20, 0x1fa

    .line 1158
    .line 1159
    const-string v10, "Go Back"

    .line 1160
    .line 1161
    const/4 v11, 0x0

    .line 1162
    const/4 v13, 0x0

    .line 1163
    const/4 v14, 0x0

    .line 1164
    const/4 v15, 0x0

    .line 1165
    const/16 v16, 0x0

    .line 1166
    .line 1167
    const/16 v17, 0x0

    .line 1168
    .line 1169
    move-object/from16 v18, v1

    .line 1170
    .line 1171
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_c

    .line 1175
    :cond_17
    move-object/from16 v18, v1

    .line 1176
    .line 1177
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1178
    .line 1179
    .line 1180
    :goto_c
    return-object v7

    .line 1181
    :pswitch_b
    move-object/from16 v0, p1

    .line 1182
    .line 1183
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1184
    .line 1185
    move-object/from16 v1, p2

    .line 1186
    .line 1187
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1188
    .line 1189
    move-object/from16 v2, p3

    .line 1190
    .line 1191
    check-cast v2, Ljava/lang/Integer;

    .line 1192
    .line 1193
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1194
    .line 1195
    .line 1196
    move-result v2

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    and-int/lit8 v0, v2, 0x11

    .line 1201
    .line 1202
    if-eq v0, v6, :cond_18

    .line 1203
    .line 1204
    move v9, v8

    .line 1205
    :cond_18
    and-int/lit8 v0, v2, 0x1

    .line 1206
    .line 1207
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1208
    .line 1209
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v0

    .line 1213
    if-eqz v0, :cond_19

    .line 1214
    .line 1215
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1216
    .line 1217
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1222
    .line 1223
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1224
    .line 1225
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1226
    .line 1227
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1232
    .line 1233
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 1234
    .line 1235
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1236
    .line 1237
    .line 1238
    move-result-wide v11

    .line 1239
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1240
    .line 1241
    const/16 v19, 0x0

    .line 1242
    .line 1243
    const v20, 0xfffff8

    .line 1244
    .line 1245
    .line 1246
    const-wide/16 v14, 0x0

    .line 1247
    .line 1248
    const-wide/16 v16, 0x0

    .line 1249
    .line 1250
    const/16 v18, 0x0

    .line 1251
    .line 1252
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v12

    .line 1256
    const/16 v19, 0x6

    .line 1257
    .line 1258
    const/16 v20, 0x1fa

    .line 1259
    .line 1260
    const-string v10, "Cancel Transfer"

    .line 1261
    .line 1262
    const/4 v11, 0x0

    .line 1263
    const/4 v13, 0x0

    .line 1264
    const/4 v14, 0x0

    .line 1265
    const/4 v15, 0x0

    .line 1266
    const/16 v16, 0x0

    .line 1267
    .line 1268
    const/16 v17, 0x0

    .line 1269
    .line 1270
    move-object/from16 v18, v1

    .line 1271
    .line 1272
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1273
    .line 1274
    .line 1275
    goto :goto_d

    .line 1276
    :cond_19
    move-object/from16 v18, v1

    .line 1277
    .line 1278
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1279
    .line 1280
    .line 1281
    :goto_d
    return-object v7

    .line 1282
    :pswitch_c
    move-object/from16 v0, p1

    .line 1283
    .line 1284
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1285
    .line 1286
    move-object/from16 v1, p2

    .line 1287
    .line 1288
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1289
    .line 1290
    move-object/from16 v2, p3

    .line 1291
    .line 1292
    check-cast v2, Ljava/lang/Integer;

    .line 1293
    .line 1294
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1295
    .line 1296
    .line 1297
    move-result v2

    .line 1298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    and-int/lit8 v0, v2, 0x11

    .line 1302
    .line 1303
    if-eq v0, v6, :cond_1a

    .line 1304
    .line 1305
    move v9, v8

    .line 1306
    :cond_1a
    and-int/lit8 v0, v2, 0x1

    .line 1307
    .line 1308
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1309
    .line 1310
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-eqz v0, :cond_1b

    .line 1315
    .line 1316
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1317
    .line 1318
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1323
    .line 1324
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1325
    .line 1326
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1327
    .line 1328
    .line 1329
    move-result-wide v11

    .line 1330
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 1331
    .line 1332
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1333
    .line 1334
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1339
    .line 1340
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1341
    .line 1342
    const/16 v19, 0x0

    .line 1343
    .line 1344
    const v20, 0xfffff8

    .line 1345
    .line 1346
    .line 1347
    const-wide/16 v14, 0x0

    .line 1348
    .line 1349
    const-wide/16 v16, 0x0

    .line 1350
    .line 1351
    const/16 v18, 0x0

    .line 1352
    .line 1353
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v12

    .line 1357
    const/16 v19, 0x6

    .line 1358
    .line 1359
    const/16 v20, 0x1fa

    .line 1360
    .line 1361
    const-string v10, "Save"

    .line 1362
    .line 1363
    const/4 v11, 0x0

    .line 1364
    const/4 v13, 0x0

    .line 1365
    const/4 v14, 0x0

    .line 1366
    const/4 v15, 0x0

    .line 1367
    const/16 v16, 0x0

    .line 1368
    .line 1369
    const/16 v17, 0x0

    .line 1370
    .line 1371
    move-object/from16 v18, v1

    .line 1372
    .line 1373
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1374
    .line 1375
    .line 1376
    goto :goto_e

    .line 1377
    :cond_1b
    move-object/from16 v18, v1

    .line 1378
    .line 1379
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1380
    .line 1381
    .line 1382
    :goto_e
    return-object v7

    .line 1383
    :pswitch_d
    move-object/from16 v0, p1

    .line 1384
    .line 1385
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1386
    .line 1387
    move-object/from16 v1, p2

    .line 1388
    .line 1389
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1390
    .line 1391
    move-object/from16 v2, p3

    .line 1392
    .line 1393
    check-cast v2, Ljava/lang/Integer;

    .line 1394
    .line 1395
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1400
    .line 1401
    .line 1402
    and-int/lit8 v0, v2, 0x11

    .line 1403
    .line 1404
    if-eq v0, v6, :cond_1c

    .line 1405
    .line 1406
    move v9, v8

    .line 1407
    :cond_1c
    and-int/lit8 v0, v2, 0x1

    .line 1408
    .line 1409
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1410
    .line 1411
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_1d

    .line 1416
    .line 1417
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1418
    .line 1419
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1424
    .line 1425
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1426
    .line 1427
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v11

    .line 1431
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 1432
    .line 1433
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1434
    .line 1435
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v0

    .line 1439
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1440
    .line 1441
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1442
    .line 1443
    const/16 v19, 0x0

    .line 1444
    .line 1445
    const v20, 0xfffff8

    .line 1446
    .line 1447
    .line 1448
    const-wide/16 v14, 0x0

    .line 1449
    .line 1450
    const-wide/16 v16, 0x0

    .line 1451
    .line 1452
    const/16 v18, 0x0

    .line 1453
    .line 1454
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v12

    .line 1458
    const/16 v19, 0x6

    .line 1459
    .line 1460
    const/16 v20, 0x1fa

    .line 1461
    .line 1462
    const-string v10, "Cancel"

    .line 1463
    .line 1464
    const/4 v11, 0x0

    .line 1465
    const/4 v13, 0x0

    .line 1466
    const/4 v14, 0x0

    .line 1467
    const/4 v15, 0x0

    .line 1468
    const/16 v16, 0x0

    .line 1469
    .line 1470
    const/16 v17, 0x0

    .line 1471
    .line 1472
    move-object/from16 v18, v1

    .line 1473
    .line 1474
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1475
    .line 1476
    .line 1477
    goto :goto_f

    .line 1478
    :cond_1d
    move-object/from16 v18, v1

    .line 1479
    .line 1480
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1481
    .line 1482
    .line 1483
    :goto_f
    return-object v7

    .line 1484
    :pswitch_e
    if-nez p1, :cond_23

    .line 1485
    .line 1486
    move-object/from16 v0, p2

    .line 1487
    .line 1488
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1489
    .line 1490
    move-object/from16 v5, p3

    .line 1491
    .line 1492
    check-cast v5, Ljava/lang/Integer;

    .line 1493
    .line 1494
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1495
    .line 1496
    .line 1497
    move-result v5

    .line 1498
    and-int/lit8 v6, v5, 0x6

    .line 1499
    .line 1500
    if-nez v6, :cond_20

    .line 1501
    .line 1502
    and-int/lit8 v6, v5, 0x8

    .line 1503
    .line 1504
    if-nez v6, :cond_1e

    .line 1505
    .line 1506
    move-object v6, v0

    .line 1507
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 1508
    .line 1509
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v4

    .line 1513
    goto :goto_10

    .line 1514
    :cond_1e
    move-object v6, v0

    .line 1515
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 1516
    .line 1517
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1518
    .line 1519
    .line 1520
    move-result v4

    .line 1521
    :goto_10
    if-eqz v4, :cond_1f

    .line 1522
    .line 1523
    move v2, v3

    .line 1524
    :cond_1f
    or-int/2addr v5, v2

    .line 1525
    :cond_20
    and-int/lit8 v2, v5, 0x13

    .line 1526
    .line 1527
    if-eq v2, v1, :cond_21

    .line 1528
    .line 1529
    goto :goto_11

    .line 1530
    :cond_21
    move v8, v9

    .line 1531
    :goto_11
    and-int/lit8 v1, v5, 0x1

    .line 1532
    .line 1533
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1534
    .line 1535
    invoke-virtual {v0, v1, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1536
    .line 1537
    .line 1538
    move-result v1

    .line 1539
    if-eqz v1, :cond_22

    .line 1540
    .line 1541
    const/16 v17, 0x0

    .line 1542
    .line 1543
    and-int/lit8 v19, v5, 0xe

    .line 1544
    .line 1545
    const/4 v9, 0x0

    .line 1546
    const/4 v10, 0x0

    .line 1547
    const-wide/16 v11, 0x0

    .line 1548
    .line 1549
    const-wide/16 v13, 0x0

    .line 1550
    .line 1551
    const-wide/16 v15, 0x0

    .line 1552
    .line 1553
    move-object/from16 v18, v0

    .line 1554
    .line 1555
    invoke-static/range {v9 .. v19}, Landroidx/compose/material/SnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;I)V

    .line 1556
    .line 1557
    .line 1558
    goto :goto_12

    .line 1559
    :cond_22
    move-object/from16 v18, v0

    .line 1560
    .line 1561
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1562
    .line 1563
    .line 1564
    :goto_12
    move-object v4, v7

    .line 1565
    goto :goto_13

    .line 1566
    :cond_23
    invoke-static {}, Lio/sentry/d;->i()V

    .line 1567
    .line 1568
    .line 1569
    :goto_13
    return-object v4

    .line 1570
    :pswitch_f
    move-object/from16 v0, p1

    .line 1571
    .line 1572
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1573
    .line 1574
    move-object/from16 v1, p2

    .line 1575
    .line 1576
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1577
    .line 1578
    move-object/from16 v2, p3

    .line 1579
    .line 1580
    check-cast v2, Ljava/lang/Integer;

    .line 1581
    .line 1582
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1583
    .line 1584
    .line 1585
    move-result v2

    .line 1586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1587
    .line 1588
    .line 1589
    and-int/lit8 v0, v2, 0x11

    .line 1590
    .line 1591
    if-eq v0, v6, :cond_24

    .line 1592
    .line 1593
    move v9, v8

    .line 1594
    :cond_24
    and-int/lit8 v0, v2, 0x1

    .line 1595
    .line 1596
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1597
    .line 1598
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v0

    .line 1602
    if-eqz v0, :cond_25

    .line 1603
    .line 1604
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1605
    .line 1606
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v0

    .line 1610
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1611
    .line 1612
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1613
    .line 1614
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1615
    .line 1616
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1621
    .line 1622
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1623
    .line 1624
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1625
    .line 1626
    .line 1627
    move-result-wide v11

    .line 1628
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1629
    .line 1630
    const/16 v19, 0x0

    .line 1631
    .line 1632
    const v20, 0xfffff8

    .line 1633
    .line 1634
    .line 1635
    const-wide/16 v14, 0x0

    .line 1636
    .line 1637
    const-wide/16 v16, 0x0

    .line 1638
    .line 1639
    const/16 v18, 0x0

    .line 1640
    .line 1641
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v12

    .line 1645
    const/16 v19, 0x6

    .line 1646
    .line 1647
    const/16 v20, 0x1fa

    .line 1648
    .line 1649
    const-string v10, "Cancel"

    .line 1650
    .line 1651
    const/4 v11, 0x0

    .line 1652
    const/4 v13, 0x0

    .line 1653
    const/4 v14, 0x0

    .line 1654
    const/4 v15, 0x0

    .line 1655
    const/16 v16, 0x0

    .line 1656
    .line 1657
    const/16 v17, 0x0

    .line 1658
    .line 1659
    move-object/from16 v18, v1

    .line 1660
    .line 1661
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1662
    .line 1663
    .line 1664
    goto :goto_14

    .line 1665
    :cond_25
    move-object/from16 v18, v1

    .line 1666
    .line 1667
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1668
    .line 1669
    .line 1670
    :goto_14
    return-object v7

    .line 1671
    :pswitch_10
    move-object/from16 v0, p1

    .line 1672
    .line 1673
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1674
    .line 1675
    move-object/from16 v1, p2

    .line 1676
    .line 1677
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1678
    .line 1679
    move-object/from16 v2, p3

    .line 1680
    .line 1681
    check-cast v2, Ljava/lang/Integer;

    .line 1682
    .line 1683
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1684
    .line 1685
    .line 1686
    move-result v2

    .line 1687
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    .line 1689
    .line 1690
    and-int/lit8 v0, v2, 0x11

    .line 1691
    .line 1692
    if-eq v0, v6, :cond_26

    .line 1693
    .line 1694
    move v9, v8

    .line 1695
    :cond_26
    and-int/lit8 v0, v2, 0x1

    .line 1696
    .line 1697
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1698
    .line 1699
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v0

    .line 1703
    if-eqz v0, :cond_27

    .line 1704
    .line 1705
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1706
    .line 1707
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1712
    .line 1713
    iget-object v8, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1714
    .line 1715
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1716
    .line 1717
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v0

    .line 1721
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1722
    .line 1723
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 1724
    .line 1725
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1726
    .line 1727
    .line 1728
    move-result-wide v11

    .line 1729
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1730
    .line 1731
    const/16 v19, 0x0

    .line 1732
    .line 1733
    const v20, 0xfffff8

    .line 1734
    .line 1735
    .line 1736
    const-wide/16 v14, 0x0

    .line 1737
    .line 1738
    const-wide/16 v16, 0x0

    .line 1739
    .line 1740
    const/16 v18, 0x0

    .line 1741
    .line 1742
    invoke-static/range {v8 .. v20}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v12

    .line 1746
    const/16 v19, 0x6

    .line 1747
    .line 1748
    const/16 v20, 0x1fa

    .line 1749
    .line 1750
    const-string v10, "Sign Out"

    .line 1751
    .line 1752
    const/4 v11, 0x0

    .line 1753
    const/4 v13, 0x0

    .line 1754
    const/4 v14, 0x0

    .line 1755
    const/4 v15, 0x0

    .line 1756
    const/16 v16, 0x0

    .line 1757
    .line 1758
    const/16 v17, 0x0

    .line 1759
    .line 1760
    move-object/from16 v18, v1

    .line 1761
    .line 1762
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_15

    .line 1766
    :cond_27
    move-object/from16 v18, v1

    .line 1767
    .line 1768
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1769
    .line 1770
    .line 1771
    :goto_15
    return-object v7

    .line 1772
    :pswitch_11
    move-object/from16 v0, p1

    .line 1773
    .line 1774
    check-cast v0, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 1775
    .line 1776
    move-object/from16 v1, p2

    .line 1777
    .line 1778
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1779
    .line 1780
    move-object/from16 v2, p3

    .line 1781
    .line 1782
    check-cast v2, Ljava/lang/Integer;

    .line 1783
    .line 1784
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1785
    .line 1786
    .line 1787
    move-result v2

    .line 1788
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1789
    .line 1790
    .line 1791
    and-int/lit8 v0, v2, 0x11

    .line 1792
    .line 1793
    if-eq v0, v6, :cond_28

    .line 1794
    .line 1795
    move v9, v8

    .line 1796
    :cond_28
    and-int/lit8 v0, v2, 0x1

    .line 1797
    .line 1798
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1799
    .line 1800
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    if-eqz v0, :cond_29

    .line 1805
    .line 1806
    const/4 v12, 0x0

    .line 1807
    const/16 v13, 0xb

    .line 1808
    .line 1809
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1810
    .line 1811
    const/4 v9, 0x0

    .line 1812
    const/4 v10, 0x0

    .line 1813
    const/high16 v11, 0x41800000    # 16.0f

    .line 1814
    .line 1815
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v0

    .line 1819
    const/high16 v2, 0x41a00000    # 20.0f

    .line 1820
    .line 1821
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v10

    .line 1825
    const/16 v18, 0x186

    .line 1826
    .line 1827
    const/16 v19, 0xa

    .line 1828
    .line 1829
    const-wide/16 v11, 0x0

    .line 1830
    .line 1831
    const/high16 v13, 0x40000000    # 2.0f

    .line 1832
    .line 1833
    const-wide/16 v14, 0x0

    .line 1834
    .line 1835
    const/16 v16, 0x1

    .line 1836
    .line 1837
    move-object/from16 v17, v1

    .line 1838
    .line 1839
    invoke-static/range {v10 .. v19}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 1840
    .line 1841
    .line 1842
    goto :goto_16

    .line 1843
    :cond_29
    move-object/from16 v17, v1

    .line 1844
    .line 1845
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1846
    .line 1847
    .line 1848
    :goto_16
    return-object v7

    .line 1849
    :pswitch_12
    move-object/from16 v0, p1

    .line 1850
    .line 1851
    check-cast v0, Landroidx/compose/material/SnackbarHostState;

    .line 1852
    .line 1853
    move-object/from16 v5, p2

    .line 1854
    .line 1855
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 1856
    .line 1857
    move-object/from16 v6, p3

    .line 1858
    .line 1859
    check-cast v6, Ljava/lang/Integer;

    .line 1860
    .line 1861
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1862
    .line 1863
    .line 1864
    move-result v6

    .line 1865
    and-int/lit8 v10, v6, 0x6

    .line 1866
    .line 1867
    if-nez v10, :cond_2b

    .line 1868
    .line 1869
    move-object v10, v5

    .line 1870
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1871
    .line 1872
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v10

    .line 1876
    if-eqz v10, :cond_2a

    .line 1877
    .line 1878
    move v2, v3

    .line 1879
    :cond_2a
    or-int/2addr v6, v2

    .line 1880
    :cond_2b
    and-int/lit8 v2, v6, 0x13

    .line 1881
    .line 1882
    if-eq v2, v1, :cond_2c

    .line 1883
    .line 1884
    goto :goto_17

    .line 1885
    :cond_2c
    move v8, v9

    .line 1886
    :goto_17
    and-int/lit8 v1, v6, 0x1

    .line 1887
    .line 1888
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1889
    .line 1890
    invoke-virtual {v5, v1, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v1

    .line 1894
    if-eqz v1, :cond_2d

    .line 1895
    .line 1896
    and-int/lit8 v1, v6, 0xe

    .line 1897
    .line 1898
    invoke-static {v0, v4, v4, v5, v1}, Landroidx/compose/material/SnackbarHostKt;->b(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 1899
    .line 1900
    .line 1901
    goto :goto_18

    .line 1902
    :cond_2d
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1903
    .line 1904
    .line 1905
    :goto_18
    return-object v7

    .line 1906
    :pswitch_13
    move-object/from16 v0, p1

    .line 1907
    .line 1908
    check-cast v0, Landroidx/compose/material/SnackbarHostState;

    .line 1909
    .line 1910
    move-object/from16 v5, p2

    .line 1911
    .line 1912
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 1913
    .line 1914
    move-object/from16 v6, p3

    .line 1915
    .line 1916
    check-cast v6, Ljava/lang/Integer;

    .line 1917
    .line 1918
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1919
    .line 1920
    .line 1921
    move-result v6

    .line 1922
    and-int/lit8 v10, v6, 0x6

    .line 1923
    .line 1924
    if-nez v10, :cond_2f

    .line 1925
    .line 1926
    move-object v10, v5

    .line 1927
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1928
    .line 1929
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1930
    .line 1931
    .line 1932
    move-result v10

    .line 1933
    if-eqz v10, :cond_2e

    .line 1934
    .line 1935
    move v2, v3

    .line 1936
    :cond_2e
    or-int/2addr v6, v2

    .line 1937
    :cond_2f
    and-int/lit8 v2, v6, 0x13

    .line 1938
    .line 1939
    if-eq v2, v1, :cond_30

    .line 1940
    .line 1941
    goto :goto_19

    .line 1942
    :cond_30
    move v8, v9

    .line 1943
    :goto_19
    and-int/lit8 v1, v6, 0x1

    .line 1944
    .line 1945
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1946
    .line 1947
    invoke-virtual {v5, v1, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1948
    .line 1949
    .line 1950
    move-result v1

    .line 1951
    if-eqz v1, :cond_31

    .line 1952
    .line 1953
    and-int/lit8 v1, v6, 0xe

    .line 1954
    .line 1955
    invoke-static {v0, v4, v4, v5, v1}, Landroidx/compose/material/SnackbarHostKt;->b(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 1956
    .line 1957
    .line 1958
    goto :goto_1a

    .line 1959
    :cond_31
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1960
    .line 1961
    .line 1962
    :goto_1a
    return-object v7

    .line 1963
    :pswitch_14
    move-object/from16 v0, p1

    .line 1964
    .line 1965
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1966
    .line 1967
    move-object/from16 v1, p2

    .line 1968
    .line 1969
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1970
    .line 1971
    move-object/from16 v2, p3

    .line 1972
    .line 1973
    check-cast v2, Ljava/lang/Integer;

    .line 1974
    .line 1975
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1976
    .line 1977
    .line 1978
    move-result v2

    .line 1979
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1980
    .line 1981
    .line 1982
    and-int/lit8 v0, v2, 0x11

    .line 1983
    .line 1984
    if-eq v0, v6, :cond_32

    .line 1985
    .line 1986
    move v9, v8

    .line 1987
    :cond_32
    and-int/lit8 v0, v2, 0x1

    .line 1988
    .line 1989
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1990
    .line 1991
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1992
    .line 1993
    .line 1994
    move-result v0

    .line 1995
    if-eqz v0, :cond_33

    .line 1996
    .line 1997
    const-string v0, "Add to Home screen"

    .line 1998
    .line 1999
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2000
    .line 2001
    .line 2002
    goto :goto_1b

    .line 2003
    :cond_33
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2004
    .line 2005
    .line 2006
    :goto_1b
    return-object v7

    .line 2007
    :pswitch_15
    move-object/from16 v0, p1

    .line 2008
    .line 2009
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2010
    .line 2011
    move-object/from16 v1, p2

    .line 2012
    .line 2013
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2014
    .line 2015
    move-object/from16 v2, p3

    .line 2016
    .line 2017
    check-cast v2, Ljava/lang/Integer;

    .line 2018
    .line 2019
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2020
    .line 2021
    .line 2022
    move-result v2

    .line 2023
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2024
    .line 2025
    .line 2026
    and-int/lit8 v0, v2, 0x11

    .line 2027
    .line 2028
    if-eq v0, v6, :cond_34

    .line 2029
    .line 2030
    move v9, v8

    .line 2031
    :cond_34
    and-int/lit8 v0, v2, 0x1

    .line 2032
    .line 2033
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2034
    .line 2035
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2036
    .line 2037
    .line 2038
    move-result v0

    .line 2039
    if-eqz v0, :cond_35

    .line 2040
    .line 2041
    const-string v0, "Block"

    .line 2042
    .line 2043
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2044
    .line 2045
    .line 2046
    goto :goto_1c

    .line 2047
    :cond_35
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2048
    .line 2049
    .line 2050
    :goto_1c
    return-object v7

    .line 2051
    :pswitch_16
    move-object/from16 v0, p1

    .line 2052
    .line 2053
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2054
    .line 2055
    move-object/from16 v1, p2

    .line 2056
    .line 2057
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2058
    .line 2059
    move-object/from16 v2, p3

    .line 2060
    .line 2061
    check-cast v2, Ljava/lang/Integer;

    .line 2062
    .line 2063
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2064
    .line 2065
    .line 2066
    move-result v2

    .line 2067
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    .line 2069
    .line 2070
    and-int/lit8 v0, v2, 0x11

    .line 2071
    .line 2072
    if-eq v0, v6, :cond_36

    .line 2073
    .line 2074
    move v9, v8

    .line 2075
    :cond_36
    and-int/lit8 v0, v2, 0x1

    .line 2076
    .line 2077
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2078
    .line 2079
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2080
    .line 2081
    .line 2082
    move-result v0

    .line 2083
    if-eqz v0, :cond_37

    .line 2084
    .line 2085
    const-string v0, "Remove"

    .line 2086
    .line 2087
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2088
    .line 2089
    .line 2090
    goto :goto_1d

    .line 2091
    :cond_37
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2092
    .line 2093
    .line 2094
    :goto_1d
    return-object v7

    .line 2095
    :pswitch_17
    move-object/from16 v0, p1

    .line 2096
    .line 2097
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2098
    .line 2099
    move-object/from16 v1, p2

    .line 2100
    .line 2101
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2102
    .line 2103
    move-object/from16 v2, p3

    .line 2104
    .line 2105
    check-cast v2, Ljava/lang/Integer;

    .line 2106
    .line 2107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2108
    .line 2109
    .line 2110
    move-result v2

    .line 2111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2112
    .line 2113
    .line 2114
    and-int/lit8 v0, v2, 0x11

    .line 2115
    .line 2116
    if-eq v0, v6, :cond_38

    .line 2117
    .line 2118
    move v9, v8

    .line 2119
    :cond_38
    and-int/lit8 v0, v2, 0x1

    .line 2120
    .line 2121
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2122
    .line 2123
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2124
    .line 2125
    .line 2126
    move-result v0

    .line 2127
    if-eqz v0, :cond_39

    .line 2128
    .line 2129
    const-string v0, "Send audio"

    .line 2130
    .line 2131
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2132
    .line 2133
    .line 2134
    goto :goto_1e

    .line 2135
    :cond_39
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2136
    .line 2137
    .line 2138
    :goto_1e
    return-object v7

    .line 2139
    :pswitch_18
    move-object/from16 v0, p1

    .line 2140
    .line 2141
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2142
    .line 2143
    move-object/from16 v1, p2

    .line 2144
    .line 2145
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2146
    .line 2147
    move-object/from16 v2, p3

    .line 2148
    .line 2149
    check-cast v2, Ljava/lang/Integer;

    .line 2150
    .line 2151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2152
    .line 2153
    .line 2154
    move-result v2

    .line 2155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2156
    .line 2157
    .line 2158
    and-int/lit8 v0, v2, 0x11

    .line 2159
    .line 2160
    if-eq v0, v6, :cond_3a

    .line 2161
    .line 2162
    move v9, v8

    .line 2163
    :cond_3a
    and-int/lit8 v0, v2, 0x1

    .line 2164
    .line 2165
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2166
    .line 2167
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2168
    .line 2169
    .line 2170
    move-result v0

    .line 2171
    if-eqz v0, :cond_3b

    .line 2172
    .line 2173
    const-string v0, "Capture a photo"

    .line 2174
    .line 2175
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2176
    .line 2177
    .line 2178
    goto :goto_1f

    .line 2179
    :cond_3b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2180
    .line 2181
    .line 2182
    :goto_1f
    return-object v7

    .line 2183
    :pswitch_19
    move-object/from16 v0, p1

    .line 2184
    .line 2185
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2186
    .line 2187
    move-object/from16 v1, p2

    .line 2188
    .line 2189
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2190
    .line 2191
    move-object/from16 v2, p3

    .line 2192
    .line 2193
    check-cast v2, Ljava/lang/Integer;

    .line 2194
    .line 2195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2196
    .line 2197
    .line 2198
    move-result v2

    .line 2199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2200
    .line 2201
    .line 2202
    and-int/lit8 v0, v2, 0x11

    .line 2203
    .line 2204
    if-eq v0, v6, :cond_3c

    .line 2205
    .line 2206
    move v9, v8

    .line 2207
    :cond_3c
    and-int/lit8 v0, v2, 0x1

    .line 2208
    .line 2209
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2210
    .line 2211
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v0

    .line 2215
    if-eqz v0, :cond_3d

    .line 2216
    .line 2217
    const-string v0, "Send a folder"

    .line 2218
    .line 2219
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2220
    .line 2221
    .line 2222
    goto :goto_20

    .line 2223
    :cond_3d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2224
    .line 2225
    .line 2226
    :goto_20
    return-object v7

    .line 2227
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2228
    .line 2229
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2230
    .line 2231
    move-object/from16 v1, p2

    .line 2232
    .line 2233
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2234
    .line 2235
    move-object/from16 v2, p3

    .line 2236
    .line 2237
    check-cast v2, Ljava/lang/Integer;

    .line 2238
    .line 2239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2240
    .line 2241
    .line 2242
    move-result v2

    .line 2243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2244
    .line 2245
    .line 2246
    and-int/lit8 v0, v2, 0x11

    .line 2247
    .line 2248
    if-eq v0, v6, :cond_3e

    .line 2249
    .line 2250
    move v9, v8

    .line 2251
    :cond_3e
    and-int/lit8 v0, v2, 0x1

    .line 2252
    .line 2253
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2254
    .line 2255
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2256
    .line 2257
    .line 2258
    move-result v0

    .line 2259
    if-eqz v0, :cond_3f

    .line 2260
    .line 2261
    const-string v0, "Send files"

    .line 2262
    .line 2263
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2264
    .line 2265
    .line 2266
    goto :goto_21

    .line 2267
    :cond_3f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2268
    .line 2269
    .line 2270
    :goto_21
    return-object v7

    .line 2271
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2272
    .line 2273
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2274
    .line 2275
    move-object/from16 v1, p2

    .line 2276
    .line 2277
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2278
    .line 2279
    move-object/from16 v2, p3

    .line 2280
    .line 2281
    check-cast v2, Ljava/lang/Integer;

    .line 2282
    .line 2283
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2284
    .line 2285
    .line 2286
    move-result v2

    .line 2287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2288
    .line 2289
    .line 2290
    and-int/lit8 v0, v2, 0x11

    .line 2291
    .line 2292
    if-eq v0, v6, :cond_40

    .line 2293
    .line 2294
    move v9, v8

    .line 2295
    :cond_40
    and-int/lit8 v0, v2, 0x1

    .line 2296
    .line 2297
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2298
    .line 2299
    invoke-virtual {v1, v0, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v0

    .line 2303
    if-eqz v0, :cond_41

    .line 2304
    .line 2305
    const-string v0, "Send photos"

    .line 2306
    .line 2307
    invoke-static {v0, v1, v5}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2308
    .line 2309
    .line 2310
    goto :goto_22

    .line 2311
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2312
    .line 2313
    .line 2314
    :goto_22
    return-object v7

    .line 2315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
