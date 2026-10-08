.class final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic h:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;FLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->c:F

    .line 11
    .line 12
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->d:Landroidx/compose/foundation/pager/PageSize;

    .line 13
    .line 14
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->e:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->f:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->g:Landroidx/compose/ui/Alignment$Vertical;

    .line 19
    .line 20
    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->h:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 21
    .line 22
    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->i:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v12, p2

    .line 6
    .line 7
    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iget-object v2, v14, Landroidx/compose/foundation/pager/PagerState;->A:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    invoke-static {v12, v13, v15}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->k:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 22
    .line 23
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 28
    .line 29
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/PaddingKt;->b(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    add-int/2addr v4, v6

    .line 66
    add-int/2addr v5, v3

    .line 67
    sub-int v7, v5, v3

    .line 68
    .line 69
    neg-int v8, v5

    .line 70
    neg-int v9, v4

    .line 71
    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    iput-object v1, v14, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    .line 76
    .line 77
    iget v10, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->c:F

    .line 78
    .line 79
    invoke-interface {v2, v10}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    sub-int/2addr v11, v5

    .line 88
    move/from16 v16, v4

    .line 89
    .line 90
    move/from16 v17, v5

    .line 91
    .line 92
    int-to-long v4, v3

    .line 93
    const/16 v18, 0x20

    .line 94
    .line 95
    shl-long v4, v4, v18

    .line 96
    .line 97
    move-wide/from16 v18, v4

    .line 98
    .line 99
    int-to-long v4, v6

    .line 100
    const-wide v20, 0xffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    and-long v4, v4, v20

    .line 106
    .line 107
    or-long v5, v18, v4

    .line 108
    .line 109
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->d:Landroidx/compose/foundation/pager/PageSize;

    .line 110
    .line 111
    check-cast v4, Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    if-gez v11, :cond_0

    .line 118
    .line 119
    move v1, v4

    .line 120
    :goto_0
    move-wide/from16 v18, v5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    move v1, v11

    .line 124
    goto :goto_0

    .line 125
    :goto_1
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const/4 v6, 0x5

    .line 130
    invoke-static {v4, v1, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 131
    .line 132
    .line 133
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->e:Lkotlin/jvm/functions/Function0;

    .line 134
    .line 135
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 140
    .line 141
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->h:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    move-object/from16 v22, v15

    .line 148
    .line 149
    if-eqz v6, :cond_1

    .line 150
    .line 151
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    .line 154
    move-result-object v23

    .line 155
    move-object/from16 v15, v23

    .line 156
    .line 157
    :goto_2
    move-object/from16 v24, v4

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_1
    const/4 v15, 0x0

    .line 161
    goto :goto_2

    .line 162
    :goto_3
    invoke-static {v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    move/from16 v25, v7

    .line 167
    .line 168
    :try_start_0
    iget-object v7, v14, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 169
    .line 170
    move-wide/from16 v26, v8

    .line 171
    .line 172
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    iget-object v9, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->e:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-static {v8, v5, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eq v8, v9, :cond_2

    .line 183
    .line 184
    move/from16 v28, v10

    .line 185
    .line 186
    iget-object v10, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    .line 187
    .line 188
    check-cast v10, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 189
    .line 190
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 191
    .line 192
    .line 193
    iget-object v10, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 194
    .line 195
    invoke-virtual {v10, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->b(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_2
    move/from16 v28, v10

    .line 200
    .line 201
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    add-int v8, v1, v28

    .line 215
    .line 216
    int-to-float v10, v8

    .line 217
    mul-float/2addr v7, v10

    .line 218
    const/16 v24, 0x0

    .line 219
    .line 220
    sub-float v7, v24, v7

    .line 221
    .line 222
    invoke-static {v7}, Lkotlin/math/MathKt;->b(F)I

    .line 223
    .line 224
    .line 225
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    invoke-static {v6, v4, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 227
    .line 228
    .line 229
    iget-object v4, v14, Landroidx/compose/foundation/pager/PagerState;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 230
    .line 231
    iget-object v6, v14, Landroidx/compose/foundation/pager/PagerState;->u:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 232
    .line 233
    invoke-static {v5, v4, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Landroidx/collection/MutableIntList;

    .line 234
    .line 235
    .line 236
    move-result-object v15

    .line 237
    sget-object v4, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 238
    .line 239
    new-instance v10, Landroidx/collection/MutableIntObjectMap;

    .line 240
    .line 241
    invoke-direct {v10}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->f:Lkotlin/jvm/functions/Function0;

    .line 245
    .line 246
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    iget-object v6, v14, Landroidx/compose/foundation/pager/PagerState;->z:Landroidx/compose/runtime/MutableState;

    .line 257
    .line 258
    if-ltz v3, :cond_3

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_3
    const-string v29, "negative beforeContentPadding"

    .line 262
    .line 263
    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :goto_5
    if-ltz v25, :cond_4

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_4
    const-string v29, "negative afterContentPadding"

    .line 270
    .line 271
    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_6
    if-gez v8, :cond_5

    .line 275
    .line 276
    move-object/from16 v29, v14

    .line 277
    .line 278
    const/4 v14, 0x0

    .line 279
    goto :goto_7

    .line 280
    :cond_5
    move-object/from16 v29, v14

    .line 281
    .line 282
    move v14, v8

    .line 283
    :goto_7
    if-gez v4, :cond_6

    .line 284
    .line 285
    move-object/from16 v30, v6

    .line 286
    .line 287
    move v6, v4

    .line 288
    :goto_8
    move-object/from16 v31, v5

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_6
    move-object/from16 v30, v6

    .line 292
    .line 293
    const/4 v6, 0x0

    .line 294
    goto :goto_8

    .line 295
    :goto_9
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    move/from16 v32, v6

    .line 300
    .line 301
    move/from16 v20, v7

    .line 302
    .line 303
    const/4 v6, 0x5

    .line 304
    const/4 v7, 0x0

    .line 305
    invoke-static {v7, v1, v7, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 306
    .line 307
    .line 308
    move-result-wide v5

    .line 309
    move-object/from16 v21, v15

    .line 310
    .line 311
    move/from16 v33, v7

    .line 312
    .line 313
    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->h:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 314
    .line 315
    move/from16 v34, v9

    .line 316
    .line 317
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->i:Lkotlinx/coroutines/CoroutineScope;

    .line 318
    .line 319
    if-gtz v4, :cond_7

    .line 320
    .line 321
    neg-int v4, v3

    .line 322
    add-int v11, v11, v25

    .line 323
    .line 324
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    new-instance v8, La7;

    .line 333
    .line 334
    const/16 v10, 0xf

    .line 335
    .line 336
    invoke-direct {v8, v10}, La7;-><init>(I)V

    .line 337
    .line 338
    .line 339
    add-int v0, v0, v17

    .line 340
    .line 341
    invoke-static {v0, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    add-int v3, v3, v16

    .line 346
    .line 347
    invoke-static {v3, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-interface {v2, v0, v3, v10, v8}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 360
    .line 361
    move-wide/from16 v50, v5

    .line 362
    .line 363
    move v5, v11

    .line 364
    move-wide/from16 v11, v50

    .line 365
    .line 366
    move-object/from16 v10, p1

    .line 367
    .line 368
    move-object v13, v2

    .line 369
    move/from16 v3, v25

    .line 370
    .line 371
    move/from16 v2, v28

    .line 372
    .line 373
    move/from16 v6, v32

    .line 374
    .line 375
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v1, p1

    .line 379
    .line 380
    move-object/from16 v26, v13

    .line 381
    .line 382
    move-object/from16 v49, v29

    .line 383
    .line 384
    const/16 v23, 0x1

    .line 385
    .line 386
    goto/16 :goto_3f

    .line 387
    .line 388
    :cond_7
    move-object/from16 v35, v7

    .line 389
    .line 390
    move-wide/from16 v36, v18

    .line 391
    .line 392
    move-object/from16 v19, v9

    .line 393
    .line 394
    move v9, v1

    .line 395
    move-object v1, v2

    .line 396
    move/from16 v7, v20

    .line 397
    .line 398
    move/from16 v2, v34

    .line 399
    .line 400
    :goto_a
    if-lez v2, :cond_8

    .line 401
    .line 402
    if-lez v7, :cond_8

    .line 403
    .line 404
    add-int/lit8 v2, v2, -0x1

    .line 405
    .line 406
    sub-int/2addr v7, v14

    .line 407
    goto :goto_a

    .line 408
    :cond_8
    mul-int/lit8 v7, v7, -0x1

    .line 409
    .line 410
    if-lt v2, v4, :cond_9

    .line 411
    .line 412
    add-int/lit8 v2, v4, -0x1

    .line 413
    .line 414
    move/from16 v7, v33

    .line 415
    .line 416
    :cond_9
    const/16 v18, 0x1

    .line 417
    .line 418
    new-instance v15, Lkotlin/collections/ArrayDeque;

    .line 419
    .line 420
    invoke-direct {v15}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 421
    .line 422
    .line 423
    neg-int v12, v3

    .line 424
    if-gez v28, :cond_a

    .line 425
    .line 426
    move/from16 v13, v28

    .line 427
    .line 428
    goto :goto_b

    .line 429
    :cond_a
    move/from16 v13, v33

    .line 430
    .line 431
    :goto_b
    add-int/2addr v13, v12

    .line 432
    add-int/2addr v7, v13

    .line 433
    move/from16 v34, v8

    .line 434
    .line 435
    move/from16 v20, v12

    .line 436
    .line 437
    move v12, v7

    .line 438
    move/from16 v7, v33

    .line 439
    .line 440
    :goto_c
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->g:Landroidx/compose/ui/Alignment$Vertical;

    .line 441
    .line 442
    if-gez v12, :cond_b

    .line 443
    .line 444
    if-lez v2, :cond_b

    .line 445
    .line 446
    add-int/lit8 v2, v2, -0x1

    .line 447
    .line 448
    move/from16 v38, v11

    .line 449
    .line 450
    move-object v11, v10

    .line 451
    move v10, v9

    .line 452
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 453
    .line 454
    .line 455
    move-result-object v9

    .line 456
    move v0, v7

    .line 457
    move-wide/from16 v39, v26

    .line 458
    .line 459
    move/from16 v41, v28

    .line 460
    .line 461
    move-object/from16 v42, v30

    .line 462
    .line 463
    move/from16 v43, v32

    .line 464
    .line 465
    move-object/from16 v26, v1

    .line 466
    .line 467
    move/from16 v28, v3

    .line 468
    .line 469
    move/from16 v30, v4

    .line 470
    .line 471
    move-wide v3, v5

    .line 472
    move/from16 v27, v17

    .line 473
    .line 474
    move-object/from16 v5, v31

    .line 475
    .line 476
    move-wide/from16 v6, v36

    .line 477
    .line 478
    move-object/from16 v1, p1

    .line 479
    .line 480
    move/from16 v17, v16

    .line 481
    .line 482
    move/from16 v16, v14

    .line 483
    .line 484
    move/from16 v14, v33

    .line 485
    .line 486
    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    move-wide/from16 v31, v3

    .line 491
    .line 492
    move-object v4, v5

    .line 493
    move-wide v5, v6

    .line 494
    move v9, v10

    .line 495
    move-object v10, v11

    .line 496
    invoke-virtual {v15, v14, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    iget v1, v8, Landroidx/compose/foundation/pager/MeasuredPage;->h:I

    .line 500
    .line 501
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    add-int v12, v12, v16

    .line 506
    .line 507
    move-object/from16 v0, p0

    .line 508
    .line 509
    move-wide/from16 v36, v5

    .line 510
    .line 511
    move/from16 v14, v16

    .line 512
    .line 513
    move/from16 v16, v17

    .line 514
    .line 515
    move-object/from16 v1, v26

    .line 516
    .line 517
    move/from16 v17, v27

    .line 518
    .line 519
    move/from16 v3, v28

    .line 520
    .line 521
    move-wide/from16 v5, v31

    .line 522
    .line 523
    move/from16 v11, v38

    .line 524
    .line 525
    move-wide/from16 v26, v39

    .line 526
    .line 527
    move/from16 v28, v41

    .line 528
    .line 529
    move/from16 v32, v43

    .line 530
    .line 531
    move-object/from16 v31, v4

    .line 532
    .line 533
    move/from16 v4, v30

    .line 534
    .line 535
    move-object/from16 v30, v42

    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_b
    move v0, v7

    .line 539
    move-object v7, v8

    .line 540
    move/from16 v38, v11

    .line 541
    .line 542
    move-wide/from16 v39, v26

    .line 543
    .line 544
    move/from16 v41, v28

    .line 545
    .line 546
    move-object/from16 v42, v30

    .line 547
    .line 548
    move/from16 v43, v32

    .line 549
    .line 550
    move-object/from16 v26, v1

    .line 551
    .line 552
    move/from16 v28, v3

    .line 553
    .line 554
    move/from16 v30, v4

    .line 555
    .line 556
    move/from16 v27, v17

    .line 557
    .line 558
    move-object/from16 v4, v31

    .line 559
    .line 560
    move-wide/from16 v31, v5

    .line 561
    .line 562
    move/from16 v17, v16

    .line 563
    .line 564
    move-wide/from16 v5, v36

    .line 565
    .line 566
    move/from16 v16, v14

    .line 567
    .line 568
    move/from16 v14, v33

    .line 569
    .line 570
    if-ge v12, v13, :cond_c

    .line 571
    .line 572
    move v12, v13

    .line 573
    :cond_c
    sub-int/2addr v12, v13

    .line 574
    add-int v11, v38, v25

    .line 575
    .line 576
    if-gez v11, :cond_d

    .line 577
    .line 578
    move v1, v14

    .line 579
    goto :goto_d

    .line 580
    :cond_d
    move v1, v11

    .line 581
    :goto_d
    neg-int v3, v12

    .line 582
    move/from16 v36, v2

    .line 583
    .line 584
    move v8, v14

    .line 585
    move/from16 v33, v8

    .line 586
    .line 587
    :goto_e
    iget v14, v15, Lkotlin/collections/ArrayDeque;->l:I

    .line 588
    .line 589
    if-ge v8, v14, :cond_f

    .line 590
    .line 591
    if-lt v3, v1, :cond_e

    .line 592
    .line 593
    invoke-virtual {v15, v8}, Lkotlin/collections/ArrayDeque;->c(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move/from16 v33, v18

    .line 597
    .line 598
    goto :goto_e

    .line 599
    :cond_e
    add-int/lit8 v36, v36, 0x1

    .line 600
    .line 601
    add-int v3, v3, v16

    .line 602
    .line 603
    add-int/lit8 v8, v8, 0x1

    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_f
    move v14, v3

    .line 607
    move/from16 v3, v30

    .line 608
    .line 609
    move/from16 v30, v12

    .line 610
    .line 611
    move v12, v2

    .line 612
    move/from16 v2, v36

    .line 613
    .line 614
    :goto_f
    if-ge v2, v3, :cond_14

    .line 615
    .line 616
    if-lt v14, v1, :cond_11

    .line 617
    .line 618
    if-lez v14, :cond_11

    .line 619
    .line 620
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    if-eqz v8, :cond_10

    .line 625
    .line 626
    goto :goto_10

    .line 627
    :cond_10
    move/from16 p0, v11

    .line 628
    .line 629
    move/from16 v13, v38

    .line 630
    .line 631
    move v11, v0

    .line 632
    move v0, v2

    .line 633
    move/from16 v50, v12

    .line 634
    .line 635
    move v12, v3

    .line 636
    move-wide/from16 v2, v31

    .line 637
    .line 638
    move/from16 v31, v50

    .line 639
    .line 640
    goto/16 :goto_13

    .line 641
    .line 642
    :cond_11
    :goto_10
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    move/from16 p0, v11

    .line 647
    .line 648
    move v11, v0

    .line 649
    move-object/from16 v0, p1

    .line 650
    .line 651
    move-wide/from16 v50, v31

    .line 652
    .line 653
    move/from16 v32, v1

    .line 654
    .line 655
    move v1, v2

    .line 656
    move/from16 v31, v12

    .line 657
    .line 658
    move v12, v3

    .line 659
    move-wide/from16 v2, v50

    .line 660
    .line 661
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    move v0, v1

    .line 666
    add-int/lit8 v1, v12, -0x1

    .line 667
    .line 668
    if-ne v0, v1, :cond_12

    .line 669
    .line 670
    move/from16 v36, v9

    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_12
    move/from16 v36, v16

    .line 674
    .line 675
    :goto_11
    add-int v14, v14, v36

    .line 676
    .line 677
    if-gt v14, v13, :cond_13

    .line 678
    .line 679
    if-eq v0, v1, :cond_13

    .line 680
    .line 681
    add-int/lit8 v1, v0, 0x1

    .line 682
    .line 683
    sub-int v30, v30, v16

    .line 684
    .line 685
    move/from16 v31, v1

    .line 686
    .line 687
    move v1, v11

    .line 688
    move/from16 v33, v18

    .line 689
    .line 690
    goto :goto_12

    .line 691
    :cond_13
    iget v1, v8, Landroidx/compose/foundation/pager/MeasuredPage;->h:I

    .line 692
    .line 693
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    invoke-virtual {v15, v8}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 701
    .line 702
    move/from16 v11, p0

    .line 703
    .line 704
    move-wide/from16 v50, v2

    .line 705
    .line 706
    move v2, v0

    .line 707
    move v0, v1

    .line 708
    move v3, v12

    .line 709
    move/from16 v12, v31

    .line 710
    .line 711
    move/from16 v1, v32

    .line 712
    .line 713
    move-wide/from16 v31, v50

    .line 714
    .line 715
    goto :goto_f

    .line 716
    :cond_14
    move/from16 p0, v11

    .line 717
    .line 718
    move v11, v0

    .line 719
    move v0, v2

    .line 720
    move/from16 v50, v12

    .line 721
    .line 722
    move v12, v3

    .line 723
    move-wide/from16 v2, v31

    .line 724
    .line 725
    move/from16 v31, v50

    .line 726
    .line 727
    move/from16 v13, v38

    .line 728
    .line 729
    :goto_13
    if-ge v14, v13, :cond_17

    .line 730
    .line 731
    sub-int v1, v13, v14

    .line 732
    .line 733
    sub-int v30, v30, v1

    .line 734
    .line 735
    add-int/2addr v14, v1

    .line 736
    move/from16 v1, v30

    .line 737
    .line 738
    :goto_14
    move/from16 v8, v28

    .line 739
    .line 740
    if-ge v1, v8, :cond_15

    .line 741
    .line 742
    if-lez v31, :cond_15

    .line 743
    .line 744
    add-int/lit8 v31, v31, -0x1

    .line 745
    .line 746
    move/from16 v28, v8

    .line 747
    .line 748
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 749
    .line 750
    .line 751
    move-result-object v8

    .line 752
    move/from16 v32, v1

    .line 753
    .line 754
    move/from16 v30, v14

    .line 755
    .line 756
    move/from16 v1, v31

    .line 757
    .line 758
    move v14, v0

    .line 759
    move-object/from16 v0, p1

    .line 760
    .line 761
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 762
    .line 763
    .line 764
    move-result-object v8

    .line 765
    move-object v0, v7

    .line 766
    const/4 v7, 0x0

    .line 767
    invoke-virtual {v15, v7, v8}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    iget v7, v8, Landroidx/compose/foundation/pager/MeasuredPage;->h:I

    .line 771
    .line 772
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 773
    .line 774
    .line 775
    move-result v11

    .line 776
    add-int v7, v32, v16

    .line 777
    .line 778
    move v1, v7

    .line 779
    move-object v7, v0

    .line 780
    move v0, v14

    .line 781
    move/from16 v14, v30

    .line 782
    .line 783
    goto :goto_14

    .line 784
    :cond_15
    move/from16 v32, v1

    .line 785
    .line 786
    move/from16 v28, v8

    .line 787
    .line 788
    move/from16 v30, v14

    .line 789
    .line 790
    move v14, v0

    .line 791
    move-object v0, v7

    .line 792
    if-gez v32, :cond_16

    .line 793
    .line 794
    add-int v1, v30, v32

    .line 795
    .line 796
    move/from16 v30, v1

    .line 797
    .line 798
    const/4 v1, 0x0

    .line 799
    goto :goto_15

    .line 800
    :cond_16
    move/from16 v1, v32

    .line 801
    .line 802
    goto :goto_15

    .line 803
    :cond_17
    move v1, v14

    .line 804
    move v14, v0

    .line 805
    move-object v0, v7

    .line 806
    move/from16 v50, v30

    .line 807
    .line 808
    move/from16 v30, v1

    .line 809
    .line 810
    move/from16 v1, v50

    .line 811
    .line 812
    :goto_15
    if-ltz v1, :cond_18

    .line 813
    .line 814
    goto :goto_16

    .line 815
    :cond_18
    const-string v7, "invalid currentFirstPageScrollOffset"

    .line 816
    .line 817
    invoke-static {v7}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    :goto_16
    neg-int v7, v1

    .line 821
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 826
    .line 827
    if-gtz v28, :cond_1a

    .line 828
    .line 829
    move/from16 v28, v11

    .line 830
    .line 831
    move/from16 v11, v41

    .line 832
    .line 833
    move-object/from16 v32, v0

    .line 834
    .line 835
    if-gez v11, :cond_19

    .line 836
    .line 837
    goto :goto_18

    .line 838
    :cond_19
    move/from16 v38, v14

    .line 839
    .line 840
    move/from16 v14, v16

    .line 841
    .line 842
    :goto_17
    move/from16 v16, v1

    .line 843
    .line 844
    goto :goto_1a

    .line 845
    :cond_1a
    move/from16 v28, v11

    .line 846
    .line 847
    move/from16 v11, v41

    .line 848
    .line 849
    move-object/from16 v32, v0

    .line 850
    .line 851
    :goto_18
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->b()I

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    move-object/from16 v36, v8

    .line 856
    .line 857
    const/4 v8, 0x0

    .line 858
    :goto_19
    if-ge v8, v0, :cond_1b

    .line 859
    .line 860
    if-eqz v1, :cond_1b

    .line 861
    .line 862
    move/from16 v38, v14

    .line 863
    .line 864
    move/from16 v14, v16

    .line 865
    .line 866
    if-gt v14, v1, :cond_1c

    .line 867
    .line 868
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->b()I

    .line 869
    .line 870
    .line 871
    move-result v16

    .line 872
    move/from16 v41, v0

    .line 873
    .line 874
    add-int/lit8 v0, v16, -0x1

    .line 875
    .line 876
    if-eq v8, v0, :cond_1c

    .line 877
    .line 878
    sub-int/2addr v1, v14

    .line 879
    add-int/lit8 v8, v8, 0x1

    .line 880
    .line 881
    invoke-virtual {v15, v8}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    move-object/from16 v36, v0

    .line 886
    .line 887
    check-cast v36, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 888
    .line 889
    move/from16 v16, v14

    .line 890
    .line 891
    move/from16 v14, v38

    .line 892
    .line 893
    move/from16 v0, v41

    .line 894
    .line 895
    goto :goto_19

    .line 896
    :cond_1b
    move/from16 v38, v14

    .line 897
    .line 898
    move/from16 v14, v16

    .line 899
    .line 900
    :cond_1c
    move-object/from16 v8, v36

    .line 901
    .line 902
    goto :goto_17

    .line 903
    :goto_1a
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 904
    .line 905
    sub-int v0, v31, v43

    .line 906
    .line 907
    const/4 v1, 0x0

    .line 908
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    add-int/lit8 v1, v31, -0x1

    .line 913
    .line 914
    if-gt v0, v1, :cond_1f

    .line 915
    .line 916
    const/16 v31, 0x0

    .line 917
    .line 918
    :goto_1b
    if-nez v31, :cond_1d

    .line 919
    .line 920
    new-instance v31, Ljava/util/ArrayList;

    .line 921
    .line 922
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .line 924
    .line 925
    :cond_1d
    move/from16 v36, v14

    .line 926
    .line 927
    move-object/from16 v14, v31

    .line 928
    .line 929
    sget-object v31, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 930
    .line 931
    move-object/from16 v31, v8

    .line 932
    .line 933
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 934
    .line 935
    .line 936
    move-result-object v8

    .line 937
    move-object/from16 v41, v31

    .line 938
    .line 939
    move/from16 v31, v7

    .line 940
    .line 941
    move-object/from16 v7, v32

    .line 942
    .line 943
    move/from16 v32, v13

    .line 944
    .line 945
    move-object/from16 v13, v41

    .line 946
    .line 947
    move/from16 v41, v30

    .line 948
    .line 949
    move/from16 v30, v11

    .line 950
    .line 951
    move/from16 v11, v43

    .line 952
    .line 953
    move/from16 v43, v41

    .line 954
    .line 955
    move-object/from16 v41, v15

    .line 956
    .line 957
    move v15, v0

    .line 958
    move-object/from16 v0, p1

    .line 959
    .line 960
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 961
    .line 962
    .line 963
    move-result-object v8

    .line 964
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    if-eq v1, v15, :cond_1e

    .line 968
    .line 969
    add-int/lit8 v1, v1, -0x1

    .line 970
    .line 971
    move/from16 v0, v43

    .line 972
    .line 973
    move/from16 v43, v11

    .line 974
    .line 975
    move/from16 v11, v30

    .line 976
    .line 977
    move/from16 v30, v0

    .line 978
    .line 979
    move-object v8, v13

    .line 980
    move v0, v15

    .line 981
    move/from16 v13, v32

    .line 982
    .line 983
    move-object/from16 v15, v41

    .line 984
    .line 985
    move-object/from16 v32, v7

    .line 986
    .line 987
    move/from16 v7, v31

    .line 988
    .line 989
    move-object/from16 v31, v14

    .line 990
    .line 991
    move/from16 v14, v36

    .line 992
    .line 993
    goto :goto_1b

    .line 994
    :cond_1e
    :goto_1c
    move-object/from16 v0, v21

    .line 995
    .line 996
    goto :goto_1d

    .line 997
    :cond_1f
    move/from16 v31, v30

    .line 998
    .line 999
    move/from16 v30, v11

    .line 1000
    .line 1001
    move/from16 v11, v43

    .line 1002
    .line 1003
    move/from16 v43, v31

    .line 1004
    .line 1005
    move/from16 v31, v7

    .line 1006
    .line 1007
    move/from16 v36, v14

    .line 1008
    .line 1009
    move-object/from16 v41, v15

    .line 1010
    .line 1011
    move-object/from16 v7, v32

    .line 1012
    .line 1013
    move v15, v0

    .line 1014
    move/from16 v32, v13

    .line 1015
    .line 1016
    move-object v13, v8

    .line 1017
    const/4 v14, 0x0

    .line 1018
    goto :goto_1c

    .line 1019
    :goto_1d
    iget-object v1, v0, Landroidx/collection/IntList;->a:[I

    .line 1020
    .line 1021
    iget v8, v0, Landroidx/collection/IntList;->b:I

    .line 1022
    .line 1023
    move-object/from16 v21, v14

    .line 1024
    .line 1025
    const/4 v14, 0x0

    .line 1026
    :goto_1e
    if-ge v14, v8, :cond_22

    .line 1027
    .line 1028
    move-object/from16 v44, v1

    .line 1029
    .line 1030
    aget v1, v44, v14

    .line 1031
    .line 1032
    if-ge v1, v15, :cond_21

    .line 1033
    .line 1034
    if-nez v21, :cond_20

    .line 1035
    .line 1036
    new-instance v21, Ljava/util/ArrayList;

    .line 1037
    .line 1038
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    :cond_20
    move/from16 v45, v14

    .line 1042
    .line 1043
    move-object/from16 v14, v21

    .line 1044
    .line 1045
    sget-object v21, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1046
    .line 1047
    move/from16 v21, v8

    .line 1048
    .line 1049
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v8

    .line 1053
    move/from16 v46, v15

    .line 1054
    .line 1055
    move/from16 v47, v21

    .line 1056
    .line 1057
    move-object v15, v0

    .line 1058
    move-object/from16 v0, p1

    .line 1059
    .line 1060
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-object/from16 v21, v14

    .line 1068
    .line 1069
    goto :goto_1f

    .line 1070
    :cond_21
    move/from16 v47, v8

    .line 1071
    .line 1072
    move/from16 v45, v14

    .line 1073
    .line 1074
    move/from16 v46, v15

    .line 1075
    .line 1076
    move-object v15, v0

    .line 1077
    :goto_1f
    add-int/lit8 v14, v45, 0x1

    .line 1078
    .line 1079
    move-object v0, v15

    .line 1080
    move-object/from16 v1, v44

    .line 1081
    .line 1082
    move/from16 v15, v46

    .line 1083
    .line 1084
    move/from16 v8, v47

    .line 1085
    .line 1086
    goto :goto_1e

    .line 1087
    :cond_22
    move-object v15, v0

    .line 1088
    sget-object v14, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 1089
    .line 1090
    if-nez v21, :cond_23

    .line 1091
    .line 1092
    move-object v0, v14

    .line 1093
    goto :goto_20

    .line 1094
    :cond_23
    move-object/from16 v0, v21

    .line 1095
    .line 1096
    :goto_20
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1097
    .line 1098
    .line 1099
    move-result v1

    .line 1100
    move-object/from16 v21, v14

    .line 1101
    .line 1102
    move/from16 v14, v28

    .line 1103
    .line 1104
    const/4 v8, 0x0

    .line 1105
    :goto_21
    if-ge v8, v1, :cond_24

    .line 1106
    .line 1107
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v28

    .line 1111
    move-object/from16 v44, v0

    .line 1112
    .line 1113
    move-object/from16 v0, v28

    .line 1114
    .line 1115
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1116
    .line 1117
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->h:I

    .line 1118
    .line 1119
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 1120
    .line 1121
    .line 1122
    move-result v14

    .line 1123
    add-int/lit8 v8, v8, 0x1

    .line 1124
    .line 1125
    move-object/from16 v0, v44

    .line 1126
    .line 1127
    goto :goto_21

    .line 1128
    :cond_24
    move-object/from16 v44, v0

    .line 1129
    .line 1130
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1135
    .line 1136
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1137
    .line 1138
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1139
    .line 1140
    sub-int v1, v12, v0

    .line 1141
    .line 1142
    add-int/lit8 v1, v1, -0x1

    .line 1143
    .line 1144
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    .line 1145
    .line 1146
    .line 1147
    move-result v1

    .line 1148
    add-int/2addr v1, v0

    .line 1149
    add-int/lit8 v0, v0, 0x1

    .line 1150
    .line 1151
    if-gt v0, v1, :cond_27

    .line 1152
    .line 1153
    const/4 v8, 0x0

    .line 1154
    :goto_22
    if-nez v8, :cond_25

    .line 1155
    .line 1156
    new-instance v8, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    :cond_25
    sget-object v28, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1162
    .line 1163
    move-object/from16 v28, v8

    .line 1164
    .line 1165
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v8

    .line 1169
    move/from16 v45, v11

    .line 1170
    .line 1171
    move-object/from16 v11, v28

    .line 1172
    .line 1173
    move/from16 v28, v14

    .line 1174
    .line 1175
    move v14, v1

    .line 1176
    move v1, v0

    .line 1177
    move-object/from16 v0, p1

    .line 1178
    .line 1179
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v8

    .line 1183
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    if-eq v1, v14, :cond_26

    .line 1187
    .line 1188
    add-int/lit8 v0, v1, 0x1

    .line 1189
    .line 1190
    move-object v8, v11

    .line 1191
    move v1, v14

    .line 1192
    move/from16 v14, v28

    .line 1193
    .line 1194
    move/from16 v11, v45

    .line 1195
    .line 1196
    goto :goto_22

    .line 1197
    :cond_26
    move-object v8, v11

    .line 1198
    goto :goto_23

    .line 1199
    :cond_27
    move/from16 v45, v11

    .line 1200
    .line 1201
    move/from16 v28, v14

    .line 1202
    .line 1203
    move v14, v1

    .line 1204
    const/4 v8, 0x0

    .line 1205
    :goto_23
    iget-object v11, v15, Landroidx/collection/IntList;->a:[I

    .line 1206
    .line 1207
    iget v15, v15, Landroidx/collection/IntList;->b:I

    .line 1208
    .line 1209
    const/4 v0, 0x0

    .line 1210
    :goto_24
    if-ge v0, v15, :cond_2a

    .line 1211
    .line 1212
    aget v1, v11, v0

    .line 1213
    .line 1214
    move/from16 v46, v0

    .line 1215
    .line 1216
    add-int/lit8 v0, v14, 0x1

    .line 1217
    .line 1218
    if-gt v0, v1, :cond_29

    .line 1219
    .line 1220
    if-ge v1, v12, :cond_29

    .line 1221
    .line 1222
    if-nez v8, :cond_28

    .line 1223
    .line 1224
    new-instance v8, Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    :cond_28
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1230
    .line 1231
    move-object v0, v8

    .line 1232
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v8

    .line 1236
    move-object/from16 v47, v11

    .line 1237
    .line 1238
    move-object v11, v0

    .line 1239
    move-object/from16 v0, p1

    .line 1240
    .line 1241
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    move-object v0, v7

    .line 1246
    move-object/from16 v48, v21

    .line 1247
    .line 1248
    move-object/from16 v7, v22

    .line 1249
    .line 1250
    move-wide/from16 v21, v2

    .line 1251
    .line 1252
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    .line 1254
    .line 1255
    move-object v8, v11

    .line 1256
    goto :goto_25

    .line 1257
    :cond_29
    move-object v0, v7

    .line 1258
    move-object/from16 v47, v11

    .line 1259
    .line 1260
    move-object/from16 v48, v21

    .line 1261
    .line 1262
    move-object/from16 v7, v22

    .line 1263
    .line 1264
    move-wide/from16 v21, v2

    .line 1265
    .line 1266
    :goto_25
    add-int/lit8 v1, v46, 0x1

    .line 1267
    .line 1268
    move-wide/from16 v2, v21

    .line 1269
    .line 1270
    move-object/from16 v11, v47

    .line 1271
    .line 1272
    move-object/from16 v21, v48

    .line 1273
    .line 1274
    move-object/from16 v22, v7

    .line 1275
    .line 1276
    move-object v7, v0

    .line 1277
    move v0, v1

    .line 1278
    goto :goto_24

    .line 1279
    :cond_2a
    move-object/from16 v48, v21

    .line 1280
    .line 1281
    move-object/from16 v7, v22

    .line 1282
    .line 1283
    move-wide/from16 v21, v2

    .line 1284
    .line 1285
    if-nez v8, :cond_2b

    .line 1286
    .line 1287
    move-object/from16 v8, v48

    .line 1288
    .line 1289
    :cond_2b
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    move/from16 v14, v28

    .line 1294
    .line 1295
    const/4 v4, 0x0

    .line 1296
    :goto_26
    if-ge v4, v0, :cond_2c

    .line 1297
    .line 1298
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v1

    .line 1302
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1303
    .line 1304
    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->h:I

    .line 1305
    .line 1306
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 1307
    .line 1308
    .line 1309
    move-result v14

    .line 1310
    add-int/lit8 v4, v4, 0x1

    .line 1311
    .line 1312
    goto :goto_26

    .line 1313
    :cond_2c
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v0

    .line 1321
    if-eqz v0, :cond_2d

    .line 1322
    .line 1323
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    if-eqz v0, :cond_2d

    .line 1328
    .line 1329
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1330
    .line 1331
    .line 1332
    move-result v0

    .line 1333
    if-eqz v0, :cond_2d

    .line 1334
    .line 1335
    move/from16 v6, v18

    .line 1336
    .line 1337
    goto :goto_27

    .line 1338
    :cond_2d
    const/4 v6, 0x0

    .line 1339
    :goto_27
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1340
    .line 1341
    move-wide/from16 v0, v39

    .line 1342
    .line 1343
    move/from16 v10, v43

    .line 1344
    .line 1345
    invoke-static {v10, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1346
    .line 1347
    .line 1348
    move-result v2

    .line 1349
    invoke-static {v14, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1350
    .line 1351
    .line 1352
    move-result v11

    .line 1353
    move/from16 v14, v32

    .line 1354
    .line 1355
    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    if-ge v10, v0, :cond_2e

    .line 1360
    .line 1361
    move/from16 v4, v18

    .line 1362
    .line 1363
    goto :goto_28

    .line 1364
    :cond_2e
    const/4 v4, 0x0

    .line 1365
    :goto_28
    if-eqz v4, :cond_30

    .line 1366
    .line 1367
    if-nez v31, :cond_2f

    .line 1368
    .line 1369
    goto :goto_29

    .line 1370
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1371
    .line 1372
    const-string v1, "non-zero pagesScrollOffset="

    .line 1373
    .line 1374
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    move/from16 v1, v31

    .line 1378
    .line 1379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    goto :goto_2a

    .line 1390
    :cond_30
    :goto_29
    move/from16 v1, v31

    .line 1391
    .line 1392
    :goto_2a
    new-instance v15, Ljava/util/ArrayList;

    .line 1393
    .line 1394
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    .line 1399
    .line 1400
    .line 1401
    move-result v3

    .line 1402
    add-int/2addr v3, v0

    .line 1403
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    add-int/2addr v0, v3

    .line 1408
    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1409
    .line 1410
    .line 1411
    if-eqz v4, :cond_36

    .line 1412
    .line 1413
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    .line 1414
    .line 1415
    .line 1416
    move-result v0

    .line 1417
    if-eqz v0, :cond_31

    .line 1418
    .line 1419
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v0

    .line 1423
    if-eqz v0, :cond_31

    .line 1424
    .line 1425
    goto :goto_2b

    .line 1426
    :cond_31
    const-string v0, "No extra pages"

    .line 1427
    .line 1428
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    :goto_2b
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1432
    .line 1433
    .line 1434
    move-result v0

    .line 1435
    new-array v3, v0, [I

    .line 1436
    .line 1437
    const/4 v4, 0x0

    .line 1438
    :goto_2c
    if-ge v4, v0, :cond_32

    .line 1439
    .line 1440
    aput v9, v3, v4

    .line 1441
    .line 1442
    add-int/lit8 v4, v4, 0x1

    .line 1443
    .line 1444
    goto :goto_2c

    .line 1445
    :cond_32
    new-array v5, v0, [I

    .line 1446
    .line 1447
    move-object/from16 v0, v26

    .line 1448
    .line 1449
    move/from16 v1, v30

    .line 1450
    .line 1451
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 1452
    .line 1453
    .line 1454
    move-result v4

    .line 1455
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1456
    .line 1457
    move/from16 v28, v6

    .line 1458
    .line 1459
    const/4 v1, 0x0

    .line 1460
    const/4 v6, 0x0

    .line 1461
    invoke-direct {v0, v4, v1, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 1462
    .line 1463
    .line 1464
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1465
    .line 1466
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1467
    .line 1468
    move-object/from16 v1, p1

    .line 1469
    .line 1470
    move-object/from16 v6, v26

    .line 1471
    .line 1472
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1473
    .line 1474
    .line 1475
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->r([I)Lkotlin/ranges/IntRange;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    iget v1, v0, Lkotlin/ranges/IntProgression;->k:I

    .line 1480
    .line 1481
    iget v0, v0, Lkotlin/ranges/IntProgression;->l:I

    .line 1482
    .line 1483
    if-lez v0, :cond_33

    .line 1484
    .line 1485
    if-gez v1, :cond_34

    .line 1486
    .line 1487
    :cond_33
    if-gez v0, :cond_35

    .line 1488
    .line 1489
    if-gtz v1, :cond_35

    .line 1490
    .line 1491
    :cond_34
    const/4 v4, 0x0

    .line 1492
    :goto_2d
    aget v3, v5, v4

    .line 1493
    .line 1494
    move/from16 v26, v0

    .line 1495
    .line 1496
    move-object/from16 v0, v41

    .line 1497
    .line 1498
    invoke-virtual {v0, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v31

    .line 1502
    move-object/from16 v32, v5

    .line 1503
    .line 1504
    move-object/from16 v5, v31

    .line 1505
    .line 1506
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1507
    .line 1508
    invoke-virtual {v5, v3, v2, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    if-eq v4, v1, :cond_39

    .line 1515
    .line 1516
    add-int v4, v4, v26

    .line 1517
    .line 1518
    move-object/from16 v41, v0

    .line 1519
    .line 1520
    move/from16 v0, v26

    .line 1521
    .line 1522
    move-object/from16 v5, v32

    .line 1523
    .line 1524
    goto :goto_2d

    .line 1525
    :cond_35
    move-object/from16 v0, v41

    .line 1526
    .line 1527
    goto :goto_31

    .line 1528
    :cond_36
    move/from16 v28, v6

    .line 1529
    .line 1530
    move-object/from16 v6, v26

    .line 1531
    .line 1532
    move-object/from16 v0, v41

    .line 1533
    .line 1534
    invoke-interface/range {v44 .. v44}, Ljava/util/Collection;->size()I

    .line 1535
    .line 1536
    .line 1537
    move-result v3

    .line 1538
    move v5, v1

    .line 1539
    const/4 v4, 0x0

    .line 1540
    :goto_2e
    if-ge v4, v3, :cond_37

    .line 1541
    .line 1542
    move/from16 v31, v1

    .line 1543
    .line 1544
    move-object/from16 v1, v44

    .line 1545
    .line 1546
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v26

    .line 1550
    move-object/from16 v1, v26

    .line 1551
    .line 1552
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1553
    .line 1554
    sub-int v5, v5, v34

    .line 1555
    .line 1556
    invoke-virtual {v1, v5, v2, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1560
    .line 1561
    .line 1562
    add-int/lit8 v4, v4, 0x1

    .line 1563
    .line 1564
    move/from16 v1, v31

    .line 1565
    .line 1566
    goto :goto_2e

    .line 1567
    :cond_37
    move/from16 v31, v1

    .line 1568
    .line 1569
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1570
    .line 1571
    .line 1572
    move-result v1

    .line 1573
    move/from16 v3, v31

    .line 1574
    .line 1575
    const/4 v4, 0x0

    .line 1576
    :goto_2f
    if-ge v4, v1, :cond_38

    .line 1577
    .line 1578
    invoke-virtual {v0, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v5

    .line 1582
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1583
    .line 1584
    invoke-virtual {v5, v3, v2, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    add-int v3, v3, v34

    .line 1591
    .line 1592
    add-int/lit8 v4, v4, 0x1

    .line 1593
    .line 1594
    goto :goto_2f

    .line 1595
    :cond_38
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1596
    .line 1597
    .line 1598
    move-result v1

    .line 1599
    const/4 v4, 0x0

    .line 1600
    :goto_30
    if-ge v4, v1, :cond_39

    .line 1601
    .line 1602
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v5

    .line 1606
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1607
    .line 1608
    invoke-virtual {v5, v3, v2, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    .line 1613
    .line 1614
    add-int v3, v3, v34

    .line 1615
    .line 1616
    add-int/lit8 v4, v4, 0x1

    .line 1617
    .line 1618
    goto :goto_30

    .line 1619
    :cond_39
    :goto_31
    if-eqz v28, :cond_3b

    .line 1620
    .line 1621
    move-object v1, v15

    .line 1622
    :cond_3a
    move-object/from16 v41, v0

    .line 1623
    .line 1624
    move/from16 v26, v2

    .line 1625
    .line 1626
    goto :goto_33

    .line 1627
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    .line 1628
    .line 1629
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1630
    .line 1631
    .line 1632
    move-result v3

    .line 1633
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1637
    .line 1638
    .line 1639
    move-result v3

    .line 1640
    const/4 v4, 0x0

    .line 1641
    :goto_32
    if-ge v4, v3, :cond_3a

    .line 1642
    .line 1643
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v5

    .line 1647
    move-object/from16 v41, v0

    .line 1648
    .line 1649
    move-object v0, v5

    .line 1650
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1651
    .line 1652
    move/from16 v26, v2

    .line 1653
    .line 1654
    iget v2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1655
    .line 1656
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v28

    .line 1660
    move/from16 v31, v3

    .line 1661
    .line 1662
    move-object/from16 v3, v28

    .line 1663
    .line 1664
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1665
    .line 1666
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1667
    .line 1668
    if-lt v2, v3, :cond_3c

    .line 1669
    .line 1670
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1671
    .line 1672
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v2

    .line 1676
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1677
    .line 1678
    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1679
    .line 1680
    if-gt v0, v2, :cond_3c

    .line 1681
    .line 1682
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    .line 1684
    .line 1685
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    .line 1686
    .line 1687
    move/from16 v2, v26

    .line 1688
    .line 1689
    move/from16 v3, v31

    .line 1690
    .line 1691
    move-object/from16 v0, v41

    .line 1692
    .line 1693
    goto :goto_32

    .line 1694
    :goto_33
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->isEmpty()Z

    .line 1695
    .line 1696
    .line 1697
    move-result v0

    .line 1698
    if-eqz v0, :cond_3d

    .line 1699
    .line 1700
    move-object/from16 v0, v48

    .line 1701
    .line 1702
    goto :goto_35

    .line 1703
    :cond_3d
    new-instance v0, Ljava/util/ArrayList;

    .line 1704
    .line 1705
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1713
    .line 1714
    .line 1715
    move-result v2

    .line 1716
    const/4 v4, 0x0

    .line 1717
    :goto_34
    if-ge v4, v2, :cond_3f

    .line 1718
    .line 1719
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v3

    .line 1723
    move-object v5, v3

    .line 1724
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1725
    .line 1726
    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1727
    .line 1728
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v28

    .line 1732
    move/from16 v31, v2

    .line 1733
    .line 1734
    move-object/from16 v2, v28

    .line 1735
    .line 1736
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1737
    .line 1738
    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1739
    .line 1740
    if-ge v5, v2, :cond_3e

    .line 1741
    .line 1742
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    .line 1744
    .line 1745
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    .line 1746
    .line 1747
    move/from16 v2, v31

    .line 1748
    .line 1749
    goto :goto_34

    .line 1750
    :cond_3f
    :goto_35
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1751
    .line 1752
    .line 1753
    move-result v2

    .line 1754
    if-eqz v2, :cond_40

    .line 1755
    .line 1756
    :goto_36
    move-object/from16 v31, v0

    .line 1757
    .line 1758
    goto :goto_38

    .line 1759
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    .line 1760
    .line 1761
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1762
    .line 1763
    .line 1764
    move-result v3

    .line 1765
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1769
    .line 1770
    .line 1771
    move-result v3

    .line 1772
    const/4 v4, 0x0

    .line 1773
    :goto_37
    if-ge v4, v3, :cond_42

    .line 1774
    .line 1775
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v5

    .line 1779
    move-object v8, v5

    .line 1780
    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1781
    .line 1782
    iget v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1783
    .line 1784
    invoke-virtual/range {v41 .. v41}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v28

    .line 1788
    move-object/from16 v31, v0

    .line 1789
    .line 1790
    move-object/from16 v0, v28

    .line 1791
    .line 1792
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1793
    .line 1794
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 1795
    .line 1796
    if-le v8, v0, :cond_41

    .line 1797
    .line 1798
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    .line 1800
    .line 1801
    :cond_41
    add-int/lit8 v4, v4, 0x1

    .line 1802
    .line 1803
    move-object/from16 v0, v31

    .line 1804
    .line 1805
    goto :goto_37

    .line 1806
    :cond_42
    move-object/from16 v48, v2

    .line 1807
    .line 1808
    goto :goto_36

    .line 1809
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v0

    .line 1813
    if-eqz v0, :cond_43

    .line 1814
    .line 1815
    const/4 v2, 0x0

    .line 1816
    goto :goto_3a

    .line 1817
    :cond_43
    const/4 v0, 0x0

    .line 1818
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v2

    .line 1822
    move-object v0, v2

    .line 1823
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1824
    .line 1825
    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 1826
    .line 1827
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1828
    .line 1829
    .line 1830
    int-to-float v0, v0

    .line 1831
    sub-float v0, v0, v24

    .line 1832
    .line 1833
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1834
    .line 1835
    .line 1836
    move-result v0

    .line 1837
    neg-float v0, v0

    .line 1838
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1839
    .line 1840
    .line 1841
    move-result v3

    .line 1842
    add-int/lit8 v3, v3, -0x1

    .line 1843
    .line 1844
    move/from16 v4, v18

    .line 1845
    .line 1846
    if-gt v4, v3, :cond_45

    .line 1847
    .line 1848
    move v5, v4

    .line 1849
    :goto_39
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v8

    .line 1853
    move-object v4, v8

    .line 1854
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1855
    .line 1856
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 1857
    .line 1858
    int-to-float v4, v4

    .line 1859
    sub-float v4, v4, v24

    .line 1860
    .line 1861
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1862
    .line 1863
    .line 1864
    move-result v4

    .line 1865
    neg-float v4, v4

    .line 1866
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    .line 1867
    .line 1868
    .line 1869
    move-result v23

    .line 1870
    if-gez v23, :cond_44

    .line 1871
    .line 1872
    move v0, v4

    .line 1873
    move-object v2, v8

    .line 1874
    :cond_44
    if-eq v5, v3, :cond_45

    .line 1875
    .line 1876
    add-int/lit8 v5, v5, 0x1

    .line 1877
    .line 1878
    const/4 v4, 0x1

    .line 1879
    goto :goto_39

    .line 1880
    :cond_45
    :goto_3a
    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 1881
    .line 1882
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1883
    .line 1884
    .line 1885
    if-eqz v2, :cond_46

    .line 1886
    .line 1887
    iget v4, v2, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 1888
    .line 1889
    goto :goto_3b

    .line 1890
    :cond_46
    const/4 v4, 0x0

    .line 1891
    :goto_3b
    if-nez v36, :cond_47

    .line 1892
    .line 1893
    const/16 v37, 0x0

    .line 1894
    .line 1895
    goto :goto_3c

    .line 1896
    :cond_47
    const/16 v37, 0x0

    .line 1897
    .line 1898
    rsub-int/lit8 v4, v4, 0x0

    .line 1899
    .line 1900
    int-to-float v0, v4

    .line 1901
    move/from16 v8, v36

    .line 1902
    .line 1903
    int-to-float v3, v8

    .line 1904
    div-float/2addr v0, v3

    .line 1905
    const/high16 v3, -0x41000000    # -0.5f

    .line 1906
    .line 1907
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1908
    .line 1909
    invoke-static {v0, v3, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 1910
    .line 1911
    .line 1912
    move-result v24

    .line 1913
    :goto_3c
    new-instance v0, Lec;

    .line 1914
    .line 1915
    const/4 v3, 0x4

    .line 1916
    move-object/from16 v4, v42

    .line 1917
    .line 1918
    invoke-direct {v0, v3, v4, v15}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1919
    .line 1920
    .line 1921
    add-int v3, v26, v27

    .line 1922
    .line 1923
    move-wide/from16 v4, p2

    .line 1924
    .line 1925
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1926
    .line 1927
    .line 1928
    move-result v3

    .line 1929
    add-int v11, v11, v17

    .line 1930
    .line 1931
    invoke-static {v11, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1932
    .line 1933
    .line 1934
    move-result v4

    .line 1935
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v5

    .line 1939
    invoke-interface {v6, v3, v4, v5, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v15

    .line 1943
    move/from16 v0, v38

    .line 1944
    .line 1945
    if-lt v0, v12, :cond_49

    .line 1946
    .line 1947
    if-le v10, v14, :cond_48

    .line 1948
    .line 1949
    goto :goto_3d

    .line 1950
    :cond_48
    move/from16 v4, v37

    .line 1951
    .line 1952
    goto :goto_3e

    .line 1953
    :cond_49
    :goto_3d
    const/4 v4, 0x1

    .line 1954
    :goto_3e
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 1955
    .line 1956
    move-object v10, v2

    .line 1957
    move-object/from16 v26, v6

    .line 1958
    .line 1959
    move-object v5, v7

    .line 1960
    move v2, v9

    .line 1961
    move-object v9, v13

    .line 1962
    move/from16 v12, v16

    .line 1963
    .line 1964
    move/from16 v6, v20

    .line 1965
    .line 1966
    move/from16 v11, v24

    .line 1967
    .line 1968
    move-object/from16 v49, v29

    .line 1969
    .line 1970
    move/from16 v3, v30

    .line 1971
    .line 1972
    move-object/from16 v17, v31

    .line 1973
    .line 1974
    move/from16 v16, v33

    .line 1975
    .line 1976
    move-object/from16 v14, v35

    .line 1977
    .line 1978
    move/from16 v8, v45

    .line 1979
    .line 1980
    move-object/from16 v18, v48

    .line 1981
    .line 1982
    const/16 v23, 0x1

    .line 1983
    .line 1984
    move/from16 v7, p0

    .line 1985
    .line 1986
    move-object/from16 v20, p1

    .line 1987
    .line 1988
    move v13, v4

    .line 1989
    move/from16 v4, v25

    .line 1990
    .line 1991
    invoke-direct/range {v0 .. v22}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 1992
    .line 1993
    .line 1994
    move-object/from16 v1, v20

    .line 1995
    .line 1996
    :goto_3f
    invoke-interface/range {v26 .. v26}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v2

    .line 2000
    move-object/from16 v3, v49

    .line 2001
    .line 2002
    const/4 v7, 0x0

    .line 2003
    invoke-virtual {v3, v0, v2, v7}, Landroidx/compose/foundation/pager/PagerState;->h(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    .line 2004
    .line 2005
    .line 2006
    iget-object v2, v3, Landroidx/compose/foundation/pager/PagerState;->t:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 2007
    .line 2008
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 2009
    .line 2010
    const-string v4, "compose:pager:cache_window:keepAroundItems"

    .line 2011
    .line 2012
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    :try_start_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b()Z

    .line 2016
    .line 2017
    .line 2018
    move-result v4

    .line 2019
    if-eqz v4, :cond_4b

    .line 2020
    .line 2021
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 2022
    .line 2023
    .line 2024
    move-result v4

    .line 2025
    if-nez v4, :cond_4b

    .line 2026
    .line 2027
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v4

    .line 2031
    check-cast v4, Landroidx/compose/foundation/pager/PageInfo;

    .line 2032
    .line 2033
    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2034
    .line 2035
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 2036
    .line 2037
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v3

    .line 2041
    check-cast v3, Landroidx/compose/foundation/pager/PageInfo;

    .line 2042
    .line 2043
    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 2044
    .line 2045
    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 2046
    .line 2047
    iget v5, v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 2048
    .line 2049
    :goto_40
    if-ge v5, v4, :cond_4a

    .line 2050
    .line 2051
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->a(I)Ljava/util/List;

    .line 2052
    .line 2053
    .line 2054
    add-int/lit8 v5, v5, 0x1

    .line 2055
    .line 2056
    goto :goto_40

    .line 2057
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    .line 2058
    .line 2059
    iget v2, v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 2060
    .line 2061
    if-gt v3, v2, :cond_4b

    .line 2062
    .line 2063
    :goto_41
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->a(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2064
    .line 2065
    .line 2066
    if-eq v3, v2, :cond_4b

    .line 2067
    .line 2068
    add-int/lit8 v3, v3, 0x1

    .line 2069
    .line 2070
    goto :goto_41

    .line 2071
    :cond_4b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2072
    .line 2073
    .line 2074
    return-object v0

    .line 2075
    :catchall_0
    move-exception v0

    .line 2076
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2077
    .line 2078
    .line 2079
    throw v0

    .line 2080
    :catchall_1
    move-exception v0

    .line 2081
    invoke-static {v6, v4, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2082
    .line 2083
    .line 2084
    throw v0
.end method
