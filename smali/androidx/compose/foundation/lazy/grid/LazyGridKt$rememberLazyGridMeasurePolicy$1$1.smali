.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field public final synthetic e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic h:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->g:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 17
    .line 18
    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->h:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-wide/from16 v10, p2

    .line 6
    .line 7
    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->k:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 8
    .line 9
    iget-object v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 10
    .line 11
    iget-object v1, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->s:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 17
    .line 18
    const/16 v21, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v31, 0x0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move/from16 v31, v21

    .line 33
    .line 34
    :goto_1
    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 35
    .line 36
    invoke-static {v10, v11, v15}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {v12, v1}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget v4, v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b:F

    .line 66
    .line 67
    invoke-interface {v12, v4}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget v2, v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;->d:F

    .line 72
    .line 73
    invoke-interface {v12, v2}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    add-int/2addr v2, v6

    .line 78
    add-int/2addr v3, v1

    .line 79
    sub-int v19, v2, v6

    .line 80
    .line 81
    neg-int v4, v3

    .line 82
    neg-int v5, v2

    .line 83
    invoke-static {v4, v5, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->c:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 94
    .line 95
    move-object v8, v7

    .line 96
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 97
    .line 98
    iget-object v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 99
    .line 100
    iget-object v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->a:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 101
    .line 102
    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    .line 103
    .line 104
    check-cast v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 105
    .line 106
    move/from16 v17, v2

    .line 107
    .line 108
    iget-object v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 109
    .line 110
    move/from16 v18, v3

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-wide v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->b:J

    .line 115
    .line 116
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/Constraints;->b(JJ)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    iget v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->c:F

    .line 123
    .line 124
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    cmpg-float v2, v2, v3

    .line 129
    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    iget-object v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    :goto_2
    move-object v14, v2

    .line 138
    goto :goto_3

    .line 139
    :cond_2
    iput-wide v4, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->b:J

    .line 140
    .line 141
    invoke-interface {v12}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iput v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->c:F

    .line 146
    .line 147
    iget-object v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->a:Ld;

    .line 148
    .line 149
    new-instance v3, Landroidx/compose/ui/unit/Constraints;

    .line 150
    .line 151
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v9, v3}, Ld;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 159
    .line 160
    iput-object v2, v14, Landroidx/compose/foundation/lazy/grid/GridSlotCache;->d:Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :goto_3
    iget-object v2, v14, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->a:[I

    .line 164
    .line 165
    array-length v2, v2

    .line 166
    iget v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    .line 167
    .line 168
    move-object/from16 v23, v14

    .line 169
    .line 170
    if-eq v2, v3, :cond_3

    .line 171
    .line 172
    iput v2, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    .line 173
    .line 174
    iget-object v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->b:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 180
    .line 181
    move-object/from16 v36, v15

    .line 182
    .line 183
    const/4 v15, 0x0

    .line 184
    invoke-direct {v14, v15, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iput v15, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c:I

    .line 191
    .line 192
    iput v15, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->d:I

    .line 193
    .line 194
    iput v15, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e:I

    .line 195
    .line 196
    const/4 v3, -0x1

    .line 197
    iput v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->f:I

    .line 198
    .line 199
    iget-object v3, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->g:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_3
    move-object/from16 v36, v15

    .line 206
    .line 207
    const/4 v15, 0x0

    .line 208
    :goto_4
    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 209
    .line 210
    invoke-interface {v14}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 215
    .line 216
    .line 217
    move-result v25

    .line 218
    move-object v3, v7

    .line 219
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 220
    .line 221
    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 222
    .line 223
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    iget v3, v3, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 228
    .line 229
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 230
    .line 231
    .line 232
    move-result v16

    .line 233
    sub-int v15, v16, v17

    .line 234
    .line 235
    move/from16 v30, v2

    .line 236
    .line 237
    int-to-long v1, v1

    .line 238
    const/16 v16, 0x20

    .line 239
    .line 240
    shl-long v1, v1, v16

    .line 241
    .line 242
    move-wide/from16 v26, v1

    .line 243
    .line 244
    int-to-long v1, v6

    .line 245
    const-wide v38, 0xffffffffL

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    and-long v1, v1, v38

    .line 251
    .line 252
    or-long v1, v26, v1

    .line 253
    .line 254
    new-instance v28, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 255
    .line 256
    move-wide/from16 v26, v4

    .line 257
    .line 258
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 259
    .line 260
    move/from16 v24, v3

    .line 261
    .line 262
    move-object v3, v9

    .line 263
    move/from16 v4, v25

    .line 264
    .line 265
    move-wide/from16 v47, v26

    .line 266
    .line 267
    move-object/from16 v27, v8

    .line 268
    .line 269
    move-wide v8, v1

    .line 270
    move-object v2, v7

    .line 271
    move/from16 v7, v19

    .line 272
    .line 273
    move-object/from16 v1, v28

    .line 274
    .line 275
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;ILandroidx/compose/foundation/lazy/grid/LazyGridState;IIJ)V

    .line 276
    .line 277
    .line 278
    new-instance v22, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    .line 279
    .line 280
    move-object/from16 v26, v28

    .line 281
    .line 282
    invoke-direct/range {v22 .. v27}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    .line 283
    .line 284
    .line 285
    move-object/from16 v7, v22

    .line 286
    .line 287
    move/from16 v3, v24

    .line 288
    .line 289
    move-object/from16 v5, v26

    .line 290
    .line 291
    move-object/from16 v1, v27

    .line 292
    .line 293
    new-instance v8, Lb;

    .line 294
    .line 295
    const/16 v9, 0x15

    .line 296
    .line 297
    invoke-direct {v8, v9, v1, v7}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    new-instance v9, Lc;

    .line 301
    .line 302
    move/from16 v40, v4

    .line 303
    .line 304
    const/16 v4, 0x1a

    .line 305
    .line 306
    invoke-direct {v9, v4, v1}, Lc;-><init>(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const/16 v49, 0x0

    .line 314
    .line 315
    if-eqz v4, :cond_4

    .line 316
    .line 317
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 318
    .line 319
    .line 320
    move-result-object v22

    .line 321
    move-object/from16 v41, v7

    .line 322
    .line 323
    move-object/from16 v7, v22

    .line 324
    .line 325
    :goto_5
    move-object/from16 v42, v8

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_4
    move-object/from16 v41, v7

    .line 329
    .line 330
    move-object/from16 v7, v49

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :goto_6
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    move-object/from16 v43, v9

    .line 338
    .line 339
    :try_start_0
    iget-object v9, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 340
    .line 341
    move-object/from16 v22, v14

    .line 342
    .line 343
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->a()I

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    move/from16 v50, v15

    .line 348
    .line 349
    iget-object v15, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->d:Ljava/lang/Object;

    .line 350
    .line 351
    invoke-static {v14, v2, v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    if-eq v14, v15, :cond_5

    .line 356
    .line 357
    move/from16 v51, v6

    .line 358
    .line 359
    iget-object v6, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->a:Landroidx/compose/runtime/MutableIntState;

    .line 360
    .line 361
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 362
    .line 363
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 364
    .line 365
    .line 366
    iget-object v6, v9, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 367
    .line 368
    invoke-virtual {v6, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->b(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_5
    move/from16 v51, v6

    .line 373
    .line 374
    :goto_7
    if-lt v15, v3, :cond_7

    .line 375
    .line 376
    if-gtz v3, :cond_6

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_6
    add-int/lit8 v6, v3, -0x1

    .line 380
    .line 381
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    const/4 v6, 0x0

    .line 386
    goto :goto_9

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    goto/16 :goto_54

    .line 389
    .line 390
    :cond_7
    :goto_8
    invoke-virtual {v1, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->b()I

    .line 395
    .line 396
    .line 397
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_9
    invoke-static {v4, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 399
    .line 400
    .line 401
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 402
    .line 403
    iget-object v7, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 404
    .line 405
    invoke-static {v2, v4, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Landroidx/collection/MutableIntList;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-nez v4, :cond_9

    .line 414
    .line 415
    if-nez v31, :cond_8

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_8
    iget-object v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->v:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 419
    .line 420
    iget-object v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    .line 421
    .line 422
    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 423
    .line 424
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 425
    .line 426
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    check-cast v4, Ljava/lang/Number;

    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    goto :goto_b

    .line 437
    :cond_9
    :goto_a
    iget v4, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 438
    .line 439
    :goto_b
    iget-object v7, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 440
    .line 441
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 442
    .line 443
    .line 444
    move-result v29

    .line 445
    iget-object v8, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 446
    .line 447
    iget-object v9, v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r:Landroidx/compose/runtime/MutableState;

    .line 448
    .line 449
    if-ltz v51, :cond_a

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_a
    const-string v14, "negative beforeContentPadding"

    .line 453
    .line 454
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :goto_c
    if-ltz v19, :cond_b

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_b
    const-string v14, "negative afterContentPadding"

    .line 461
    .line 462
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :goto_d
    iget-object v14, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 466
    .line 467
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 468
    .line 469
    move/from16 v23, v1

    .line 470
    .line 471
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->g:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 472
    .line 473
    move/from16 v24, v4

    .line 474
    .line 475
    move-object/from16 v28, v5

    .line 476
    .line 477
    const-wide/16 v4, 0x0

    .line 478
    .line 479
    move-object/from16 v52, v14

    .line 480
    .line 481
    sget-object v14, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 482
    .line 483
    if-gtz v3, :cond_d

    .line 484
    .line 485
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 486
    .line 487
    .line 488
    move-result v24

    .line 489
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 490
    .line 491
    .line 492
    move-result v25

    .line 493
    new-instance v26, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .line 497
    .line 498
    move-object/from16 v0, v52

    .line 499
    .line 500
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 501
    .line 502
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->c:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 503
    .line 504
    const/16 v32, 0x0

    .line 505
    .line 506
    const/16 v33, 0x0

    .line 507
    .line 508
    const/16 v23, 0x0

    .line 509
    .line 510
    move-object/from16 v27, v0

    .line 511
    .line 512
    move-object/from16 v35, v1

    .line 513
    .line 514
    move-object/from16 v22, v7

    .line 515
    .line 516
    move-object/from16 v34, v15

    .line 517
    .line 518
    invoke-virtual/range {v22 .. v35}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, v22

    .line 522
    .line 523
    if-nez v29, :cond_c

    .line 524
    .line 525
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    .line 526
    .line 527
    .line 528
    move-result-wide v0

    .line 529
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-nez v2, :cond_c

    .line 534
    .line 535
    shr-long v2, v0, v16

    .line 536
    .line 537
    long-to-int v2, v2

    .line 538
    move-wide/from16 v3, v47

    .line 539
    .line 540
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 541
    .line 542
    .line 543
    move-result v24

    .line 544
    and-long v0, v0, v38

    .line 545
    .line 546
    long-to-int v0, v0

    .line 547
    invoke-static {v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 548
    .line 549
    .line 550
    move-result v25

    .line 551
    :cond_c
    new-instance v0, La7;

    .line 552
    .line 553
    const/16 v1, 0xf

    .line 554
    .line 555
    invoke-direct {v0, v1}, La7;-><init>(I)V

    .line 556
    .line 557
    .line 558
    add-int v1, v24, v18

    .line 559
    .line 560
    invoke-static {v1, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    add-int v2, v25, v17

    .line 565
    .line 566
    invoke-static {v2, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-interface {v12, v1, v2, v3, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    move/from16 v7, v51

    .line 579
    .line 580
    neg-int v15, v7

    .line 581
    add-int v16, v50, v19

    .line 582
    .line 583
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 584
    .line 585
    move-object v1, v13

    .line 586
    const/4 v13, 0x0

    .line 587
    const/16 v17, 0x0

    .line 588
    .line 589
    move-object v2, v1

    .line 590
    const/4 v1, 0x0

    .line 591
    move-object v3, v2

    .line 592
    const/4 v2, 0x0

    .line 593
    move-object v4, v3

    .line 594
    const/4 v3, 0x0

    .line 595
    move-object v6, v4

    .line 596
    const/4 v4, 0x0

    .line 597
    move-object v7, v6

    .line 598
    const/4 v6, 0x0

    .line 599
    move-object v8, v7

    .line 600
    const/4 v7, 0x0

    .line 601
    move-object/from16 v9, p1

    .line 602
    .line 603
    move-object/from16 v56, v8

    .line 604
    .line 605
    move-object/from16 v54, v12

    .line 606
    .line 607
    move/from16 v10, v30

    .line 608
    .line 609
    move-object/from16 v8, v34

    .line 610
    .line 611
    move-object/from16 v18, v36

    .line 612
    .line 613
    move/from16 v20, v40

    .line 614
    .line 615
    move-object/from16 v55, v41

    .line 616
    .line 617
    move-object/from16 v11, v42

    .line 618
    .line 619
    move-object/from16 v12, v43

    .line 620
    .line 621
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v63, v55

    .line 625
    .line 626
    goto/16 :goto_4f

    .line 627
    .line 628
    :cond_d
    move-object/from16 v35, v1

    .line 629
    .line 630
    move-object v1, v7

    .line 631
    move-object/from16 v37, v9

    .line 632
    .line 633
    move-object/from16 v54, v12

    .line 634
    .line 635
    move-object/from16 v56, v13

    .line 636
    .line 637
    move-object v12, v14

    .line 638
    move-object/from16 v34, v15

    .line 639
    .line 640
    move-object/from16 v13, v28

    .line 641
    .line 642
    move/from16 v14, v40

    .line 643
    .line 644
    move-object/from16 v55, v41

    .line 645
    .line 646
    move-object/from16 v15, v42

    .line 647
    .line 648
    move-object/from16 v36, v43

    .line 649
    .line 650
    move/from16 v7, v51

    .line 651
    .line 652
    move-object/from16 v9, p1

    .line 653
    .line 654
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    .line 655
    .line 656
    .line 657
    move-result v25

    .line 658
    sub-int v6, v6, v25

    .line 659
    .line 660
    if-nez v23, :cond_e

    .line 661
    .line 662
    if-gez v6, :cond_e

    .line 663
    .line 664
    add-int v25, v25, v6

    .line 665
    .line 666
    const/4 v6, 0x0

    .line 667
    :cond_e
    new-instance v4, Lkotlin/collections/ArrayDeque;

    .line 668
    .line 669
    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 670
    .line 671
    .line 672
    move-object v5, v15

    .line 673
    neg-int v15, v7

    .line 674
    if-gez v14, :cond_f

    .line 675
    .line 676
    move/from16 v26, v14

    .line 677
    .line 678
    :goto_e
    move-object/from16 v27, v1

    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_f
    const/16 v26, 0x0

    .line 682
    .line 683
    goto :goto_e

    .line 684
    :goto_f
    add-int v1, v15, v26

    .line 685
    .line 686
    add-int/2addr v6, v1

    .line 687
    :goto_10
    if-gez v6, :cond_10

    .line 688
    .line 689
    if-lez v23, :cond_10

    .line 690
    .line 691
    move-object/from16 v51, v5

    .line 692
    .line 693
    add-int/lit8 v5, v23, -0x1

    .line 694
    .line 695
    move-object/from16 v26, v12

    .line 696
    .line 697
    move-object/from16 v12, v55

    .line 698
    .line 699
    move/from16 v55, v14

    .line 700
    .line 701
    invoke-virtual {v12, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 702
    .line 703
    .line 704
    move-result-object v14

    .line 705
    move/from16 v23, v5

    .line 706
    .line 707
    const/4 v5, 0x0

    .line 708
    invoke-virtual {v4, v5, v14}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    iget v14, v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 712
    .line 713
    add-int/2addr v6, v14

    .line 714
    move-object/from16 v5, v51

    .line 715
    .line 716
    move/from16 v14, v55

    .line 717
    .line 718
    move-object/from16 v55, v12

    .line 719
    .line 720
    move-object/from16 v12, v26

    .line 721
    .line 722
    goto :goto_10

    .line 723
    :cond_10
    move-object/from16 v51, v5

    .line 724
    .line 725
    move-object/from16 v26, v12

    .line 726
    .line 727
    move-object/from16 v12, v55

    .line 728
    .line 729
    const/4 v5, 0x0

    .line 730
    move/from16 v55, v14

    .line 731
    .line 732
    if-ge v6, v1, :cond_11

    .line 733
    .line 734
    sub-int v6, v1, v6

    .line 735
    .line 736
    sub-int v25, v25, v6

    .line 737
    .line 738
    move v6, v1

    .line 739
    :cond_11
    move/from16 v14, v25

    .line 740
    .line 741
    sub-int/2addr v6, v1

    .line 742
    move/from16 v53, v16

    .line 743
    .line 744
    add-int v16, v50, v19

    .line 745
    .line 746
    if-gez v16, :cond_12

    .line 747
    .line 748
    :goto_11
    move/from16 v57, v15

    .line 749
    .line 750
    goto :goto_12

    .line 751
    :cond_12
    move/from16 v5, v16

    .line 752
    .line 753
    goto :goto_11

    .line 754
    :goto_12
    neg-int v15, v6

    .line 755
    move/from16 v28, v6

    .line 756
    .line 757
    move v6, v15

    .line 758
    move/from16 v32, v23

    .line 759
    .line 760
    const/4 v15, 0x0

    .line 761
    const/16 v25, 0x0

    .line 762
    .line 763
    :goto_13
    iget v10, v4, Lkotlin/collections/ArrayDeque;->l:I

    .line 764
    .line 765
    if-ge v15, v10, :cond_14

    .line 766
    .line 767
    if-lt v6, v5, :cond_13

    .line 768
    .line 769
    invoke-virtual {v4, v15}, Lkotlin/collections/ArrayDeque;->c(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move/from16 v25, v21

    .line 773
    .line 774
    goto :goto_13

    .line 775
    :cond_13
    add-int/lit8 v32, v32, 0x1

    .line 776
    .line 777
    invoke-virtual {v4, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v10

    .line 781
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 782
    .line 783
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 784
    .line 785
    add-int/2addr v6, v10

    .line 786
    add-int/lit8 v15, v15, 0x1

    .line 787
    .line 788
    goto :goto_13

    .line 789
    :cond_14
    move/from16 v10, v25

    .line 790
    .line 791
    move/from16 v11, v32

    .line 792
    .line 793
    :goto_14
    if-ge v11, v3, :cond_15

    .line 794
    .line 795
    if-lt v6, v5, :cond_16

    .line 796
    .line 797
    if-lez v6, :cond_16

    .line 798
    .line 799
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 800
    .line 801
    .line 802
    move-result v15

    .line 803
    if-eqz v15, :cond_15

    .line 804
    .line 805
    goto :goto_16

    .line 806
    :cond_15
    move/from16 v58, v10

    .line 807
    .line 808
    :goto_15
    move/from16 v1, v50

    .line 809
    .line 810
    goto :goto_18

    .line 811
    :cond_16
    :goto_16
    invoke-virtual {v12, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 812
    .line 813
    .line 814
    move-result-object v15

    .line 815
    move/from16 v25, v5

    .line 816
    .line 817
    iget v5, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 818
    .line 819
    move/from16 v32, v5

    .line 820
    .line 821
    iget-object v5, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 822
    .line 823
    move/from16 v58, v10

    .line 824
    .line 825
    array-length v10, v5

    .line 826
    if-nez v10, :cond_17

    .line 827
    .line 828
    goto :goto_15

    .line 829
    :cond_17
    add-int v6, v6, v32

    .line 830
    .line 831
    if-gt v6, v1, :cond_19

    .line 832
    .line 833
    array-length v10, v5

    .line 834
    if-eqz v10, :cond_18

    .line 835
    .line 836
    array-length v10, v5

    .line 837
    add-int/lit8 v10, v10, -0x1

    .line 838
    .line 839
    aget-object v5, v5, v10

    .line 840
    .line 841
    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 842
    .line 843
    add-int/lit8 v10, v3, -0x1

    .line 844
    .line 845
    if-eq v5, v10, :cond_19

    .line 846
    .line 847
    add-int/lit8 v5, v11, 0x1

    .line 848
    .line 849
    sub-int v28, v28, v32

    .line 850
    .line 851
    move/from16 v23, v5

    .line 852
    .line 853
    move/from16 v10, v21

    .line 854
    .line 855
    goto :goto_17

    .line 856
    :cond_18
    const-string v0, "Array is empty."

    .line 857
    .line 858
    invoke-static {v0}, Lfe;->o(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    return-object v49

    .line 862
    :cond_19
    invoke-virtual {v4, v15}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    move/from16 v10, v58

    .line 866
    .line 867
    :goto_17
    add-int/lit8 v11, v11, 0x1

    .line 868
    .line 869
    move/from16 v5, v25

    .line 870
    .line 871
    goto :goto_14

    .line 872
    :goto_18
    if-ge v6, v1, :cond_1c

    .line 873
    .line 874
    sub-int v15, v1, v6

    .line 875
    .line 876
    sub-int v28, v28, v15

    .line 877
    .line 878
    add-int/2addr v6, v15

    .line 879
    move/from16 v5, v28

    .line 880
    .line 881
    :goto_19
    if-ge v5, v7, :cond_1a

    .line 882
    .line 883
    if-lez v23, :cond_1a

    .line 884
    .line 885
    add-int/lit8 v10, v23, -0x1

    .line 886
    .line 887
    invoke-virtual {v12, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 888
    .line 889
    .line 890
    move-result-object v11

    .line 891
    move/from16 v23, v5

    .line 892
    .line 893
    const/4 v5, 0x0

    .line 894
    invoke-virtual {v4, v5, v11}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    iget v5, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 898
    .line 899
    add-int v5, v23, v5

    .line 900
    .line 901
    move/from16 v23, v10

    .line 902
    .line 903
    goto :goto_19

    .line 904
    :cond_1a
    move/from16 v23, v5

    .line 905
    .line 906
    add-int/2addr v15, v14

    .line 907
    if-gez v23, :cond_1b

    .line 908
    .line 909
    add-int v15, v15, v23

    .line 910
    .line 911
    add-int v6, v6, v23

    .line 912
    .line 913
    const/4 v5, 0x0

    .line 914
    goto :goto_1a

    .line 915
    :cond_1b
    move/from16 v5, v23

    .line 916
    .line 917
    goto :goto_1a

    .line 918
    :cond_1c
    move v15, v14

    .line 919
    move/from16 v5, v28

    .line 920
    .line 921
    :goto_1a
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    .line 922
    .line 923
    .line 924
    move-result v10

    .line 925
    invoke-static {v10}, Ljava/lang/Integer;->signum(I)I

    .line 926
    .line 927
    .line 928
    move-result v10

    .line 929
    invoke-static {v15}, Ljava/lang/Integer;->signum(I)I

    .line 930
    .line 931
    .line 932
    move-result v11

    .line 933
    if-ne v10, v11, :cond_1d

    .line 934
    .line 935
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    .line 936
    .line 937
    .line 938
    move-result v10

    .line 939
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 940
    .line 941
    .line 942
    move-result v10

    .line 943
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 944
    .line 945
    .line 946
    move-result v11

    .line 947
    if-lt v10, v11, :cond_1d

    .line 948
    .line 949
    int-to-float v10, v15

    .line 950
    goto :goto_1b

    .line 951
    :cond_1d
    move/from16 v10, v24

    .line 952
    .line 953
    :goto_1b
    sub-float v11, v24, v10

    .line 954
    .line 955
    const/16 v23, 0x0

    .line 956
    .line 957
    if-eqz v29, :cond_1e

    .line 958
    .line 959
    if-le v15, v14, :cond_1e

    .line 960
    .line 961
    cmpg-float v24, v11, v23

    .line 962
    .line 963
    if-gtz v24, :cond_1e

    .line 964
    .line 965
    sub-int/2addr v15, v14

    .line 966
    int-to-float v14, v15

    .line 967
    add-float v23, v14, v11

    .line 968
    .line 969
    :cond_1e
    move/from16 v11, v23

    .line 970
    .line 971
    if-ltz v5, :cond_1f

    .line 972
    .line 973
    goto :goto_1c

    .line 974
    :cond_1f
    const-string v14, "negative initial offset"

    .line 975
    .line 976
    invoke-static {v14}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    :goto_1c
    neg-int v14, v5

    .line 980
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->f()Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v15

    .line 984
    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 985
    .line 986
    move/from16 v23, v5

    .line 987
    .line 988
    if-eqz v15, :cond_20

    .line 989
    .line 990
    iget-object v5, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 991
    .line 992
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 997
    .line 998
    if-eqz v5, :cond_20

    .line 999
    .line 1000
    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1001
    .line 1002
    goto :goto_1d

    .line 1003
    :cond_20
    const/4 v5, 0x0

    .line 1004
    :goto_1d
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v24

    .line 1008
    move/from16 v50, v7

    .line 1009
    .line 1010
    move-object/from16 v7, v24

    .line 1011
    .line 1012
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1013
    .line 1014
    if-eqz v7, :cond_22

    .line 1015
    .line 1016
    iget-object v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1017
    .line 1018
    move/from16 v59, v11

    .line 1019
    .line 1020
    array-length v11, v7

    .line 1021
    if-nez v11, :cond_21

    .line 1022
    .line 1023
    move-object/from16 v7, v49

    .line 1024
    .line 1025
    goto :goto_1e

    .line 1026
    :cond_21
    array-length v11, v7

    .line 1027
    add-int/lit8 v11, v11, -0x1

    .line 1028
    .line 1029
    aget-object v7, v7, v11

    .line 1030
    .line 1031
    :goto_1e
    if-eqz v7, :cond_23

    .line 1032
    .line 1033
    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1034
    .line 1035
    goto :goto_1f

    .line 1036
    :cond_22
    move/from16 v59, v11

    .line 1037
    .line 1038
    :cond_23
    const/4 v7, 0x0

    .line 1039
    :goto_1f
    iget-object v11, v2, Landroidx/collection/IntList;->a:[I

    .line 1040
    .line 1041
    move-object/from16 v24, v11

    .line 1042
    .line 1043
    iget v11, v2, Landroidx/collection/IntList;->b:I

    .line 1044
    .line 1045
    move/from16 v25, v14

    .line 1046
    .line 1047
    move-object/from16 v32, v15

    .line 1048
    .line 1049
    move-object/from16 v28, v49

    .line 1050
    .line 1051
    const/4 v14, 0x0

    .line 1052
    :goto_20
    iget-object v15, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->e:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 1053
    .line 1054
    if-ge v14, v11, :cond_26

    .line 1055
    .line 1056
    move/from16 v33, v11

    .line 1057
    .line 1058
    aget v11, v24, v14

    .line 1059
    .line 1060
    if-ltz v11, :cond_25

    .line 1061
    .line 1062
    if-ge v11, v5, :cond_25

    .line 1063
    .line 1064
    move/from16 v60, v5

    .line 1065
    .line 1066
    iget v5, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    .line 1067
    .line 1068
    invoke-virtual {v15, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    const/4 v15, 0x0

    .line 1073
    invoke-virtual {v12, v15, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    .line 1074
    .line 1075
    .line 1076
    move-result-wide v42

    .line 1077
    const/16 v44, 0x0

    .line 1078
    .line 1079
    iget v15, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    .line 1080
    .line 1081
    move/from16 v45, v5

    .line 1082
    .line 1083
    move/from16 v41, v11

    .line 1084
    .line 1085
    move-object/from16 v40, v13

    .line 1086
    .line 1087
    move/from16 v46, v15

    .line 1088
    .line 1089
    invoke-virtual/range {v40 .. v46}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    if-nez v28, :cond_24

    .line 1094
    .line 1095
    new-instance v11, Ljava/util/ArrayList;

    .line 1096
    .line 1097
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    goto :goto_21

    .line 1101
    :cond_24
    move-object/from16 v11, v28

    .line 1102
    .line 1103
    :goto_21
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-object/from16 v28, v11

    .line 1107
    .line 1108
    goto :goto_22

    .line 1109
    :cond_25
    move/from16 v60, v5

    .line 1110
    .line 1111
    :goto_22
    add-int/lit8 v14, v14, 0x1

    .line 1112
    .line 1113
    move/from16 v11, v33

    .line 1114
    .line 1115
    move/from16 v5, v60

    .line 1116
    .line 1117
    goto :goto_20

    .line 1118
    :cond_26
    move/from16 v60, v5

    .line 1119
    .line 1120
    if-nez v28, :cond_27

    .line 1121
    .line 1122
    move-object/from16 v14, v26

    .line 1123
    .line 1124
    goto :goto_23

    .line 1125
    :cond_27
    move-object/from16 v14, v28

    .line 1126
    .line 1127
    :goto_23
    if-eqz v29, :cond_32

    .line 1128
    .line 1129
    if-eqz v8, :cond_32

    .line 1130
    .line 1131
    iget-object v5, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 1132
    .line 1133
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v8

    .line 1137
    if-nez v8, :cond_32

    .line 1138
    .line 1139
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1140
    .line 1141
    .line 1142
    move-result v8

    .line 1143
    add-int/lit8 v8, v8, -0x1

    .line 1144
    .line 1145
    :goto_24
    const/4 v11, -0x1

    .line 1146
    if-ge v11, v8, :cond_2a

    .line 1147
    .line 1148
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v11

    .line 1152
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 1153
    .line 1154
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1155
    .line 1156
    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1157
    .line 1158
    if-le v11, v7, :cond_29

    .line 1159
    .line 1160
    if-eqz v8, :cond_28

    .line 1161
    .line 1162
    add-int/lit8 v11, v8, -0x1

    .line 1163
    .line 1164
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v11

    .line 1168
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 1169
    .line 1170
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1171
    .line 1172
    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1173
    .line 1174
    if-gt v11, v7, :cond_29

    .line 1175
    .line 1176
    :cond_28
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v8

    .line 1180
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 1181
    .line 1182
    goto :goto_25

    .line 1183
    :cond_29
    add-int/lit8 v8, v8, -0x1

    .line 1184
    .line 1185
    goto :goto_24

    .line 1186
    :cond_2a
    move-object/from16 v8, v49

    .line 1187
    .line 1188
    :goto_25
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v5

    .line 1192
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 1193
    .line 1194
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v11

    .line 1198
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1199
    .line 1200
    if-eqz v11, :cond_2b

    .line 1201
    .line 1202
    iget v11, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a:I

    .line 1203
    .line 1204
    add-int/lit8 v11, v11, 0x1

    .line 1205
    .line 1206
    goto :goto_26

    .line 1207
    :cond_2b
    const/4 v11, 0x0

    .line 1208
    :goto_26
    if-eqz v8, :cond_32

    .line 1209
    .line 1210
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1211
    .line 1212
    iget v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1213
    .line 1214
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1215
    .line 1216
    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1217
    .line 1218
    move/from16 v61, v7

    .line 1219
    .line 1220
    add-int/lit8 v7, v3, -0x1

    .line 1221
    .line 1222
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 1223
    .line 1224
    .line 1225
    move-result v5

    .line 1226
    if-gt v8, v5, :cond_31

    .line 1227
    .line 1228
    move-object/from16 v7, v49

    .line 1229
    .line 1230
    :goto_27
    if-eqz v7, :cond_2f

    .line 1231
    .line 1232
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 1233
    .line 1234
    .line 1235
    move-result v0

    .line 1236
    move/from16 v62, v10

    .line 1237
    .line 1238
    const/4 v10, 0x0

    .line 1239
    :goto_28
    if-ge v10, v0, :cond_2e

    .line 1240
    .line 1241
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v24

    .line 1245
    move/from16 v28, v0

    .line 1246
    .line 1247
    move-object/from16 v0, v24

    .line 1248
    .line 1249
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1250
    .line 1251
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1252
    .line 1253
    move-object/from16 v24, v7

    .line 1254
    .line 1255
    array-length v7, v0

    .line 1256
    move-object/from16 v33, v0

    .line 1257
    .line 1258
    const/4 v0, 0x0

    .line 1259
    :goto_29
    if-ge v0, v7, :cond_2d

    .line 1260
    .line 1261
    move/from16 v40, v0

    .line 1262
    .line 1263
    aget-object v0, v33, v40

    .line 1264
    .line 1265
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1266
    .line 1267
    if-ne v0, v8, :cond_2c

    .line 1268
    .line 1269
    move-object/from16 v7, v24

    .line 1270
    .line 1271
    goto :goto_2d

    .line 1272
    :cond_2c
    add-int/lit8 v0, v40, 0x1

    .line 1273
    .line 1274
    goto :goto_29

    .line 1275
    :cond_2d
    add-int/lit8 v10, v10, 0x1

    .line 1276
    .line 1277
    move-object/from16 v7, v24

    .line 1278
    .line 1279
    move/from16 v0, v28

    .line 1280
    .line 1281
    goto :goto_28

    .line 1282
    :cond_2e
    :goto_2a
    move-object/from16 v24, v7

    .line 1283
    .line 1284
    goto :goto_2b

    .line 1285
    :cond_2f
    move/from16 v62, v10

    .line 1286
    .line 1287
    goto :goto_2a

    .line 1288
    :goto_2b
    if-nez v24, :cond_30

    .line 1289
    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    .line 1291
    .line 1292
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .line 1294
    .line 1295
    move-object v7, v0

    .line 1296
    goto :goto_2c

    .line 1297
    :cond_30
    move-object/from16 v7, v24

    .line 1298
    .line 1299
    :goto_2c
    invoke-virtual {v12, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    add-int/lit8 v11, v11, 0x1

    .line 1304
    .line 1305
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    :goto_2d
    if-eq v8, v5, :cond_33

    .line 1309
    .line 1310
    add-int/lit8 v8, v8, 0x1

    .line 1311
    .line 1312
    move-object/from16 v0, p0

    .line 1313
    .line 1314
    move/from16 v10, v62

    .line 1315
    .line 1316
    goto :goto_27

    .line 1317
    :cond_31
    :goto_2e
    move/from16 v62, v10

    .line 1318
    .line 1319
    goto :goto_2f

    .line 1320
    :cond_32
    move/from16 v61, v7

    .line 1321
    .line 1322
    goto :goto_2e

    .line 1323
    :goto_2f
    move-object/from16 v7, v49

    .line 1324
    .line 1325
    :cond_33
    if-nez v7, :cond_34

    .line 1326
    .line 1327
    move-object/from16 v7, v26

    .line 1328
    .line 1329
    :cond_34
    iget-object v0, v2, Landroidx/collection/IntList;->a:[I

    .line 1330
    .line 1331
    iget v2, v2, Landroidx/collection/IntList;->b:I

    .line 1332
    .line 1333
    move-object/from16 v8, v49

    .line 1334
    .line 1335
    const/4 v5, 0x0

    .line 1336
    :goto_30
    if-ge v5, v2, :cond_3b

    .line 1337
    .line 1338
    aget v10, v0, v5

    .line 1339
    .line 1340
    add-int/lit8 v11, v61, 0x1

    .line 1341
    .line 1342
    if-gt v11, v10, :cond_3a

    .line 1343
    .line 1344
    if-ge v10, v3, :cond_3a

    .line 1345
    .line 1346
    if-eqz v29, :cond_38

    .line 1347
    .line 1348
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 1349
    .line 1350
    .line 1351
    move-result v11

    .line 1352
    move-object/from16 v24, v0

    .line 1353
    .line 1354
    const/4 v0, 0x0

    .line 1355
    :goto_31
    if-ge v0, v11, :cond_37

    .line 1356
    .line 1357
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v28

    .line 1361
    move/from16 v33, v0

    .line 1362
    .line 1363
    move-object/from16 v0, v28

    .line 1364
    .line 1365
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1366
    .line 1367
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1368
    .line 1369
    move/from16 v28, v2

    .line 1370
    .line 1371
    array-length v2, v0

    .line 1372
    move-object/from16 v40, v0

    .line 1373
    .line 1374
    const/4 v0, 0x0

    .line 1375
    :goto_32
    if-ge v0, v2, :cond_36

    .line 1376
    .line 1377
    move/from16 v41, v0

    .line 1378
    .line 1379
    aget-object v0, v40, v41

    .line 1380
    .line 1381
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 1382
    .line 1383
    if-ne v0, v10, :cond_35

    .line 1384
    .line 1385
    goto :goto_35

    .line 1386
    :cond_35
    add-int/lit8 v0, v41, 0x1

    .line 1387
    .line 1388
    goto :goto_32

    .line 1389
    :cond_36
    add-int/lit8 v0, v33, 0x1

    .line 1390
    .line 1391
    move/from16 v2, v28

    .line 1392
    .line 1393
    goto :goto_31

    .line 1394
    :cond_37
    :goto_33
    move/from16 v28, v2

    .line 1395
    .line 1396
    goto :goto_34

    .line 1397
    :cond_38
    move-object/from16 v24, v0

    .line 1398
    .line 1399
    goto :goto_33

    .line 1400
    :goto_34
    iget v0, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    .line 1401
    .line 1402
    invoke-virtual {v15, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    .line 1403
    .line 1404
    .line 1405
    move-result v0

    .line 1406
    const/4 v2, 0x0

    .line 1407
    invoke-virtual {v12, v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    .line 1408
    .line 1409
    .line 1410
    move-result-wide v42

    .line 1411
    const/16 v44, 0x0

    .line 1412
    .line 1413
    iget v2, v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    .line 1414
    .line 1415
    move/from16 v45, v0

    .line 1416
    .line 1417
    move/from16 v46, v2

    .line 1418
    .line 1419
    move/from16 v41, v10

    .line 1420
    .line 1421
    move-object/from16 v40, v13

    .line 1422
    .line 1423
    invoke-virtual/range {v40 .. v46}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    if-nez v8, :cond_39

    .line 1428
    .line 1429
    new-instance v2, Ljava/util/ArrayList;

    .line 1430
    .line 1431
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .line 1433
    .line 1434
    move-object v8, v2

    .line 1435
    :cond_39
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    goto :goto_35

    .line 1439
    :cond_3a
    move-object/from16 v24, v0

    .line 1440
    .line 1441
    move/from16 v28, v2

    .line 1442
    .line 1443
    :goto_35
    add-int/lit8 v5, v5, 0x1

    .line 1444
    .line 1445
    move-object/from16 v0, v24

    .line 1446
    .line 1447
    move/from16 v2, v28

    .line 1448
    .line 1449
    goto :goto_30

    .line 1450
    :cond_3b
    if-nez v8, :cond_3c

    .line 1451
    .line 1452
    move-object/from16 v8, v26

    .line 1453
    .line 1454
    :cond_3c
    if-gtz v50, :cond_3e

    .line 1455
    .line 1456
    if-gez v55, :cond_3d

    .line 1457
    .line 1458
    goto :goto_36

    .line 1459
    :cond_3d
    move-object/from16 v15, v32

    .line 1460
    .line 1461
    move/from16 v32, v23

    .line 1462
    .line 1463
    goto :goto_38

    .line 1464
    :cond_3e
    :goto_36
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    move/from16 v5, v23

    .line 1469
    .line 1470
    move-object/from16 v15, v32

    .line 1471
    .line 1472
    const/4 v2, 0x0

    .line 1473
    :goto_37
    if-ge v2, v0, :cond_3f

    .line 1474
    .line 1475
    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v10

    .line 1479
    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1480
    .line 1481
    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 1482
    .line 1483
    if-eqz v5, :cond_3f

    .line 1484
    .line 1485
    if-gt v10, v5, :cond_3f

    .line 1486
    .line 1487
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->b()I

    .line 1488
    .line 1489
    .line 1490
    move-result v11

    .line 1491
    add-int/lit8 v11, v11, -0x1

    .line 1492
    .line 1493
    if-eq v2, v11, :cond_3f

    .line 1494
    .line 1495
    sub-int/2addr v5, v10

    .line 1496
    add-int/lit8 v2, v2, 0x1

    .line 1497
    .line 1498
    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v10

    .line 1502
    move-object v15, v10

    .line 1503
    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1504
    .line 1505
    goto :goto_37

    .line 1506
    :cond_3f
    move/from16 v32, v5

    .line 1507
    .line 1508
    :goto_38
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 1509
    .line 1510
    .line 1511
    move-result v0

    .line 1512
    move-wide/from16 v10, v47

    .line 1513
    .line 1514
    invoke-static {v6, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1515
    .line 1516
    .line 1517
    move-result v2

    .line 1518
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v5

    .line 1522
    if-eqz v5, :cond_40

    .line 1523
    .line 1524
    goto :goto_39

    .line 1525
    :cond_40
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v4

    .line 1529
    :goto_39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 1530
    .line 1531
    .line 1532
    move-result v5

    .line 1533
    if-ge v6, v5, :cond_41

    .line 1534
    .line 1535
    move/from16 v5, v21

    .line 1536
    .line 1537
    goto :goto_3a

    .line 1538
    :cond_41
    const/4 v5, 0x0

    .line 1539
    :goto_3a
    if-eqz v5, :cond_43

    .line 1540
    .line 1541
    if-nez v25, :cond_42

    .line 1542
    .line 1543
    goto :goto_3b

    .line 1544
    :cond_42
    const-string v7, "non-zero firstLineScrollOffset"

    .line 1545
    .line 1546
    invoke-static {v7}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    :cond_43
    :goto_3b
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1550
    .line 1551
    .line 1552
    move-result v7

    .line 1553
    move/from16 v40, v3

    .line 1554
    .line 1555
    move/from16 v23, v5

    .line 1556
    .line 1557
    const/4 v3, 0x0

    .line 1558
    const/4 v5, 0x0

    .line 1559
    :goto_3c
    if-ge v3, v7, :cond_44

    .line 1560
    .line 1561
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v24

    .line 1565
    move/from16 v26, v3

    .line 1566
    .line 1567
    move-object/from16 v3, v24

    .line 1568
    .line 1569
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1570
    .line 1571
    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1572
    .line 1573
    array-length v3, v3

    .line 1574
    add-int/2addr v5, v3

    .line 1575
    add-int/lit8 v3, v26, 0x1

    .line 1576
    .line 1577
    goto :goto_3c

    .line 1578
    :cond_44
    new-instance v3, Ljava/util/ArrayList;

    .line 1579
    .line 1580
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1581
    .line 1582
    .line 1583
    if-eqz v23, :cond_4c

    .line 1584
    .line 1585
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1586
    .line 1587
    .line 1588
    move-result v5

    .line 1589
    if-eqz v5, :cond_45

    .line 1590
    .line 1591
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1592
    .line 1593
    .line 1594
    move-result v5

    .line 1595
    if-eqz v5, :cond_45

    .line 1596
    .line 1597
    goto :goto_3d

    .line 1598
    :cond_45
    const-string v5, "no items"

    .line 1599
    .line 1600
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    :goto_3d
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1604
    .line 1605
    .line 1606
    move-result v5

    .line 1607
    new-array v7, v5, [I

    .line 1608
    .line 1609
    const/4 v14, 0x0

    .line 1610
    :goto_3e
    if-ge v14, v5, :cond_46

    .line 1611
    .line 1612
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v8

    .line 1616
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1617
    .line 1618
    iget v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->f:I

    .line 1619
    .line 1620
    aput v8, v7, v14

    .line 1621
    .line 1622
    add-int/lit8 v14, v14, 0x1

    .line 1623
    .line 1624
    goto :goto_3e

    .line 1625
    :cond_46
    new-array v5, v5, [I

    .line 1626
    .line 1627
    move-object/from16 v8, v22

    .line 1628
    .line 1629
    invoke-interface {v8, v2, v9, v7, v5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(ILandroidx/compose/ui/layout/MeasureScope;[I[I)V

    .line 1630
    .line 1631
    .line 1632
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->r([I)Lkotlin/ranges/IntRange;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v7

    .line 1636
    iget v8, v7, Lkotlin/ranges/IntProgression;->j:I

    .line 1637
    .line 1638
    iget v14, v7, Lkotlin/ranges/IntProgression;->k:I

    .line 1639
    .line 1640
    iget v7, v7, Lkotlin/ranges/IntProgression;->l:I

    .line 1641
    .line 1642
    if-lez v7, :cond_47

    .line 1643
    .line 1644
    if-le v8, v14, :cond_48

    .line 1645
    .line 1646
    :cond_47
    if-gez v7, :cond_4b

    .line 1647
    .line 1648
    if-gt v14, v8, :cond_4b

    .line 1649
    .line 1650
    :cond_48
    move-object/from16 v20, v5

    .line 1651
    .line 1652
    :goto_3f
    aget v5, v20, v8

    .line 1653
    .line 1654
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v22

    .line 1658
    move/from16 v33, v6

    .line 1659
    .line 1660
    move-object/from16 v6, v22

    .line 1661
    .line 1662
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1663
    .line 1664
    invoke-virtual {v6, v5, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v5

    .line 1668
    array-length v6, v5

    .line 1669
    move-object/from16 v22, v5

    .line 1670
    .line 1671
    const/4 v5, 0x0

    .line 1672
    :goto_40
    if-ge v5, v6, :cond_49

    .line 1673
    .line 1674
    move/from16 v23, v5

    .line 1675
    .line 1676
    aget-object v5, v22, v23

    .line 1677
    .line 1678
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    .line 1680
    .line 1681
    add-int/lit8 v5, v23, 0x1

    .line 1682
    .line 1683
    goto :goto_40

    .line 1684
    :cond_49
    if-eq v8, v14, :cond_4a

    .line 1685
    .line 1686
    add-int/2addr v8, v7

    .line 1687
    move/from16 v6, v33

    .line 1688
    .line 1689
    goto :goto_3f

    .line 1690
    :cond_4a
    :goto_41
    move/from16 v4, v62

    .line 1691
    .line 1692
    const/4 v7, 0x0

    .line 1693
    goto/16 :goto_47

    .line 1694
    .line 1695
    :cond_4b
    move/from16 v33, v6

    .line 1696
    .line 1697
    goto :goto_41

    .line 1698
    :cond_4c
    move/from16 v33, v6

    .line 1699
    .line 1700
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1701
    .line 1702
    .line 1703
    move-result v5

    .line 1704
    const/16 v20, -0x1

    .line 1705
    .line 1706
    add-int/lit8 v5, v5, -0x1

    .line 1707
    .line 1708
    if-ltz v5, :cond_4e

    .line 1709
    .line 1710
    move/from16 v6, v25

    .line 1711
    .line 1712
    :goto_42
    add-int/lit8 v7, v5, -0x1

    .line 1713
    .line 1714
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v5

    .line 1718
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1719
    .line 1720
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j()I

    .line 1721
    .line 1722
    .line 1723
    move-result v20

    .line 1724
    sub-int v6, v6, v20

    .line 1725
    .line 1726
    move/from16 v20, v7

    .line 1727
    .line 1728
    const/4 v7, 0x0

    .line 1729
    invoke-virtual {v5, v6, v7, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i(IIII)V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    .line 1734
    .line 1735
    if-gez v20, :cond_4d

    .line 1736
    .line 1737
    goto :goto_43

    .line 1738
    :cond_4d
    move/from16 v5, v20

    .line 1739
    .line 1740
    goto :goto_42

    .line 1741
    :cond_4e
    :goto_43
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1742
    .line 1743
    .line 1744
    move-result v5

    .line 1745
    move/from16 v6, v25

    .line 1746
    .line 1747
    const/4 v14, 0x0

    .line 1748
    :goto_44
    if-ge v14, v5, :cond_50

    .line 1749
    .line 1750
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v7

    .line 1754
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 1755
    .line 1756
    move-object/from16 v20, v4

    .line 1757
    .line 1758
    invoke-virtual {v7, v6, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v4

    .line 1762
    move/from16 v22, v5

    .line 1763
    .line 1764
    array-length v5, v4

    .line 1765
    move-object/from16 v23, v4

    .line 1766
    .line 1767
    const/4 v4, 0x0

    .line 1768
    :goto_45
    if-ge v4, v5, :cond_4f

    .line 1769
    .line 1770
    move/from16 v24, v4

    .line 1771
    .line 1772
    aget-object v4, v23, v24

    .line 1773
    .line 1774
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    .line 1776
    .line 1777
    add-int/lit8 v4, v24, 0x1

    .line 1778
    .line 1779
    goto :goto_45

    .line 1780
    :cond_4f
    iget v4, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 1781
    .line 1782
    add-int/2addr v6, v4

    .line 1783
    add-int/lit8 v14, v14, 0x1

    .line 1784
    .line 1785
    move-object/from16 v4, v20

    .line 1786
    .line 1787
    move/from16 v5, v22

    .line 1788
    .line 1789
    goto :goto_44

    .line 1790
    :cond_50
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1791
    .line 1792
    .line 1793
    move-result v4

    .line 1794
    const/4 v14, 0x0

    .line 1795
    :goto_46
    if-ge v14, v4, :cond_51

    .line 1796
    .line 1797
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v5

    .line 1801
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1802
    .line 1803
    const/4 v7, 0x0

    .line 1804
    invoke-virtual {v5, v6, v7, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i(IIII)V

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j()I

    .line 1811
    .line 1812
    .line 1813
    move-result v5

    .line 1814
    add-int/2addr v6, v5

    .line 1815
    add-int/lit8 v14, v14, 0x1

    .line 1816
    .line 1817
    goto :goto_46

    .line 1818
    :cond_51
    const/4 v7, 0x0

    .line 1819
    move/from16 v4, v62

    .line 1820
    .line 1821
    :goto_47
    float-to-int v5, v4

    .line 1822
    move-object/from16 v14, v52

    .line 1823
    .line 1824
    check-cast v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 1825
    .line 1826
    iget-object v6, v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->c:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 1827
    .line 1828
    move/from16 v24, v0

    .line 1829
    .line 1830
    move/from16 v25, v2

    .line 1831
    .line 1832
    move-object/from16 v26, v3

    .line 1833
    .line 1834
    move/from16 v23, v5

    .line 1835
    .line 1836
    move-object/from16 v28, v13

    .line 1837
    .line 1838
    move-object/from16 v22, v27

    .line 1839
    .line 1840
    move-object/from16 v27, v6

    .line 1841
    .line 1842
    invoke-virtual/range {v22 .. v35}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    .line 1843
    .line 1844
    .line 1845
    move-object/from16 v8, v26

    .line 1846
    .line 1847
    move/from16 v5, v29

    .line 1848
    .line 1849
    move/from16 v3, v30

    .line 1850
    .line 1851
    move/from16 v6, v33

    .line 1852
    .line 1853
    if-nez v5, :cond_54

    .line 1854
    .line 1855
    move-object/from16 v26, v8

    .line 1856
    .line 1857
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    .line 1858
    .line 1859
    .line 1860
    move-result-wide v7

    .line 1861
    move v14, v3

    .line 1862
    move/from16 v62, v4

    .line 1863
    .line 1864
    const-wide/16 v3, 0x0

    .line 1865
    .line 1866
    invoke-static {v7, v8, v3, v4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 1867
    .line 1868
    .line 1869
    move-result v3

    .line 1870
    if-nez v3, :cond_53

    .line 1871
    .line 1872
    shr-long v3, v7, v53

    .line 1873
    .line 1874
    long-to-int v3, v3

    .line 1875
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 1876
    .line 1877
    .line 1878
    move-result v0

    .line 1879
    invoke-static {v0, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 1880
    .line 1881
    .line 1882
    move-result v0

    .line 1883
    and-long v3, v7, v38

    .line 1884
    .line 1885
    long-to-int v3, v3

    .line 1886
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1887
    .line 1888
    .line 1889
    move-result v3

    .line 1890
    invoke-static {v3, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 1891
    .line 1892
    .line 1893
    move-result v3

    .line 1894
    if-eq v3, v2, :cond_52

    .line 1895
    .line 1896
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    .line 1897
    .line 1898
    .line 1899
    move-result v2

    .line 1900
    const/4 v4, 0x0

    .line 1901
    :goto_48
    if-ge v4, v2, :cond_52

    .line 1902
    .line 1903
    move-object/from16 v8, v26

    .line 1904
    .line 1905
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v7

    .line 1909
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 1910
    .line 1911
    iput v3, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    .line 1912
    .line 1913
    iget v10, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->f:I

    .line 1914
    .line 1915
    add-int/2addr v10, v3

    .line 1916
    iput v10, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->s:I

    .line 1917
    .line 1918
    add-int/lit8 v4, v4, 0x1

    .line 1919
    .line 1920
    goto :goto_48

    .line 1921
    :cond_52
    move-object/from16 v8, v26

    .line 1922
    .line 1923
    move/from16 v29, v3

    .line 1924
    .line 1925
    :goto_49
    move/from16 v28, v0

    .line 1926
    .line 1927
    goto :goto_4b

    .line 1928
    :cond_53
    move-object/from16 v8, v26

    .line 1929
    .line 1930
    goto :goto_4a

    .line 1931
    :cond_54
    move v14, v3

    .line 1932
    move/from16 v62, v4

    .line 1933
    .line 1934
    :goto_4a
    move/from16 v29, v2

    .line 1935
    .line 1936
    goto :goto_49

    .line 1937
    :goto_4b
    move-object/from16 v0, v52

    .line 1938
    .line 1939
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 1940
    .line 1941
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->b:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 1942
    .line 1943
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1944
    .line 1945
    .line 1946
    sget-object v26, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 1947
    .line 1948
    new-instance v0, Lb;

    .line 1949
    .line 1950
    const/16 v2, 0x16

    .line 1951
    .line 1952
    invoke-direct {v0, v2, v12, v13}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1953
    .line 1954
    .line 1955
    move-object/from16 v2, p0

    .line 1956
    .line 1957
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->h:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    .line 1958
    .line 1959
    move-object/from16 v30, v0

    .line 1960
    .line 1961
    move-object/from16 v22, v2

    .line 1962
    .line 1963
    move-object/from16 v25, v8

    .line 1964
    .line 1965
    move/from16 v27, v50

    .line 1966
    .line 1967
    move/from16 v23, v60

    .line 1968
    .line 1969
    move/from16 v24, v61

    .line 1970
    .line 1971
    invoke-static/range {v22 .. v30}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->a(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/ArrayList;Landroidx/collection/IntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v26

    .line 1975
    move/from16 v0, v23

    .line 1976
    .line 1977
    move/from16 v7, v24

    .line 1978
    .line 1979
    move/from16 v2, v28

    .line 1980
    .line 1981
    add-int/lit8 v3, v40, -0x1

    .line 1982
    .line 1983
    if-ne v7, v3, :cond_56

    .line 1984
    .line 1985
    if-le v6, v1, :cond_55

    .line 1986
    .line 1987
    goto :goto_4c

    .line 1988
    :cond_55
    const/4 v3, 0x0

    .line 1989
    goto :goto_4d

    .line 1990
    :cond_56
    :goto_4c
    move/from16 v3, v21

    .line 1991
    .line 1992
    :goto_4d
    new-instance v23, Lha;

    .line 1993
    .line 1994
    const/16 v28, 0x0

    .line 1995
    .line 1996
    move/from16 v27, v5

    .line 1997
    .line 1998
    move-object/from16 v25, v8

    .line 1999
    .line 2000
    move-object/from16 v24, v37

    .line 2001
    .line 2002
    invoke-direct/range {v23 .. v28}, Lha;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    .line 2003
    .line 2004
    .line 2005
    move-object/from16 v4, v23

    .line 2006
    .line 2007
    move-object/from16 v1, v26

    .line 2008
    .line 2009
    add-int v2, v2, v18

    .line 2010
    .line 2011
    move-wide/from16 v10, p2

    .line 2012
    .line 2013
    invoke-static {v2, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 2014
    .line 2015
    .line 2016
    move-result v2

    .line 2017
    add-int v5, v29, v17

    .line 2018
    .line 2019
    invoke-static {v5, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 2020
    .line 2021
    .line 2022
    move-result v5

    .line 2023
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v6

    .line 2027
    move-object/from16 v10, v54

    .line 2028
    .line 2029
    invoke-interface {v10, v2, v5, v6, v4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v5

    .line 2033
    invoke-static {v0, v7, v8, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->a(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v0

    .line 2037
    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2038
    .line 2039
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 2040
    .line 2041
    .line 2042
    move-result v2

    .line 2043
    const/4 v4, 0x0

    .line 2044
    const/4 v13, 0x0

    .line 2045
    :goto_4e
    if-ge v4, v2, :cond_57

    .line 2046
    .line 2047
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v6

    .line 2051
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 2052
    .line 2053
    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->n:I

    .line 2054
    .line 2055
    add-int/2addr v13, v6

    .line 2056
    add-int/lit8 v4, v4, 0x1

    .line 2057
    .line 2058
    goto :goto_4e

    .line 2059
    :cond_57
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 2060
    .line 2061
    move-object/from16 v54, v10

    .line 2062
    .line 2063
    move-object/from16 v63, v12

    .line 2064
    .line 2065
    move v10, v14

    .line 2066
    move/from16 v2, v32

    .line 2067
    .line 2068
    move-object/from16 v8, v34

    .line 2069
    .line 2070
    move-object/from16 v12, v36

    .line 2071
    .line 2072
    move/from16 v17, v40

    .line 2073
    .line 2074
    move-object/from16 v11, v51

    .line 2075
    .line 2076
    move/from16 v20, v55

    .line 2077
    .line 2078
    move/from16 v7, v58

    .line 2079
    .line 2080
    move/from16 v6, v59

    .line 2081
    .line 2082
    move/from16 v4, v62

    .line 2083
    .line 2084
    move-object v14, v0

    .line 2085
    move-object v0, v1

    .line 2086
    move-object v1, v15

    .line 2087
    move/from16 v15, v57

    .line 2088
    .line 2089
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 2090
    .line 2091
    .line 2092
    :goto_4f
    invoke-interface/range {v54 .. v54}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 2093
    .line 2094
    .line 2095
    move-result v1

    .line 2096
    move-object/from16 v2, v56

    .line 2097
    .line 2098
    const/4 v15, 0x0

    .line 2099
    invoke-virtual {v2, v0, v1, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 2100
    .line 2101
    .line 2102
    iget-object v1, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .line 2103
    .line 2104
    instance-of v2, v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 2105
    .line 2106
    if-eqz v2, :cond_58

    .line 2107
    .line 2108
    move-object/from16 v49, v1

    .line 2109
    .line 2110
    check-cast v49, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 2111
    .line 2112
    :cond_58
    move-object/from16 v1, v49

    .line 2113
    .line 2114
    if-eqz v1, :cond_5d

    .line 2115
    .line 2116
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 2117
    .line 2118
    const-string v3, "compose:lazy:cache_window:keepAroundItems"

    .line 2119
    .line 2120
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b()Z

    .line 2124
    .line 2125
    .line 2126
    move-result v3

    .line 2127
    if-eqz v3, :cond_5c

    .line 2128
    .line 2129
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 2130
    .line 2131
    .line 2132
    move-result v3

    .line 2133
    if-nez v3, :cond_5c

    .line 2134
    .line 2135
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v3

    .line 2139
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 2140
    .line 2141
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2142
    .line 2143
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 2144
    .line 2145
    if-ne v5, v4, :cond_59

    .line 2146
    .line 2147
    :try_start_2
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 2148
    .line 2149
    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 2150
    .line 2151
    goto :goto_50

    .line 2152
    :cond_59
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 2153
    .line 2154
    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 2155
    .line 2156
    :goto_50
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 2161
    .line 2162
    if-ne v5, v4, :cond_5a

    .line 2163
    .line 2164
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 2165
    .line 2166
    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 2167
    .line 2168
    goto :goto_51

    .line 2169
    :cond_5a
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 2170
    .line 2171
    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 2172
    .line 2173
    :goto_51
    iget v4, v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 2174
    .line 2175
    :goto_52
    if-ge v4, v3, :cond_5b

    .line 2176
    .line 2177
    move-object/from16 v12, v63

    .line 2178
    .line 2179
    invoke-virtual {v12, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 2180
    .line 2181
    .line 2182
    add-int/lit8 v4, v4, 0x1

    .line 2183
    .line 2184
    move-object/from16 v63, v12

    .line 2185
    .line 2186
    goto :goto_52

    .line 2187
    :cond_5b
    move-object/from16 v12, v63

    .line 2188
    .line 2189
    add-int/lit8 v2, v2, 0x1

    .line 2190
    .line 2191
    iget v1, v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 2192
    .line 2193
    if-gt v2, v1, :cond_5c

    .line 2194
    .line 2195
    :goto_53
    invoke-virtual {v12, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2196
    .line 2197
    .line 2198
    if-eq v2, v1, :cond_5c

    .line 2199
    .line 2200
    add-int/lit8 v2, v2, 0x1

    .line 2201
    .line 2202
    goto :goto_53

    .line 2203
    :cond_5c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2204
    .line 2205
    .line 2206
    return-object v0

    .line 2207
    :catchall_1
    move-exception v0

    .line 2208
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2209
    .line 2210
    .line 2211
    throw v0

    .line 2212
    :cond_5d
    return-object v0

    .line 2213
    :goto_54
    invoke-static {v4, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 2214
    .line 2215
    .line 2216
    throw v0
.end method
