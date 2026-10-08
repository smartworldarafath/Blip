.class public abstract Lnet/blip/android/ui/gallery/ZoomableImageKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcoil3/compose/AsyncImagePainter;FZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    move-object/from16 v13, p5

    .line 4
    .line 5
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x6a8937cb

    .line 8
    .line 9
    .line 10
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p1

    .line 14
    .line 15
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x10

    .line 25
    .line 26
    :goto_0
    or-int v0, p6, v0

    .line 27
    .line 28
    or-int/lit16 v0, v0, 0xd80

    .line 29
    .line 30
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x4000

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    move v3, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v3, 0x2000

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v3

    .line 43
    and-int/lit16 v3, v0, 0x2493

    .line 44
    .line 45
    const/16 v6, 0x2492

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/16 v16, 0x1

    .line 49
    .line 50
    if-eq v3, v6, :cond_2

    .line 51
    .line 52
    move/from16 v3, v16

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v3, v7

    .line 56
    :goto_2
    and-int/lit8 v6, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {v13, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_10

    .line 63
    .line 64
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 69
    .line 70
    if-ne v3, v6, :cond_3

    .line 71
    .line 72
    invoke-static {v13}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .line 81
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const/high16 v9, 0x3f800000    # 1.0f

    .line 86
    .line 87
    if-ne v8, v6, :cond_4

    .line 88
    .line 89
    invoke-static {v9}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    check-cast v8, Landroidx/compose/animation/core/Animatable;

    .line 97
    .line 98
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    const/4 v11, 0x0

    .line 103
    if-ne v10, v6, :cond_5

    .line 104
    .line 105
    invoke-static {v11}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    check-cast v10, Landroidx/compose/animation/core/Animatable;

    .line 113
    .line 114
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    if-ne v12, v6, :cond_6

    .line 119
    .line 120
    invoke-static {v11}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    check-cast v12, Landroidx/compose/animation/core/Animatable;

    .line 128
    .line 129
    invoke-virtual {v2}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 130
    .line 131
    .line 132
    move-result-wide v14

    .line 133
    const/16 p5, 0x20

    .line 134
    .line 135
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    int-to-long v1, v1

    .line 151
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    const-wide p2, 0xffffffffL

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    int-to-long v14, v9

    .line 161
    shl-long v1, v1, p5

    .line 162
    .line 163
    and-long v14, v14, p2

    .line 164
    .line 165
    or-long/2addr v1, v14

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    const-wide p2, 0xffffffffL

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    :goto_3
    invoke-static {v1, v2}, Lnet/blip/shared/GeometryKt;->a(J)J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    new-instance v9, Landroid/util/Size;

    .line 181
    .line 182
    shr-long v14, v1, p5

    .line 183
    .line 184
    long-to-int v11, v14

    .line 185
    and-long v1, v1, p2

    .line 186
    .line 187
    long-to-int v1, v1

    .line 188
    invoke-direct {v9, v11, v1}, Landroid/util/Size;-><init>(II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-ne v1, v6, :cond_8

    .line 196
    .line 197
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 207
    .line 208
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    const v11, 0xe000

    .line 218
    .line 219
    .line 220
    and-int/2addr v11, v0

    .line 221
    if-ne v11, v4, :cond_9

    .line 222
    .line 223
    move/from16 v7, v16

    .line 224
    .line 225
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-nez v7, :cond_a

    .line 230
    .line 231
    if-ne v4, v6, :cond_b

    .line 232
    .line 233
    :cond_a
    new-instance v4, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$2$1;

    .line 234
    .line 235
    const/4 v7, 0x0

    .line 236
    invoke-direct {v4, v5, v1, v7}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$2$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 243
    .line 244
    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    or-int/2addr v2, v4

    .line 256
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    or-int/2addr v2, v4

    .line 261
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    or-int/2addr v2, v4

    .line 266
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    or-int/2addr v2, v4

    .line 271
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    const/high16 v22, 0x41000000    # 8.0f

    .line 276
    .line 277
    if-nez v2, :cond_d

    .line 278
    .line 279
    if-ne v4, v6, :cond_c

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_c
    move-object v1, v9

    .line 283
    goto :goto_5

    .line 284
    :cond_d
    :goto_4
    new-instance v17, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;

    .line 285
    .line 286
    move-object/from16 v24, v1

    .line 287
    .line 288
    move-object/from16 v23, v3

    .line 289
    .line 290
    move-object/from16 v21, v8

    .line 291
    .line 292
    move-object/from16 v18, v9

    .line 293
    .line 294
    move-object/from16 v19, v10

    .line 295
    .line 296
    move-object/from16 v20, v12

    .line 297
    .line 298
    invoke-direct/range {v17 .. v24}, Lnet/blip/android/ui/gallery/ZoomableImageKt$ZoomableImage$3$1;-><init>(Landroid/util/Size;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v4, v17

    .line 302
    .line 303
    move-object/from16 v1, v18

    .line 304
    .line 305
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :goto_5
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 309
    .line 310
    move-object/from16 v2, p0

    .line 311
    .line 312
    invoke-static {v2, v1, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    or-int/2addr v3, v4

    .line 329
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    or-int/2addr v3, v4

    .line 334
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    if-nez v3, :cond_e

    .line 339
    .line 340
    if-ne v4, v6, :cond_f

    .line 341
    .line 342
    :cond_e
    new-instance v4, Lp2;

    .line 343
    .line 344
    const/16 v3, 0x13

    .line 345
    .line 346
    invoke-direct {v4, v8, v10, v12, v3}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 353
    .line 354
    invoke-static {v1, v4}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    shr-int/lit8 v0, v0, 0x3

    .line 359
    .line 360
    and-int/lit8 v0, v0, 0xe

    .line 361
    .line 362
    const/16 v1, 0x6c38

    .line 363
    .line 364
    or-int v14, v1, v0

    .line 365
    .line 366
    const/16 v15, 0x60

    .line 367
    .line 368
    const/4 v7, 0x0

    .line 369
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 370
    .line 371
    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 372
    .line 373
    const/4 v11, 0x0

    .line 374
    const/4 v12, 0x0

    .line 375
    move-object/from16 v6, p1

    .line 376
    .line 377
    invoke-static/range {v6 .. v15}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 378
    .line 379
    .line 380
    move/from16 v4, v16

    .line 381
    .line 382
    move/from16 v3, v22

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_10
    move-object/from16 v2, p0

    .line 386
    .line 387
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 388
    .line 389
    .line 390
    move/from16 v3, p2

    .line 391
    .line 392
    move/from16 v4, p3

    .line 393
    .line 394
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    if-eqz v7, :cond_11

    .line 399
    .line 400
    new-instance v0, Lyi;

    .line 401
    .line 402
    move/from16 v6, p6

    .line 403
    .line 404
    move-object v1, v2

    .line 405
    move-object/from16 v2, p1

    .line 406
    .line 407
    invoke-direct/range {v0 .. v6}, Lyi;-><init>(Landroidx/compose/ui/Modifier;Lcoil3/compose/AsyncImagePainter;FZLkotlin/jvm/functions/Function0;I)V

    .line 408
    .line 409
    .line 410
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 411
    .line 412
    :cond_11
    return-void
.end method
