.class public final synthetic Lc;
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

    .line 11
    iput p1, p0, Lc;->j:I

    iput-object p2, p0, Lc;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/EditCommand;Landroidx/compose/ui/text/input/EditProcessor;)V
    .locals 0

    .line 1
    const/16 p2, 0x14

    .line 2
    .line 3
    iput p2, p0, Lc;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lc;->k:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lc;->j:I

    .line 2
    .line 3
    const-string v1, "entered drag with non-zero pending scroll"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x3f000000    # 0.5f

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object p0, p0, Lc;->k:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 26
    .line 27
    neg-float p1, p1

    .line 28
    cmpg-float v0, p1, v2

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_9

    .line 37
    .line 38
    :cond_0
    cmpl-float v0, p1, v2

    .line 39
    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    cmpg-float v0, v0, v3

    .line 57
    .line 58
    if-gtz v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->d:Z

    .line 65
    .line 66
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 67
    .line 68
    add-float/2addr v0, p1

    .line 69
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    cmpl-float v0, v0, v3

    .line 76
    .line 77
    if-lez v0, :cond_7

    .line 78
    .line 79
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 88
    .line 89
    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 94
    .line 95
    iget-boolean v8, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 96
    .line 97
    xor-int/2addr v8, v5

    .line 98
    invoke-virtual {v7, v1, v8}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    iget-object v8, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    invoke-virtual {v8, v1, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 115
    .line 116
    :cond_3
    move-object v4, v7

    .line 117
    :cond_4
    if-eqz v4, :cond_5

    .line 118
    .line 119
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 120
    .line 121
    invoke-virtual {p0, v4, v1, v5}, Landroidx/compose/foundation/lazy/LazyListState;->g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    invoke-interface {v1, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 130
    .line 131
    sub-float/2addr v0, v1

    .line 132
    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/lazy/LazyListState;->i(FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/Remeasurement;

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 143
    .line 144
    .line 145
    :cond_6
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 146
    .line 147
    sub-float/2addr v0, v1

    .line 148
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->i(FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    cmpg-float v0, v0, v3

    .line 162
    .line 163
    if-gtz v0, :cond_8

    .line 164
    .line 165
    :goto_2
    move v2, p1

    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 168
    .line 169
    sub-float/2addr p1, v0

    .line 170
    iput v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    :goto_3
    neg-float p0, v2

    .line 174
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 180
    .line 181
    check-cast p1, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    .line 188
    .line 189
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 195
    .line 196
    check-cast p1, Ljava/lang/Float;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->w:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 203
    .line 204
    neg-float p1, p1

    .line 205
    cmpg-float v0, p1, v2

    .line 206
    .line 207
    if-gez v0, :cond_a

    .line 208
    .line 209
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_13

    .line 214
    .line 215
    :cond_a
    cmpl-float v0, p1, v2

    .line 216
    .line 217
    if-lez v0, :cond_b

    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_b

    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_b
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 228
    .line 229
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    cmpg-float v0, v0, v3

    .line 234
    .line 235
    if-gtz v0, :cond_c

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_c
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_4
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 242
    .line 243
    add-float/2addr v0, p1

    .line 244
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 245
    .line 246
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    cmpl-float v0, v0, v3

    .line 251
    .line 252
    if-lez v0, :cond_11

    .line 253
    .line 254
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 255
    .line 256
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    .line 261
    .line 262
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 263
    .line 264
    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 269
    .line 270
    iget-boolean v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 271
    .line 272
    xor-int/2addr v8, v5

    .line 273
    invoke-virtual {v7, v1, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    if-eqz v7, :cond_d

    .line 278
    .line 279
    iget-object v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 280
    .line 281
    if-eqz v8, :cond_d

    .line 282
    .line 283
    invoke-virtual {v8, v1, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-eqz v1, :cond_e

    .line 288
    .line 289
    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 290
    .line 291
    :cond_d
    move-object v4, v7

    .line 292
    :cond_e
    if-eqz v4, :cond_f

    .line 293
    .line 294
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 295
    .line 296
    invoke-virtual {p0, v4, v1, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r:Landroidx/compose/runtime/MutableState;

    .line 300
    .line 301
    invoke-interface {v1, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 305
    .line 306
    sub-float/2addr v0, v1

    .line 307
    invoke-virtual {p0, v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h(FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_f
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->j:Landroidx/compose/ui/layout/Remeasurement;

    .line 312
    .line 313
    if-eqz v1, :cond_10

    .line 314
    .line 315
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 316
    .line 317
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 318
    .line 319
    .line 320
    :cond_10
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 321
    .line 322
    sub-float/2addr v0, v1

    .line 323
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h(FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    .line 328
    .line 329
    .line 330
    :cond_11
    :goto_5
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 331
    .line 332
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    cmpg-float v0, v0, v3

    .line 337
    .line 338
    if-gtz v0, :cond_12

    .line 339
    .line 340
    :goto_6
    move v2, p1

    .line 341
    goto :goto_7

    .line 342
    :cond_12
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 343
    .line 344
    sub-float/2addr p1, v0

    .line 345
    iput v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_13
    :goto_7
    neg-float p0, v2

    .line 349
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    return-object p0

    .line 354
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 355
    .line 356
    check-cast p1, Ljava/lang/Integer;

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    return-object p0

    .line 371
    :pswitch_3
    check-cast p0, Landroidx/navigation/NavController;

    .line 372
    .line 373
    check-cast p1, Lnet/blip/libblip/PeerId;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-static {p1}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    const-string v0, "peer/"

    .line 383
    .line 384
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {p0, p1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-object v6

    .line 392
    :pswitch_4
    check-cast p0, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 393
    .line 394
    check-cast p1, Landroidx/compose/ui/graphics/vector/VNode;

    .line 395
    .line 396
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->g(Landroidx/compose/ui/graphics/vector/VNode;)V

    .line 397
    .line 398
    .line 399
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent;->i:Lkotlin/jvm/functions/Function1;

    .line 400
    .line 401
    if-eqz p0, :cond_14

    .line 402
    .line 403
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    :cond_14
    return-object v6

    .line 407
    :pswitch_5
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 408
    .line 409
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 410
    .line 411
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lkotlin/jvm/functions/Function2;

    .line 420
    .line 421
    if-eqz p0, :cond_15

    .line 422
    .line 423
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 428
    .line 429
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    :cond_15
    return-object v6

    .line 433
    :pswitch_6
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 434
    .line 435
    sget-object p1, Landroidx/compose/ui/platform/GlobalSnapshotManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 436
    .line 437
    const/4 v0, 0x0

    .line 438
    invoke-virtual {p1, v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-eqz p1, :cond_16

    .line 443
    .line 444
    invoke-interface {p0, v6}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    :cond_16
    return-object v6

    .line 448
    :pswitch_7
    check-cast p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 449
    .line 450
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 451
    .line 452
    iget-object v2, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    .line 453
    .line 454
    iget v3, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    .line 455
    .line 456
    iget v4, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    .line 457
    .line 458
    iget-object v5, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->e:Ljava/lang/Object;

    .line 459
    .line 460
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 461
    .line 462
    const/4 v1, 0x0

    .line 463
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 467
    .line 468
    .line 469
    move-result-object p0

    .line 470
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    return-object p0

    .line 475
    :pswitch_8
    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    .line 476
    .line 477
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    .line 478
    .line 479
    if-ne p0, p1, :cond_17

    .line 480
    .line 481
    const-string p0, " > "

    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_17
    const-string p0, "   "

    .line 485
    .line 486
    :goto_8
    instance-of v0, p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 487
    .line 488
    const-string v1, ")"

    .line 489
    .line 490
    const-string v2, ", newCursorPosition="

    .line 491
    .line 492
    if-eqz v0, :cond_18

    .line 493
    .line 494
    check-cast p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 495
    .line 496
    iget-object v0, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 497
    .line 498
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    iget p1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->b:I

    .line 505
    .line 506
    const-string v3, "CommitTextCommand(text.length="

    .line 507
    .line 508
    :goto_9
    invoke-static {v3, v0, v2, p1, v1}, Ljb;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    goto :goto_a

    .line 513
    :cond_18
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 514
    .line 515
    if-eqz v0, :cond_19

    .line 516
    .line 517
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 518
    .line 519
    iget-object v0, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 520
    .line 521
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    iget p1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b:I

    .line 528
    .line 529
    const-string v3, "SetComposingTextCommand(text.length="

    .line 530
    .line 531
    goto :goto_9

    .line 532
    :cond_19
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 533
    .line 534
    if-eqz v0, :cond_1a

    .line 535
    .line 536
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 537
    .line 538
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    goto :goto_a

    .line 543
    :cond_1a
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 544
    .line 545
    if-eqz v0, :cond_1b

    .line 546
    .line 547
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 548
    .line 549
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    goto :goto_a

    .line 554
    :cond_1b
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 555
    .line 556
    if-eqz v0, :cond_1c

    .line 557
    .line 558
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 559
    .line 560
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    goto :goto_a

    .line 565
    :cond_1c
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 566
    .line 567
    if-eqz v0, :cond_1d

    .line 568
    .line 569
    check-cast p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 570
    .line 571
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    goto :goto_a

    .line 576
    :cond_1d
    instance-of v0, p1, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    .line 577
    .line 578
    if-eqz v0, :cond_1e

    .line 579
    .line 580
    const-string p1, "FinishComposingTextCommand()"

    .line 581
    .line 582
    goto :goto_a

    .line 583
    :cond_1e
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    .line 584
    .line 585
    if-eqz v0, :cond_1f

    .line 586
    .line 587
    const-string p1, "DeleteAllCommand()"

    .line 588
    .line 589
    goto :goto_a

    .line 590
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    if-nez p1, :cond_20

    .line 603
    .line 604
    const-string p1, "{anonymous EditCommand}"

    .line 605
    .line 606
    :cond_20
    const-string v0, "Unknown EditCommand: "

    .line 607
    .line 608
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object p0

    .line 616
    return-object p0

    .line 617
    :pswitch_9
    check-cast p0, Landroidx/compose/material/DrawerState;

    .line 618
    .line 619
    check-cast p1, Ljava/lang/Float;

    .line 620
    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState;->a()Landroidx/compose/ui/unit/Density;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    sget-object p1, Landroidx/compose/material/DrawerKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 629
    .line 630
    const/high16 p1, 0x42600000    # 56.0f

    .line 631
    .line 632
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 633
    .line 634
    .line 635
    move-result p0

    .line 636
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    return-object p0

    .line 641
    :pswitch_a
    check-cast p0, La8;

    .line 642
    .line 643
    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    .line 644
    .line 645
    sget-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 646
    .line 647
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DraggableGestureConnection;

    .line 648
    .line 649
    if-eqz v0, :cond_21

    .line 650
    .line 651
    invoke-virtual {p0, p1}, La8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object p0

    .line 655
    check-cast p0, Ljava/lang/Boolean;

    .line 656
    .line 657
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    :cond_21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 662
    .line 663
    .line 664
    move-result-object p0

    .line 665
    return-object p0

    .line 666
    :pswitch_b
    check-cast p0, Lsa;

    .line 667
    .line 668
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 669
    .line 670
    sget p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 671
    .line 672
    invoke-virtual {p0}, Lsa;->a()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    return-object v6

    .line 676
    :pswitch_c
    check-cast p0, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 677
    .line 678
    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 679
    .line 680
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 681
    .line 682
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 683
    .line 684
    if-nez v0, :cond_22

    .line 685
    .line 686
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->k:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 687
    .line 688
    goto :goto_c

    .line 689
    :cond_22
    iget-object v0, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->z:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 690
    .line 691
    if-eqz v0, :cond_24

    .line 692
    .line 693
    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 694
    .line 695
    new-instance v1, Lc;

    .line 696
    .line 697
    const/16 v2, 0x10

    .line 698
    .line 699
    invoke-direct {v1, v2, p0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object p0

    .line 706
    sget-object v2, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 707
    .line 708
    if-eq p0, v2, :cond_23

    .line 709
    .line 710
    goto :goto_b

    .line 711
    :cond_23
    invoke-static {v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->d(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    .line 712
    .line 713
    .line 714
    :cond_24
    :goto_b
    iput-object v4, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->z:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 715
    .line 716
    iput-object v4, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->y:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 717
    .line 718
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 719
    .line 720
    :goto_c
    return-object p0

    .line 721
    :pswitch_d
    check-cast p0, Lcoil3/disk/DiskLruCache;

    .line 722
    .line 723
    check-cast p1, Ljava/io/IOException;

    .line 724
    .line 725
    iput-boolean v5, p0, Lcoil3/disk/DiskLruCache;->u:Z

    .line 726
    .line 727
    return-object v6

    .line 728
    :pswitch_e
    check-cast p0, Lnet/blip/libblip/Client;

    .line 729
    .line 730
    check-cast p1, Lcom/squareup/wire/Message;

    .line 731
    .line 732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    sget-object v0, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 736
    .line 737
    iget-object v0, p1, Lcom/squareup/wire/Message;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 738
    .line 739
    iget-object v1, v0, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 740
    .line 741
    if-eqz v1, :cond_25

    .line 742
    .line 743
    new-instance v2, Lcom/squareup/wire/AnyMessage;

    .line 744
    .line 745
    new-instance v3, Lokio/Buffer;

    .line 746
    .line 747
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 748
    .line 749
    .line 750
    new-instance v4, Lcom/squareup/wire/ReverseProtoWriter;

    .line 751
    .line 752
    invoke-direct {v4}, Lcom/squareup/wire/ReverseProtoWriter;-><init>()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v4, p1}, Lcom/squareup/wire/ProtoAdapter;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v4}, Lcom/squareup/wire/ReverseProtoWriter;->a()V

    .line 759
    .line 760
    .line 761
    iget-object p1, v4, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 762
    .line 763
    invoke-virtual {v3, p1}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 764
    .line 765
    .line 766
    iget-wide v4, v3, Lokio/Buffer;->k:J

    .line 767
    .line 768
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->s(J)Lokio/ByteString;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    invoke-direct {v2, v1, p1}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 773
    .line 774
    .line 775
    new-instance p1, Lokio/Buffer;

    .line 776
    .line 777
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 778
    .line 779
    .line 780
    iget-object v0, v2, Lcom/squareup/wire/Message;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    new-instance v1, Lcom/squareup/wire/ReverseProtoWriter;

    .line 786
    .line 787
    invoke-direct {v1}, Lcom/squareup/wire/ReverseProtoWriter;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1}, Lcom/squareup/wire/ReverseProtoWriter;->a()V

    .line 794
    .line 795
    .line 796
    iget-object v0, v1, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 797
    .line 798
    invoke-virtual {p1, v0}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 799
    .line 800
    .line 801
    iget-wide v0, p1, Lokio/Buffer;->k:J

    .line 802
    .line 803
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->A(J)[B

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    sget-object v0, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 808
    .line 809
    iget-wide v1, p0, Lnet/blip/libblip/Client;->a:J

    .line 810
    .line 811
    invoke-virtual {v0, v1, v2, p1}, Lnet/blip/libblip/LibBlip$Companion;->clientDispatch(J[B)V

    .line 812
    .line 813
    .line 814
    return-object v6

    .line 815
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 816
    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v1, "recompile "

    .line 828
    .line 829
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    const-string p1, " to use it with AnyMessage"

    .line 836
    .line 837
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    throw p0

    .line 852
    :pswitch_f
    check-cast p0, Landroidx/compose/runtime/ViewTreeHostDefaultKey;

    .line 853
    .line 854
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 855
    .line 856
    sget-object v0, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 857
    .line 858
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 859
    .line 860
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    .line 862
    .line 863
    invoke-static {p1, v0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object p1

    .line 867
    check-cast p1, Landroidx/compose/runtime/HostDefaultProvider;

    .line 868
    .line 869
    check-cast p1, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 870
    .line 871
    iget-object p1, p1, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;->a:Landroid/view/View;

    .line 872
    .line 873
    :goto_d
    if-eqz p1, :cond_28

    .line 874
    .line 875
    invoke-interface {p0}, Landroidx/compose/runtime/ViewTreeHostDefaultKey;->a()I

    .line 876
    .line 877
    .line 878
    move-result v0

    .line 879
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-eqz v0, :cond_26

    .line 884
    .line 885
    move-object v4, v0

    .line 886
    goto :goto_e

    .line 887
    :cond_26
    invoke-static {p1}, Landroidx/core/viewtree/ViewTree;->a(Landroid/view/View;)Landroid/view/ViewParent;

    .line 888
    .line 889
    .line 890
    move-result-object p1

    .line 891
    instance-of v0, p1, Landroid/view/View;

    .line 892
    .line 893
    if-eqz v0, :cond_27

    .line 894
    .line 895
    check-cast p1, Landroid/view/View;

    .line 896
    .line 897
    goto :goto_d

    .line 898
    :cond_27
    move-object p1, v4

    .line 899
    goto :goto_d

    .line 900
    :cond_28
    :goto_e
    return-object v4

    .line 901
    :pswitch_10
    check-cast p0, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 902
    .line 903
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 904
    .line 905
    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->w:Landroidx/compose/ui/platform/AndroidSoundEffect;

    .line 906
    .line 907
    if-nez p1, :cond_29

    .line 908
    .line 909
    new-instance p1, Landroidx/compose/ui/platform/AndroidSoundEffect;

    .line 910
    .line 911
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 912
    .line 913
    invoke-direct {p1, v0}, Landroidx/compose/ui/platform/AndroidSoundEffect;-><init>(Landroid/view/View;)V

    .line 914
    .line 915
    .line 916
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->w:Landroidx/compose/ui/platform/AndroidSoundEffect;

    .line 917
    .line 918
    :cond_29
    return-object p1

    .line 919
    :pswitch_11
    check-cast p0, Landroid/os/CancellationSignal;

    .line 920
    .line 921
    check-cast p1, Ljava/lang/Throwable;

    .line 922
    .line 923
    if-eqz p1, :cond_2a

    .line 924
    .line 925
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 926
    .line 927
    .line 928
    :cond_2a
    return-object v6

    .line 929
    :pswitch_12
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 930
    .line 931
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 932
    .line 933
    if-eqz p0, :cond_2b

    .line 934
    .line 935
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    .line 936
    .line 937
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 938
    .line 939
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 940
    .line 941
    .line 942
    :cond_2b
    return-object v6

    .line 943
    :pswitch_13
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 944
    .line 945
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 946
    .line 947
    new-instance p1, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1;

    .line 948
    .line 949
    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;)V

    .line 950
    .line 951
    .line 952
    return-object p1

    .line 953
    :pswitch_14
    check-cast p0, Lnet/blip/libblip/DeviceKind;

    .line 954
    .line 955
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 956
    .line 957
    sget-object v0, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 958
    .line 959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 963
    .line 964
    .line 965
    move-result p0

    .line 966
    if-eq p0, v5, :cond_2f

    .line 967
    .line 968
    const/4 v0, 0x2

    .line 969
    if-eq p0, v0, :cond_2e

    .line 970
    .line 971
    const/4 v0, 0x3

    .line 972
    if-eq p0, v0, :cond_2d

    .line 973
    .line 974
    const/4 v0, 0x4

    .line 975
    if-eq p0, v0, :cond_2c

    .line 976
    .line 977
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->h:Lnet/blip/shared/Paintable;

    .line 978
    .line 979
    goto :goto_f

    .line 980
    :cond_2c
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->g:Lnet/blip/shared/Paintable;

    .line 981
    .line 982
    goto :goto_f

    .line 983
    :cond_2d
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 984
    .line 985
    goto :goto_f

    .line 986
    :cond_2e
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->e:Lnet/blip/shared/Paintable;

    .line 987
    .line 988
    goto :goto_f

    .line 989
    :cond_2f
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->d:Lnet/blip/shared/Paintable;

    .line 990
    .line 991
    :goto_f
    return-object p0

    .line 992
    :pswitch_15
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 993
    .line 994
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 995
    .line 996
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 997
    .line 998
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->d0(Landroidx/compose/ui/unit/Density;)V

    .line 999
    .line 1000
    .line 1001
    return-object v6

    .line 1002
    :pswitch_16
    check-cast p0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 1003
    .line 1004
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1005
    .line 1006
    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    .line 1007
    .line 1008
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1009
    .line 1010
    new-instance v7, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 1011
    .line 1012
    sget-object v8, Landroidx/compose/foundation/text/Handle;->j:Landroidx/compose/foundation/text/Handle;

    .line 1013
    .line 1014
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->a()J

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v9

    .line 1018
    sget-object v11, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->k:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 1019
    .line 1020
    const/4 v12, 0x1

    .line 1021
    invoke-direct/range {v7 .. v12}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 1022
    .line 1023
    .line 1024
    invoke-interface {p1, v0, v7}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1025
    .line 1026
    .line 1027
    return-object v6

    .line 1028
    :pswitch_17
    check-cast p0, Landroid/content/res/Resources;

    .line 1029
    .line 1030
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1031
    .line 1032
    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result p0

    .line 1036
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1037
    .line 1038
    .line 1039
    move-result-object p0

    .line 1040
    return-object p0

    .line 1041
    :pswitch_18
    check-cast p0, Landroidx/collection/IntObjectMap;

    .line 1042
    .line 1043
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1044
    .line 1045
    iget p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 1046
    .line 1047
    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 1048
    .line 1049
    .line 1050
    move-result p0

    .line 1051
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p0

    .line 1055
    return-object p0

    .line 1056
    :pswitch_19
    check-cast p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 1057
    .line 1058
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 1059
    .line 1060
    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 1061
    .line 1062
    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->f1(I)Z

    .line 1063
    .line 1064
    .line 1065
    move-result p0

    .line 1066
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p0

    .line 1070
    return-object p0

    .line 1071
    :pswitch_1a
    check-cast p0, Landroidx/compose/ui/node/AlignmentLines;

    .line 1072
    .line 1073
    check-cast p1, Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 1074
    .line 1075
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->n()I

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    const v1, 0x7fffffff

    .line 1080
    .line 1081
    .line 1082
    if-ne v0, v1, :cond_30

    .line 1083
    .line 1084
    goto/16 :goto_13

    .line 1085
    .line 1086
    :cond_30
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->c()Landroidx/compose/ui/node/AlignmentLines;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    iget-boolean v0, v0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    .line 1091
    .line 1092
    if-eqz v0, :cond_31

    .line 1093
    .line 1094
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->Q()V

    .line 1095
    .line 1096
    .line 1097
    :cond_31
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->c()Landroidx/compose/ui/node/AlignmentLines;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    iget-object v0, v0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/HashMap;

    .line 1102
    .line 1103
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v0

    .line 1111
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1112
    .line 1113
    .line 1114
    move-result v1

    .line 1115
    if-eqz v1, :cond_32

    .line 1116
    .line 1117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1

    .line 1121
    check-cast v1, Ljava/util/Map$Entry;

    .line 1122
    .line 1123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    .line 1128
    .line 1129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    check-cast v1, Ljava/lang/Number;

    .line 1134
    .line 1135
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v3

    .line 1143
    invoke-virtual {p0, v2, v1, v3}, Landroidx/compose/ui/node/AlignmentLines;->a(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_10

    .line 1147
    :cond_32
    invoke-interface {p1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1148
    .line 1149
    .line 1150
    move-result-object p1

    .line 1151
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 1152
    .line 1153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    :goto_11
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 1157
    .line 1158
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->e()Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v0

    .line 1166
    if-nez v0, :cond_34

    .line 1167
    .line 1168
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/AlignmentLines;->c(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    check-cast v0, Ljava/lang/Iterable;

    .line 1177
    .line 1178
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v1

    .line 1186
    if-eqz v1, :cond_33

    .line 1187
    .line 1188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    check-cast v1, Landroidx/compose/ui/layout/AlignmentLine;

    .line 1193
    .line 1194
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/node/AlignmentLines;->d(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 1195
    .line 1196
    .line 1197
    move-result v2

    .line 1198
    invoke-virtual {p0, v1, v2, p1}, Landroidx/compose/ui/node/AlignmentLines;->a(Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V

    .line 1199
    .line 1200
    .line 1201
    goto :goto_12

    .line 1202
    :cond_33
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 1203
    .line 1204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1205
    .line 1206
    .line 1207
    goto :goto_11

    .line 1208
    :cond_34
    :goto_13
    return-object v6

    .line 1209
    :pswitch_1b
    check-cast p0, Lkotlin/collections/AbstractMap;

    .line 1210
    .line 1211
    check-cast p1, Ljava/util/Map$Entry;

    .line 1212
    .line 1213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .line 1220
    .line 1221
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    const-string v2, "(this Map)"

    .line 1226
    .line 1227
    if-ne v1, p0, :cond_35

    .line 1228
    .line 1229
    move-object v1, v2

    .line 1230
    goto :goto_14

    .line 1231
    :cond_35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    const/16 v1, 0x3d

    .line 1239
    .line 1240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object p1

    .line 1247
    if-ne p1, p0, :cond_36

    .line 1248
    .line 1249
    goto :goto_15

    .line 1250
    :cond_36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v2

    .line 1254
    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object p0

    .line 1261
    return-object p0

    .line 1262
    :pswitch_1c
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 1263
    .line 1264
    if-ne p1, p0, :cond_37

    .line 1265
    .line 1266
    const-string p0, "(this Collection)"

    .line 1267
    .line 1268
    goto :goto_16

    .line 1269
    :cond_37
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object p0

    .line 1273
    :goto_16
    return-object p0

    .line 1274
    nop

    .line 1275
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
