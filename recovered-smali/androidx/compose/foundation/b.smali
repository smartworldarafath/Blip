.class public final synthetic Landroidx/compose/foundation/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/b;->j:I

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/b;->k:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .line 15
    .line 16
    instance-of v4, v1, Landroidx/compose/foundation/GestureNode;

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/foundation/GestureNode;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/compose/foundation/GestureNode;->x:Landroidx/compose/foundation/GestureConnection;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move-object v3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-nez v3, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const-string v0, "Node is not a GestureNode instance"

    .line 49
    .line 50
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_2
    return-object v3

    .line 55
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/BorderModifierNode;

    .line 56
    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 60
    .line 61
    iget v4, v0, Landroidx/compose/foundation/BorderModifierNode;->A:F

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    mul-float/2addr v5, v4

    .line 68
    const/4 v4, 0x0

    .line 69
    cmpl-float v5, v5, v4

    .line 70
    .line 71
    if-ltz v5, :cond_1d

    .line 72
    .line 73
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 74
    .line 75
    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->c(J)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    cmpl-float v5, v5, v4

    .line 84
    .line 85
    if-lez v5, :cond_1d

    .line 86
    .line 87
    iget v5, v0, Landroidx/compose/foundation/BorderModifierNode;->A:F

    .line 88
    .line 89
    invoke-static {v5, v4}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/high16 v5, 0x3f800000    # 1.0f

    .line 94
    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    move v4, v5

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    iget v4, v0, Landroidx/compose/foundation/BorderModifierNode;->A:F

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    mul-float/2addr v6, v4

    .line 106
    float-to-double v6, v6

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    double-to-float v4, v6

    .line 112
    :goto_3
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 113
    .line 114
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->c(J)F

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    const/high16 v7, 0x40000000    # 2.0f

    .line 123
    .line 124
    div-float/2addr v6, v7

    .line 125
    float-to-double v8, v6

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    double-to-float v6, v8

    .line 131
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    div-float v4, v9, v7

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    int-to-long v10, v6

    .line 142
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    int-to-long v12, v6

    .line 147
    const/16 v6, 0x20

    .line 148
    .line 149
    shl-long/2addr v10, v6

    .line 150
    const-wide v14, 0xffffffffL

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    and-long/2addr v12, v14

    .line 156
    or-long v16, v10, v12

    .line 157
    .line 158
    iget-object v8, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 159
    .line 160
    invoke-interface {v8}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 161
    .line 162
    .line 163
    move-result-wide v10

    .line 164
    shr-long/2addr v10, v6

    .line 165
    long-to-int v8, v10

    .line 166
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    sub-float/2addr v8, v9

    .line 171
    iget-object v10, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 172
    .line 173
    invoke-interface {v10}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 174
    .line 175
    .line 176
    move-result-wide v10

    .line 177
    and-long/2addr v10, v14

    .line 178
    long-to-int v10, v10

    .line 179
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    sub-float/2addr v10, v9

    .line 184
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    int-to-long v11, v8

    .line 189
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    int-to-long v2, v8

    .line 194
    shl-long/2addr v11, v6

    .line 195
    and-long/2addr v2, v14

    .line 196
    or-long/2addr v2, v11

    .line 197
    mul-float v19, v9, v7

    .line 198
    .line 199
    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 200
    .line 201
    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 202
    .line 203
    .line 204
    move-result-wide v7

    .line 205
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->c(J)F

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    cmpl-float v7, v19, v7

    .line 210
    .line 211
    const/4 v8, 0x0

    .line 212
    if-lez v7, :cond_4

    .line 213
    .line 214
    const/4 v7, 0x1

    .line 215
    goto :goto_4

    .line 216
    :cond_4
    move v7, v8

    .line 217
    :goto_4
    iget-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->C:Landroidx/compose/ui/graphics/Shape;

    .line 218
    .line 219
    iget-object v12, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 220
    .line 221
    invoke-interface {v12}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 222
    .line 223
    .line 224
    move-result-wide v12

    .line 225
    move/from16 p1, v6

    .line 226
    .line 227
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 228
    .line 229
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-interface {v11, v12, v13, v6, v1}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    instance-of v11, v6, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 238
    .line 239
    if-eqz v11, :cond_13

    .line 240
    .line 241
    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->B:Landroidx/compose/ui/graphics/SolidColor;

    .line 242
    .line 243
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 244
    .line 245
    iget-object v3, v6, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 246
    .line 247
    if-eqz v7, :cond_5

    .line 248
    .line 249
    new-instance v0, Lb;

    .line 250
    .line 251
    const/16 v3, 0x8

    .line 252
    .line 253
    invoke-direct {v0, v3, v6, v2}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    goto/16 :goto_11

    .line 261
    .line 262
    :cond_5
    if-eqz v2, :cond_6

    .line 263
    .line 264
    iget-wide v11, v2, Landroidx/compose/ui/graphics/SolidColor;->a:J

    .line 265
    .line 266
    invoke-static {v11, v12, v5}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 267
    .line 268
    .line 269
    move-result-wide v11

    .line 270
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    const/4 v7, 0x1

    .line 275
    goto :goto_5

    .line 276
    :cond_6
    move v7, v8

    .line 277
    const/4 v4, 0x0

    .line 278
    :goto_5
    move-object v9, v3

    .line 279
    check-cast v9, Landroidx/compose/ui/graphics/AndroidPath;

    .line 280
    .line 281
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidPath;->f()Landroidx/compose/ui/geometry/Rect;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    iget v11, v9, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 286
    .line 287
    iget v12, v9, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 288
    .line 289
    iget-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 290
    .line 291
    if-nez v13, :cond_7

    .line 292
    .line 293
    new-instance v13, Landroidx/compose/foundation/BorderCache;

    .line 294
    .line 295
    invoke-direct {v13}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 296
    .line 297
    .line 298
    iput-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 299
    .line 300
    :cond_7
    iget-object v13, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 301
    .line 302
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    move/from16 v26, v5

    .line 306
    .line 307
    iget-object v5, v13, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/AndroidPath;

    .line 308
    .line 309
    if-nez v5, :cond_8

    .line 310
    .line 311
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    iput-object v5, v13, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/AndroidPath;

    .line 316
    .line 317
    :cond_8
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidPath;->i()V

    .line 318
    .line 319
    .line 320
    invoke-static {v5, v9}, Landroidx/compose/ui/graphics/Path;->c(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v5, v3, v8}, Landroidx/compose/ui/graphics/AndroidPath;->h(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 324
    .line 325
    .line 326
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 327
    .line 328
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 329
    .line 330
    .line 331
    iget v13, v9, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 332
    .line 333
    sub-float/2addr v13, v12

    .line 334
    move-wide/from16 v27, v14

    .line 335
    .line 336
    float-to-double v14, v13

    .line 337
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v13

    .line 341
    double-to-float v13, v13

    .line 342
    float-to-int v13, v13

    .line 343
    iget v14, v9, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 344
    .line 345
    sub-float/2addr v14, v11

    .line 346
    float-to-double v14, v14

    .line 347
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 348
    .line 349
    .line 350
    move-result-wide v14

    .line 351
    double-to-float v14, v14

    .line 352
    float-to-int v14, v14

    .line 353
    move-object/from16 v16, v9

    .line 354
    .line 355
    int-to-long v8, v13

    .line 356
    shl-long v8, v8, p1

    .line 357
    .line 358
    int-to-long v13, v14

    .line 359
    and-long v13, v13, v27

    .line 360
    .line 361
    or-long/2addr v8, v13

    .line 362
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iget-object v13, v0, Landroidx/compose/foundation/BorderCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 368
    .line 369
    iget-object v14, v0, Landroidx/compose/foundation/BorderCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 370
    .line 371
    if-eqz v13, :cond_9

    .line 372
    .line 373
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a()I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 378
    .line 379
    invoke-direct {v15, v10}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_9
    const/4 v15, 0x0

    .line 384
    :goto_6
    if-nez v15, :cond_a

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_a
    iget v10, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    .line 388
    .line 389
    if-nez v10, :cond_b

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_b
    :goto_7
    if-eqz v13, :cond_c

    .line 393
    .line 394
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a()I

    .line 395
    .line 396
    .line 397
    move-result v10

    .line 398
    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 399
    .line 400
    invoke-direct {v15, v10}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_c
    const/4 v15, 0x0

    .line 405
    :goto_8
    if-nez v15, :cond_d

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_d
    iget v10, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    .line 409
    .line 410
    if-eq v7, v10, :cond_e

    .line 411
    .line 412
    :goto_9
    const/16 v18, 0x0

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_e
    :goto_a
    const/16 v18, 0x1

    .line 416
    .line 417
    :goto_b
    if-eqz v13, :cond_f

    .line 418
    .line 419
    if-eqz v14, :cond_f

    .line 420
    .line 421
    iget-object v10, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 422
    .line 423
    invoke-interface {v10}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 424
    .line 425
    .line 426
    move-result-wide v20

    .line 427
    move-object v10, v4

    .line 428
    move-object v15, v5

    .line 429
    shr-long v4, v20, p1

    .line 430
    .line 431
    long-to-int v4, v4

    .line 432
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    iget-object v5, v13, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 437
    .line 438
    move-object/from16 v17, v2

    .line 439
    .line 440
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    int-to-float v2, v2

    .line 445
    cmpl-float v2, v4, v2

    .line 446
    .line 447
    if-gtz v2, :cond_10

    .line 448
    .line 449
    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 450
    .line 451
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 452
    .line 453
    .line 454
    move-result-wide v20

    .line 455
    move-object v2, v5

    .line 456
    and-long v4, v20, v27

    .line 457
    .line 458
    long-to-int v4, v4

    .line 459
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    int-to-float v2, v2

    .line 468
    cmpl-float v2, v4, v2

    .line 469
    .line 470
    if-gtz v2, :cond_10

    .line 471
    .line 472
    if-nez v18, :cond_11

    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_f
    move-object/from16 v17, v2

    .line 476
    .line 477
    move-object v10, v4

    .line 478
    move-object v15, v5

    .line 479
    :cond_10
    :goto_c
    shr-long v4, v8, p1

    .line 480
    .line 481
    long-to-int v2, v4

    .line 482
    and-long v4, v8, v27

    .line 483
    .line 484
    long-to-int v4, v4

    .line 485
    invoke-static {v2, v4, v7}, Landroidx/compose/ui/graphics/ImageBitmapKt;->a(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    iput-object v13, v0, Landroidx/compose/foundation/BorderCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 490
    .line 491
    invoke-static {v13}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 492
    .line 493
    .line 494
    move-result-object v14

    .line 495
    iput-object v14, v0, Landroidx/compose/foundation/BorderCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 496
    .line 497
    :cond_11
    iget-object v2, v0, Landroidx/compose/foundation/BorderCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 498
    .line 499
    if-nez v2, :cond_12

    .line 500
    .line 501
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 502
    .line 503
    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 504
    .line 505
    .line 506
    iput-object v2, v0, Landroidx/compose/foundation/BorderCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 507
    .line 508
    :cond_12
    iget-object v4, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 509
    .line 510
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 511
    .line 512
    move-wide/from16 v37, v8

    .line 513
    .line 514
    invoke-static/range {v37 .. v38}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 515
    .line 516
    .line 517
    move-result-wide v7

    .line 518
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 519
    .line 520
    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    iget-object v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 525
    .line 526
    move-object/from16 v29, v2

    .line 527
    .line 528
    iget-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 529
    .line 530
    move-object/from16 p0, v10

    .line 531
    .line 532
    iget-object v10, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 533
    .line 534
    move-object/from16 v40, v2

    .line 535
    .line 536
    move-object/from16 v39, v3

    .line 537
    .line 538
    iget-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 539
    .line 540
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 541
    .line 542
    iput-object v5, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 543
    .line 544
    iput-object v14, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 545
    .line 546
    iput-wide v7, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 547
    .line 548
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 549
    .line 550
    .line 551
    sget-wide v30, Landroidx/compose/ui/graphics/Color;->b:J

    .line 552
    .line 553
    const/16 v35, 0x0

    .line 554
    .line 555
    const/16 v36, 0x3a

    .line 556
    .line 557
    const/16 v34, 0x0

    .line 558
    .line 559
    move-wide/from16 v32, v7

    .line 560
    .line 561
    invoke-static/range {v29 .. v36}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 562
    .line 563
    .line 564
    neg-float v5, v12

    .line 565
    neg-float v7, v11

    .line 566
    iget-object v8, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 567
    .line 568
    invoke-virtual {v8, v5, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 569
    .line 570
    .line 571
    :try_start_0
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 572
    .line 573
    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 574
    .line 575
    const/16 v22, 0x0

    .line 576
    .line 577
    const/16 v23, 0x1e

    .line 578
    .line 579
    const/16 v20, 0x0

    .line 580
    .line 581
    const/16 v21, 0x0

    .line 582
    .line 583
    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 584
    .line 585
    .line 586
    const/16 v25, 0x34

    .line 587
    .line 588
    const/16 v23, 0x0

    .line 589
    .line 590
    move-object/from16 v21, v6

    .line 591
    .line 592
    move-object/from16 v22, v17

    .line 593
    .line 594
    move-object/from16 v24, v18

    .line 595
    .line 596
    move-object/from16 v20, v29

    .line 597
    .line 598
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 599
    .line 600
    .line 601
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 602
    .line 603
    .line 604
    move-result-wide v11

    .line 605
    shr-long v11, v11, p1

    .line 606
    .line 607
    long-to-int v6, v11

    .line 608
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    add-float v6, v6, v26

    .line 613
    .line 614
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 615
    .line 616
    .line 617
    move-result-wide v11

    .line 618
    shr-long v11, v11, p1

    .line 619
    .line 620
    long-to-int v8, v11

    .line 621
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    div-float/2addr v6, v8

    .line 626
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 627
    .line 628
    .line 629
    move-result-wide v11

    .line 630
    and-long v11, v11, v27

    .line 631
    .line 632
    long-to-int v8, v11

    .line 633
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    add-float v8, v8, v26

    .line 638
    .line 639
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 640
    .line 641
    .line 642
    move-result-wide v11

    .line 643
    and-long v11, v11, v27

    .line 644
    .line 645
    long-to-int v11, v11

    .line 646
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 647
    .line 648
    .line 649
    move-result v11

    .line 650
    div-float/2addr v8, v11

    .line 651
    invoke-interface/range {v29 .. v29}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 652
    .line 653
    .line 654
    move-result-wide v11

    .line 655
    move-object/from16 v17, v14

    .line 656
    .line 657
    move-object/from16 v21, v15

    .line 658
    .line 659
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 660
    .line 661
    .line 662
    move-result-wide v14

    .line 663
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 664
    .line 665
    .line 666
    move-result-object v18

    .line 667
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/graphics/Canvas;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    .line 669
    .line 670
    move-object/from16 p1, v1

    .line 671
    .line 672
    :try_start_1
    iget-object v1, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 673
    .line 674
    invoke-virtual {v1, v6, v8, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->b(FFJ)V

    .line 675
    .line 676
    .line 677
    const/16 v24, 0x0

    .line 678
    .line 679
    const/16 v25, 0x1c

    .line 680
    .line 681
    const/16 v23, 0x0

    .line 682
    .line 683
    move-object/from16 v20, v29

    .line 684
    .line 685
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    .line 687
    .line 688
    :try_start_2
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v4, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    .line 697
    .line 698
    iget-object v1, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 699
    .line 700
    neg-float v4, v5

    .line 701
    neg-float v5, v7

    .line 702
    invoke-virtual {v1, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 703
    .line 704
    .line 705
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 706
    .line 707
    .line 708
    iput-object v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 709
    .line 710
    move-object/from16 v1, v40

    .line 711
    .line 712
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 713
    .line 714
    iput-object v10, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 715
    .line 716
    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 717
    .line 718
    iget-object v0, v13, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 719
    .line 720
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 721
    .line 722
    .line 723
    move-object/from16 v0, v39

    .line 724
    .line 725
    iput-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 726
    .line 727
    new-instance v20, Lp4;

    .line 728
    .line 729
    move-object/from16 v25, p0

    .line 730
    .line 731
    move-object/from16 v22, v0

    .line 732
    .line 733
    move-object/from16 v21, v16

    .line 734
    .line 735
    move-wide/from16 v23, v37

    .line 736
    .line 737
    invoke-direct/range {v20 .. v25}, Lp4;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V

    .line 738
    .line 739
    .line 740
    move-object/from16 v1, p1

    .line 741
    .line 742
    move-object/from16 v0, v20

    .line 743
    .line 744
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    goto/16 :goto_11

    .line 749
    .line 750
    :catchall_0
    move-exception v0

    .line 751
    goto :goto_d

    .line 752
    :catchall_1
    move-exception v0

    .line 753
    :try_start_3
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 761
    .line 762
    .line 763
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 764
    :goto_d
    iget-object v1, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 765
    .line 766
    neg-float v2, v5

    .line 767
    neg-float v3, v7

    .line 768
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 769
    .line 770
    .line 771
    throw v0

    .line 772
    :cond_13
    instance-of v5, v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 773
    .line 774
    if-eqz v5, :cond_18

    .line 775
    .line 776
    iget-object v5, v0, Landroidx/compose/foundation/BorderModifierNode;->B:Landroidx/compose/ui/graphics/SolidColor;

    .line 777
    .line 778
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 779
    .line 780
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 781
    .line 782
    invoke-static {v6}, Landroidx/compose/ui/geometry/RoundRectKt;->b(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 783
    .line 784
    .line 785
    move-result v8

    .line 786
    if-eqz v8, :cond_14

    .line 787
    .line 788
    iget-wide v14, v6, Landroidx/compose/ui/geometry/RoundRect;->e:J

    .line 789
    .line 790
    new-instance v19, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 791
    .line 792
    const/4 v12, 0x0

    .line 793
    const/16 v13, 0x1e

    .line 794
    .line 795
    const/4 v10, 0x0

    .line 796
    const/4 v11, 0x0

    .line 797
    move-object/from16 v8, v19

    .line 798
    .line 799
    invoke-direct/range {v8 .. v13}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 800
    .line 801
    .line 802
    new-instance v8, Lo4;

    .line 803
    .line 804
    move v13, v4

    .line 805
    move-object v10, v5

    .line 806
    move-wide v11, v14

    .line 807
    move-wide/from16 v15, v16

    .line 808
    .line 809
    move-wide/from16 v17, v2

    .line 810
    .line 811
    move v14, v9

    .line 812
    move v9, v7

    .line 813
    invoke-direct/range {v8 .. v19}, Lo4;-><init>(ZLandroidx/compose/ui/graphics/SolidColor;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v8}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    goto/16 :goto_11

    .line 821
    .line 822
    :cond_14
    move-object v2, v5

    .line 823
    move v8, v7

    .line 824
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 825
    .line 826
    if-nez v3, :cond_15

    .line 827
    .line 828
    new-instance v3, Landroidx/compose/foundation/BorderCache;

    .line 829
    .line 830
    invoke-direct {v3}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 831
    .line 832
    .line 833
    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 834
    .line 835
    :cond_15
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->z:Landroidx/compose/foundation/BorderCache;

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/AndroidPath;

    .line 841
    .line 842
    if-nez v3, :cond_16

    .line 843
    .line 844
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/AndroidPath;

    .line 849
    .line 850
    :cond_16
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->i()V

    .line 851
    .line 852
    .line 853
    invoke-static {v3, v6}, Landroidx/compose/ui/graphics/Path;->d(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 854
    .line 855
    .line 856
    if-nez v8, :cond_17

    .line 857
    .line 858
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    iget v4, v6, Landroidx/compose/ui/geometry/RoundRect;->c:F

    .line 863
    .line 864
    iget v5, v6, Landroidx/compose/ui/geometry/RoundRect;->a:F

    .line 865
    .line 866
    sub-float/2addr v4, v5

    .line 867
    sub-float v11, v4, v9

    .line 868
    .line 869
    iget v4, v6, Landroidx/compose/ui/geometry/RoundRect;->d:F

    .line 870
    .line 871
    iget v5, v6, Landroidx/compose/ui/geometry/RoundRect;->b:F

    .line 872
    .line 873
    sub-float/2addr v4, v5

    .line 874
    sub-float v12, v4, v9

    .line 875
    .line 876
    iget-wide v4, v6, Landroidx/compose/ui/geometry/RoundRect;->e:J

    .line 877
    .line 878
    invoke-static {v4, v5, v9}, Landroidx/compose/foundation/BorderKt;->a(JF)J

    .line 879
    .line 880
    .line 881
    move-result-wide v13

    .line 882
    iget-wide v4, v6, Landroidx/compose/ui/geometry/RoundRect;->f:J

    .line 883
    .line 884
    invoke-static {v4, v5, v9}, Landroidx/compose/foundation/BorderKt;->a(JF)J

    .line 885
    .line 886
    .line 887
    move-result-wide v15

    .line 888
    iget-wide v4, v6, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 889
    .line 890
    invoke-static {v4, v5, v9}, Landroidx/compose/foundation/BorderKt;->a(JF)J

    .line 891
    .line 892
    .line 893
    move-result-wide v4

    .line 894
    iget-wide v6, v6, Landroidx/compose/ui/geometry/RoundRect;->g:J

    .line 895
    .line 896
    invoke-static {v6, v7, v9}, Landroidx/compose/foundation/BorderKt;->a(JF)J

    .line 897
    .line 898
    .line 899
    move-result-wide v17

    .line 900
    new-instance v8, Landroidx/compose/ui/geometry/RoundRect;

    .line 901
    .line 902
    move v10, v9

    .line 903
    move-wide/from16 v19, v4

    .line 904
    .line 905
    const/4 v4, 0x0

    .line 906
    invoke-direct/range {v8 .. v20}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 907
    .line 908
    .line 909
    invoke-static {v0, v8}, Landroidx/compose/ui/graphics/Path;->d(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v3, v3, v0, v4}, Landroidx/compose/ui/graphics/AndroidPath;->h(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 913
    .line 914
    .line 915
    :cond_17
    new-instance v0, Lb;

    .line 916
    .line 917
    const/4 v4, 0x7

    .line 918
    invoke-direct {v0, v4, v3, v2}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    goto :goto_11

    .line 926
    :cond_18
    move v8, v7

    .line 927
    move-wide/from16 v15, v16

    .line 928
    .line 929
    move-wide/from16 v17, v2

    .line 930
    .line 931
    instance-of v2, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 932
    .line 933
    if-eqz v2, :cond_1c

    .line 934
    .line 935
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->B:Landroidx/compose/ui/graphics/SolidColor;

    .line 936
    .line 937
    if-eqz v8, :cond_19

    .line 938
    .line 939
    const-wide/16 v2, 0x0

    .line 940
    .line 941
    move-wide/from16 v21, v2

    .line 942
    .line 943
    goto :goto_e

    .line 944
    :cond_19
    move-wide/from16 v21, v15

    .line 945
    .line 946
    :goto_e
    if-eqz v8, :cond_1a

    .line 947
    .line 948
    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 949
    .line 950
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 951
    .line 952
    .line 953
    move-result-wide v2

    .line 954
    move-wide/from16 v23, v2

    .line 955
    .line 956
    goto :goto_f

    .line 957
    :cond_1a
    move-wide/from16 v23, v17

    .line 958
    .line 959
    :goto_f
    if-eqz v8, :cond_1b

    .line 960
    .line 961
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 962
    .line 963
    move-object/from16 v25, v2

    .line 964
    .line 965
    goto :goto_10

    .line 966
    :cond_1b
    new-instance v8, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 967
    .line 968
    const/4 v12, 0x0

    .line 969
    const/16 v13, 0x1e

    .line 970
    .line 971
    const/4 v10, 0x0

    .line 972
    const/4 v11, 0x0

    .line 973
    invoke-direct/range {v8 .. v13}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 974
    .line 975
    .line 976
    move-object/from16 v25, v8

    .line 977
    .line 978
    :goto_10
    new-instance v19, Ln4;

    .line 979
    .line 980
    move-object/from16 v20, v0

    .line 981
    .line 982
    invoke-direct/range {v19 .. v25}, Ln4;-><init>(Landroidx/compose/ui/graphics/SolidColor;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 983
    .line 984
    .line 985
    move-object/from16 v0, v19

    .line 986
    .line 987
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    goto :goto_11

    .line 992
    :cond_1c
    invoke-static {}, Lk8;->e()V

    .line 993
    .line 994
    .line 995
    const/4 v3, 0x0

    .line 996
    goto :goto_11

    .line 997
    :cond_1d
    new-instance v0, Lh;

    .line 998
    .line 999
    const/16 v2, 0x17

    .line 1000
    .line 1001
    invoke-direct {v0, v2}, Lh;-><init>(I)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v3

    .line 1008
    :goto_11
    return-object v3

    .line 1009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
