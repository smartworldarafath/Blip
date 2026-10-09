.class public abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 18
    .line 19
    iget-boolean v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-wide v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    if-nez v12, :cond_4

    .line 35
    .line 36
    iget-wide v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t:J

    .line 37
    .line 38
    const/16 v14, 0x20

    .line 39
    .line 40
    shr-long v9, v7, v14

    .line 41
    .line 42
    long-to-int v9, v9

    .line 43
    int-to-float v9, v9

    .line 44
    iget v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 45
    .line 46
    int-to-float v10, v10

    .line 47
    sub-float v10, v9, v10

    .line 48
    .line 49
    const-wide v15, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long/2addr v7, v15

    .line 55
    long-to-int v7, v7

    .line 56
    int-to-float v7, v7

    .line 57
    iget v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 58
    .line 59
    int-to-float v8, v8

    .line 60
    sub-float v8, v7, v8

    .line 61
    .line 62
    move/from16 p0, v14

    .line 63
    .line 64
    move-wide/from16 v17, v15

    .line 65
    .line 66
    iget-wide v14, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    .line 67
    .line 68
    move-wide/from16 v19, v14

    .line 69
    .line 70
    shr-long v13, v19, p0

    .line 71
    .line 72
    long-to-int v11, v13

    .line 73
    int-to-float v11, v11

    .line 74
    add-float/2addr v9, v11

    .line 75
    iget v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->x:I

    .line 76
    .line 77
    int-to-float v11, v11

    .line 78
    add-float/2addr v9, v11

    .line 79
    and-long v13, v19, v17

    .line 80
    .line 81
    long-to-int v11, v13

    .line 82
    int-to-float v11, v11

    .line 83
    add-float/2addr v7, v11

    .line 84
    iget v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->y:I

    .line 85
    .line 86
    int-to-float v11, v11

    .line 87
    add-float/2addr v7, v11

    .line 88
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a()F

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->m()Landroidx/compose/ui/graphics/ColorFilter;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->O()I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const/high16 v15, 0x3f800000    # 1.0f

    .line 101
    .line 102
    cmpg-float v15, v11, v15

    .line 103
    .line 104
    if-ltz v15, :cond_2

    .line 105
    .line 106
    const/4 v15, 0x3

    .line 107
    if-ne v14, v15, :cond_2

    .line 108
    .line 109
    if-nez v13, :cond_2

    .line 110
    .line 111
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->l()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    move-object/from16 v19, v6

    .line 116
    .line 117
    const/4 v6, 0x1

    .line 118
    if-ne v15, v6, :cond_1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->save()I

    .line 122
    .line 123
    .line 124
    move v7, v10

    .line 125
    move-object/from16 v6, v19

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object/from16 v19, v6

    .line 129
    .line 130
    :goto_0
    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->p:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 131
    .line 132
    if-nez v6, :cond_3

    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iput-object v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->p:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 139
    .line 140
    :cond_3
    invoke-virtual {v6, v11}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v14}, Landroidx/compose/ui/graphics/AndroidPaint;->e(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v13}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v6}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->b(Landroidx/compose/ui/graphics/Paint;)Landroid/graphics/Paint;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    move v6, v10

    .line 154
    move v10, v7

    .line 155
    move v7, v6

    .line 156
    move-object/from16 v6, v19

    .line 157
    .line 158
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->J()Landroid/graphics/Matrix;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    iget v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 169
    .line 170
    int-to-float v8, v8

    .line 171
    iget v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 172
    .line 173
    int-to-float v9, v9

    .line 174
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 178
    .line 179
    .line 180
    iget-wide v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 181
    .line 182
    iget v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 183
    .line 184
    int-to-float v9, v9

    .line 185
    iget v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 186
    .line 187
    int-to-float v10, v10

    .line 188
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    int-to-long v13, v9

    .line 193
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    int-to-long v9, v9

    .line 198
    shl-long v13, v13, p0

    .line 199
    .line 200
    and-long v9, v9, v17

    .line 201
    .line 202
    or-long/2addr v9, v13

    .line 203
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v7

    .line 207
    iput-wide v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 208
    .line 209
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->r()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_5

    .line 217
    .line 218
    :try_start_0
    iget-object v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 219
    .line 220
    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b:Landroidx/compose/ui/unit/Density;

    .line 221
    .line 222
    iget-object v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    .line 223
    .line 224
    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e:Lkotlin/jvm/functions/Function1;

    .line 225
    .line 226
    invoke-interface {v7, v8, v9, v0, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->h(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .line 228
    .line 229
    :catchall_0
    :cond_5
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->L()F

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    const/4 v8, 0x0

    .line 234
    cmpl-float v7, v7, v8

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    if-lez v7, :cond_6

    .line 238
    .line 239
    const/4 v7, 0x1

    .line 240
    goto :goto_2

    .line 241
    :cond_6
    move v7, v8

    .line 242
    :goto_2
    if-eqz v7, :cond_7

    .line 243
    .line 244
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->t()V

    .line 245
    .line 246
    .line 247
    :cond_7
    if-nez v12, :cond_8

    .line 248
    .line 249
    iget-boolean v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 250
    .line 251
    if-eqz v9, :cond_8

    .line 252
    .line 253
    const/4 v9, 0x1

    .line 254
    goto :goto_3

    .line 255
    :cond_8
    move v9, v8

    .line 256
    :goto_3
    if-eqz v9, :cond_d

    .line 257
    .line 258
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d()Landroidx/compose/ui/graphics/Outline;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    instance-of v11, v10, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 266
    .line 267
    if-eqz v11, :cond_9

    .line 268
    .line 269
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 270
    .line 271
    iget-object v10, v10, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    .line 272
    .line 273
    invoke-static {v1, v10}, Landroidx/compose/ui/graphics/Canvas;->l(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_9
    instance-of v11, v10, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 278
    .line 279
    if-eqz v11, :cond_b

    .line 280
    .line 281
    iget-object v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->m:Landroidx/compose/ui/graphics/AndroidPath;

    .line 282
    .line 283
    if-eqz v11, :cond_a

    .line 284
    .line 285
    iget-object v13, v11, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 286
    .line 287
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    iput-object v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->m:Landroidx/compose/ui/graphics/AndroidPath;

    .line 296
    .line 297
    :goto_4
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 298
    .line 299
    iget-object v10, v10, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 300
    .line 301
    invoke-static {v11, v10}, Landroidx/compose/ui/graphics/Path;->d(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v1, v11}, Landroidx/compose/ui/graphics/Canvas;->j(Landroidx/compose/ui/graphics/Path;)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_b
    instance-of v11, v10, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 309
    .line 310
    if-eqz v11, :cond_c

    .line 311
    .line 312
    check-cast v10, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 313
    .line 314
    iget-object v10, v10, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 315
    .line 316
    invoke-interface {v1, v10}, Landroidx/compose/ui/graphics/Canvas;->j(Landroidx/compose/ui/graphics/Path;)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_c
    invoke-static {}, Lk8;->e()V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_d
    :goto_5
    if-eqz v2, :cond_13

    .line 325
    .line 326
    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 327
    .line 328
    iget-boolean v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->e:Z

    .line 329
    .line 330
    if-nez v10, :cond_e

    .line 331
    .line 332
    const-string v10, "Only add dependencies during a tracking"

    .line 333
    .line 334
    invoke-static {v10}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_e
    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    .line 338
    .line 339
    const/4 v11, 0x0

    .line 340
    if-eqz v10, :cond_f

    .line 341
    .line 342
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_f
    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 347
    .line 348
    if-eqz v10, :cond_10

    .line 349
    .line 350
    sget-object v10, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 351
    .line 352
    new-instance v10, Landroidx/collection/MutableScatterSet;

    .line 353
    .line 354
    invoke-direct {v10}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 355
    .line 356
    .line 357
    iget-object v13, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 358
    .line 359
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v13}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    iput-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    .line 369
    .line 370
    iput-object v11, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_10
    iput-object v0, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 374
    .line 375
    :goto_6
    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->d:Landroidx/collection/MutableScatterSet;

    .line 376
    .line 377
    if-eqz v10, :cond_11

    .line 378
    .line 379
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterSet;->m(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    const/16 v16, 0x1

    .line 384
    .line 385
    xor-int/lit8 v2, v2, 0x1

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_11
    const/16 v16, 0x1

    .line 389
    .line 390
    iget-object v10, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 391
    .line 392
    if-eq v10, v0, :cond_12

    .line 393
    .line 394
    move/from16 v2, v16

    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_12
    iput-object v11, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 398
    .line 399
    move v2, v8

    .line 400
    :goto_7
    if-eqz v2, :cond_13

    .line 401
    .line 402
    iget v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 403
    .line 404
    add-int/lit8 v2, v2, 0x1

    .line 405
    .line 406
    iput v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 407
    .line 408
    :cond_13
    move-object v2, v1

    .line 409
    check-cast v2, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 410
    .line 411
    iget-object v2, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 412
    .line 413
    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_15

    .line 418
    .line 419
    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 420
    .line 421
    if-nez v2, :cond_14

    .line 422
    .line 423
    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 424
    .line 425
    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 426
    .line 427
    .line 428
    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 429
    .line 430
    :cond_14
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 431
    .line 432
    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b:Landroidx/compose/ui/unit/Density;

    .line 433
    .line 434
    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    .line 435
    .line 436
    iget-wide v13, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    .line 437
    .line 438
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 439
    .line 440
    .line 441
    move-result-wide v13

    .line 442
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 447
    .line 448
    .line 449
    move-result-object v15

    .line 450
    move-object/from16 v19, v6

    .line 451
    .line 452
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    move-wide/from16 v16, v4

    .line 457
    .line 458
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 459
    .line 460
    .line 461
    move-result-wide v4

    .line 462
    move/from16 p0, v7

    .line 463
    .line 464
    iget-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 465
    .line 466
    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 476
    .line 477
    .line 478
    iput-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 479
    .line 480
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 481
    .line 482
    .line 483
    :try_start_1
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 484
    .line 485
    .line 486
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 499
    .line 500
    .line 501
    iput-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 502
    .line 503
    goto :goto_8

    .line 504
    :catchall_1
    move-exception v0

    .line 505
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 518
    .line 519
    .line 520
    iput-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 521
    .line 522
    throw v0

    .line 523
    :cond_15
    move-wide/from16 v16, v4

    .line 524
    .line 525
    move-object/from16 v19, v6

    .line 526
    .line 527
    move/from16 p0, v7

    .line 528
    .line 529
    invoke-interface {v3, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->P(Landroidx/compose/ui/graphics/Canvas;)V

    .line 530
    .line 531
    .line 532
    :goto_8
    if-eqz v9, :cond_16

    .line 533
    .line 534
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 535
    .line 536
    .line 537
    :cond_16
    if-eqz p0, :cond_17

    .line 538
    .line 539
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->h()V

    .line 540
    .line 541
    .line 542
    :cond_17
    if-nez v12, :cond_18

    .line 543
    .line 544
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->restore()V

    .line 545
    .line 546
    .line 547
    :cond_18
    move-wide/from16 v1, v16

    .line 548
    .line 549
    iput-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 550
    .line 551
    return-void
.end method
