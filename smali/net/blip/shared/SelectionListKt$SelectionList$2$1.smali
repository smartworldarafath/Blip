.class final Lnet/blip/shared/SelectionListKt$SelectionList$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.shared.SelectionListKt$SelectionList$2$1"
    f = "SelectionList.kt"
    l = {
        0x48,
        0x4e,
        0x7e,
        0x85
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/shared/SelectionListState;

.field public final synthetic p:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic q:Landroidx/compose/ui/unit/Density;

.field public final synthetic r:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->o:Lnet/blip/shared/SelectionListState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->q:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->r:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;

    .line 2
    .line 3
    iget-object v3, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->q:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    iget-object v4, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->r:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->o:Lnet/blip/shared/SelectionListState;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;-><init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->n:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    if-eq v2, v6, :cond_3

    .line 17
    .line 18
    if-eq v2, v5, :cond_2

    .line 19
    .line 20
    if-eq v2, v4, :cond_1

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v7

    .line 28
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v8

    .line 34
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v7

    .line 38
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v7

    .line 42
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v7

    .line 46
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->o:Lnet/blip/shared/SelectionListState;

    .line 50
    .line 51
    iget-object v2, v2, Lnet/blip/shared/SelectionListState;->a:Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 60
    .line 61
    iget-object v9, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->r:Landroidx/compose/runtime/MutableState;

    .line 62
    .line 63
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Lnet/blip/shared/SelectableLazyListScope;

    .line 68
    .line 69
    if-nez v9, :cond_5

    .line 70
    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :cond_5
    iget-object v10, v9, Lnet/blip/shared/SelectableLazyListScope;->c:Ljava/util/HashMap;

    .line 74
    .line 75
    if-nez v2, :cond_6

    .line 76
    .line 77
    invoke-virtual {v9, v8}, Lnet/blip/shared/SelectableLazyListScope;->d(Ljava/lang/Integer;)V

    .line 78
    .line 79
    .line 80
    return-object v7

    .line 81
    :cond_6
    invoke-virtual {v9, v2}, Lnet/blip/shared/SelectableLazyListScope;->d(Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const/4 v11, 0x0

    .line 89
    iget-object v12, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 90
    .line 91
    if-gtz v9, :cond_7

    .line 92
    .line 93
    iput v6, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->n:I

    .line 94
    .line 95
    invoke-virtual {v12, v11, v11, v0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-ne v0, v1, :cond_1d

    .line 100
    .line 101
    goto/16 :goto_a

    .line 102
    .line 103
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    sub-int/2addr v13, v6

    .line 112
    if-lt v9, v13, :cond_8

    .line 113
    .line 114
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    iput v5, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->n:I

    .line 119
    .line 120
    invoke-virtual {v12, v2, v11, v0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v1, :cond_1d

    .line 125
    .line 126
    goto/16 :goto_a

    .line 127
    .line 128
    :cond_8
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;

    .line 133
    .line 134
    if-eqz v2, :cond_9

    .line 135
    .line 136
    iget v2, v2, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;->a:I

    .line 137
    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_0

    .line 143
    :cond_9
    move-object v2, v8

    .line 144
    :goto_0
    if-eqz v2, :cond_1d

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    move-object v9, v5

    .line 155
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 156
    .line 157
    iget-object v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 158
    .line 159
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 164
    .line 165
    const-string v13, "no visible items"

    .line 166
    .line 167
    if-eqz v9, :cond_1c

    .line 168
    .line 169
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 170
    .line 171
    iget-object v14, v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 172
    .line 173
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 178
    .line 179
    if-eqz v14, :cond_1b

    .line 180
    .line 181
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 182
    .line 183
    iget v13, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 184
    .line 185
    sget-object v15, Lnet/blip/shared/ItemVisibility$InsideViewport;->a:Lnet/blip/shared/ItemVisibility$InsideViewport;

    .line 186
    .line 187
    sget-object v6, Lnet/blip/shared/ItemVisibility$AboveViewport;->a:Lnet/blip/shared/ItemVisibility$AboveViewport;

    .line 188
    .line 189
    move-object/from16 v16, v8

    .line 190
    .line 191
    sget-object v8, Lnet/blip/shared/ItemVisibility$BelowViewport;->a:Lnet/blip/shared/ItemVisibility$BelowViewport;

    .line 192
    .line 193
    if-le v13, v2, :cond_a

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 197
    .line 198
    iget v11, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 199
    .line 200
    if-ge v11, v2, :cond_b

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_b
    if-ne v13, v2, :cond_c

    .line 204
    .line 205
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 206
    .line 207
    iget v13, v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 208
    .line 209
    if-ge v9, v13, :cond_c

    .line 210
    .line 211
    :goto_1
    move-object v5, v6

    .line 212
    goto :goto_3

    .line 213
    :cond_c
    if-ne v11, v2, :cond_d

    .line 214
    .line 215
    iget v9, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 216
    .line 217
    iget v11, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 218
    .line 219
    add-int/2addr v9, v11

    .line 220
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->n:I

    .line 221
    .line 222
    if-le v9, v5, :cond_d

    .line 223
    .line 224
    :goto_2
    move-object v5, v8

    .line 225
    goto :goto_3

    .line 226
    :cond_d
    move-object v5, v15

    .line 227
    :goto_3
    instance-of v9, v5, Lnet/blip/shared/ItemVisibility$InsideViewport;

    .line 228
    .line 229
    if-eqz v9, :cond_e

    .line 230
    .line 231
    goto/16 :goto_b

    .line 232
    .line 233
    :cond_e
    iget-object v9, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->q:Landroidx/compose/ui/unit/Density;

    .line 234
    .line 235
    const/high16 v11, 0x42700000    # 60.0f

    .line 236
    .line 237
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-static {v9}, Lkotlin/math/MathKt;->b(F)I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 250
    .line 251
    iget-object v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-eqz v13, :cond_10

    .line 262
    .line 263
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    move-object v14, v13

    .line 268
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 269
    .line 270
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 271
    .line 272
    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 273
    .line 274
    if-ne v14, v2, :cond_f

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_10
    move-object/from16 v13, v16

    .line 278
    .line 279
    :goto_4
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 280
    .line 281
    if-eqz v13, :cond_11

    .line 282
    .line 283
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 284
    .line 285
    iget v9, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_11
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 293
    .line 294
    iget-object v11, v11, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 295
    .line 296
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_16

    .line 305
    .line 306
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    move-object v14, v13

    .line 311
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 312
    .line 313
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 314
    .line 315
    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 316
    .line 317
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 318
    .line 319
    .line 320
    move-result-object v17

    .line 321
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v17

    .line 325
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v18

    .line 329
    if-eqz v18, :cond_13

    .line 330
    .line 331
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v17

    .line 335
    check-cast v17, Ljava/util/Map$Entry;

    .line 336
    .line 337
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v17

    .line 341
    move-object/from16 v3, v17

    .line 342
    .line 343
    check-cast v3, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;

    .line 344
    .line 345
    iget v3, v3, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;->a:I

    .line 346
    .line 347
    if-ne v3, v14, :cond_12

    .line 348
    .line 349
    const/4 v3, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_12
    const/4 v3, 0x0

    .line 352
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    goto :goto_7

    .line 357
    :cond_13
    move-object/from16 v3, v16

    .line 358
    .line 359
    :goto_7
    if-eqz v3, :cond_15

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_14

    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_14
    const/4 v3, 0x4

    .line 369
    goto :goto_5

    .line 370
    :cond_15
    const-string v0, "No element of the map was transformed to a non-null value."

    .line 371
    .line 372
    invoke-static {v0}, Lfe;->o(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v16

    .line 376
    :cond_16
    move-object/from16 v13, v16

    .line 377
    .line 378
    :goto_8
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 379
    .line 380
    if-eqz v13, :cond_17

    .line 381
    .line 382
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 383
    .line 384
    iget v9, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 385
    .line 386
    :cond_17
    :goto_9
    div-int/lit8 v3, v9, 0x2

    .line 387
    .line 388
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    if-eqz v6, :cond_18

    .line 393
    .line 394
    neg-int v3, v3

    .line 395
    iput v4, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->n:I

    .line 396
    .line 397
    invoke-virtual {v12, v2, v3, v0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-ne v0, v1, :cond_1d

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_18
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_19

    .line 409
    .line 410
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i()J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    const-wide v10, 0xffffffffL

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    and-long/2addr v4, v10

    .line 426
    long-to-int v4, v4

    .line 427
    neg-int v4, v4

    .line 428
    add-int/2addr v4, v3

    .line 429
    add-int/2addr v4, v9

    .line 430
    const/4 v3, 0x4

    .line 431
    iput v3, v0, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;->n:I

    .line 432
    .line 433
    invoke-virtual {v12, v2, v4, v0}, Landroidx/compose/foundation/lazy/LazyListState;->f(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-ne v0, v1, :cond_1d

    .line 438
    .line 439
    :goto_a
    return-object v1

    .line 440
    :cond_19
    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_1a

    .line 445
    .line 446
    const-string v0, "compiler can\'t detect early exit"

    .line 447
    .line 448
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    return-object v16

    .line 452
    :cond_1a
    invoke-static {}, Lk8;->e()V

    .line 453
    .line 454
    .line 455
    return-object v16

    .line 456
    :cond_1b
    move-object/from16 v16, v8

    .line 457
    .line 458
    invoke-static {v13}, Lu2;->l(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    return-object v16

    .line 462
    :cond_1c
    move-object/from16 v16, v8

    .line 463
    .line 464
    invoke-static {v13}, Lu2;->l(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    return-object v16

    .line 468
    :cond_1d
    :goto_b
    return-object v7
.end method
