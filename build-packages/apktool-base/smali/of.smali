.class public final synthetic Lof;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:Landroidx/compose/runtime/MutableState;

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lof;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Lof;->k:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput p3, p0, Lof;->l:F

    .line 9
    .line 10
    iput p4, p0, Lof;->m:F

    .line 11
    .line 12
    iput-object p5, p0, Lof;->n:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    iput-object p6, p0, Lof;->o:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lof;->p:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    iput-object p8, p0, Lof;->q:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide v11, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v3, v11

    .line 30
    long-to-int v3, v3

    .line 31
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, v0, Lof;->j:F

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-long v5, v5

    .line 42
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-long v7, v3

    .line 47
    const/16 v13, 0x20

    .line 48
    .line 49
    shl-long/2addr v5, v13

    .line 50
    and-long/2addr v7, v11

    .line 51
    or-long/2addr v5, v7

    .line 52
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    shr-long/2addr v7, v13

    .line 57
    long-to-int v3, v7

    .line 58
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-float/2addr v3, v4

    .line 63
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    and-long/2addr v7, v11

    .line 68
    long-to-int v4, v7

    .line 69
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-long v7, v3

    .line 78
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    int-to-long v3, v3

    .line 83
    shl-long/2addr v7, v13

    .line 84
    and-long/2addr v3, v11

    .line 85
    or-long/2addr v3, v7

    .line 86
    move-wide v7, v5

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    move-wide v5, v3

    .line 90
    :cond_1
    if-eqz v2, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-wide v7, v3

    .line 94
    :goto_1
    iget-object v2, v0, Lof;->k:Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 101
    .line 102
    iget-wide v3, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 103
    .line 104
    iget v2, v0, Lof;->l:F

    .line 105
    .line 106
    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->v(FJJJ)V

    .line 107
    .line 108
    .line 109
    move-wide v14, v5

    .line 110
    move-wide/from16 v16, v7

    .line 111
    .line 112
    shr-long v3, v14, v13

    .line 113
    .line 114
    long-to-int v3, v3

    .line 115
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    shr-long v5, v16, v13

    .line 120
    .line 121
    long-to-int v5, v5

    .line 122
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    sub-float/2addr v6, v7

    .line 131
    iget v7, v0, Lof;->m:F

    .line 132
    .line 133
    mul-float/2addr v6, v7

    .line 134
    add-float/2addr v6, v4

    .line 135
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 136
    .line 137
    .line 138
    move-result-wide v18

    .line 139
    and-long v9, v18, v11

    .line 140
    .line 141
    long-to-int v4, v9

    .line 142
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    int-to-long v8, v6

    .line 151
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    move-wide/from16 v18, v11

    .line 156
    .line 157
    int-to-long v11, v4

    .line 158
    shl-long/2addr v8, v13

    .line 159
    and-long v10, v11, v18

    .line 160
    .line 161
    or-long/2addr v8, v10

    .line 162
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    sub-float/2addr v5, v3

    .line 175
    const/4 v10, 0x0

    .line 176
    mul-float/2addr v5, v10

    .line 177
    add-float/2addr v5, v4

    .line 178
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    and-long v3, v3, v18

    .line 183
    .line 184
    long-to-int v3, v3

    .line 185
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    int-to-long v4, v4

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    int-to-long v11, v3

    .line 199
    shl-long v3, v4, v13

    .line 200
    .line 201
    and-long v5, v11, v18

    .line 202
    .line 203
    or-long/2addr v5, v3

    .line 204
    iget-object v3, v0, Lof;->n:Landroidx/compose/runtime/MutableState;

    .line 205
    .line 206
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 211
    .line 212
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 213
    .line 214
    move-wide/from16 v22, v8

    .line 215
    .line 216
    move v9, v7

    .line 217
    move-wide/from16 v7, v22

    .line 218
    .line 219
    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->v(FJJJ)V

    .line 220
    .line 221
    .line 222
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v4, v0, Lof;->o:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_6

    .line 238
    .line 239
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    move-object v6, v5

    .line 244
    check-cast v6, Ljava/lang/Number;

    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    cmpl-float v7, v6, v9

    .line 251
    .line 252
    if-gtz v7, :cond_4

    .line 253
    .line 254
    cmpg-float v6, v6, v10

    .line 255
    .line 256
    if-gez v6, :cond_3

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_3
    const/4 v6, 0x0

    .line 260
    goto :goto_4

    .line 261
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 262
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-nez v7, :cond_5

    .line 271
    .line 272
    new-instance v7, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_9

    .line 299
    .line 300
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    check-cast v4, Ljava/util/Map$Entry;

    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    check-cast v5, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Ljava/util/List;

    .line 321
    .line 322
    new-instance v6, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    const/4 v8, 0x0

    .line 336
    :goto_6
    if-ge v8, v7, :cond_7

    .line 337
    .line 338
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    check-cast v9, Ljava/lang/Number;

    .line 343
    .line 344
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    shr-long v10, v14, v13

    .line 349
    .line 350
    long-to-int v10, v10

    .line 351
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    shr-long v11, v16, v13

    .line 356
    .line 357
    long-to-int v11, v11

    .line 358
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    invoke-static {v10, v11, v9}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    and-long v11, v14, v18

    .line 367
    .line 368
    long-to-int v11, v11

    .line 369
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    move v12, v13

    .line 374
    move-wide/from16 v20, v14

    .line 375
    .line 376
    and-long v13, v16, v18

    .line 377
    .line 378
    long-to-int v13, v13

    .line 379
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    invoke-static {v11, v13, v9}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    int-to-long v10, v10

    .line 392
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    int-to-long v13, v9

    .line 397
    shl-long v9, v10, v12

    .line 398
    .line 399
    and-long v13, v13, v18

    .line 400
    .line 401
    or-long/2addr v9, v13

    .line 402
    shr-long/2addr v9, v12

    .line 403
    long-to-int v9, v9

    .line 404
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 409
    .line 410
    .line 411
    move-result-wide v10

    .line 412
    and-long v10, v10, v18

    .line 413
    .line 414
    long-to-int v10, v10

    .line 415
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    int-to-long v13, v9

    .line 424
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 425
    .line 426
    .line 427
    move-result v9

    .line 428
    int-to-long v9, v9

    .line 429
    shl-long/2addr v13, v12

    .line 430
    and-long v9, v9, v18

    .line 431
    .line 432
    or-long/2addr v9, v13

    .line 433
    new-instance v11, Landroidx/compose/ui/geometry/Offset;

    .line 434
    .line 435
    invoke-direct {v11, v9, v10}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    add-int/lit8 v8, v8, 0x1

    .line 442
    .line 443
    move v13, v12

    .line 444
    move-wide/from16 v14, v20

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_7
    move v12, v13

    .line 448
    move-wide/from16 v20, v14

    .line 449
    .line 450
    if-eqz v5, :cond_8

    .line 451
    .line 452
    iget-object v4, v0, Lof;->p:Landroidx/compose/runtime/MutableState;

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_8
    iget-object v4, v0, Lof;->q:Landroidx/compose/runtime/MutableState;

    .line 456
    .line 457
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 462
    .line 463
    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->a:J

    .line 464
    .line 465
    invoke-interface {v1, v6, v4, v5, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(Ljava/util/ArrayList;JF)V

    .line 466
    .line 467
    .line 468
    move v13, v12

    .line 469
    move-wide/from16 v14, v20

    .line 470
    .line 471
    goto/16 :goto_5

    .line 472
    .line 473
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 474
    .line 475
    return-object v0
.end method
