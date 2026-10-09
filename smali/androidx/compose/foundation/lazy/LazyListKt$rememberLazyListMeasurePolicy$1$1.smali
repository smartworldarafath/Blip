.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic g:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

.field public final synthetic h:Landroidx/compose/ui/Alignment$Horizontal;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->f:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->g:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->h:Landroidx/compose/ui/Alignment$Horizontal;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    iget-object v1, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->k:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    .line 10
    .line 11
    iget-object v3, v2, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-boolean v3, v2, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 17
    .line 18
    const/16 v20, 0x1

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v30, 0x0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move/from16 v30, v20

    .line 33
    .line 34
    :goto_1
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 35
    .line 36
    invoke-static {v14, v15, v3}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    iget v8, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b:F

    .line 66
    .line 67
    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    iget v6, v6, Landroidx/compose/foundation/layout/PaddingValuesImpl;->d:F

    .line 72
    .line 73
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    add-int/2addr v6, v8

    .line 78
    add-int/2addr v7, v5

    .line 79
    sub-int v18, v6, v8

    .line 80
    .line 81
    neg-int v10, v7

    .line 82
    neg-int v11, v6

    .line 83
    invoke-static {v10, v11, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->c:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 94
    .line 95
    move-object v13, v12

    .line 96
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 97
    .line 98
    iget-object v13, v13, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->c:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 99
    .line 100
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    move-object/from16 v17, v2

    .line 105
    .line 106
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move-object/from16 v19, v3

    .line 111
    .line 112
    iget-object v3, v13, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->a:Landroidx/compose/runtime/MutableIntState;

    .line 113
    .line 114
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v13, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->b:Landroidx/compose/runtime/MutableIntState;

    .line 120
    .line 121
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 124
    .line 125
    .line 126
    const-string v21, "null verticalArrangement when isVertical == true"

    .line 127
    .line 128
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->d:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 129
    .line 130
    if-eqz v2, :cond_52

    .line 131
    .line 132
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    move-object v4, v12

    .line 141
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 142
    .line 143
    iget-object v4, v4, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 150
    .line 151
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    sub-int/2addr v13, v6

    .line 156
    move-object/from16 v22, v1

    .line 157
    .line 158
    move-object/from16 v23, v2

    .line 159
    .line 160
    int-to-long v1, v5

    .line 161
    const/16 v35, 0x20

    .line 162
    .line 163
    shl-long v1, v1, v35

    .line 164
    .line 165
    move-wide/from16 v24, v1

    .line 166
    .line 167
    int-to-long v1, v8

    .line 168
    const-wide v36, 0xffffffffL

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    and-long v1, v1, v36

    .line 174
    .line 175
    or-long v1, v24, v1

    .line 176
    .line 177
    new-instance v27, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 178
    .line 179
    move/from16 v26, v8

    .line 180
    .line 181
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->h:Landroidx/compose/ui/Alignment$Horizontal;

    .line 182
    .line 183
    move v5, v13

    .line 184
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    .line 185
    .line 186
    move/from16 v39, v5

    .line 187
    .line 188
    move/from16 v16, v6

    .line 189
    .line 190
    move-object v5, v9

    .line 191
    move-object/from16 v14, v17

    .line 192
    .line 193
    move-object/from16 v17, v19

    .line 194
    .line 195
    move-object/from16 v38, v22

    .line 196
    .line 197
    move-object/from16 v40, v23

    .line 198
    .line 199
    move/from16 v9, v26

    .line 200
    .line 201
    move v6, v4

    .line 202
    move-object v4, v12

    .line 203
    move/from16 v53, v7

    .line 204
    .line 205
    move v7, v3

    .line 206
    move/from16 v54, v18

    .line 207
    .line 208
    move/from16 v18, v53

    .line 209
    .line 210
    move-wide/from16 v55, v10

    .line 211
    .line 212
    move/from16 v10, v54

    .line 213
    .line 214
    move-wide v11, v1

    .line 215
    move-wide/from16 v2, v55

    .line 216
    .line 217
    move-object/from16 v1, v27

    .line 218
    .line 219
    invoke-direct/range {v1 .. v13}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/Alignment$Horizontal;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    .line 220
    .line 221
    .line 222
    move/from16 v19, v7

    .line 223
    .line 224
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const/16 v41, 0x0

    .line 229
    .line 230
    if-eqz v5, :cond_2

    .line 231
    .line 232
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    goto :goto_2

    .line 237
    :cond_2
    move-object/from16 v7, v41

    .line 238
    .line 239
    :goto_2
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    :try_start_0
    iget-object v11, v14, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 244
    .line 245
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    iget-object v13, v11, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->d:Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {v12, v4, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-eq v12, v13, :cond_3

    .line 256
    .line 257
    iget-object v15, v11, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a:Landroidx/compose/runtime/MutableIntState;

    .line 258
    .line 259
    check-cast v15, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 260
    .line 261
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 262
    .line 263
    .line 264
    iget-object v15, v11, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 265
    .line 266
    invoke-virtual {v15, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->b(I)V

    .line 267
    .line 268
    .line 269
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 270
    .line 271
    .line 272
    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 274
    .line 275
    .line 276
    iget-object v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 277
    .line 278
    iget-object v7, v14, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 279
    .line 280
    invoke-static {v4, v5, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Landroidx/collection/MutableIntList;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-nez v5, :cond_5

    .line 289
    .line 290
    if-nez v30, :cond_4

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_4
    iget-object v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 294
    .line 295
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    .line 296
    .line 297
    iget-object v5, v5, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 298
    .line 299
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 300
    .line 301
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, Ljava/lang/Number;

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    goto :goto_4

    .line 312
    :cond_5
    :goto_3
    iget v5, v14, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 313
    .line 314
    :goto_4
    iget-object v7, v14, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 315
    .line 316
    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 317
    .line 318
    .line 319
    move-result v28

    .line 320
    iget-object v8, v14, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/MutableState;

    .line 321
    .line 322
    iget-boolean v12, v14, Landroidx/compose/foundation/lazy/LazyListState;->i:Z

    .line 323
    .line 324
    if-ltz v9, :cond_6

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_6
    const-string v15, "invalid beforeContentPadding"

    .line 328
    .line 329
    invoke-static {v15}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :goto_5
    if-ltz v10, :cond_7

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_7
    const-string v15, "invalid afterContentPadding"

    .line 336
    .line 337
    invoke-static {v15}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :goto_6
    iget-object v15, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 341
    .line 342
    move-object/from16 v27, v1

    .line 343
    .line 344
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 345
    .line 346
    move-object/from16 v33, v1

    .line 347
    .line 348
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->f:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 349
    .line 350
    move-object/from16 v22, v7

    .line 351
    .line 352
    move-object/from16 v42, v8

    .line 353
    .line 354
    const-wide/16 v7, 0x0

    .line 355
    .line 356
    move/from16 v43, v13

    .line 357
    .line 358
    sget-object v13, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 359
    .line 360
    if-gtz v6, :cond_9

    .line 361
    .line 362
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 363
    .line 364
    .line 365
    move-result v23

    .line 366
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 367
    .line 368
    .line 369
    move-result v24

    .line 370
    new-instance v25, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    move-object v0, v15

    .line 376
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 377
    .line 378
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->d:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 379
    .line 380
    const/16 v31, 0x0

    .line 381
    .line 382
    const/16 v32, 0x0

    .line 383
    .line 384
    move-object/from16 v21, v22

    .line 385
    .line 386
    const/16 v22, 0x0

    .line 387
    .line 388
    const/16 v29, 0x1

    .line 389
    .line 390
    move-object/from16 v26, v0

    .line 391
    .line 392
    move-object/from16 v34, v1

    .line 393
    .line 394
    invoke-virtual/range {v21 .. v34}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v22, v21

    .line 398
    .line 399
    move-object/from16 v0, v27

    .line 400
    .line 401
    if-nez v28, :cond_8

    .line 402
    .line 403
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    .line 404
    .line 405
    .line 406
    move-result-wide v4

    .line 407
    invoke-static {v4, v5, v7, v8}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_8

    .line 412
    .line 413
    shr-long v6, v4, v35

    .line 414
    .line 415
    long-to-int v1, v6

    .line 416
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 417
    .line 418
    .line 419
    move-result v23

    .line 420
    and-long v4, v4, v36

    .line 421
    .line 422
    long-to-int v1, v4

    .line 423
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 424
    .line 425
    .line 426
    move-result v24

    .line 427
    :cond_8
    new-instance v1, La7;

    .line 428
    .line 429
    const/16 v2, 0xf

    .line 430
    .line 431
    invoke-direct {v1, v2}, La7;-><init>(I)V

    .line 432
    .line 433
    .line 434
    add-int v2, v23, v18

    .line 435
    .line 436
    move-wide/from16 v3, p2

    .line 437
    .line 438
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    add-int v5, v24, v16

    .line 443
    .line 444
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    move-object/from16 v5, v38

    .line 453
    .line 454
    invoke-interface {v5, v2, v3, v4, v1}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    move-object v2, v14

    .line 459
    neg-int v14, v9

    .line 460
    add-int v3, v39, v10

    .line 461
    .line 462
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 463
    .line 464
    const/4 v12, 0x0

    .line 465
    const/16 v16, 0x0

    .line 466
    .line 467
    move-object/from16 v22, v5

    .line 468
    .line 469
    move-object v5, v1

    .line 470
    const/4 v1, 0x0

    .line 471
    move-object v6, v2

    .line 472
    const/4 v2, 0x0

    .line 473
    move-object v7, v15

    .line 474
    move v15, v3

    .line 475
    const/4 v3, 0x0

    .line 476
    move-object v8, v4

    .line 477
    const/4 v4, 0x0

    .line 478
    move-object v9, v6

    .line 479
    const/4 v6, 0x0

    .line 480
    move-object v11, v7

    .line 481
    const/4 v7, 0x0

    .line 482
    move/from16 v18, v10

    .line 483
    .line 484
    move-object/from16 v21, v11

    .line 485
    .line 486
    iget-wide v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    .line 487
    .line 488
    move-object/from16 v45, v0

    .line 489
    .line 490
    move-object v0, v8

    .line 491
    move-object/from16 v46, v9

    .line 492
    .line 493
    move-object/from16 v38, v21

    .line 494
    .line 495
    move-object/from16 v44, v22

    .line 496
    .line 497
    move-object/from16 v8, v33

    .line 498
    .line 499
    move-object/from16 v9, p1

    .line 500
    .line 501
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v52, v45

    .line 505
    .line 506
    :goto_7
    move-object v4, v0

    .line 507
    goto/16 :goto_38

    .line 508
    .line 509
    :cond_9
    move-object/from16 v34, v1

    .line 510
    .line 511
    move-object/from16 v46, v14

    .line 512
    .line 513
    move-object/from16 v45, v27

    .line 514
    .line 515
    move-object/from16 v44, v38

    .line 516
    .line 517
    move/from16 v7, v39

    .line 518
    .line 519
    move/from16 v8, v43

    .line 520
    .line 521
    move-object/from16 v1, p1

    .line 522
    .line 523
    move-object/from16 v38, v15

    .line 524
    .line 525
    if-lt v8, v6, :cond_a

    .line 526
    .line 527
    add-int/lit8 v8, v6, -0x1

    .line 528
    .line 529
    const/4 v11, 0x0

    .line 530
    :cond_a
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 531
    .line 532
    .line 533
    move-result v17

    .line 534
    sub-int v11, v11, v17

    .line 535
    .line 536
    if-nez v8, :cond_b

    .line 537
    .line 538
    if-gez v11, :cond_b

    .line 539
    .line 540
    add-int v17, v17, v11

    .line 541
    .line 542
    const/4 v11, 0x0

    .line 543
    :cond_b
    move/from16 v23, v5

    .line 544
    .line 545
    new-instance v5, Lkotlin/collections/ArrayDeque;

    .line 546
    .line 547
    invoke-direct {v5}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 548
    .line 549
    .line 550
    move/from16 v24, v8

    .line 551
    .line 552
    neg-int v8, v9

    .line 553
    if-gez v19, :cond_c

    .line 554
    .line 555
    move/from16 v25, v19

    .line 556
    .line 557
    :goto_8
    move/from16 v39, v8

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_c
    const/16 v25, 0x0

    .line 561
    .line 562
    goto :goto_8

    .line 563
    :goto_9
    add-int v8, v39, v25

    .line 564
    .line 565
    add-int/2addr v11, v8

    .line 566
    move/from16 v43, v10

    .line 567
    .line 568
    move v10, v11

    .line 569
    move/from16 v25, v12

    .line 570
    .line 571
    move-object/from16 v26, v13

    .line 572
    .line 573
    move-object/from16 v12, v45

    .line 574
    .line 575
    const/4 v11, 0x0

    .line 576
    :goto_a
    iget-wide v13, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    .line 577
    .line 578
    if-gez v10, :cond_d

    .line 579
    .line 580
    if-lez v24, :cond_d

    .line 581
    .line 582
    add-int/lit8 v15, v24, -0x1

    .line 583
    .line 584
    invoke-virtual {v12, v15, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 585
    .line 586
    .line 587
    move-result-object v13

    .line 588
    const/4 v14, 0x0

    .line 589
    invoke-virtual {v5, v14, v13}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    iget v14, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 593
    .line 594
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 599
    .line 600
    .line 601
    move-result v13

    .line 602
    add-int/2addr v10, v13

    .line 603
    move/from16 v24, v15

    .line 604
    .line 605
    goto :goto_a

    .line 606
    :cond_d
    const/4 v15, 0x0

    .line 607
    if-ge v10, v8, :cond_e

    .line 608
    .line 609
    sub-int v10, v8, v10

    .line 610
    .line 611
    sub-int v17, v17, v10

    .line 612
    .line 613
    move v10, v8

    .line 614
    :cond_e
    move/from16 v47, v17

    .line 615
    .line 616
    sub-int/2addr v10, v8

    .line 617
    add-int v17, v7, v43

    .line 618
    .line 619
    if-gez v17, :cond_f

    .line 620
    .line 621
    :goto_b
    move/from16 v27, v11

    .line 622
    .line 623
    goto :goto_c

    .line 624
    :cond_f
    move/from16 v15, v17

    .line 625
    .line 626
    goto :goto_b

    .line 627
    :goto_c
    neg-int v11, v10

    .line 628
    move/from16 v31, v10

    .line 629
    .line 630
    move v10, v11

    .line 631
    move/from16 v32, v24

    .line 632
    .line 633
    const/4 v11, 0x0

    .line 634
    const/16 v29, 0x0

    .line 635
    .line 636
    :goto_d
    iget v0, v5, Lkotlin/collections/ArrayDeque;->l:I

    .line 637
    .line 638
    if-ge v11, v0, :cond_11

    .line 639
    .line 640
    if-lt v10, v15, :cond_10

    .line 641
    .line 642
    invoke-virtual {v5, v11}, Lkotlin/collections/ArrayDeque;->c(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move/from16 v29, v20

    .line 646
    .line 647
    goto :goto_d

    .line 648
    :cond_10
    add-int/lit8 v32, v32, 0x1

    .line 649
    .line 650
    invoke-virtual {v5, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 655
    .line 656
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    add-int/2addr v0, v10

    .line 661
    add-int/lit8 v11, v11, 0x1

    .line 662
    .line 663
    move v10, v0

    .line 664
    goto :goto_d

    .line 665
    :cond_11
    move/from16 v11, v27

    .line 666
    .line 667
    move/from16 v45, v29

    .line 668
    .line 669
    move/from16 v0, v32

    .line 670
    .line 671
    :goto_e
    if-ge v0, v6, :cond_15

    .line 672
    .line 673
    if-lt v10, v15, :cond_12

    .line 674
    .line 675
    if-lez v10, :cond_12

    .line 676
    .line 677
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v27

    .line 681
    if-eqz v27, :cond_15

    .line 682
    .line 683
    :cond_12
    move/from16 v27, v15

    .line 684
    .line 685
    invoke-virtual {v12, v0, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 686
    .line 687
    .line 688
    move-result-object v15

    .line 689
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 690
    .line 691
    .line 692
    move-result v29

    .line 693
    add-int v10, v29, v10

    .line 694
    .line 695
    if-gt v10, v8, :cond_13

    .line 696
    .line 697
    move/from16 v29, v8

    .line 698
    .line 699
    add-int/lit8 v8, v6, -0x1

    .line 700
    .line 701
    if-eq v0, v8, :cond_14

    .line 702
    .line 703
    add-int/lit8 v8, v0, 0x1

    .line 704
    .line 705
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 706
    .line 707
    .line 708
    move-result v15

    .line 709
    sub-int v31, v31, v15

    .line 710
    .line 711
    move/from16 v24, v8

    .line 712
    .line 713
    move/from16 v45, v20

    .line 714
    .line 715
    goto :goto_f

    .line 716
    :cond_13
    move/from16 v29, v8

    .line 717
    .line 718
    :cond_14
    iget v8, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 719
    .line 720
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    .line 721
    .line 722
    .line 723
    move-result v8

    .line 724
    invoke-virtual {v5, v15}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    move v11, v8

    .line 728
    :goto_f
    add-int/lit8 v0, v0, 0x1

    .line 729
    .line 730
    move/from16 v15, v27

    .line 731
    .line 732
    move/from16 v8, v29

    .line 733
    .line 734
    goto :goto_e

    .line 735
    :cond_15
    if-ge v10, v7, :cond_18

    .line 736
    .line 737
    sub-int v8, v7, v10

    .line 738
    .line 739
    sub-int v31, v31, v8

    .line 740
    .line 741
    add-int/2addr v10, v8

    .line 742
    move v15, v11

    .line 743
    move/from16 v11, v31

    .line 744
    .line 745
    :goto_10
    if-ge v11, v9, :cond_16

    .line 746
    .line 747
    if-lez v24, :cond_16

    .line 748
    .line 749
    move/from16 v27, v8

    .line 750
    .line 751
    add-int/lit8 v8, v24, -0x1

    .line 752
    .line 753
    move/from16 v48, v9

    .line 754
    .line 755
    invoke-virtual {v12, v8, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 756
    .line 757
    .line 758
    move-result-object v9

    .line 759
    move/from16 v24, v8

    .line 760
    .line 761
    const/4 v8, 0x0

    .line 762
    invoke-virtual {v5, v8, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    iget v8, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 766
    .line 767
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 768
    .line 769
    .line 770
    move-result v15

    .line 771
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 772
    .line 773
    .line 774
    move-result v8

    .line 775
    add-int/2addr v11, v8

    .line 776
    move/from16 v8, v27

    .line 777
    .line 778
    move/from16 v9, v48

    .line 779
    .line 780
    goto :goto_10

    .line 781
    :cond_16
    move/from16 v27, v8

    .line 782
    .line 783
    move/from16 v48, v9

    .line 784
    .line 785
    move/from16 v8, v47

    .line 786
    .line 787
    add-int v47, v8, v27

    .line 788
    .line 789
    if-gez v11, :cond_17

    .line 790
    .line 791
    add-int v47, v47, v11

    .line 792
    .line 793
    add-int/2addr v10, v11

    .line 794
    move/from16 v9, v24

    .line 795
    .line 796
    move/from16 v24, v47

    .line 797
    .line 798
    const/4 v11, 0x0

    .line 799
    goto :goto_11

    .line 800
    :cond_17
    move/from16 v9, v24

    .line 801
    .line 802
    move/from16 v24, v47

    .line 803
    .line 804
    goto :goto_11

    .line 805
    :cond_18
    move/from16 v48, v9

    .line 806
    .line 807
    move/from16 v8, v47

    .line 808
    .line 809
    move v15, v11

    .line 810
    move/from16 v9, v24

    .line 811
    .line 812
    move/from16 v11, v31

    .line 813
    .line 814
    move/from16 v24, v8

    .line 815
    .line 816
    :goto_11
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    .line 817
    .line 818
    .line 819
    move-result v27

    .line 820
    move/from16 v29, v15

    .line 821
    .line 822
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->signum(I)I

    .line 823
    .line 824
    .line 825
    move-result v15

    .line 826
    move/from16 v47, v0

    .line 827
    .line 828
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->signum(I)I

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-ne v15, v0, :cond_19

    .line 833
    .line 834
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    .line 843
    .line 844
    .line 845
    move-result v15

    .line 846
    if-lt v0, v15, :cond_19

    .line 847
    .line 848
    move/from16 v0, v24

    .line 849
    .line 850
    int-to-float v15, v0

    .line 851
    goto :goto_12

    .line 852
    :cond_19
    move/from16 v0, v24

    .line 853
    .line 854
    move/from16 v15, v23

    .line 855
    .line 856
    :goto_12
    sub-float v23, v23, v15

    .line 857
    .line 858
    const/16 v24, 0x0

    .line 859
    .line 860
    if-eqz v28, :cond_1a

    .line 861
    .line 862
    if-le v0, v8, :cond_1a

    .line 863
    .line 864
    cmpg-float v27, v23, v24

    .line 865
    .line 866
    if-gtz v27, :cond_1a

    .line 867
    .line 868
    sub-int/2addr v0, v8

    .line 869
    int-to-float v0, v0

    .line 870
    add-float v24, v0, v23

    .line 871
    .line 872
    :cond_1a
    move/from16 v0, v24

    .line 873
    .line 874
    if-ltz v11, :cond_1b

    .line 875
    .line 876
    goto :goto_13

    .line 877
    :cond_1b
    const-string v8, "negative currentFirstItemScrollOffset"

    .line 878
    .line 879
    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    :goto_13
    neg-int v8, v11

    .line 883
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v23

    .line 887
    check-cast v23, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 888
    .line 889
    if-gtz v48, :cond_1c

    .line 890
    .line 891
    if-gez v19, :cond_1d

    .line 892
    .line 893
    :cond_1c
    move/from16 v49, v0

    .line 894
    .line 895
    goto :goto_15

    .line 896
    :cond_1d
    move/from16 v49, v0

    .line 897
    .line 898
    move/from16 v31, v11

    .line 899
    .line 900
    move-object/from16 v0, v23

    .line 901
    .line 902
    move/from16 v23, v8

    .line 903
    .line 904
    :goto_14
    const/4 v8, 0x0

    .line 905
    goto :goto_17

    .line 906
    :goto_15
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->b()I

    .line 907
    .line 908
    .line 909
    move-result v0

    .line 910
    move-object/from16 v24, v23

    .line 911
    .line 912
    move/from16 v23, v8

    .line 913
    .line 914
    move v8, v11

    .line 915
    const/4 v11, 0x0

    .line 916
    :goto_16
    if-ge v11, v0, :cond_1e

    .line 917
    .line 918
    invoke-virtual {v5, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v27

    .line 922
    check-cast v27, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 923
    .line 924
    move/from16 v31, v0

    .line 925
    .line 926
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    if-eqz v8, :cond_1e

    .line 931
    .line 932
    if-gt v0, v8, :cond_1e

    .line 933
    .line 934
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->b()I

    .line 935
    .line 936
    .line 937
    move-result v27

    .line 938
    move/from16 v32, v0

    .line 939
    .line 940
    add-int/lit8 v0, v27, -0x1

    .line 941
    .line 942
    if-eq v11, v0, :cond_1e

    .line 943
    .line 944
    sub-int v8, v8, v32

    .line 945
    .line 946
    add-int/lit8 v11, v11, 0x1

    .line 947
    .line 948
    invoke-virtual {v5, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    move-object/from16 v24, v0

    .line 953
    .line 954
    check-cast v24, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 955
    .line 956
    move/from16 v0, v31

    .line 957
    .line 958
    goto :goto_16

    .line 959
    :cond_1e
    move/from16 v31, v8

    .line 960
    .line 961
    move-object/from16 v0, v24

    .line 962
    .line 963
    goto :goto_14

    .line 964
    :goto_17
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 965
    .line 966
    .line 967
    move-result v11

    .line 968
    add-int/lit8 v9, v9, -0x1

    .line 969
    .line 970
    if-gt v11, v9, :cond_20

    .line 971
    .line 972
    move-object/from16 v24, v41

    .line 973
    .line 974
    :goto_18
    if-nez v24, :cond_1f

    .line 975
    .line 976
    new-instance v24, Ljava/util/ArrayList;

    .line 977
    .line 978
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .line 980
    .line 981
    :cond_1f
    move/from16 v50, v6

    .line 982
    .line 983
    move-object/from16 v8, v24

    .line 984
    .line 985
    invoke-virtual {v12, v9, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    if-eq v9, v11, :cond_21

    .line 993
    .line 994
    add-int/lit8 v9, v9, -0x1

    .line 995
    .line 996
    move-object/from16 v24, v8

    .line 997
    .line 998
    move/from16 v6, v50

    .line 999
    .line 1000
    const/4 v8, 0x0

    .line 1001
    goto :goto_18

    .line 1002
    :cond_20
    move/from16 v50, v6

    .line 1003
    .line 1004
    move-object/from16 v8, v41

    .line 1005
    .line 1006
    :cond_21
    iget-object v6, v4, Landroidx/collection/IntList;->a:[I

    .line 1007
    .line 1008
    iget v9, v4, Landroidx/collection/IntList;->b:I

    .line 1009
    .line 1010
    add-int/lit8 v9, v9, -0x1

    .line 1011
    .line 1012
    move-object/from16 v24, v6

    .line 1013
    .line 1014
    :goto_19
    const/4 v6, -0x1

    .line 1015
    if-ge v6, v9, :cond_24

    .line 1016
    .line 1017
    aget v6, v24, v9

    .line 1018
    .line 1019
    if-ge v6, v11, :cond_23

    .line 1020
    .line 1021
    if-nez v8, :cond_22

    .line 1022
    .line 1023
    new-instance v8, Ljava/util/ArrayList;

    .line 1024
    .line 1025
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .line 1027
    .line 1028
    :cond_22
    invoke-virtual {v12, v6, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    .line 1034
    .line 1035
    :cond_23
    add-int/lit8 v9, v9, -0x1

    .line 1036
    .line 1037
    goto :goto_19

    .line 1038
    :cond_24
    if-nez v8, :cond_25

    .line 1039
    .line 1040
    move-object/from16 v8, v26

    .line 1041
    .line 1042
    :cond_25
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1043
    .line 1044
    .line 1045
    move-result v6

    .line 1046
    move/from16 v11, v29

    .line 1047
    .line 1048
    const/4 v9, 0x0

    .line 1049
    :goto_1a
    if-ge v9, v6, :cond_26

    .line 1050
    .line 1051
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v24

    .line 1055
    move/from16 v27, v6

    .line 1056
    .line 1057
    move-object/from16 v6, v24

    .line 1058
    .line 1059
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1060
    .line 1061
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 1062
    .line 1063
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    .line 1064
    .line 1065
    .line 1066
    move-result v11

    .line 1067
    add-int/lit8 v9, v9, 0x1

    .line 1068
    .line 1069
    move/from16 v6, v27

    .line 1070
    .line 1071
    goto :goto_1a

    .line 1072
    :cond_26
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v6

    .line 1076
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1077
    .line 1078
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1079
    .line 1080
    add-int/lit8 v9, v50, -0x1

    .line 1081
    .line 1082
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 1083
    .line 1084
    .line 1085
    move-result v6

    .line 1086
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v9

    .line 1090
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1091
    .line 1092
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1093
    .line 1094
    add-int/lit8 v9, v9, 0x1

    .line 1095
    .line 1096
    if-gt v9, v6, :cond_28

    .line 1097
    .line 1098
    move-object/from16 v24, v41

    .line 1099
    .line 1100
    :goto_1b
    if-nez v24, :cond_27

    .line 1101
    .line 1102
    new-instance v24, Ljava/util/ArrayList;

    .line 1103
    .line 1104
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    :cond_27
    move/from16 v27, v11

    .line 1108
    .line 1109
    move/from16 v51, v15

    .line 1110
    .line 1111
    move-object/from16 v11, v24

    .line 1112
    .line 1113
    invoke-virtual {v12, v9, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v15

    .line 1117
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    if-eq v9, v6, :cond_29

    .line 1121
    .line 1122
    add-int/lit8 v9, v9, 0x1

    .line 1123
    .line 1124
    move-object/from16 v24, v11

    .line 1125
    .line 1126
    move/from16 v11, v27

    .line 1127
    .line 1128
    move/from16 v15, v51

    .line 1129
    .line 1130
    goto :goto_1b

    .line 1131
    :cond_28
    move/from16 v27, v11

    .line 1132
    .line 1133
    move/from16 v51, v15

    .line 1134
    .line 1135
    move-object/from16 v11, v41

    .line 1136
    .line 1137
    :cond_29
    if-eqz v11, :cond_2a

    .line 1138
    .line 1139
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v9

    .line 1143
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1144
    .line 1145
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1146
    .line 1147
    if-le v9, v6, :cond_2a

    .line 1148
    .line 1149
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v6

    .line 1153
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1154
    .line 1155
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1156
    .line 1157
    :cond_2a
    iget-object v9, v4, Landroidx/collection/IntList;->a:[I

    .line 1158
    .line 1159
    iget v4, v4, Landroidx/collection/IntList;->b:I

    .line 1160
    .line 1161
    move-object v15, v11

    .line 1162
    const/4 v11, 0x0

    .line 1163
    :goto_1c
    if-ge v11, v4, :cond_2d

    .line 1164
    .line 1165
    move/from16 v24, v4

    .line 1166
    .line 1167
    aget v4, v9, v11

    .line 1168
    .line 1169
    if-le v4, v6, :cond_2c

    .line 1170
    .line 1171
    if-nez v15, :cond_2b

    .line 1172
    .line 1173
    new-instance v15, Ljava/util/ArrayList;

    .line 1174
    .line 1175
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    :cond_2b
    invoke-virtual {v12, v4, v13, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v4

    .line 1182
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    :cond_2c
    add-int/lit8 v11, v11, 0x1

    .line 1186
    .line 1187
    move/from16 v4, v24

    .line 1188
    .line 1189
    goto :goto_1c

    .line 1190
    :cond_2d
    if-nez v15, :cond_2e

    .line 1191
    .line 1192
    move-object/from16 v13, v26

    .line 1193
    .line 1194
    goto :goto_1d

    .line 1195
    :cond_2e
    move-object v13, v15

    .line 1196
    :goto_1d
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1197
    .line 1198
    .line 1199
    move-result v4

    .line 1200
    move/from16 v11, v27

    .line 1201
    .line 1202
    const/4 v6, 0x0

    .line 1203
    :goto_1e
    if-ge v6, v4, :cond_2f

    .line 1204
    .line 1205
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v9

    .line 1209
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1210
    .line 1211
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    .line 1212
    .line 1213
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 1214
    .line 1215
    .line 1216
    move-result v11

    .line 1217
    add-int/lit8 v6, v6, 0x1

    .line 1218
    .line 1219
    goto :goto_1e

    .line 1220
    :cond_2f
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v4

    .line 1228
    if-eqz v4, :cond_30

    .line 1229
    .line 1230
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1231
    .line 1232
    .line 1233
    move-result v4

    .line 1234
    if-eqz v4, :cond_30

    .line 1235
    .line 1236
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1237
    .line 1238
    .line 1239
    move-result v4

    .line 1240
    if-eqz v4, :cond_30

    .line 1241
    .line 1242
    move/from16 v4, v20

    .line 1243
    .line 1244
    goto :goto_1f

    .line 1245
    :cond_30
    const/4 v4, 0x0

    .line 1246
    :goto_1f
    invoke-static {v11, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1247
    .line 1248
    .line 1249
    move-result v6

    .line 1250
    invoke-static {v10, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1251
    .line 1252
    .line 1253
    move-result v9

    .line 1254
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 1255
    .line 1256
    .line 1257
    move-result v11

    .line 1258
    if-ge v10, v11, :cond_31

    .line 1259
    .line 1260
    move/from16 v11, v20

    .line 1261
    .line 1262
    goto :goto_20

    .line 1263
    :cond_31
    const/4 v11, 0x0

    .line 1264
    :goto_20
    if-eqz v11, :cond_33

    .line 1265
    .line 1266
    if-nez v23, :cond_32

    .line 1267
    .line 1268
    goto :goto_21

    .line 1269
    :cond_32
    const-string v14, "non-zero itemsScrollOffset"

    .line 1270
    .line 1271
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    :cond_33
    :goto_21
    new-instance v14, Ljava/util/ArrayList;

    .line 1275
    .line 1276
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1277
    .line 1278
    .line 1279
    move-result v15

    .line 1280
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v24

    .line 1284
    add-int v24, v24, v15

    .line 1285
    .line 1286
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 1287
    .line 1288
    .line 1289
    move-result v15

    .line 1290
    add-int v15, v15, v24

    .line 1291
    .line 1292
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1293
    .line 1294
    .line 1295
    if-eqz v11, :cond_3a

    .line 1296
    .line 1297
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1298
    .line 1299
    .line 1300
    move-result v8

    .line 1301
    if-eqz v8, :cond_34

    .line 1302
    .line 1303
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 1304
    .line 1305
    .line 1306
    move-result v8

    .line 1307
    if-eqz v8, :cond_34

    .line 1308
    .line 1309
    goto :goto_22

    .line 1310
    :cond_34
    const-string v8, "no extra items"

    .line 1311
    .line 1312
    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    :goto_22
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1316
    .line 1317
    .line 1318
    move-result v8

    .line 1319
    new-array v11, v8, [I

    .line 1320
    .line 1321
    const/4 v13, 0x0

    .line 1322
    :goto_23
    if-ge v13, v8, :cond_35

    .line 1323
    .line 1324
    invoke-virtual {v5, v13}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v15

    .line 1328
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1329
    .line 1330
    iget v15, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 1331
    .line 1332
    aput v15, v11, v13

    .line 1333
    .line 1334
    add-int/lit8 v13, v13, 0x1

    .line 1335
    .line 1336
    goto :goto_23

    .line 1337
    :cond_35
    new-array v8, v8, [I

    .line 1338
    .line 1339
    move-object/from16 v13, v40

    .line 1340
    .line 1341
    if-eqz v13, :cond_39

    .line 1342
    .line 1343
    invoke-interface {v13, v9, v1, v11, v8}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(ILandroidx/compose/ui/layout/MeasureScope;[I[I)V

    .line 1344
    .line 1345
    .line 1346
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->r([I)Lkotlin/ranges/IntRange;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v11

    .line 1350
    iget v13, v11, Lkotlin/ranges/IntProgression;->k:I

    .line 1351
    .line 1352
    iget v11, v11, Lkotlin/ranges/IntProgression;->l:I

    .line 1353
    .line 1354
    if-lez v11, :cond_36

    .line 1355
    .line 1356
    if-gez v13, :cond_37

    .line 1357
    .line 1358
    :cond_36
    if-gez v11, :cond_38

    .line 1359
    .line 1360
    if-gtz v13, :cond_38

    .line 1361
    .line 1362
    :cond_37
    move-object/from16 v40, v0

    .line 1363
    .line 1364
    const/4 v15, 0x0

    .line 1365
    :goto_24
    aget v0, v8, v15

    .line 1366
    .line 1367
    invoke-virtual {v5, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v21

    .line 1371
    move-object/from16 v1, v21

    .line 1372
    .line 1373
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1374
    .line 1375
    invoke-virtual {v1, v0, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l(III)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    if-eq v15, v13, :cond_3d

    .line 1382
    .line 1383
    add-int/2addr v15, v11

    .line 1384
    move-object/from16 v1, p1

    .line 1385
    .line 1386
    goto :goto_24

    .line 1387
    :cond_38
    move-object/from16 v40, v0

    .line 1388
    .line 1389
    goto :goto_28

    .line 1390
    :cond_39
    invoke-static/range {v21 .. v21}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    throw v0

    .line 1395
    :cond_3a
    move-object/from16 v40, v0

    .line 1396
    .line 1397
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1398
    .line 1399
    .line 1400
    move-result v0

    .line 1401
    move/from16 v11, v23

    .line 1402
    .line 1403
    const/4 v1, 0x0

    .line 1404
    :goto_25
    if-ge v1, v0, :cond_3b

    .line 1405
    .line 1406
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v15

    .line 1410
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1411
    .line 1412
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 1413
    .line 1414
    .line 1415
    move-result v21

    .line 1416
    sub-int v11, v11, v21

    .line 1417
    .line 1418
    invoke-virtual {v15, v11, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l(III)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    .line 1423
    .line 1424
    add-int/lit8 v1, v1, 0x1

    .line 1425
    .line 1426
    goto :goto_25

    .line 1427
    :cond_3b
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1428
    .line 1429
    .line 1430
    move-result v0

    .line 1431
    move/from16 v8, v23

    .line 1432
    .line 1433
    const/4 v1, 0x0

    .line 1434
    :goto_26
    if-ge v1, v0, :cond_3c

    .line 1435
    .line 1436
    invoke-virtual {v5, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v11

    .line 1440
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1441
    .line 1442
    invoke-virtual {v11, v8, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l(III)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 1449
    .line 1450
    .line 1451
    move-result v11

    .line 1452
    add-int/2addr v8, v11

    .line 1453
    add-int/lit8 v1, v1, 0x1

    .line 1454
    .line 1455
    goto :goto_26

    .line 1456
    :cond_3c
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    const/4 v1, 0x0

    .line 1461
    :goto_27
    if-ge v1, v0, :cond_3d

    .line 1462
    .line 1463
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v11

    .line 1467
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1468
    .line 1469
    invoke-virtual {v11, v8, v6, v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->l(III)V

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 1476
    .line 1477
    .line 1478
    move-result v11

    .line 1479
    add-int/2addr v8, v11

    .line 1480
    add-int/lit8 v1, v1, 0x1

    .line 1481
    .line 1482
    goto :goto_27

    .line 1483
    :cond_3d
    :goto_28
    if-nez v25, :cond_3e

    .line 1484
    .line 1485
    move/from16 v15, v51

    .line 1486
    .line 1487
    float-to-int v0, v15

    .line 1488
    move-object/from16 v1, v38

    .line 1489
    .line 1490
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 1491
    .line 1492
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->d:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 1493
    .line 1494
    const/16 v29, 0x1

    .line 1495
    .line 1496
    move-object/from16 v26, v1

    .line 1497
    .line 1498
    move/from16 v23, v6

    .line 1499
    .line 1500
    move/from16 v24, v9

    .line 1501
    .line 1502
    move/from16 v32, v10

    .line 1503
    .line 1504
    move-object/from16 v27, v12

    .line 1505
    .line 1506
    move-object/from16 v25, v14

    .line 1507
    .line 1508
    move-object/from16 v21, v22

    .line 1509
    .line 1510
    move/from16 v22, v0

    .line 1511
    .line 1512
    invoke-virtual/range {v21 .. v34}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1513
    .line 1514
    .line 1515
    move-object/from16 v8, v25

    .line 1516
    .line 1517
    move-object/from16 v0, v27

    .line 1518
    .line 1519
    :goto_29
    move/from16 v1, v28

    .line 1520
    .line 1521
    goto :goto_2a

    .line 1522
    :cond_3e
    move-object v0, v12

    .line 1523
    move-object v8, v14

    .line 1524
    move-object/from16 v21, v22

    .line 1525
    .line 1526
    move/from16 v15, v51

    .line 1527
    .line 1528
    goto :goto_29

    .line 1529
    :goto_2a
    if-nez v1, :cond_40

    .line 1530
    .line 1531
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    .line 1532
    .line 1533
    .line 1534
    move-result-wide v11

    .line 1535
    const-wide/16 v13, 0x0

    .line 1536
    .line 1537
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v13

    .line 1541
    if-nez v13, :cond_40

    .line 1542
    .line 1543
    shr-long v13, v11, v35

    .line 1544
    .line 1545
    long-to-int v13, v13

    .line 1546
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    .line 1547
    .line 1548
    .line 1549
    move-result v6

    .line 1550
    invoke-static {v6, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1551
    .line 1552
    .line 1553
    move-result v6

    .line 1554
    and-long v11, v11, v36

    .line 1555
    .line 1556
    long-to-int v11, v11

    .line 1557
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 1558
    .line 1559
    .line 1560
    move-result v11

    .line 1561
    invoke-static {v11, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1562
    .line 1563
    .line 1564
    move-result v2

    .line 1565
    if-eq v2, v9, :cond_3f

    .line 1566
    .line 1567
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1568
    .line 1569
    .line 1570
    move-result v3

    .line 1571
    const/4 v9, 0x0

    .line 1572
    :goto_2b
    if-ge v9, v3, :cond_3f

    .line 1573
    .line 1574
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v11

    .line 1578
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1579
    .line 1580
    iput v2, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    .line 1581
    .line 1582
    iget v12, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->f:I

    .line 1583
    .line 1584
    add-int/2addr v12, v2

    .line 1585
    iput v12, v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->u:I

    .line 1586
    .line 1587
    add-int/lit8 v9, v9, 0x1

    .line 1588
    .line 1589
    goto :goto_2b

    .line 1590
    :cond_3f
    move/from16 v28, v2

    .line 1591
    .line 1592
    :goto_2c
    move/from16 v27, v6

    .line 1593
    .line 1594
    goto :goto_2d

    .line 1595
    :cond_40
    move/from16 v28, v9

    .line 1596
    .line 1597
    goto :goto_2c

    .line 1598
    :goto_2d
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v2

    .line 1602
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1603
    .line 1604
    if-eqz v2, :cond_41

    .line 1605
    .line 1606
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1607
    .line 1608
    move/from16 v22, v2

    .line 1609
    .line 1610
    goto :goto_2e

    .line 1611
    :cond_41
    const/16 v22, 0x0

    .line 1612
    .line 1613
    :goto_2e
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v2

    .line 1617
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1618
    .line 1619
    if-eqz v2, :cond_42

    .line 1620
    .line 1621
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1622
    .line 1623
    move/from16 v23, v2

    .line 1624
    .line 1625
    goto :goto_2f

    .line 1626
    :cond_42
    const/16 v23, 0x0

    .line 1627
    .line 1628
    :goto_2f
    move-object/from16 v2, v38

    .line 1629
    .line 1630
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 1631
    .line 1632
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1633
    .line 1634
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    .line 1636
    .line 1637
    sget-object v25, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 1638
    .line 1639
    new-instance v2, Lc;

    .line 1640
    .line 1641
    const/16 v3, 0x1c

    .line 1642
    .line 1643
    invoke-direct {v2, v3, v0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 1644
    .line 1645
    .line 1646
    move-object/from16 v3, p0

    .line 1647
    .line 1648
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->g:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 1649
    .line 1650
    move-object/from16 v29, v2

    .line 1651
    .line 1652
    move-object/from16 v21, v3

    .line 1653
    .line 1654
    move-object/from16 v24, v8

    .line 1655
    .line 1656
    move/from16 v26, v48

    .line 1657
    .line 1658
    invoke-static/range {v21 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->a(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/ArrayList;Landroidx/collection/IntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v25

    .line 1662
    move/from16 v6, v27

    .line 1663
    .line 1664
    if-eqz v4, :cond_44

    .line 1665
    .line 1666
    invoke-static/range {v24 .. v24}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v2

    .line 1670
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1671
    .line 1672
    if-eqz v2, :cond_43

    .line 1673
    .line 1674
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1675
    .line 1676
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    goto :goto_30

    .line 1681
    :cond_43
    move-object/from16 v2, v41

    .line 1682
    .line 1683
    goto :goto_30

    .line 1684
    :cond_44
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v2

    .line 1688
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1689
    .line 1690
    if-eqz v2, :cond_43

    .line 1691
    .line 1692
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1693
    .line 1694
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    :goto_30
    if-eqz v4, :cond_46

    .line 1699
    .line 1700
    invoke-static/range {v24 .. v24}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1705
    .line 1706
    if-eqz v3, :cond_45

    .line 1707
    .line 1708
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1709
    .line 1710
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v3

    .line 1714
    :goto_31
    move/from16 v5, v47

    .line 1715
    .line 1716
    move/from16 v4, v50

    .line 1717
    .line 1718
    goto :goto_32

    .line 1719
    :cond_45
    move-object/from16 v3, v41

    .line 1720
    .line 1721
    goto :goto_31

    .line 1722
    :cond_46
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v3

    .line 1726
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1727
    .line 1728
    if-eqz v3, :cond_45

    .line 1729
    .line 1730
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1731
    .line 1732
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v3

    .line 1736
    goto :goto_31

    .line 1737
    :goto_32
    if-lt v5, v4, :cond_48

    .line 1738
    .line 1739
    if-le v10, v7, :cond_47

    .line 1740
    .line 1741
    goto :goto_33

    .line 1742
    :cond_47
    move-object v5, v3

    .line 1743
    const/4 v3, 0x0

    .line 1744
    goto :goto_34

    .line 1745
    :cond_48
    :goto_33
    move-object v5, v3

    .line 1746
    move/from16 v3, v20

    .line 1747
    .line 1748
    :goto_34
    new-instance v22, Lha;

    .line 1749
    .line 1750
    const/16 v27, 0x1

    .line 1751
    .line 1752
    move/from16 v26, v1

    .line 1753
    .line 1754
    move-object/from16 v23, v42

    .line 1755
    .line 1756
    invoke-direct/range {v22 .. v27}, Lha;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 1757
    .line 1758
    .line 1759
    move-object/from16 v7, v22

    .line 1760
    .line 1761
    move-object/from16 v8, v24

    .line 1762
    .line 1763
    move-object/from16 v1, v25

    .line 1764
    .line 1765
    add-int v6, v6, v18

    .line 1766
    .line 1767
    move-wide/from16 v9, p2

    .line 1768
    .line 1769
    invoke-static {v6, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1770
    .line 1771
    .line 1772
    move-result v6

    .line 1773
    add-int v11, v28, v16

    .line 1774
    .line 1775
    invoke-static {v11, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1776
    .line 1777
    .line 1778
    move-result v9

    .line 1779
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v10

    .line 1783
    move-object/from16 v11, v44

    .line 1784
    .line 1785
    invoke-interface {v11, v6, v9, v10, v7}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v6

    .line 1789
    if-eqz v2, :cond_49

    .line 1790
    .line 1791
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1792
    .line 1793
    .line 1794
    move-result v2

    .line 1795
    goto :goto_35

    .line 1796
    :cond_49
    const/4 v2, 0x0

    .line 1797
    :goto_35
    if-eqz v5, :cond_4a

    .line 1798
    .line 1799
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1800
    .line 1801
    .line 1802
    move-result v5

    .line 1803
    goto :goto_36

    .line 1804
    :cond_4a
    const/4 v5, 0x0

    .line 1805
    :goto_36
    invoke-static {v2, v5, v8, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->a(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v13

    .line 1809
    move/from16 v51, v15

    .line 1810
    .line 1811
    move/from16 v15, v17

    .line 1812
    .line 1813
    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 1814
    .line 1815
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1816
    .line 1817
    .line 1818
    move-result v2

    .line 1819
    const/4 v5, 0x0

    .line 1820
    const/4 v12, 0x0

    .line 1821
    :goto_37
    if-ge v5, v2, :cond_4b

    .line 1822
    .line 1823
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v7

    .line 1827
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1828
    .line 1829
    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 1830
    .line 1831
    add-int/2addr v12, v7

    .line 1832
    add-int/lit8 v5, v5, 0x1

    .line 1833
    .line 1834
    goto :goto_37

    .line 1835
    :cond_4b
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 1836
    .line 1837
    move-object/from16 v22, v11

    .line 1838
    .line 1839
    iget-wide v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    .line 1840
    .line 1841
    move-object/from16 v9, p1

    .line 1842
    .line 1843
    move-object/from16 v52, v0

    .line 1844
    .line 1845
    move-object v0, v1

    .line 1846
    move/from16 v16, v4

    .line 1847
    .line 1848
    move-object v5, v6

    .line 1849
    move/from16 v2, v31

    .line 1850
    .line 1851
    move-object/from16 v8, v33

    .line 1852
    .line 1853
    move/from16 v14, v39

    .line 1854
    .line 1855
    move-object/from16 v1, v40

    .line 1856
    .line 1857
    move/from16 v18, v43

    .line 1858
    .line 1859
    move/from16 v7, v45

    .line 1860
    .line 1861
    move/from16 v6, v49

    .line 1862
    .line 1863
    move/from16 v4, v51

    .line 1864
    .line 1865
    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 1866
    .line 1867
    .line 1868
    goto/16 :goto_7

    .line 1869
    .line 1870
    :goto_38
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 1871
    .line 1872
    .line 1873
    move-result v0

    .line 1874
    move-object/from16 v14, v46

    .line 1875
    .line 1876
    const/4 v8, 0x0

    .line 1877
    invoke-virtual {v14, v4, v0, v8}, Landroidx/compose/foundation/lazy/LazyListState;->g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 1878
    .line 1879
    .line 1880
    iget-object v0, v14, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 1881
    .line 1882
    instance-of v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 1883
    .line 1884
    if-eqz v1, :cond_4c

    .line 1885
    .line 1886
    move-object/from16 v41, v0

    .line 1887
    .line 1888
    check-cast v41, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 1889
    .line 1890
    :cond_4c
    move-object/from16 v0, v41

    .line 1891
    .line 1892
    if-eqz v0, :cond_51

    .line 1893
    .line 1894
    iget-object v1, v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 1895
    .line 1896
    const-string v2, "compose:lazy:cache_window:keepAroundItems"

    .line 1897
    .line 1898
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1899
    .line 1900
    .line 1901
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v2

    .line 1905
    if-eqz v2, :cond_50

    .line 1906
    .line 1907
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1908
    .line 1909
    .line 1910
    move-result v2

    .line 1911
    if-nez v2, :cond_50

    .line 1912
    .line 1913
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v2

    .line 1917
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1918
    .line 1919
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1920
    .line 1921
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v1

    .line 1925
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1926
    .line 1927
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 1928
    .line 1929
    iget v3, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1930
    .line 1931
    move-object/from16 v12, v52

    .line 1932
    .line 1933
    :goto_39
    iget-object v5, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 1934
    .line 1935
    if-ge v3, v2, :cond_4e

    .line 1936
    .line 1937
    if-ltz v3, :cond_4d

    .line 1938
    .line 1939
    :try_start_2
    move-object/from16 v15, v38

    .line 1940
    .line 1941
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 1942
    .line 1943
    iget-object v6, v15, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1944
    .line 1945
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v6

    .line 1949
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 1950
    .line 1951
    if-ge v3, v6, :cond_4d

    .line 1952
    .line 1953
    invoke-virtual {v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->a(I)Ljava/util/List;

    .line 1954
    .line 1955
    .line 1956
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    .line 1957
    .line 1958
    goto :goto_39

    .line 1959
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    .line 1960
    .line 1961
    iget v0, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 1962
    .line 1963
    if-gt v1, v0, :cond_50

    .line 1964
    .line 1965
    :goto_3a
    if-ltz v1, :cond_4f

    .line 1966
    .line 1967
    move-object/from16 v15, v38

    .line 1968
    .line 1969
    check-cast v15, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 1970
    .line 1971
    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1972
    .line 1973
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v2

    .line 1977
    iget v2, v2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 1978
    .line 1979
    if-ge v1, v2, :cond_4f

    .line 1980
    .line 1981
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->a(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1982
    .line 1983
    .line 1984
    :cond_4f
    if-eq v1, v0, :cond_50

    .line 1985
    .line 1986
    add-int/lit8 v1, v1, 0x1

    .line 1987
    .line 1988
    goto :goto_3a

    .line 1989
    :cond_50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1990
    .line 1991
    .line 1992
    return-object v4

    .line 1993
    :catchall_0
    move-exception v0

    .line 1994
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1995
    .line 1996
    .line 1997
    throw v0

    .line 1998
    :cond_51
    return-object v4

    .line 1999
    :catchall_1
    move-exception v0

    .line 2000
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2001
    .line 2002
    .line 2003
    throw v0

    .line 2004
    :cond_52
    invoke-static/range {v21 .. v21}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v0

    .line 2008
    throw v0
.end method
