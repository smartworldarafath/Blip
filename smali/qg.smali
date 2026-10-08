.class public final synthetic Lqg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqg;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lqg;->j:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide v7, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v0, p1

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 24
    .line 25
    iget v1, v0, Landroidx/compose/animation/core/AnimationVector2D;->a:F

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector2D;->b:F

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-long v1, v1

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    int-to-long v5, v0

    .line 39
    shl-long v0, v1, v4

    .line 40
    .line 41
    and-long v2, v5, v7

    .line 42
    .line 43
    or-long/2addr v0, v2

    .line 44
    new-instance v2, Landroidx/compose/ui/geometry/Size;

    .line 45
    .line 46
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :pswitch_0
    move-object/from16 v0, p1

    .line 51
    .line 52
    check-cast v0, Landroidx/compose/ui/geometry/Size;

    .line 53
    .line 54
    new-instance v1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 55
    .line 56
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Size;->a:J

    .line 57
    .line 58
    shr-long/2addr v2, v4

    .line 59
    long-to-int v2, v2

    .line 60
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-wide v3, v0, Landroidx/compose/ui/geometry/Size;->a:J

    .line 65
    .line 66
    and-long/2addr v3, v7

    .line 67
    long-to-int v0, v3

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-direct {v1, v2, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :pswitch_1
    move-object/from16 v0, p1

    .line 77
    .line 78
    check-cast v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 79
    .line 80
    iget v1, v0, Landroidx/compose/animation/core/AnimationVector2D;->a:F

    .line 81
    .line 82
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector2D;->b:F

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    int-to-long v1, v1

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v5, v0

    .line 94
    shl-long v0, v1, v4

    .line 95
    .line 96
    and-long v2, v5, v7

    .line 97
    .line 98
    or-long/2addr v0, v2

    .line 99
    new-instance v2, Landroidx/compose/ui/unit/DpOffset;

    .line 100
    .line 101
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :pswitch_2
    move-object/from16 v0, p1

    .line 106
    .line 107
    check-cast v0, Landroidx/compose/ui/unit/DpOffset;

    .line 108
    .line 109
    new-instance v1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 110
    .line 111
    iget-wide v2, v0, Landroidx/compose/ui/unit/DpOffset;->a:J

    .line 112
    .line 113
    shr-long/2addr v2, v4

    .line 114
    long-to-int v2, v2

    .line 115
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget-wide v3, v0, Landroidx/compose/ui/unit/DpOffset;->a:J

    .line 120
    .line 121
    and-long/2addr v3, v7

    .line 122
    long-to-int v0, v3

    .line 123
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-direct {v1, v2, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_3
    move-object/from16 v0, p1

    .line 132
    .line 133
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 134
    .line 135
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    .line 136
    .line 137
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :pswitch_4
    move-object/from16 v0, p1

    .line 144
    .line 145
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 146
    .line 147
    new-instance v1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 148
    .line 149
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->j:F

    .line 150
    .line 151
    invoke-direct {v1, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :pswitch_5
    move-object/from16 v0, p1

    .line 156
    .line 157
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 158
    .line 159
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    .line 160
    .line 161
    float-to-int v0, v0

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0

    .line 167
    :pswitch_6
    move-object/from16 v0, p1

    .line 168
    .line 169
    check-cast v0, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    new-instance v1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 176
    .line 177
    int-to-float v0, v0

    .line 178
    invoke-direct {v1, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 179
    .line 180
    .line 181
    return-object v1

    .line 182
    :pswitch_7
    move-object/from16 v0, p1

    .line 183
    .line 184
    check-cast v0, Ljava/lang/Float;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    new-instance v1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :pswitch_8
    move-object/from16 v0, p1

    .line 197
    .line 198
    check-cast v0, Lkotlin/Pair;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v1, Ljava/lang/String;

    .line 206
    .line 207
    iget-object v0, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 208
    .line 209
    if-nez v0, :cond_0

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const/16 v1, 0x3d

    .line 225
    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 237
    :pswitch_9
    move-object/from16 v0, p1

    .line 238
    .line 239
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 245
    .line 246
    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    :goto_1
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_1

    .line 254
    .line 255
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 256
    .line 257
    .line 258
    move-result-wide v2

    .line 259
    long-to-int v2, v2

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_1
    invoke-static {v1}, Lkotlin/collections/SetsKt;->a(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    return-object v0

    .line 273
    :pswitch_a
    move-object/from16 v0, p1

    .line 274
    .line 275
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 276
    .line 277
    iget-wide v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 278
    .line 279
    iget-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState;->h:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 280
    .line 281
    if-eqz v4, :cond_2

    .line 282
    .line 283
    sget-object v5, Landroidx/compose/animation/core/TransitionKt;->a:Lqg;

    .line 284
    .line 285
    iget-object v7, v0, Landroidx/compose/animation/core/SeekableTransitionState;->g:Lkb;

    .line 286
    .line 287
    invoke-virtual {v4, v0, v5, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 288
    .line 289
    .line 290
    :cond_2
    iget-wide v4, v0, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 291
    .line 292
    cmp-long v1, v1, v4

    .line 293
    .line 294
    if-eqz v1, :cond_5

    .line 295
    .line 296
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->o:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 297
    .line 298
    if-eqz v1, :cond_4

    .line 299
    .line 300
    iget-wide v7, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    .line 301
    .line 302
    cmp-long v2, v7, v4

    .line 303
    .line 304
    if-lez v2, :cond_3

    .line 305
    .line 306
    invoke-virtual {v0}, Landroidx/compose/animation/core/SeekableTransitionState;->l()V

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_3
    iput-wide v4, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    .line 311
    .line 312
    iget-object v2, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 313
    .line 314
    if-nez v2, :cond_5

    .line 315
    .line 316
    iget-object v2, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->e:Landroidx/compose/animation/core/AnimationVector1D;

    .line 317
    .line 318
    invoke-virtual {v2, v6}, Landroidx/compose/animation/core/AnimationVector1D;->a(I)F

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    float-to-double v4, v2

    .line 323
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 324
    .line 325
    sub-double/2addr v6, v4

    .line 326
    iget-wide v4, v0, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 327
    .line 328
    long-to-double v4, v4

    .line 329
    mul-double/2addr v6, v4

    .line 330
    invoke-static {v6, v7}, Lkotlin/math/MathKt;->c(D)J

    .line 331
    .line 332
    .line 333
    move-result-wide v4

    .line 334
    iput-wide v4, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->h:J

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_4
    const-wide/16 v1, 0x0

    .line 338
    .line 339
    cmp-long v1, v4, v1

    .line 340
    .line 341
    if-eqz v1, :cond_5

    .line 342
    .line 343
    invoke-virtual {v0}, Landroidx/compose/animation/core/SeekableTransitionState;->p()V

    .line 344
    .line 345
    .line 346
    :cond_5
    :goto_2
    return-object v3

    .line 347
    :pswitch_b
    move-object/from16 v0, p1

    .line 348
    .line 349
    check-cast v0, Ljava/util/List;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    new-instance v1, Ljava/util/ArrayList;

    .line 355
    .line 356
    const/16 v2, 0xa

    .line 357
    .line 358
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_6

    .line 374
    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lnet/blip/libblip/frontend/Transfer;

    .line 380
    .line 381
    iget-object v2, v2, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_6
    return-object v1

    .line 388
    :pswitch_c
    move-object/from16 v0, p1

    .line 389
    .line 390
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    const/4 v0, 0x3

    .line 396
    invoke-static {v5, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-static {v5, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v1, v0}, Landroidx/compose/animation/AnimatedContentKt;->d(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    return-object v0

    .line 409
    :pswitch_d
    move-object/from16 v0, p1

    .line 410
    .line 411
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 417
    .line 418
    return-object v0

    .line 419
    :pswitch_e
    move-object/from16 v0, p1

    .line 420
    .line 421
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;->a()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->a(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v0

    .line 434
    new-instance v2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 435
    .line 436
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 437
    .line 438
    .line 439
    return-object v2

    .line 440
    :pswitch_f
    move-object/from16 v0, p1

    .line 441
    .line 442
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;->a()I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->a(I)J

    .line 452
    .line 453
    .line 454
    move-result-wide v0

    .line 455
    new-instance v2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 456
    .line 457
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 458
    .line 459
    .line 460
    return-object v2

    .line 461
    :pswitch_10
    move-object/from16 v0, p1

    .line 462
    .line 463
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 464
    .line 465
    if-eqz v0, :cond_7

    .line 466
    .line 467
    iget v1, v0, Lnet/blip/libblip/frontend/Transfer;->o:I

    .line 468
    .line 469
    if-nez v1, :cond_7

    .line 470
    .line 471
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eq v0, v2, :cond_8

    .line 478
    .line 479
    const/4 v1, 0x2

    .line 480
    if-eq v0, v1, :cond_8

    .line 481
    .line 482
    :cond_7
    move v2, v6

    .line 483
    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    return-object v0

    .line 488
    :pswitch_11
    move-object/from16 v0, p1

    .line 489
    .line 490
    check-cast v0, Landroidx/sqlite/SQLiteStatement;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    return-object v0

    .line 504
    :pswitch_12
    move-object/from16 v0, p1

    .line 505
    .line 506
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 507
    .line 508
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 509
    .line 510
    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    return-object v3

    .line 514
    :pswitch_13
    move-object/from16 v0, p1

    .line 515
    .line 516
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 517
    .line 518
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 519
    .line 520
    instance-of v2, v1, Landroidx/compose/ui/text/LinkAnnotation;

    .line 521
    .line 522
    if-eqz v2, :cond_c

    .line 523
    .line 524
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation;

    .line 525
    .line 526
    invoke-virtual {v1}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    if-eqz v1, :cond_c

    .line 531
    .line 532
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 533
    .line 534
    if-nez v2, :cond_9

    .line 535
    .line 536
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->b:Landroidx/compose/ui/text/SpanStyle;

    .line 537
    .line 538
    if-nez v2, :cond_9

    .line 539
    .line 540
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->c:Landroidx/compose/ui/text/SpanStyle;

    .line 541
    .line 542
    if-nez v2, :cond_9

    .line 543
    .line 544
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->d:Landroidx/compose/ui/text/SpanStyle;

    .line 545
    .line 546
    if-nez v1, :cond_9

    .line 547
    .line 548
    goto :goto_4

    .line 549
    :cond_9
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 550
    .line 551
    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation;

    .line 557
    .line 558
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->a()Landroidx/compose/ui/text/TextLinkStyles;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    if-eqz v2, :cond_a

    .line 563
    .line 564
    iget-object v2, v2, Landroidx/compose/ui/text/TextLinkStyles;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 565
    .line 566
    if-nez v2, :cond_b

    .line 567
    .line 568
    :cond_a
    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    .line 569
    .line 570
    const/16 v21, 0x0

    .line 571
    .line 572
    const v22, 0xffff

    .line 573
    .line 574
    .line 575
    const-wide/16 v4, 0x0

    .line 576
    .line 577
    const-wide/16 v6, 0x0

    .line 578
    .line 579
    const/4 v8, 0x0

    .line 580
    const/4 v9, 0x0

    .line 581
    const/4 v10, 0x0

    .line 582
    const/4 v11, 0x0

    .line 583
    const/4 v12, 0x0

    .line 584
    const-wide/16 v13, 0x0

    .line 585
    .line 586
    const/4 v15, 0x0

    .line 587
    const/16 v16, 0x0

    .line 588
    .line 589
    const/16 v17, 0x0

    .line 590
    .line 591
    const-wide/16 v18, 0x0

    .line 592
    .line 593
    const/16 v20, 0x0

    .line 594
    .line 595
    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 596
    .line 597
    .line 598
    move-object v2, v3

    .line 599
    :cond_b
    iget v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 600
    .line 601
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 602
    .line 603
    invoke-direct {v1, v3, v4, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    filled-new-array {v0, v1}, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    goto :goto_5

    .line 615
    :cond_c
    :goto_4
    filled-new-array {v0}, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    :goto_5
    return-object v0

    .line 624
    :pswitch_14
    move-object/from16 v0, p1

    .line 625
    .line 626
    check-cast v0, Ljava/util/List;

    .line 627
    .line 628
    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 629
    .line 630
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    check-cast v2, Ljava/lang/Boolean;

    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    if-eqz v2, :cond_d

    .line 644
    .line 645
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 646
    .line 647
    goto :goto_6

    .line 648
    :cond_d
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 649
    .line 650
    :goto_6
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    check-cast v0, Ljava/lang/Float;

    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 664
    .line 665
    .line 666
    return-object v1

    .line 667
    :pswitch_15
    move-object/from16 v0, p1

    .line 668
    .line 669
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 670
    .line 671
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->a()Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    if-eqz v1, :cond_e

    .line 676
    .line 677
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 682
    .line 683
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 684
    .line 685
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 686
    .line 687
    and-long/2addr v2, v7

    .line 688
    long-to-int v0, v2

    .line 689
    sub-int/2addr v1, v0

    .line 690
    invoke-direct {v5, v6, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 691
    .line 692
    .line 693
    :cond_e
    return-object v5

    .line 694
    :pswitch_16
    move-object/from16 v0, p1

    .line 695
    .line 696
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 697
    .line 698
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->b()Ljava/lang/Integer;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    if-eqz v1, :cond_f

    .line 703
    .line 704
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 709
    .line 710
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 711
    .line 712
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 713
    .line 714
    and-long/2addr v2, v7

    .line 715
    long-to-int v0, v2

    .line 716
    sub-int/2addr v0, v1

    .line 717
    invoke-direct {v5, v0, v6}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 718
    .line 719
    .line 720
    :cond_f
    return-object v5

    .line 721
    :pswitch_17
    move-object/from16 v0, p1

    .line 722
    .line 723
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 724
    .line 725
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->c()Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    if-eqz v1, :cond_10

    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 736
    .line 737
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 738
    .line 739
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 740
    .line 741
    and-long/2addr v2, v7

    .line 742
    long-to-int v0, v2

    .line 743
    sub-int/2addr v1, v0

    .line 744
    invoke-direct {v5, v6, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 745
    .line 746
    .line 747
    :cond_10
    return-object v5

    .line 748
    :pswitch_18
    move-object/from16 v0, p1

    .line 749
    .line 750
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 751
    .line 752
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->d()Ljava/lang/Integer;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    if-eqz v1, :cond_11

    .line 757
    .line 758
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 763
    .line 764
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 765
    .line 766
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 767
    .line 768
    and-long/2addr v2, v7

    .line 769
    long-to-int v0, v2

    .line 770
    sub-int/2addr v0, v1

    .line 771
    invoke-direct {v5, v0, v6}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 772
    .line 773
    .line 774
    :cond_11
    return-object v5

    .line 775
    :pswitch_19
    move-object/from16 v0, p1

    .line 776
    .line 777
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 778
    .line 779
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 780
    .line 781
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 782
    .line 783
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 784
    .line 785
    sget v9, Landroidx/compose/ui/text/TextRange;->c:I

    .line 786
    .line 787
    and-long/2addr v3, v7

    .line 788
    long-to-int v3, v3

    .line 789
    invoke-static {v3, v2}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->a(ILjava/lang/String;)I

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-eq v2, v1, :cond_12

    .line 794
    .line 795
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 796
    .line 797
    iget-wide v0, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 798
    .line 799
    and-long/2addr v0, v7

    .line 800
    long-to-int v0, v0

    .line 801
    sub-int/2addr v2, v0

    .line 802
    invoke-direct {v5, v6, v2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 803
    .line 804
    .line 805
    :cond_12
    return-object v5

    .line 806
    :pswitch_1a
    move-object/from16 v0, p1

    .line 807
    .line 808
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 809
    .line 810
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 811
    .line 812
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 813
    .line 814
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 815
    .line 816
    sget v9, Landroidx/compose/ui/text/TextRange;->c:I

    .line 817
    .line 818
    and-long/2addr v3, v7

    .line 819
    long-to-int v3, v3

    .line 820
    if-gtz v3, :cond_13

    .line 821
    .line 822
    :goto_7
    move v2, v1

    .line 823
    goto :goto_8

    .line 824
    :cond_13
    invoke-static {}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->c()Landroidx/emoji2/text/EmojiCompat;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    if-nez v4, :cond_15

    .line 829
    .line 830
    if-gtz v3, :cond_14

    .line 831
    .line 832
    goto :goto_7

    .line 833
    :cond_14
    invoke-static {v2, v3, v1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    goto :goto_8

    .line 838
    :cond_15
    add-int/lit8 v9, v3, -0x1

    .line 839
    .line 840
    invoke-virtual {v4, v2, v9}, Landroidx/emoji2/text/EmojiCompat;->c(Ljava/lang/CharSequence;I)I

    .line 841
    .line 842
    .line 843
    move-result v4

    .line 844
    if-gez v4, :cond_17

    .line 845
    .line 846
    if-gtz v3, :cond_16

    .line 847
    .line 848
    goto :goto_7

    .line 849
    :cond_16
    invoke-static {v2, v3, v1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 850
    .line 851
    .line 852
    move-result v2

    .line 853
    goto :goto_8

    .line 854
    :cond_17
    move v2, v4

    .line 855
    :goto_8
    if-ne v2, v1, :cond_18

    .line 856
    .line 857
    goto :goto_9

    .line 858
    :cond_18
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 859
    .line 860
    iget-wide v0, v0, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 861
    .line 862
    and-long/2addr v0, v7

    .line 863
    long-to-int v0, v0

    .line 864
    sub-int/2addr v0, v2

    .line 865
    invoke-direct {v5, v0, v6}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 866
    .line 867
    .line 868
    :goto_9
    return-object v5

    .line 869
    :pswitch_1b
    move-object/from16 v0, p1

    .line 870
    .line 871
    check-cast v0, Ljava/lang/Integer;

    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 874
    .line 875
    .line 876
    sget-object v0, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a:Ljava/lang/String;

    .line 877
    .line 878
    return-object v0

    .line 879
    :pswitch_1c
    move-object/from16 v0, p1

    .line 880
    .line 881
    check-cast v0, Ljava/lang/Float;

    .line 882
    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    return-object v3

    .line 887
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
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
