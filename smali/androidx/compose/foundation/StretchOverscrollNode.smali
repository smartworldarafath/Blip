.class final Landroidx/compose/foundation/StretchOverscrollNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public final A:Landroidx/compose/foundation/EdgeEffectWrapper;

.field public B:Landroid/graphics/RenderNode;

.field public final z:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/EdgeEffectWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/StretchOverscrollNode;->z:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/StretchOverscrollNode;->A:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 23
    .line 24
    .line 25
    return p0
.end method


# virtual methods
.method public final c1()Landroid/graphics/RenderNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->B:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lbb;->g()Landroid/graphics/RenderNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/StretchOverscrollNode;->B:Landroid/graphics/RenderNode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 26

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
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/StretchOverscrollNode;->z:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 12
    .line 13
    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k(J)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, v5, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget-object v6, v0, Landroidx/compose/foundation/StretchOverscrollNode;->A:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 52
    .line 53
    if-nez v4, :cond_9

    .line 54
    .line 55
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->d:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->e:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->f:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->g:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 95
    .line 96
    .line 97
    :cond_6
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 102
    .line 103
    .line 104
    :cond_7
    iget-object v0, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_9
    const/high16 v4, 0x41f00000    # 30.0f

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->i0(F)F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->d:Landroid/widget/EdgeEffect;

    .line 122
    .line 123
    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_b

    .line 128
    .line 129
    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 130
    .line 131
    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_b

    .line 136
    .line 137
    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->e:Landroid/widget/EdgeEffect;

    .line 138
    .line 139
    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-nez v7, :cond_b

    .line 144
    .line 145
    iget-object v7, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 146
    .line 147
    invoke-static {v7}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_a

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_a
    const/4 v7, 0x0

    .line 155
    goto :goto_1

    .line 156
    :cond_b
    :goto_0
    const/4 v7, 0x1

    .line 157
    :goto_1
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->f:Landroid/widget/EdgeEffect;

    .line 158
    .line 159
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_d

    .line 164
    .line 165
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 166
    .line 167
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_d

    .line 172
    .line 173
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->g:Landroid/widget/EdgeEffect;

    .line 174
    .line 175
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-nez v10, :cond_d

    .line 180
    .line 181
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 182
    .line 183
    invoke-static {v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_c

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_c
    const/4 v10, 0x0

    .line 191
    goto :goto_3

    .line 192
    :cond_d
    :goto_2
    const/4 v10, 0x1

    .line 193
    :goto_3
    if-eqz v7, :cond_e

    .line 194
    .line 195
    if-eqz v10, :cond_e

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-static {v11, v12, v13}, Lbb;->r(Landroid/graphics/RenderNode;II)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_e
    if-eqz v7, :cond_f

    .line 214
    .line 215
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    invoke-static {v4}, Lkotlin/math/MathKt;->b(F)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    mul-int/lit8 v13, v13, 0x2

    .line 228
    .line 229
    add-int/2addr v13, v12

    .line 230
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    invoke-static {v11, v13, v12}, Lbb;->r(Landroid/graphics/RenderNode;II)V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_f
    if-eqz v10, :cond_2c

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    invoke-static {v4}, Lkotlin/math/MathKt;->b(F)I

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    mul-int/lit8 v14, v14, 0x2

    .line 257
    .line 258
    add-int/2addr v14, v13

    .line 259
    invoke-static {v11, v12, v14}, Lbb;->r(Landroid/graphics/RenderNode;II)V

    .line 260
    .line 261
    .line 262
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-static {v11}, Lbb;->f(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 271
    .line 272
    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    const/high16 v13, 0x42b40000    # 90.0f

    .line 277
    .line 278
    if-eqz v12, :cond_11

    .line 279
    .line 280
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 281
    .line 282
    if-nez v12, :cond_10

    .line 283
    .line 284
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 285
    .line 286
    invoke-virtual {v6, v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    iput-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 291
    .line 292
    :cond_10
    invoke-static {v13, v12, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    .line 296
    .line 297
    .line 298
    :cond_11
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->f:Landroid/widget/EdgeEffect;

    .line 299
    .line 300
    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    const/high16 v14, 0x43870000    # 270.0f

    .line 305
    .line 306
    const/high16 v15, 0x3f800000    # 1.0f

    .line 307
    .line 308
    const-wide v16, 0xffffffffL

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    if-eqz v12, :cond_14

    .line 314
    .line 315
    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->c()Landroid/widget/EdgeEffect;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    invoke-static {v14, v12, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 320
    .line 321
    .line 322
    move-result v18

    .line 323
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->f:Landroid/widget/EdgeEffect;

    .line 324
    .line 325
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-eqz v8, :cond_13

    .line 330
    .line 331
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d()J

    .line 332
    .line 333
    .line 334
    move-result-wide v20

    .line 335
    move/from16 v22, v10

    .line 336
    .line 337
    and-long v9, v20, v16

    .line 338
    .line 339
    long-to-int v9, v9

    .line 340
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 345
    .line 346
    if-nez v10, :cond_12

    .line 347
    .line 348
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 349
    .line 350
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    iput-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->j:Landroid/widget/EdgeEffect;

    .line 355
    .line 356
    :cond_12
    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    sub-float v9, v15, v9

    .line 361
    .line 362
    invoke-static {v10, v12, v9}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_13
    move/from16 v22, v10

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_14
    move/from16 v22, v10

    .line 370
    .line 371
    const/16 v18, 0x0

    .line 372
    .line 373
    :goto_5
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 374
    .line 375
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    const/high16 v10, 0x43340000    # 180.0f

    .line 380
    .line 381
    if-eqz v9, :cond_16

    .line 382
    .line 383
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 384
    .line 385
    if-nez v9, :cond_15

    .line 386
    .line 387
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 388
    .line 389
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    iput-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 394
    .line 395
    :cond_15
    invoke-static {v10, v9, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 396
    .line 397
    .line 398
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->finish()V

    .line 399
    .line 400
    .line 401
    :cond_16
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->d:Landroid/widget/EdgeEffect;

    .line 402
    .line 403
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    const/4 v8, 0x0

    .line 408
    if-eqz v9, :cond_1a

    .line 409
    .line 410
    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->e()Landroid/widget/EdgeEffect;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-static {v8, v9, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 415
    .line 416
    .line 417
    move-result v21

    .line 418
    if-nez v21, :cond_18

    .line 419
    .line 420
    if-eqz v18, :cond_17

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_17
    const/16 v18, 0x0

    .line 424
    .line 425
    :goto_6
    const/16 v21, 0x20

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_18
    :goto_7
    const/16 v18, 0x1

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :goto_8
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->d:Landroid/widget/EdgeEffect;

    .line 432
    .line 433
    invoke-static {v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 434
    .line 435
    .line 436
    move-result v12

    .line 437
    if-eqz v12, :cond_1b

    .line 438
    .line 439
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d()J

    .line 440
    .line 441
    .line 442
    move-result-wide v23

    .line 443
    move-object/from16 v25, v9

    .line 444
    .line 445
    shr-long v8, v23, v21

    .line 446
    .line 447
    long-to-int v8, v8

    .line 448
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 449
    .line 450
    .line 451
    move-result v8

    .line 452
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 453
    .line 454
    if-nez v9, :cond_19

    .line 455
    .line 456
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 457
    .line 458
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    iput-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->h:Landroid/widget/EdgeEffect;

    .line 463
    .line 464
    :cond_19
    invoke-static/range {v25 .. v25}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    invoke-static {v9, v12, v8}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_1a
    const/16 v21, 0x20

    .line 473
    .line 474
    :cond_1b
    :goto_9
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 475
    .line 476
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    if-eqz v8, :cond_1d

    .line 481
    .line 482
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 483
    .line 484
    if-nez v8, :cond_1c

    .line 485
    .line 486
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 487
    .line 488
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    iput-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 493
    .line 494
    :cond_1c
    invoke-static {v14, v8, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 495
    .line 496
    .line 497
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->finish()V

    .line 498
    .line 499
    .line 500
    :cond_1d
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->g:Landroid/widget/EdgeEffect;

    .line 501
    .line 502
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 503
    .line 504
    .line 505
    move-result v8

    .line 506
    if-eqz v8, :cond_21

    .line 507
    .line 508
    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->d()Landroid/widget/EdgeEffect;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    invoke-static {v13, v8, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    if-nez v9, :cond_1f

    .line 517
    .line 518
    if-eqz v18, :cond_1e

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_1e
    const/16 v18, 0x0

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_1f
    :goto_a
    const/16 v18, 0x1

    .line 525
    .line 526
    :goto_b
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->g:Landroid/widget/EdgeEffect;

    .line 527
    .line 528
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-eqz v9, :cond_21

    .line 533
    .line 534
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d()J

    .line 535
    .line 536
    .line 537
    move-result-wide v12

    .line 538
    and-long v12, v12, v16

    .line 539
    .line 540
    long-to-int v9, v12

    .line 541
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    iget-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 546
    .line 547
    if-nez v12, :cond_20

    .line 548
    .line 549
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 550
    .line 551
    invoke-virtual {v6, v12}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    iput-object v12, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->k:Landroid/widget/EdgeEffect;

    .line 556
    .line 557
    :cond_20
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    invoke-static {v12, v8, v9}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 562
    .line 563
    .line 564
    :cond_21
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 565
    .line 566
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 567
    .line 568
    .line 569
    move-result v8

    .line 570
    if-eqz v8, :cond_23

    .line 571
    .line 572
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 573
    .line 574
    if-nez v8, :cond_22

    .line 575
    .line 576
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 577
    .line 578
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    iput-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 583
    .line 584
    :cond_22
    const/4 v12, 0x0

    .line 585
    invoke-static {v12, v8, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 586
    .line 587
    .line 588
    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->finish()V

    .line 589
    .line 590
    .line 591
    goto :goto_c

    .line 592
    :cond_23
    const/4 v12, 0x0

    .line 593
    :goto_c
    iget-object v8, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->e:Landroid/widget/EdgeEffect;

    .line 594
    .line 595
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectWrapper;->f(Landroid/widget/EdgeEffect;)Z

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    if-eqz v8, :cond_28

    .line 600
    .line 601
    invoke-virtual {v6}, Landroidx/compose/foundation/EdgeEffectWrapper;->b()Landroid/widget/EdgeEffect;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-static {v10, v8, v11}, Landroidx/compose/foundation/StretchOverscrollNode;->b1(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 606
    .line 607
    .line 608
    move-result v9

    .line 609
    if-nez v9, :cond_25

    .line 610
    .line 611
    if-eqz v18, :cond_24

    .line 612
    .line 613
    goto :goto_d

    .line 614
    :cond_24
    const/16 v19, 0x0

    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_25
    :goto_d
    const/16 v19, 0x1

    .line 618
    .line 619
    :goto_e
    iget-object v9, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->e:Landroid/widget/EdgeEffect;

    .line 620
    .line 621
    invoke-static {v9}, Landroidx/compose/foundation/EdgeEffectWrapper;->g(Landroid/widget/EdgeEffect;)Z

    .line 622
    .line 623
    .line 624
    move-result v9

    .line 625
    if-eqz v9, :cond_27

    .line 626
    .line 627
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->d()J

    .line 628
    .line 629
    .line 630
    move-result-wide v9

    .line 631
    shr-long v9, v9, v21

    .line 632
    .line 633
    long-to-int v9, v9

    .line 634
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    iget-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 639
    .line 640
    if-nez v10, :cond_26

    .line 641
    .line 642
    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 643
    .line 644
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/EdgeEffectWrapper;->a(Landroidx/compose/foundation/gestures/Orientation;)Landroid/widget/EdgeEffect;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    iput-object v10, v6, Landroidx/compose/foundation/EdgeEffectWrapper;->i:Landroid/widget/EdgeEffect;

    .line 649
    .line 650
    :cond_26
    invoke-static {v8}, Landroidx/compose/foundation/EdgeEffectCompat;->b(Landroid/widget/EdgeEffect;)F

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    sub-float/2addr v15, v9

    .line 655
    invoke-static {v10, v6, v15}, Landroidx/compose/foundation/EdgeEffectCompat;->d(Landroid/widget/EdgeEffect;FF)F

    .line 656
    .line 657
    .line 658
    :cond_27
    move/from16 v18, v19

    .line 659
    .line 660
    :cond_28
    if-eqz v18, :cond_29

    .line 661
    .line 662
    invoke-virtual {v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->e()V

    .line 663
    .line 664
    .line 665
    :cond_29
    if-eqz v22, :cond_2a

    .line 666
    .line 667
    move v5, v12

    .line 668
    goto :goto_f

    .line 669
    :cond_2a
    move v5, v4

    .line 670
    :goto_f
    if-eqz v7, :cond_2b

    .line 671
    .line 672
    move v4, v12

    .line 673
    :cond_2b
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 674
    .line 675
    .line 676
    move-result-object v6

    .line 677
    new-instance v7, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 678
    .line 679
    invoke-direct {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 680
    .line 681
    .line 682
    iput-object v11, v7, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 683
    .line 684
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 685
    .line 686
    .line 687
    move-result-wide v8

    .line 688
    iget-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 689
    .line 690
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 691
    .line 692
    .line 693
    move-result-object v10

    .line 694
    iget-object v11, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 695
    .line 696
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 697
    .line 698
    .line 699
    move-result-object v11

    .line 700
    iget-object v12, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 701
    .line 702
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 703
    .line 704
    .line 705
    move-result-object v12

    .line 706
    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 707
    .line 708
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 709
    .line 710
    .line 711
    move-result-wide v13

    .line 712
    iget-object v15, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 713
    .line 714
    move-object/from16 v16, v3

    .line 715
    .line 716
    iget-object v3, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 717
    .line 718
    invoke-virtual {v15, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v15, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v15, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v15, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 728
    .line 729
    .line 730
    const/4 v6, 0x0

    .line 731
    iput-object v6, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 732
    .line 733
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 734
    .line 735
    .line 736
    :try_start_0
    iget-object v6, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 737
    .line 738
    iget-object v6, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 739
    .line 740
    invoke-virtual {v6, v5, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    .line 742
    .line 743
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 744
    .line 745
    .line 746
    :try_start_2
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 747
    .line 748
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 749
    .line 750
    neg-float v5, v5

    .line 751
    neg-float v4, v4

    .line 752
    invoke-virtual {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    .line 754
    .line 755
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 756
    .line 757
    .line 758
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 759
    .line 760
    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 770
    .line 771
    .line 772
    iput-object v3, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 773
    .line 774
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-static {v1}, Lbb;->q(Landroid/graphics/RenderNode;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    move-object/from16 v2, v16

    .line 786
    .line 787
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Landroidx/compose/foundation/StretchOverscrollNode;->c1()Landroid/graphics/RenderNode;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-static {v2, v0}, Lbb;->o(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 798
    .line 799
    .line 800
    return-void

    .line 801
    :catchall_0
    move-exception v0

    .line 802
    goto :goto_10

    .line 803
    :catchall_1
    move-exception v0

    .line 804
    :try_start_3
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 805
    .line 806
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 807
    .line 808
    neg-float v5, v5

    .line 809
    neg-float v4, v4

    .line 810
    invoke-virtual {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 811
    .line 812
    .line 813
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 814
    :goto_10
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 815
    .line 816
    .line 817
    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 818
    .line 819
    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 829
    .line 830
    .line 831
    iput-object v3, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 832
    .line 833
    throw v0

    .line 834
    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 835
    .line 836
    .line 837
    return-void
.end method
