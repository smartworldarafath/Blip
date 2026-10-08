.class public abstract Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;FLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p12

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x6eeaae29

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x4

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p13, v0

    .line 24
    .line 25
    const v3, 0x36586d80

    .line 26
    .line 27
    .line 28
    or-int/2addr v0, v3

    .line 29
    const v3, 0x12492493

    .line 30
    .line 31
    .line 32
    and-int/2addr v3, v0

    .line 33
    const v4, 0x12492492

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    move v3, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v3, v5

    .line 43
    :goto_1
    and-int/lit8 v4, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_e

    .line 50
    .line 51
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 52
    .line 53
    .line 54
    and-int/lit8 v3, p13, 0x1

    .line 55
    .line 56
    const v4, -0x1c00001

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 69
    .line 70
    .line 71
    and-int/2addr v0, v4

    .line 72
    move-object/from16 v2, p2

    .line 73
    .line 74
    move-object/from16 v7, p3

    .line 75
    .line 76
    move-object/from16 v9, p5

    .line 77
    .line 78
    move-object/from16 v3, p6

    .line 79
    .line 80
    move/from16 v4, p7

    .line 81
    .line 82
    move-object/from16 v8, p8

    .line 83
    .line 84
    move-object/from16 v10, p9

    .line 85
    .line 86
    move-object/from16 v5, p10

    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_3
    :goto_2
    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-direct {v3, v7, v7, v7, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 94
    .line 95
    .line 96
    and-int/lit8 v8, v0, 0xe

    .line 97
    .line 98
    const/high16 v9, 0x30000

    .line 99
    .line 100
    or-int/2addr v8, v9

    .line 101
    new-instance v9, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    .line 102
    .line 103
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v12}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    sget-object v11, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Ljava/util/Map;

    .line 111
    .line 112
    const/high16 v11, 0x3f800000    # 1.0f

    .line 113
    .line 114
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    const/high16 v13, 0x43c80000    # 400.0f

    .line 119
    .line 120
    invoke-static {v7, v13, v11, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 131
    .line 132
    sget-object v13, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 139
    .line 140
    and-int/lit8 v15, v8, 0xe

    .line 141
    .line 142
    xor-int/lit8 v15, v15, 0x6

    .line 143
    .line 144
    if-le v15, v2, :cond_4

    .line 145
    .line 146
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-nez v15, :cond_5

    .line 151
    .line 152
    :cond_4
    and-int/lit8 v8, v8, 0x6

    .line 153
    .line 154
    if-ne v8, v2, :cond_6

    .line 155
    .line 156
    :cond_5
    move v8, v5

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move v8, v6

    .line 159
    :goto_3
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    or-int/2addr v8, v15

    .line 164
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    or-int/2addr v8, v15

    .line 169
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    or-int/2addr v8, v15

    .line 174
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    or-int/2addr v8, v11

    .line 179
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    or-int/2addr v8, v11

    .line 188
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 193
    .line 194
    if-nez v8, :cond_7

    .line 195
    .line 196
    if-ne v11, v15, :cond_8

    .line 197
    .line 198
    :cond_7
    new-instance v8, Li0;

    .line 199
    .line 200
    const/4 v11, 0x5

    .line 201
    invoke-direct {v8, v11, v1, v14}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v11, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 205
    .line 206
    invoke-direct {v11, v1, v8, v9}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Li0;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;)V

    .line 207
    .line 208
    .line 209
    new-instance v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 210
    .line 211
    invoke-direct {v8, v11, v10, v7}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/SpringSpec;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    move-object v11, v8

    .line 218
    :cond_8
    move-object v7, v11

    .line 219
    check-cast v7, Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    .line 220
    .line 221
    and-int/2addr v4, v0

    .line 222
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 223
    .line 224
    and-int/lit8 v0, v0, 0xe

    .line 225
    .line 226
    or-int/lit16 v0, v0, 0x1b0

    .line 227
    .line 228
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 233
    .line 234
    and-int/lit8 v9, v0, 0xe

    .line 235
    .line 236
    xor-int/lit8 v9, v9, 0x6

    .line 237
    .line 238
    if-le v9, v2, :cond_9

    .line 239
    .line 240
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-nez v9, :cond_a

    .line 245
    .line 246
    :cond_9
    and-int/lit8 v0, v0, 0x6

    .line 247
    .line 248
    if-ne v0, v2, :cond_b

    .line 249
    .line 250
    :cond_a
    move v6, v5

    .line 251
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    or-int/2addr v0, v6

    .line 260
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-nez v0, :cond_c

    .line 265
    .line 266
    if-ne v2, v15, :cond_d

    .line 267
    .line 268
    :cond_c
    new-instance v2, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    .line 269
    .line 270
    invoke-direct {v2, v1, v8}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_d
    move-object v0, v2

    .line 277
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    .line 278
    .line 279
    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    sget-object v6, Landroidx/compose/foundation/pager/PageSize$Fill;->a:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 284
    .line 285
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 286
    .line 287
    sget-object v9, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 288
    .line 289
    move-object v10, v9

    .line 290
    move-object v9, v8

    .line 291
    move-object v8, v0

    .line 292
    move v0, v4

    .line 293
    move v4, v5

    .line 294
    move-object v5, v2

    .line 295
    move-object v2, v3

    .line 296
    move-object v3, v7

    .line 297
    move-object v7, v6

    .line 298
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 299
    .line 300
    .line 301
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 302
    .line 303
    shl-int/lit8 v0, v0, 0x3

    .line 304
    .line 305
    and-int/lit8 v0, v0, 0x70

    .line 306
    .line 307
    const v6, 0x36186d86

    .line 308
    .line 309
    .line 310
    or-int v13, v0, v6

    .line 311
    .line 312
    const v14, 0x1b6d86

    .line 313
    .line 314
    .line 315
    move-object/from16 v0, p1

    .line 316
    .line 317
    move/from16 v6, p4

    .line 318
    .line 319
    move-object/from16 v11, p11

    .line 320
    .line 321
    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 322
    .line 323
    .line 324
    move-object v11, v5

    .line 325
    move-object v6, v9

    .line 326
    move-object v9, v8

    .line 327
    move v8, v4

    .line 328
    move-object v4, v7

    .line 329
    move-object v7, v3

    .line 330
    move-object v3, v2

    .line 331
    goto :goto_5

    .line 332
    :cond_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 333
    .line 334
    .line 335
    move-object/from16 v3, p2

    .line 336
    .line 337
    move-object/from16 v4, p3

    .line 338
    .line 339
    move-object/from16 v6, p5

    .line 340
    .line 341
    move-object/from16 v7, p6

    .line 342
    .line 343
    move/from16 v8, p7

    .line 344
    .line 345
    move-object/from16 v9, p8

    .line 346
    .line 347
    move-object/from16 v10, p9

    .line 348
    .line 349
    move-object/from16 v11, p10

    .line 350
    .line 351
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 352
    .line 353
    .line 354
    move-result-object v14

    .line 355
    if-eqz v14, :cond_f

    .line 356
    .line 357
    new-instance v0, Lxc;

    .line 358
    .line 359
    move-object/from16 v1, p0

    .line 360
    .line 361
    move-object/from16 v2, p1

    .line 362
    .line 363
    move/from16 v5, p4

    .line 364
    .line 365
    move-object/from16 v12, p11

    .line 366
    .line 367
    move/from16 v13, p13

    .line 368
    .line 369
    invoke-direct/range {v0 .. v13}, Lxc;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;FLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 370
    .line 371
    .line 372
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 373
    .line 374
    :cond_f
    return-void
.end method
