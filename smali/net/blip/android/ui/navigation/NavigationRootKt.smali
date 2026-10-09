.class public abstract Lnet/blip/android/ui/navigation/NavigationRootKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx9;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v3, -0x328c8ddb

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v3, v1, 0x3

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v5, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v4

    .line 25
    :goto_0
    and-int/lit8 v5, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {v2, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_f

    .line 32
    .line 33
    const v3, -0x4aa5871

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 37
    .line 38
    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v5, 0x1f

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    if-ge v3, v5, :cond_1

    .line 45
    .line 46
    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_1
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v3}, Lqi;->b(Landroid/content/Context;)Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Ldb;->h(Landroid/view/Display;)Landroid/view/RoundedCorner;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v8, 0x0

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    const v5, 0x14bc6dca

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 84
    .line 85
    .line 86
    move-object v9, v8

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const v9, 0x7c8a3517

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->d(Landroid/view/RoundedCorner;Landroidx/compose/runtime/Composer;)F

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Landroidx/compose/ui/unit/Dp;

    .line 102
    .line 103
    invoke-direct {v9, v5}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 104
    .line 105
    .line 106
    :goto_1
    const/high16 v5, 0x40800000    # 4.0f

    .line 107
    .line 108
    if-eqz v9, :cond_4

    .line 109
    .line 110
    iget v9, v9, Landroidx/compose/ui/unit/Dp;->j:F

    .line 111
    .line 112
    sub-float/2addr v9, v5

    .line 113
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 114
    .line 115
    invoke-direct {v10, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 116
    .line 117
    .line 118
    invoke-static {v9, v7}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-gez v9, :cond_3

    .line 123
    .line 124
    move-object v10, v8

    .line 125
    :cond_3
    if-eqz v10, :cond_4

    .line 126
    .line 127
    iget v9, v10, Landroidx/compose/ui/unit/Dp;->j:F

    .line 128
    .line 129
    move v11, v9

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    move v11, v7

    .line 132
    :goto_2
    invoke-static {v3}, Ldb;->y(Landroid/view/Display;)Landroid/view/RoundedCorner;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-nez v9, :cond_5

    .line 137
    .line 138
    const v9, 0x14be750a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 145
    .line 146
    .line 147
    move-object v10, v8

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    const v10, 0x7c8a45d7

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->d(Landroid/view/RoundedCorner;Landroidx/compose/runtime/Composer;)F

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 160
    .line 161
    .line 162
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 163
    .line 164
    invoke-direct {v10, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 165
    .line 166
    .line 167
    :goto_3
    if-eqz v10, :cond_7

    .line 168
    .line 169
    iget v9, v10, Landroidx/compose/ui/unit/Dp;->j:F

    .line 170
    .line 171
    sub-float/2addr v9, v5

    .line 172
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 173
    .line 174
    invoke-direct {v10, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 175
    .line 176
    .line 177
    invoke-static {v9, v7}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-gez v9, :cond_6

    .line 182
    .line 183
    move-object v10, v8

    .line 184
    :cond_6
    if-eqz v10, :cond_7

    .line 185
    .line 186
    iget v9, v10, Landroidx/compose/ui/unit/Dp;->j:F

    .line 187
    .line 188
    move v13, v9

    .line 189
    goto :goto_4

    .line 190
    :cond_7
    move v13, v7

    .line 191
    :goto_4
    invoke-static {v3}, Ldb;->C(Landroid/view/Display;)Landroid/view/RoundedCorner;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-nez v9, :cond_8

    .line 196
    .line 197
    const v9, 0x14c08bca

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 204
    .line 205
    .line 206
    move-object v10, v8

    .line 207
    goto :goto_5

    .line 208
    :cond_8
    const v10, 0x7c8a5717

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v9, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->d(Landroid/view/RoundedCorner;Landroidx/compose/runtime/Composer;)F

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 219
    .line 220
    .line 221
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 222
    .line 223
    invoke-direct {v10, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 224
    .line 225
    .line 226
    :goto_5
    if-eqz v10, :cond_a

    .line 227
    .line 228
    iget v9, v10, Landroidx/compose/ui/unit/Dp;->j:F

    .line 229
    .line 230
    sub-float/2addr v9, v5

    .line 231
    new-instance v10, Landroidx/compose/ui/unit/Dp;

    .line 232
    .line 233
    invoke-direct {v10, v9}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 234
    .line 235
    .line 236
    invoke-static {v9, v7}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-gez v9, :cond_9

    .line 241
    .line 242
    move-object v10, v8

    .line 243
    :cond_9
    if-eqz v10, :cond_a

    .line 244
    .line 245
    iget v9, v10, Landroidx/compose/ui/unit/Dp;->j:F

    .line 246
    .line 247
    move/from16 v17, v9

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    move/from16 v17, v7

    .line 251
    .line 252
    :goto_6
    invoke-static {v3}, Ldb;->D(Landroid/view/Display;)Landroid/view/RoundedCorner;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    if-nez v3, :cond_b

    .line 257
    .line 258
    const v3, 0x14c2aa4a

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 265
    .line 266
    .line 267
    move-object v9, v8

    .line 268
    goto :goto_7

    .line 269
    :cond_b
    const v9, 0x7c8a6897

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 273
    .line 274
    .line 275
    invoke-static {v3, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->d(Landroid/view/RoundedCorner;Landroidx/compose/runtime/Composer;)F

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 280
    .line 281
    .line 282
    new-instance v9, Landroidx/compose/ui/unit/Dp;

    .line 283
    .line 284
    invoke-direct {v9, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 285
    .line 286
    .line 287
    :goto_7
    if-eqz v9, :cond_d

    .line 288
    .line 289
    iget v3, v9, Landroidx/compose/ui/unit/Dp;->j:F

    .line 290
    .line 291
    sub-float/2addr v3, v5

    .line 292
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 293
    .line 294
    invoke-direct {v5, v3}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 295
    .line 296
    .line 297
    invoke-static {v3, v7}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-gez v3, :cond_c

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_c
    move-object v8, v5

    .line 305
    :goto_8
    if-eqz v8, :cond_d

    .line 306
    .line 307
    iget v7, v8, Landroidx/compose/ui/unit/Dp;->j:F

    .line 308
    .line 309
    :cond_d
    move v15, v7

    .line 310
    new-instance v10, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 311
    .line 312
    const/16 v16, 0x14

    .line 313
    .line 314
    const/16 v18, 0x14

    .line 315
    .line 316
    const/16 v12, 0x14

    .line 317
    .line 318
    const/16 v14, 0x14

    .line 319
    .line 320
    invoke-direct/range {v10 .. v18}, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;-><init>(FIFIFIFI)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 324
    .line 325
    .line 326
    move-object v3, v10

    .line 327
    :goto_9
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 328
    .line 329
    invoke-static {v5, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 334
    .line 335
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 340
    .line 341
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 354
    .line 355
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 359
    .line 360
    .line 361
    iget-boolean v8, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 362
    .line 363
    if-eqz v8, :cond_e

    .line 364
    .line 365
    sget-object v8, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 366
    .line 367
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 368
    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 372
    .line 373
    .line 374
    :goto_a
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 375
    .line 376
    invoke-static {v2, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 377
    .line 378
    .line 379
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 380
    .line 381
    invoke-static {v2, v7, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 389
    .line 390
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 394
    .line 395
    .line 396
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 397
    .line 398
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 399
    .line 400
    .line 401
    const/4 v3, 0x6

    .line 402
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 410
    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 414
    .line 415
    .line 416
    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    if-eqz v2, :cond_10

    .line 421
    .line 422
    new-instance v3, Lc0;

    .line 423
    .line 424
    const/16 v4, 0x9

    .line 425
    .line 426
    invoke-direct {v3, v0, v1, v4}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 427
    .line 428
    .line 429
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 430
    .line 431
    :cond_10
    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x969eba8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v6, 0x4

    .line 15
    const/4 v0, 0x2

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    move p1, v6

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v0

    .line 21
    :goto_0
    or-int/2addr p1, p2

    .line 22
    and-int/lit8 v1, p1, 0x3

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eq v1, v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v7

    .line 31
    :goto_1
    and-int/2addr p1, v2

    .line 32
    invoke-virtual {v3, p1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    sget-object p1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 39
    .line 40
    invoke-static {p1, v3}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/16 v4, 0x30

    .line 53
    .line 54
    const/4 v5, 0x2

    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:Ljava/lang/String;

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-static {p1}, Lnet/blip/libblip/State_DerivedKt;->c(Lnet/blip/libblip/frontend/State;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v2, "onboarding"

    .line 85
    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 95
    .line 96
    iget-object v4, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v8, "Navigating to SetupScreenDestination from "

    .line 105
    .line 106
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-array v5, v7, [Lkotlin/Pair;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v5}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v2}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-static {p1}, Lnet/blip/libblip/State_DerivedKt;->c(Lnet/blip/libblip/frontend/State;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 140
    .line 141
    const-string v1, "Navigating to RootScreenDestination from "

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-array v1, v7, [Lkotlin/Pair;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 153
    .line 154
    .line 155
    const-string p1, "home"

    .line 156
    .line 157
    invoke-static {p0, p1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    new-instance v0, Lg3;

    .line 168
    .line 169
    const/4 v1, 0x3

    .line 170
    invoke-direct {v0, p0, p2, v1}, Lg3;-><init>(Landroidx/navigation/NavHostController;II)V

    .line 171
    .line 172
    .line 173
    :goto_3
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 174
    .line 175
    return-void

    .line 176
    :cond_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    new-instance v0, Lg3;

    .line 186
    .line 187
    invoke-direct {v0, p0, p2, v6}, Lg3;-><init>(Landroidx/navigation/NavHostController;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    return-void
.end method

.method public static final c(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v3, p2

    .line 8
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p2, -0xf86ce16

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const/4 p2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x2

    .line 25
    :goto_0
    or-int/2addr p2, p3

    .line 26
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p2, v0

    .line 38
    and-int/lit8 v0, p2, 0x13

    .line 39
    .line 40
    const/16 v1, 0x12

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_2
    and-int/lit8 v1, p2, 0x1

    .line 48
    .line 49
    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 56
    .line 57
    invoke-static {v0, v3}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 66
    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 70
    .line 71
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 72
    .line 73
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    move-object v8, v0

    .line 84
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    new-instance v9, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 87
    .line 88
    const v0, 0x3ecccccd    # 0.4f

    .line 89
    .line 90
    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    const v2, 0x3e4ccccd    # 0.2f

    .line 94
    .line 95
    .line 96
    const v4, 0x3f266666    # 0.65f

    .line 97
    .line 98
    .line 99
    invoke-direct {v9, v2, v4, v0, v1}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 100
    .line 101
    .line 102
    and-int/lit8 p2, p2, 0xe

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 105
    .line 106
    iget-object v0, v0, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 107
    .line 108
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v4, 0x30

    .line 113
    .line 114
    const/4 v5, 0x2

    .line 115
    const/4 v1, 0x0

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v4, Lnet/blip/android/ui/navigation/a;

    .line 128
    .line 129
    move-object v7, p1

    .line 130
    move-object v5, v6

    .line 131
    move-object v6, p0

    .line 132
    invoke-direct/range {v4 .. v10}, Lnet/blip/android/ui/navigation/a;-><init>(Lnet/blip/libblip/frontend/State;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/CubicBezierEasing;Landroidx/compose/runtime/MutableState;)V

    .line 133
    .line 134
    .line 135
    const p0, -0x421cb956

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const/16 p1, 0x30

    .line 143
    .line 144
    invoke-static {v0, p0, v3, p1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v6, v3, p2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->b(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move-object v6, p0

    .line 152
    move-object v7, p1

    .line 153
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-eqz p0, :cond_5

    .line 161
    .line 162
    new-instance p1, La0;

    .line 163
    .line 164
    const/16 p2, 0x13

    .line 165
    .line 166
    invoke-direct {p1, p3, p2, v6, v7}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 170
    .line 171
    :cond_5
    return-void
.end method

.method public static final d(Landroid/view/RoundedCorner;Landroidx/compose/runtime/Composer;)F
    .locals 1

    .line 1
    invoke-static {p0}, Ldb;->x(Landroid/view/RoundedCorner;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    div-float/2addr p0, p1

    .line 21
    return p0
.end method
