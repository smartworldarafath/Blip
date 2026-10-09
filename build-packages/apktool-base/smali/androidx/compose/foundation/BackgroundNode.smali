.class final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public A:Landroidx/compose/ui/graphics/Shape;

.field public B:J

.field public C:Landroidx/compose/ui/unit/LayoutDirection;

.field public D:Landroidx/compose/ui/graphics/Outline;

.field public E:Landroidx/compose/ui/graphics/Shape;

.field public F:Landroidx/compose/ui/graphics/Outline;

.field public x:J

.field public y:Landroidx/compose/ui/graphics/Brush;

.field public z:F


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode;->A:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/graphics/Shape;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->A:Landroidx/compose/ui/graphics/Shape;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 10
    .line 11
    if-ne v3, v4, :cond_2

    .line 12
    .line 13
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->x:J

    .line 14
    .line 15
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->h:J

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->x:J

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/16 v8, 0x7e

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->y:Landroidx/compose/ui/graphics/Brush;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget v6, v0, Landroidx/compose/foundation/BackgroundNode;->z:F

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/16 v8, 0x76

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    move-object/from16 v0, p1

    .line 48
    .line 49
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 50
    .line 51
    .line 52
    move-object v1, v0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    move-object/from16 v1, p1

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_2
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    iget-wide v5, v0, Landroidx/compose/foundation/BackgroundNode;->B:J

    .line 64
    .line 65
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->C:Landroidx/compose/ui/unit/LayoutDirection;

    .line 76
    .line 77
    if-ne v3, v4, :cond_3

    .line 78
    .line 79
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->E:Landroidx/compose/ui/graphics/Shape;

    .line 80
    .line 81
    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->A:Landroidx/compose/ui/graphics/Shape;

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->D:Landroidx/compose/ui/graphics/Outline;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    :goto_0
    move-object v12, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v3, Landroidx/compose/foundation/a;

    .line 97
    .line 98
    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/a;-><init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/node/LayoutNodeDrawScope;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v3}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->F:Landroidx/compose/ui/graphics/Outline;

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->F:Landroidx/compose/ui/graphics/Outline;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_1
    iput-object v12, v0, Landroidx/compose/foundation/BackgroundNode;->D:Landroidx/compose/ui/graphics/Outline;

    .line 111
    .line 112
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    iput-wide v3, v0, Landroidx/compose/foundation/BackgroundNode;->B:J

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->C:Landroidx/compose/ui/unit/LayoutDirection;

    .line 123
    .line 124
    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->A:Landroidx/compose/ui/graphics/Shape;

    .line 125
    .line 126
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->E:Landroidx/compose/ui/graphics/Shape;

    .line 127
    .line 128
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-wide v3, v0, Landroidx/compose/foundation/BackgroundNode;->x:J

    .line 132
    .line 133
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->h:J

    .line 134
    .line 135
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    const/16 v13, 0x20

    .line 140
    .line 141
    const-wide v14, 0xffffffffL

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 147
    .line 148
    if-nez v3, :cond_8

    .line 149
    .line 150
    move-object v1, v2

    .line 151
    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->x:J

    .line 152
    .line 153
    instance-of v5, v12, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 154
    .line 155
    if-eqz v5, :cond_4

    .line 156
    .line 157
    move-object v1, v12

    .line 158
    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 159
    .line 160
    iget-object v1, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    .line 161
    .line 162
    iget v5, v1, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 163
    .line 164
    iget v6, v1, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 165
    .line 166
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    int-to-long v7, v5

    .line 171
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    int-to-long v5, v5

    .line 176
    shl-long/2addr v7, v13

    .line 177
    and-long/2addr v5, v14

    .line 178
    or-long/2addr v5, v7

    .line 179
    invoke-static {v1}, Landroidx/compose/ui/graphics/OutlineKt;->a(Landroidx/compose/ui/geometry/Rect;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v7

    .line 183
    move-object v9, v4

    .line 184
    move-wide v4, v5

    .line 185
    move-wide v6, v7

    .line 186
    const/high16 v8, 0x3f800000    # 1.0f

    .line 187
    .line 188
    const/4 v10, 0x0

    .line 189
    const/4 v11, 0x3

    .line 190
    move-object/from16 v1, p1

    .line 191
    .line 192
    invoke-virtual/range {v1 .. v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->D(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 193
    .line 194
    .line 195
    move-object v8, v1

    .line 196
    move-object v4, v9

    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_4
    move-object/from16 v8, p1

    .line 200
    .line 201
    instance-of v5, v12, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 202
    .line 203
    if-eqz v5, :cond_6

    .line 204
    .line 205
    move-object v5, v12

    .line 206
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 207
    .line 208
    iget-object v6, v5, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    .line 209
    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    invoke-virtual {v8, v6, v2, v3, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->c(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_5
    iget-object v5, v5, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 218
    .line 219
    iget v6, v5, Landroidx/compose/ui/geometry/RoundRect;->b:F

    .line 220
    .line 221
    iget v7, v5, Landroidx/compose/ui/geometry/RoundRect;->a:F

    .line 222
    .line 223
    iget-wide v9, v5, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 224
    .line 225
    shr-long/2addr v9, v13

    .line 226
    long-to-int v9, v9

    .line 227
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    int-to-long v10, v10

    .line 236
    move/from16 v16, v13

    .line 237
    .line 238
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    move-wide/from16 v17, v14

    .line 243
    .line 244
    int-to-long v14, v13

    .line 245
    shl-long v10, v10, v16

    .line 246
    .line 247
    and-long v13, v14, v17

    .line 248
    .line 249
    or-long/2addr v10, v13

    .line 250
    iget v13, v5, Landroidx/compose/ui/geometry/RoundRect;->c:F

    .line 251
    .line 252
    sub-float/2addr v13, v7

    .line 253
    iget v5, v5, Landroidx/compose/ui/geometry/RoundRect;->d:F

    .line 254
    .line 255
    sub-float/2addr v5, v6

    .line 256
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    int-to-long v6, v6

    .line 261
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    int-to-long v13, v5

    .line 266
    shl-long v5, v6, v16

    .line 267
    .line 268
    and-long v13, v13, v17

    .line 269
    .line 270
    or-long/2addr v5, v13

    .line 271
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    int-to-long v13, v7

    .line 276
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    move-wide/from16 v19, v2

    .line 281
    .line 282
    int-to-long v2, v7

    .line 283
    shl-long v13, v13, v16

    .line 284
    .line 285
    and-long v2, v2, v17

    .line 286
    .line 287
    or-long/2addr v2, v13

    .line 288
    iget-object v7, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 289
    .line 290
    iget-object v9, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 291
    .line 292
    shr-long v13, v10, v16

    .line 293
    .line 294
    long-to-int v7, v13

    .line 295
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 296
    .line 297
    .line 298
    move-result v22

    .line 299
    and-long v10, v10, v17

    .line 300
    .line 301
    long-to-int v10, v10

    .line 302
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 303
    .line 304
    .line 305
    move-result v23

    .line 306
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    shr-long v13, v5, v16

    .line 311
    .line 312
    long-to-int v11, v13

    .line 313
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    add-float v24, v11, v7

    .line 318
    .line 319
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    and-long v5, v5, v17

    .line 324
    .line 325
    long-to-int v5, v5

    .line 326
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    add-float v25, v5, v7

    .line 331
    .line 332
    shr-long v5, v2, v16

    .line 333
    .line 334
    long-to-int v5, v5

    .line 335
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 336
    .line 337
    .line 338
    move-result v26

    .line 339
    and-long v2, v2, v17

    .line 340
    .line 341
    long-to-int v2, v2

    .line 342
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 343
    .line 344
    .line 345
    move-result v27

    .line 346
    const/high16 v5, 0x3f800000    # 1.0f

    .line 347
    .line 348
    const/4 v6, 0x0

    .line 349
    const/4 v7, 0x3

    .line 350
    move-wide/from16 v2, v19

    .line 351
    .line 352
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->a(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/graphics/Paint;

    .line 353
    .line 354
    .line 355
    move-result-object v28

    .line 356
    move-object/from16 v21, v9

    .line 357
    .line 358
    invoke-interface/range {v21 .. v28}, Landroidx/compose/ui/graphics/Canvas;->u(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_6
    move/from16 v16, v13

    .line 363
    .line 364
    move-wide/from16 v17, v14

    .line 365
    .line 366
    instance-of v1, v12, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 367
    .line 368
    if-eqz v1, :cond_7

    .line 369
    .line 370
    move-object v1, v12

    .line 371
    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 372
    .line 373
    iget-object v1, v1, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 374
    .line 375
    invoke-virtual {v8, v1, v2, v3, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->c(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_7
    invoke-static {}, Lk8;->e()V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :cond_8
    move-object v8, v1

    .line 384
    :goto_2
    move/from16 v16, v13

    .line 385
    .line 386
    move-wide/from16 v17, v14

    .line 387
    .line 388
    :goto_3
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->y:Landroidx/compose/ui/graphics/Brush;

    .line 389
    .line 390
    if-eqz v1, :cond_d

    .line 391
    .line 392
    iget v3, v0, Landroidx/compose/foundation/BackgroundNode;->z:F

    .line 393
    .line 394
    instance-of v0, v12, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 395
    .line 396
    const/4 v5, 0x3

    .line 397
    if-eqz v0, :cond_9

    .line 398
    .line 399
    check-cast v12, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 400
    .line 401
    iget-object v0, v12, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    .line 402
    .line 403
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 404
    .line 405
    iget v6, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 406
    .line 407
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    int-to-long v9, v2

    .line 412
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    int-to-long v6, v2

    .line 417
    shl-long v9, v9, v16

    .line 418
    .line 419
    and-long v6, v6, v17

    .line 420
    .line 421
    or-long/2addr v6, v9

    .line 422
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->a(Landroidx/compose/ui/geometry/Rect;)J

    .line 423
    .line 424
    .line 425
    move-result-wide v9

    .line 426
    move-wide/from16 v29, v6

    .line 427
    .line 428
    move v6, v3

    .line 429
    move-wide/from16 v2, v29

    .line 430
    .line 431
    move-object v7, v4

    .line 432
    move-object v0, v8

    .line 433
    move v8, v5

    .line 434
    move-wide v4, v9

    .line 435
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->m0(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_5

    .line 439
    .line 440
    :cond_9
    instance-of v0, v12, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 441
    .line 442
    if-eqz v0, :cond_b

    .line 443
    .line 444
    check-cast v12, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 445
    .line 446
    move-object v2, v1

    .line 447
    iget-object v1, v12, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    .line 448
    .line 449
    if-eqz v1, :cond_a

    .line 450
    .line 451
    :goto_4
    move-object/from16 v0, p1

    .line 452
    .line 453
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->u0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 454
    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_a
    move-object v1, v2

    .line 458
    iget-object v0, v12, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 459
    .line 460
    iget v2, v0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    .line 461
    .line 462
    iget v5, v0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    .line 463
    .line 464
    iget-wide v6, v0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 465
    .line 466
    shr-long v6, v6, v16

    .line 467
    .line 468
    long-to-int v6, v6

    .line 469
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    int-to-long v7, v7

    .line 478
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    int-to-long v9, v9

    .line 483
    shl-long v7, v7, v16

    .line 484
    .line 485
    and-long v9, v9, v17

    .line 486
    .line 487
    or-long/2addr v7, v9

    .line 488
    iget v9, v0, Landroidx/compose/ui/geometry/RoundRect;->c:F

    .line 489
    .line 490
    sub-float/2addr v9, v5

    .line 491
    iget v0, v0, Landroidx/compose/ui/geometry/RoundRect;->d:F

    .line 492
    .line 493
    sub-float/2addr v0, v2

    .line 494
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    int-to-long v9, v2

    .line 499
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    int-to-long v11, v0

    .line 504
    shl-long v9, v9, v16

    .line 505
    .line 506
    and-long v11, v11, v17

    .line 507
    .line 508
    or-long/2addr v9, v11

    .line 509
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    int-to-long v11, v0

    .line 514
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    int-to-long v5, v0

    .line 519
    shl-long v11, v11, v16

    .line 520
    .line 521
    and-long v5, v5, v17

    .line 522
    .line 523
    or-long/2addr v5, v11

    .line 524
    move-wide/from16 v29, v7

    .line 525
    .line 526
    move v8, v3

    .line 527
    move-wide/from16 v2, v29

    .line 528
    .line 529
    move-object/from16 v0, p1

    .line 530
    .line 531
    move-wide v6, v5

    .line 532
    move-wide/from16 v29, v9

    .line 533
    .line 534
    move-object v9, v4

    .line 535
    move-wide/from16 v4, v29

    .line 536
    .line 537
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->d(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 538
    .line 539
    .line 540
    goto :goto_5

    .line 541
    :cond_b
    instance-of v0, v12, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 542
    .line 543
    if-eqz v0, :cond_c

    .line 544
    .line 545
    check-cast v12, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 546
    .line 547
    iget-object v0, v12, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 548
    .line 549
    move-object v2, v1

    .line 550
    move-object v1, v0

    .line 551
    goto :goto_4

    .line 552
    :cond_c
    invoke-static {}, Lk8;->e()V

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :cond_d
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 557
    .line 558
    .line 559
    return-void
.end method

.method public final n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final s0()V
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->B:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->C:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->D:Landroidx/compose/ui/graphics/Outline;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->E:Landroidx/compose/ui/graphics/Shape;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
