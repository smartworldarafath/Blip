.class public final synthetic Li0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Li0;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Li0;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Li0;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Li0;->j:I

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v4, 0x5

    .line 8
    const/16 v5, 0x10

    .line 9
    .line 10
    const/high16 v6, 0x40000000    # 2.0f

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 14
    .line 15
    const/16 v9, 0x12

    .line 16
    .line 17
    const/4 v10, 0x4

    .line 18
    const/4 v11, 0x2

    .line 19
    const/4 v12, 0x1

    .line 20
    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    iget-object v14, v0, Li0;->l:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, v0, Li0;->k:Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroid/text/Spannable;

    .line 31
    .line 32
    check-cast v14, Landroidx/compose/ui/text/a;

    .line 33
    .line 34
    move-object/from16 v1, p1

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    .line 37
    .line 38
    move-object/from16 v2, p2

    .line 39
    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move-object/from16 v3, p3

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    new-instance v4, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    .line 55
    .line 56
    iget-object v5, v1, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 57
    .line 58
    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 59
    .line 60
    if-nez v6, :cond_0

    .line 61
    .line 62
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 63
    .line 64
    :cond_0
    iget-object v7, v1, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 65
    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    iget v15, v7, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 69
    .line 70
    :cond_1
    new-instance v7, Landroidx/compose/ui/text/font/FontStyle;

    .line 71
    .line 72
    invoke-direct {v7, v15}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget v1, v1, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const v1, 0xffff

    .line 83
    .line 84
    .line 85
    :goto_0
    new-instance v8, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 86
    .line 87
    invoke-direct {v8, v1}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14, v5, v6, v7, v8}, Landroidx/compose/ui/text/a;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/graphics/Typeface;

    .line 95
    .line 96
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x21

    .line 100
    .line 101
    invoke-interface {v0, v4, v2, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    .line 103
    .line 104
    return-object v13

    .line 105
    :pswitch_0
    check-cast v0, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;

    .line 106
    .line 107
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 108
    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 112
    .line 113
    move-object/from16 v2, p2

    .line 114
    .line 115
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 116
    .line 117
    move-object/from16 v3, p3

    .line 118
    .line 119
    check-cast v3, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    and-int/lit8 v4, v3, 0x6

    .line 129
    .line 130
    if-nez v4, :cond_4

    .line 131
    .line 132
    move-object v4, v2

    .line 133
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 134
    .line 135
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    move v10, v11

    .line 143
    :goto_1
    or-int/2addr v3, v10

    .line 144
    :cond_4
    and-int/lit8 v4, v3, 0x13

    .line 145
    .line 146
    if-eq v4, v9, :cond_5

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    move v12, v15

    .line 150
    :goto_2
    and-int/lit8 v4, v3, 0x1

    .line 151
    .line 152
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 153
    .line 154
    invoke-virtual {v2, v4, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_7

    .line 159
    .line 160
    iget-object v0, v0, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 161
    .line 162
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-ne v4, v8, :cond_6

    .line 167
    .line 168
    new-instance v4, Lcd;

    .line 169
    .line 170
    const/16 v5, 0x9

    .line 171
    .line 172
    invoke-direct {v4, v14, v5}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    and-int/lit8 v3, v3, 0xe

    .line 181
    .line 182
    or-int/lit8 v3, v3, 0x30

    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 193
    .line 194
    .line 195
    :goto_3
    return-object v13

    .line 196
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function4;

    .line 197
    .line 198
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 199
    .line 200
    move-object/from16 v1, p1

    .line 201
    .line 202
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 203
    .line 204
    move-object/from16 v2, p2

    .line 205
    .line 206
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 207
    .line 208
    move-object/from16 v3, p3

    .line 209
    .line 210
    check-cast v3, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    and-int/lit8 v4, v3, 0x6

    .line 220
    .line 221
    if-nez v4, :cond_9

    .line 222
    .line 223
    move-object v4, v2

    .line 224
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 225
    .line 226
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_8

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    move v10, v11

    .line 234
    :goto_4
    or-int/2addr v3, v10

    .line 235
    :cond_9
    and-int/lit8 v4, v3, 0x13

    .line 236
    .line 237
    if-eq v4, v9, :cond_a

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_a
    move v12, v15

    .line 241
    :goto_5
    and-int/lit8 v4, v3, 0x1

    .line 242
    .line 243
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 244
    .line 245
    invoke-virtual {v2, v4, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_c

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-ne v4, v8, :cond_b

    .line 256
    .line 257
    new-instance v4, Lcd;

    .line 258
    .line 259
    invoke-direct {v4, v14, v15}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 266
    .line 267
    and-int/lit8 v3, v3, 0xe

    .line 268
    .line 269
    or-int/lit8 v3, v3, 0x30

    .line 270
    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-interface {v0, v1, v4, v2, v3}, Lkotlin/jvm/functions/Function4;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_6
    return-object v13

    .line 283
    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    .line 284
    .line 285
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 286
    .line 287
    move-object/from16 v1, p1

    .line 288
    .line 289
    check-cast v1, Ljava/lang/Float;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    move-object/from16 v2, p2

    .line 296
    .line 297
    check-cast v2, Ljava/lang/Float;

    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    move-object/from16 v3, p3

    .line 304
    .line 305
    check-cast v3, Ljava/lang/Float;

    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    invoke-static {v0, v1}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->b(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 320
    .line 321
    iget-object v5, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 322
    .line 323
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 324
    .line 325
    if-ne v5, v8, :cond_d

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_d
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 329
    .line 330
    if-ne v14, v5, :cond_e

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_e
    if-nez v4, :cond_f

    .line 334
    .line 335
    move v4, v12

    .line 336
    goto :goto_7

    .line 337
    :cond_f
    move v4, v15

    .line 338
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 343
    .line 344
    iget v5, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 345
    .line 346
    if-nez v5, :cond_10

    .line 347
    .line 348
    move v8, v7

    .line 349
    goto :goto_8

    .line 350
    :cond_10
    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/pager/PagerState;)F

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    int-to-float v5, v5

    .line 355
    div-float/2addr v8, v5

    .line 356
    :goto_8
    float-to-int v5, v8

    .line 357
    int-to-float v5, v5

    .line 358
    sub-float v5, v8, v5

    .line 359
    .line 360
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    .line 361
    .line 362
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    const/high16 v13, 0x43c80000    # 400.0f

    .line 367
    .line 368
    invoke-interface {v9, v13}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    cmpg-float v9, v10, v9

    .line 373
    .line 374
    if-gez v9, :cond_11

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_11
    cmpl-float v1, v1, v7

    .line 378
    .line 379
    if-lez v1, :cond_12

    .line 380
    .line 381
    move v15, v12

    .line 382
    goto :goto_9

    .line 383
    :cond_12
    move v15, v11

    .line 384
    :goto_9
    if-nez v15, :cond_15

    .line 385
    .line 386
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    const/high16 v5, 0x3f000000    # 0.5f

    .line 391
    .line 392
    cmpl-float v1, v1, v5

    .line 393
    .line 394
    if-lez v1, :cond_13

    .line 395
    .line 396
    if-eqz v4, :cond_18

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_13
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    .line 404
    .line 405
    sget-object v7, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 406
    .line 407
    const/high16 v7, 0x42600000    # 56.0f

    .line 408
    .line 409
    invoke-interface {v5, v7}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    int-to-float v7, v7

    .line 418
    div-float/2addr v7, v6

    .line 419
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    int-to-float v0, v0

    .line 428
    div-float/2addr v5, v0

    .line 429
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    cmpl-float v0, v1, v0

    .line 434
    .line 435
    if-ltz v0, :cond_14

    .line 436
    .line 437
    if-eqz v4, :cond_16

    .line 438
    .line 439
    goto :goto_b

    .line 440
    :cond_14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    cmpg-float v0, v0, v1

    .line 449
    .line 450
    if-gez v0, :cond_16

    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_15
    if-ne v15, v12, :cond_17

    .line 454
    .line 455
    :cond_16
    :goto_a
    move v7, v3

    .line 456
    goto :goto_c

    .line 457
    :cond_17
    if-ne v15, v11, :cond_19

    .line 458
    .line 459
    :cond_18
    :goto_b
    move v7, v2

    .line 460
    :cond_19
    :goto_c
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    return-object v0

    .line 465
    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 466
    .line 467
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 468
    .line 469
    move-object/from16 v1, p1

    .line 470
    .line 471
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 472
    .line 473
    move-object/from16 v2, p2

    .line 474
    .line 475
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 476
    .line 477
    move-object/from16 v3, p3

    .line 478
    .line 479
    check-cast v3, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    and-int/lit8 v1, v3, 0x11

    .line 489
    .line 490
    if-eq v1, v5, :cond_1a

    .line 491
    .line 492
    move v15, v12

    .line 493
    :cond_1a
    and-int/lit8 v1, v3, 0x1

    .line 494
    .line 495
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 496
    .line 497
    invoke-virtual {v2, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_1d

    .line 502
    .line 503
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 508
    .line 509
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 510
    .line 511
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 512
    .line 513
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    xor-int/lit8 v17, v1, 0x1

    .line 518
    .line 519
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    if-nez v1, :cond_1b

    .line 528
    .line 529
    if-ne v3, v8, :cond_1c

    .line 530
    .line 531
    :cond_1b
    new-instance v3, Lk9;

    .line 532
    .line 533
    invoke-direct {v3, v4, v14, v0}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    :cond_1c
    move-object/from16 v18, v3

    .line 540
    .line 541
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 542
    .line 543
    const/16 v20, 0x6

    .line 544
    .line 545
    const/16 v21, 0x0

    .line 546
    .line 547
    const-string v16, "Send code"

    .line 548
    .line 549
    move-object/from16 v19, v2

    .line 550
    .line 551
    invoke-static/range {v16 .. v21}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 552
    .line 553
    .line 554
    goto :goto_d

    .line 555
    :cond_1d
    move-object/from16 v19, v2

    .line 556
    .line 557
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 558
    .line 559
    .line 560
    :goto_d
    return-object v13

    .line 561
    :pswitch_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 562
    .line 563
    check-cast v14, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 564
    .line 565
    move-object/from16 v1, p1

    .line 566
    .line 567
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 568
    .line 569
    move-object/from16 v1, p2

    .line 570
    .line 571
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 572
    .line 573
    move-object/from16 v2, p3

    .line 574
    .line 575
    check-cast v2, Ljava/lang/Integer;

    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    sget-object v3, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 582
    .line 583
    and-int/lit8 v3, v2, 0x11

    .line 584
    .line 585
    if-eq v3, v5, :cond_1e

    .line 586
    .line 587
    move v3, v12

    .line 588
    goto :goto_e

    .line 589
    :cond_1e
    move v3, v15

    .line 590
    :goto_e
    and-int/2addr v2, v12

    .line 591
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 592
    .line 593
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_20

    .line 598
    .line 599
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    if-ne v2, v8, :cond_1f

    .line 604
    .line 605
    new-instance v2, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 606
    .line 607
    invoke-direct {v2}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    :cond_1f
    check-cast v2, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 614
    .line 615
    iget-object v3, v2, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 616
    .line 617
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 618
    .line 619
    .line 620
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v14, v1, v15}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/Composer;I)V

    .line 624
    .line 625
    .line 626
    goto :goto_f

    .line 627
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 628
    .line 629
    .line 630
    :goto_f
    return-object v13

    .line 631
    :pswitch_5
    check-cast v0, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 632
    .line 633
    check-cast v14, Ljava/lang/String;

    .line 634
    .line 635
    move-object/from16 v1, p1

    .line 636
    .line 637
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 638
    .line 639
    move-object/from16 v2, p2

    .line 640
    .line 641
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 642
    .line 643
    move-object/from16 v4, p3

    .line 644
    .line 645
    check-cast v4, Ljava/lang/Integer;

    .line 646
    .line 647
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    sget-object v5, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 652
    .line 653
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    and-int/lit8 v5, v4, 0x6

    .line 657
    .line 658
    if-nez v5, :cond_22

    .line 659
    .line 660
    move-object v5, v2

    .line 661
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 662
    .line 663
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v5

    .line 667
    if-eqz v5, :cond_21

    .line 668
    .line 669
    goto :goto_10

    .line 670
    :cond_21
    move v10, v11

    .line 671
    :goto_10
    or-int/2addr v4, v10

    .line 672
    :cond_22
    and-int/lit8 v5, v4, 0x13

    .line 673
    .line 674
    if-eq v5, v9, :cond_23

    .line 675
    .line 676
    move v15, v12

    .line 677
    :cond_23
    and-int/2addr v4, v12

    .line 678
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 679
    .line 680
    invoke-virtual {v2, v4, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    if-eqz v4, :cond_27

    .line 685
    .line 686
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 687
    .line 688
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 693
    .line 694
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 695
    .line 696
    .line 697
    move-result-wide v5

    .line 698
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 703
    .line 704
    .line 705
    move-result-wide v6

    .line 706
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 711
    .line 712
    .line 713
    move-result v1

    .line 714
    invoke-interface {v4, v1}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    const/high16 v4, 0x42800000    # 64.0f

    .line 719
    .line 720
    div-float/2addr v1, v4

    .line 721
    iget-object v4, v0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 722
    .line 723
    iget-object v4, v4, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 724
    .line 725
    iget-wide v4, v4, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 726
    .line 727
    new-instance v6, Landroidx/compose/ui/unit/TextUnit;

    .line 728
    .line 729
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 730
    .line 731
    .line 732
    const-wide v7, 0xff00000000L

    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    and-long/2addr v4, v7

    .line 738
    const-wide/16 v9, 0x0

    .line 739
    .line 740
    cmp-long v4, v4, v9

    .line 741
    .line 742
    if-nez v4, :cond_24

    .line 743
    .line 744
    const/4 v3, 0x0

    .line 745
    goto :goto_11

    .line 746
    :cond_24
    move-object v3, v6

    .line 747
    :goto_11
    if-eqz v3, :cond_25

    .line 748
    .line 749
    iget-wide v3, v3, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 750
    .line 751
    goto :goto_12

    .line 752
    :cond_25
    const/16 v3, 0x14

    .line 753
    .line 754
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v3

    .line 758
    :goto_12
    and-long v5, v3, v7

    .line 759
    .line 760
    cmp-long v7, v5, v9

    .line 761
    .line 762
    if-nez v7, :cond_26

    .line 763
    .line 764
    const-string v7, "Cannot perform operation for Unspecified type."

    .line 765
    .line 766
    invoke-static {v7}, Landroidx/compose/ui/unit/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    :cond_26
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    mul-float/2addr v3, v1

    .line 774
    invoke-static {v5, v6, v3}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 775
    .line 776
    .line 777
    move-result-wide v18

    .line 778
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 779
    .line 780
    invoke-virtual {v14, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    iget-object v15, v0, Lnet/blip/shared/AvatarTheme$Appearance;->c:Landroidx/compose/ui/text/TextStyle;

    .line 788
    .line 789
    const/16 v26, 0x0

    .line 790
    .line 791
    const v27, 0xfd7ffd

    .line 792
    .line 793
    .line 794
    const-wide/16 v16, 0x0

    .line 795
    .line 796
    const/16 v20, 0x0

    .line 797
    .line 798
    const-wide/16 v21, 0x0

    .line 799
    .line 800
    const/16 v25, 0x0

    .line 801
    .line 802
    move-wide/from16 v23, v18

    .line 803
    .line 804
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 805
    .line 806
    .line 807
    move-result-object v18

    .line 808
    const/16 v25, 0x0

    .line 809
    .line 810
    const/16 v26, 0x3fa

    .line 811
    .line 812
    const/16 v17, 0x0

    .line 813
    .line 814
    const/16 v19, 0x0

    .line 815
    .line 816
    const/16 v20, 0x0

    .line 817
    .line 818
    const/16 v21, 0x0

    .line 819
    .line 820
    const/16 v22, 0x0

    .line 821
    .line 822
    const/16 v23, 0x0

    .line 823
    .line 824
    move-object/from16 v16, v1

    .line 825
    .line 826
    move-object/from16 v24, v2

    .line 827
    .line 828
    invoke-static/range {v16 .. v26}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 829
    .line 830
    .line 831
    goto :goto_13

    .line 832
    :cond_27
    move-object/from16 v24, v2

    .line 833
    .line 834
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 835
    .line 836
    .line 837
    :goto_13
    return-object v13

    .line 838
    :pswitch_6
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 839
    .line 840
    check-cast v14, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 841
    .line 842
    move-object/from16 v1, p1

    .line 843
    .line 844
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 845
    .line 846
    move-object/from16 v3, p2

    .line 847
    .line 848
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 849
    .line 850
    move-object/from16 v4, p3

    .line 851
    .line 852
    check-cast v4, Ljava/lang/Integer;

    .line 853
    .line 854
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    sget-object v5, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 859
    .line 860
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    .line 862
    .line 863
    and-int/lit8 v5, v4, 0x6

    .line 864
    .line 865
    if-nez v5, :cond_29

    .line 866
    .line 867
    move-object v5, v3

    .line 868
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 869
    .line 870
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v5

    .line 874
    if-eqz v5, :cond_28

    .line 875
    .line 876
    goto :goto_14

    .line 877
    :cond_28
    move v10, v11

    .line 878
    :goto_14
    or-int/2addr v4, v10

    .line 879
    :cond_29
    and-int/lit8 v5, v4, 0x13

    .line 880
    .line 881
    if-eq v5, v9, :cond_2a

    .line 882
    .line 883
    move v5, v12

    .line 884
    goto :goto_15

    .line 885
    :cond_2a
    move v5, v15

    .line 886
    :goto_15
    and-int/2addr v4, v12

    .line 887
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 888
    .line 889
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 890
    .line 891
    .line 892
    move-result v4

    .line 893
    if-eqz v4, :cond_2e

    .line 894
    .line 895
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 896
    .line 897
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 902
    .line 903
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 904
    .line 905
    .line 906
    move-result-wide v5

    .line 907
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 908
    .line 909
    .line 910
    move-result v5

    .line 911
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 912
    .line 913
    .line 914
    move-result-wide v9

    .line 915
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    invoke-interface {v4, v1}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    new-instance v4, Landroidx/compose/ui/unit/Dp;

    .line 928
    .line 929
    invoke-direct {v4, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 930
    .line 931
    .line 932
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 933
    .line 934
    const/high16 v6, 0x42a00000    # 80.0f

    .line 935
    .line 936
    invoke-direct {v5, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v4, v5}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    .line 940
    .line 941
    .line 942
    move-result v4

    .line 943
    if-gtz v4, :cond_2b

    .line 944
    .line 945
    new-instance v4, Landroidx/compose/ui/unit/Dp;

    .line 946
    .line 947
    invoke-direct {v4, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 948
    .line 949
    .line 950
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 951
    .line 952
    invoke-direct {v5, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v4, v5}, Landroidx/compose/ui/unit/Dp;->compareTo(Ljava/lang/Object;)I

    .line 956
    .line 957
    .line 958
    move-result v4

    .line 959
    if-ltz v4, :cond_2b

    .line 960
    .line 961
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 962
    .line 963
    div-float/2addr v1, v4

    .line 964
    goto :goto_16

    .line 965
    :cond_2b
    const/high16 v4, 0x3fe00000    # 1.75f

    .line 966
    .line 967
    div-float/2addr v1, v4

    .line 968
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    :goto_16
    div-float/2addr v1, v2

    .line 973
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    int-to-float v1, v1

    .line 978
    mul-float/2addr v1, v2

    .line 979
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 980
    .line 981
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 982
    .line 983
    .line 984
    move-result-object v18

    .line 985
    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    check-cast v0, Lnet/blip/shared/Paintable;

    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    iget-object v1, v0, Lnet/blip/shared/Paintable;->a:Lkotlin/jvm/functions/Function2;

    .line 995
    .line 996
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-interface {v1, v3, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    check-cast v1, Landroidx/compose/ui/graphics/painter/Painter;

    .line 1005
    .line 1006
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    or-int/2addr v0, v2

    .line 1015
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    if-nez v0, :cond_2d

    .line 1020
    .line 1021
    if-ne v2, v8, :cond_2c

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_2c
    move-object v1, v2

    .line 1025
    goto :goto_18

    .line 1026
    :cond_2d
    :goto_17
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1027
    .line 1028
    .line 1029
    :goto_18
    move-object/from16 v16, v1

    .line 1030
    .line 1031
    check-cast v16, Landroidx/compose/ui/graphics/painter/Painter;

    .line 1032
    .line 1033
    const/16 v24, 0x38

    .line 1034
    .line 1035
    const/16 v25, 0x78

    .line 1036
    .line 1037
    const-string v17, ""

    .line 1038
    .line 1039
    const/16 v19, 0x0

    .line 1040
    .line 1041
    const/16 v20, 0x0

    .line 1042
    .line 1043
    const/16 v21, 0x0

    .line 1044
    .line 1045
    const/16 v22, 0x0

    .line 1046
    .line 1047
    move-object/from16 v23, v3

    .line 1048
    .line 1049
    invoke-static/range {v16 .. v25}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_19

    .line 1053
    :cond_2e
    move-object/from16 v23, v3

    .line 1054
    .line 1055
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1056
    .line 1057
    .line 1058
    :goto_19
    return-object v13

    .line 1059
    :pswitch_7
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1060
    .line 1061
    move-object/from16 v18, v14

    .line 1062
    .line 1063
    check-cast v18, Lnet/blip/libblip/User;

    .line 1064
    .line 1065
    move-object/from16 v1, p1

    .line 1066
    .line 1067
    check-cast v1, Lnet/blip/shared/AvatarEditorScope;

    .line 1068
    .line 1069
    move-object/from16 v5, p2

    .line 1070
    .line 1071
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 1072
    .line 1073
    move-object/from16 v8, p3

    .line 1074
    .line 1075
    check-cast v8, Ljava/lang/Integer;

    .line 1076
    .line 1077
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1078
    .line 1079
    .line 1080
    move-result v8

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1082
    .line 1083
    .line 1084
    iget-boolean v14, v1, Lnet/blip/shared/AvatarEditorScope;->a:Z

    .line 1085
    .line 1086
    and-int/lit8 v16, v8, 0x6

    .line 1087
    .line 1088
    if-nez v16, :cond_31

    .line 1089
    .line 1090
    and-int/lit8 v16, v8, 0x8

    .line 1091
    .line 1092
    move-object v3, v5

    .line 1093
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1094
    .line 1095
    if-nez v16, :cond_2f

    .line 1096
    .line 1097
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    goto :goto_1a

    .line 1102
    :cond_2f
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v3

    .line 1106
    :goto_1a
    if-eqz v3, :cond_30

    .line 1107
    .line 1108
    goto :goto_1b

    .line 1109
    :cond_30
    move v10, v11

    .line 1110
    :goto_1b
    or-int/2addr v8, v10

    .line 1111
    :cond_31
    and-int/lit8 v3, v8, 0x13

    .line 1112
    .line 1113
    if-eq v3, v9, :cond_32

    .line 1114
    .line 1115
    move v3, v12

    .line 1116
    goto :goto_1c

    .line 1117
    :cond_32
    move v3, v15

    .line 1118
    :goto_1c
    and-int/2addr v8, v12

    .line 1119
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1120
    .line 1121
    invoke-virtual {v5, v8, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v3

    .line 1125
    if-eqz v3, :cond_37

    .line 1126
    .line 1127
    iget-object v1, v1, Lnet/blip/shared/AvatarEditorScope;->b:Lkotlin/jvm/functions/Function0;

    .line 1128
    .line 1129
    new-instance v3, Landroidx/compose/ui/semantics/Role;

    .line 1130
    .line 1131
    invoke-direct {v3, v4}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 1132
    .line 1133
    .line 1134
    const/16 v24, 0x9

    .line 1135
    .line 1136
    sget-object v19, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1137
    .line 1138
    const/16 v20, 0x0

    .line 1139
    .line 1140
    const-string v21, "Choose avatar image"

    .line 1141
    .line 1142
    move-object/from16 v23, v1

    .line 1143
    .line 1144
    move-object/from16 v22, v3

    .line 1145
    .line 1146
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v1

    .line 1150
    move-object/from16 v3, v19

    .line 1151
    .line 1152
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 1153
    .line 1154
    invoke-static {v4, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v4

    .line 1158
    iget-wide v8, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1159
    .line 1160
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 1161
    .line 1162
    .line 1163
    move-result v8

    .line 1164
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v9

    .line 1168
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1173
    .line 1174
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1178
    .line 1179
    .line 1180
    iget-boolean v10, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1181
    .line 1182
    move/from16 v17, v7

    .line 1183
    .line 1184
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 1185
    .line 1186
    if-eqz v10, :cond_33

    .line 1187
    .line 1188
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_1d

    .line 1192
    :cond_33
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1193
    .line 1194
    .line 1195
    :goto_1d
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 1196
    .line 1197
    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1198
    .line 1199
    .line 1200
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 1201
    .line 1202
    invoke-static {v5, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v8

    .line 1209
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 1210
    .line 1211
    invoke-static {v5, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1215
    .line 1216
    .line 1217
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 1218
    .line 1219
    invoke-static {v5, v0, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    if-eqz v14, :cond_34

    .line 1227
    .line 1228
    invoke-static/range {v17 .. v17}, Lnet/blip/shared/Modifier_ColorFilterKt;->a(F)Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v16

    .line 1232
    move-object/from16 v2, v16

    .line 1233
    .line 1234
    goto :goto_1e

    .line 1235
    :cond_34
    const/4 v2, 0x0

    .line 1236
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    .line 1238
    .line 1239
    new-instance v12, Lma;

    .line 1240
    .line 1241
    invoke-direct {v12, v11, v2}, Lma;-><init>(ILjava/lang/Object;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-static {v0, v12}, Landroidx/compose/ui/draw/DrawModifierKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    if-eqz v14, :cond_35

    .line 1249
    .line 1250
    const/high16 v2, 0x3f400000    # 0.75f

    .line 1251
    .line 1252
    goto :goto_1f

    .line 1253
    :cond_35
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1254
    .line 1255
    :goto_1f
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    sget-object v2, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1260
    .line 1261
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v16

    .line 1269
    const/16 v21, 0x0

    .line 1270
    .line 1271
    const/16 v22, 0xa

    .line 1272
    .line 1273
    const/16 v17, 0x0

    .line 1274
    .line 1275
    const/16 v19, 0x0

    .line 1276
    .line 1277
    move-object/from16 v20, v5

    .line 1278
    .line 1279
    invoke-static/range {v16 .. v22}, Lnet/blip/shared/AvatarKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 1280
    .line 1281
    .line 1282
    const/high16 v0, 0x42200000    # 40.0f

    .line 1283
    .line 1284
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    .line 1289
    .line 1290
    sget-object v11, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 1291
    .line 1292
    invoke-virtual {v11, v0, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    const/high16 v3, 0x41000000    # 8.0f

    .line 1297
    .line 1298
    invoke-static {v0, v3, v6}, Landroidx/compose/foundation/layout/OffsetKt;->b(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v19

    .line 1302
    const-wide/16 v22, 0x0

    .line 1303
    .line 1304
    const/16 v24, 0x1c

    .line 1305
    .line 1306
    const/high16 v20, 0x41800000    # 16.0f

    .line 1307
    .line 1308
    move-object/from16 v21, v2

    .line 1309
    .line 1310
    invoke-static/range {v19 .. v24}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v0

    .line 1318
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1319
    .line 1320
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v2

    .line 1324
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1325
    .line 1326
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 1327
    .line 1328
    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 1329
    .line 1330
    invoke-static {v0, v2, v3, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 1339
    .line 1340
    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    iget-wide v11, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1345
    .line 1346
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 1347
    .line 1348
    .line 1349
    move-result v3

    .line 1350
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v6

    .line 1354
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1359
    .line 1360
    .line 1361
    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1362
    .line 1363
    if-eqz v11, :cond_36

    .line 1364
    .line 1365
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1366
    .line 1367
    .line 1368
    goto :goto_20

    .line 1369
    :cond_36
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1370
    .line 1371
    .line 1372
    :goto_20
    invoke-static {v5, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1376
    .line 1377
    .line 1378
    invoke-static {v3, v5, v9, v5}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 1379
    .line 1380
    .line 1381
    invoke-static {v5, v0, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v19

    .line 1388
    const v27, 0x186c00

    .line 1389
    .line 1390
    .line 1391
    const/16 v28, 0x26

    .line 1392
    .line 1393
    const/16 v20, 0x0

    .line 1394
    .line 1395
    const/16 v21, 0x0

    .line 1396
    .line 1397
    const-string v23, ""

    .line 1398
    .line 1399
    const/16 v24, 0x0

    .line 1400
    .line 1401
    sget-object v25, Lnet/blip/android/ui/components/ComposableSingletons$AndroidAvatarEditorKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1402
    .line 1403
    move-object/from16 v22, v1

    .line 1404
    .line 1405
    move-object/from16 v26, v5

    .line 1406
    .line 1407
    invoke-static/range {v19 .. v28}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 1408
    .line 1409
    .line 1410
    const/4 v0, 0x1

    .line 1411
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_21

    .line 1418
    :cond_37
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1419
    .line 1420
    .line 1421
    :goto_21
    return-object v13

    .line 1422
    nop

    .line 1423
    :pswitch_data_0
    .packed-switch 0x0
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
