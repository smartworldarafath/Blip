.class public abstract Lnet/blip/android/ui/util/FadeOutNavigationBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x3acbc33f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p4, 0x6

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    and-int/lit8 v1, p5, 0x1

    .line 19
    .line 20
    move-wide/from16 v4, p0

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    or-int v1, p4, v1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-wide/from16 v4, p0

    .line 37
    .line 38
    move/from16 v1, p4

    .line 39
    .line 40
    :goto_1
    and-int/lit8 v6, p4, 0x30

    .line 41
    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-nez v6, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    move v6, v7

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v6, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v1, v6

    .line 57
    :cond_3
    and-int/lit8 v6, v1, 0x13

    .line 58
    .line 59
    const/16 v8, 0x12

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x1

    .line 63
    if-eq v6, v8, :cond_4

    .line 64
    .line 65
    move v6, v10

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move v6, v9

    .line 68
    :goto_3
    and-int/lit8 v8, v1, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, v8, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_b

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 77
    .line 78
    .line 79
    and-int/lit8 v6, p4, 0x1

    .line 80
    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_5

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 91
    .line 92
    .line 93
    and-int/lit8 v6, p5, 0x1

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    :goto_4
    and-int/lit8 v1, v1, -0xf

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    :goto_5
    and-int/lit8 v6, p5, 0x1

    .line 101
    .line 102
    if-eqz v6, :cond_7

    .line 103
    .line 104
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 111
    .line 112
    iget-wide v4, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 116
    .line 117
    .line 118
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 119
    .line 120
    const/high16 v8, 0x3f800000    # 1.0f

    .line 121
    .line 122
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 127
    .line 128
    invoke-static {v12, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 133
    .line 134
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    invoke-static {v0, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 147
    .line 148
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 152
    .line 153
    .line 154
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 155
    .line 156
    if-eqz v15, :cond_8

    .line 157
    .line 158
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 159
    .line 160
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 161
    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 165
    .line 166
    .line 167
    :goto_7
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 168
    .line 169
    invoke-static {v0, v12, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 173
    .line 174
    invoke-static {v0, v14, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 182
    .line 183
    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 187
    .line 188
    .line 189
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 190
    .line 191
    invoke-static {v0, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    shr-int/lit8 v1, v1, 0x3

    .line 195
    .line 196
    and-int/lit8 v1, v1, 0xe

    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 210
    .line 211
    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 212
    .line 213
    invoke-virtual {v8, v1, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    sget-object v6, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 218
    .line 219
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 224
    .line 225
    iget v6, v6, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 226
    .line 227
    const/high16 v8, 0x3fe00000    # 1.75f

    .line 228
    .line 229
    mul-float/2addr v6, v8

    .line 230
    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/4 v6, 0x0

    .line 235
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    invoke-static {v4, v5, v6}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 240
    .line 241
    .line 242
    move-result-wide v11

    .line 243
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 244
    .line 245
    invoke-direct {v13, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 246
    .line 247
    .line 248
    new-instance v11, Lkotlin/Pair;

    .line 249
    .line 250
    invoke-direct {v11, v8, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    const v8, 0x3f4ccccd    # 0.8f

    .line 254
    .line 255
    .line 256
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    const v12, 0x3f333333    # 0.7f

    .line 261
    .line 262
    .line 263
    invoke-static {v4, v5, v12}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 264
    .line 265
    .line 266
    move-result-wide v12

    .line 267
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 268
    .line 269
    invoke-direct {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 270
    .line 271
    .line 272
    new-instance v12, Lkotlin/Pair;

    .line 273
    .line 274
    invoke-direct {v12, v8, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    filled-new-array {v11, v12}, [Lkotlin/Pair;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    int-to-long v11, v6

    .line 286
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 287
    .line 288
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    int-to-long v13, v6

    .line 293
    shl-long v6, v11, v7

    .line 294
    .line 295
    const-wide v11, 0xffffffffL

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    and-long/2addr v11, v13

    .line 301
    or-long/2addr v6, v11

    .line 302
    new-instance v11, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    move v12, v9

    .line 308
    :goto_8
    if-ge v12, v2, :cond_9

    .line 309
    .line 310
    aget-object v13, v8, v12

    .line 311
    .line 312
    iget-object v13, v13, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v13, Landroidx/compose/ui/graphics/Color;

    .line 315
    .line 316
    iget-wide v13, v13, Landroidx/compose/ui/graphics/Color;->a:J

    .line 317
    .line 318
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    .line 319
    .line 320
    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    add-int/lit8 v12, v12, 0x1

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .line 333
    .line 334
    move v13, v9

    .line 335
    :goto_9
    if-ge v13, v2, :cond_a

    .line 336
    .line 337
    aget-object v14, v8, v13

    .line 338
    .line 339
    iget-object v14, v14, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v14, Ljava/lang/Number;

    .line 342
    .line 343
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 348
    .line 349
    .line 350
    move-result-object v14

    .line 351
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    add-int/lit8 v13, v13, 0x1

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_a
    new-instance v2, Landroidx/compose/ui/graphics/LinearGradient;

    .line 358
    .line 359
    invoke-direct {v2, v6, v7, v11, v12}, Landroidx/compose/ui/graphics/LinearGradient;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v1, v2}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ShaderBrush;)Landroidx/compose/ui/Modifier;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {v1, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 370
    .line 371
    .line 372
    :goto_a
    move-wide v1, v4

    .line 373
    goto :goto_b

    .line 374
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 375
    .line 376
    .line 377
    goto :goto_a

    .line 378
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    if-eqz v6, :cond_c

    .line 383
    .line 384
    new-instance v0, Lg8;

    .line 385
    .line 386
    move/from16 v4, p4

    .line 387
    .line 388
    move/from16 v5, p5

    .line 389
    .line 390
    invoke-direct/range {v0 .. v5}, Lg8;-><init>(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 391
    .line 392
    .line 393
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 394
    .line 395
    :cond_c
    return-void
.end method
