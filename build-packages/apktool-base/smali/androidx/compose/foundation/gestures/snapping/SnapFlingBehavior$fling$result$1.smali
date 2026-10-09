.class final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;
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
        "Landroidx/compose/foundation/gestures/snapping/AnimationResult<",
        "Ljava/lang/Float;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1"
    f = "SnapFlingBehavior.kt"
    l = {
        0x86,
        0x96
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$FloatRef;

.field public o:I

.field public final synthetic p:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final synthetic q:F

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Landroidx/compose/foundation/gestures/ScrollScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->p:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->q:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->r:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->s:Landroidx/compose/foundation/gestures/ScrollScope;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->r:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->s:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->p:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->q:F

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->p:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 4
    .line 5
    iget-object v6, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 6
    .line 7
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->o:I

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x2

    .line 14
    iget-object v11, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->r:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-eq v1, v13, :cond_1

    .line 21
    .line 22
    if-ne v1, v10, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object p1

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
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object v10, v1

    .line 40
    move/from16 v20, v12

    .line 41
    .line 42
    move-object/from16 v1, p1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 50
    .line 51
    iget v2, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->q:F

    .line 52
    .line 53
    invoke-static {v1, v2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->a(Landroidx/compose/animation/core/DecayAnimationSpec;F)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v3, v6, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget-object v14, v3, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    move-object v15, v14

    .line 66
    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 67
    .line 68
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    check-cast v15, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 73
    .line 74
    iget v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 75
    .line 76
    add-int/2addr v15, v4

    .line 77
    if-nez v15, :cond_3

    .line 78
    .line 79
    move v1, v12

    .line 80
    move/from16 v20, v1

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    cmpg-float v4, v2, v12

    .line 85
    .line 86
    iget v10, v3, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 87
    .line 88
    if-gez v4, :cond_4

    .line 89
    .line 90
    add-int/lit8 v10, v10, 0x1

    .line 91
    .line 92
    :cond_4
    int-to-float v4, v15

    .line 93
    div-float/2addr v1, v4

    .line 94
    float-to-int v1, v1

    .line 95
    add-int/2addr v1, v10

    .line 96
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v1, v9, v4}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 105
    .line 106
    .line 107
    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 108
    .line 109
    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 114
    .line 115
    iget v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 116
    .line 117
    move v14, v12

    .line 118
    int-to-long v12, v10

    .line 119
    const-wide/16 v16, 0x1

    .line 120
    .line 121
    sub-long v18, v12, v16

    .line 122
    .line 123
    const-wide/16 v20, 0x0

    .line 124
    .line 125
    cmp-long v4, v18, v20

    .line 126
    .line 127
    if-gez v4, :cond_5

    .line 128
    .line 129
    move/from16 p1, v15

    .line 130
    .line 131
    move-wide/from16 v22, v20

    .line 132
    .line 133
    move/from16 v20, v14

    .line 134
    .line 135
    move-wide/from16 v14, v22

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    move/from16 v20, v14

    .line 139
    .line 140
    move/from16 p1, v15

    .line 141
    .line 142
    move-wide/from16 v14, v18

    .line 143
    .line 144
    :goto_0
    long-to-int v4, v14

    .line 145
    add-long v12, v12, v16

    .line 146
    .line 147
    const-wide/32 v14, 0x7fffffff

    .line 148
    .line 149
    .line 150
    cmp-long v16, v12, v14

    .line 151
    .line 152
    if-lez v16, :cond_6

    .line 153
    .line 154
    move-wide v12, v14

    .line 155
    :cond_6
    long-to-int v12, v12

    .line 156
    invoke-static {v1, v4, v12}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-static {v1, v9, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    sub-int/2addr v1, v10

    .line 169
    mul-int v1, v1, p1

    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    sub-int v1, v1, p1

    .line 176
    .line 177
    if-gez v1, :cond_7

    .line 178
    .line 179
    move v1, v9

    .line 180
    :cond_7
    if-nez v1, :cond_8

    .line 181
    .line 182
    int-to-float v1, v1

    .line 183
    goto :goto_1

    .line 184
    :cond_8
    int-to-float v1, v1

    .line 185
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    mul-float/2addr v1, v3

    .line 190
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    const-string v3, "calculateApproachOffset returned NaN. Please use a valid value."

    .line 197
    .line 198
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 202
    .line 203
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    mul-float/2addr v2, v1

    .line 215
    iput v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 216
    .line 217
    new-instance v1, Ljava/lang/Float;

    .line 218
    .line 219
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v11, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 226
    .line 227
    new-instance v4, Lxf;

    .line 228
    .line 229
    invoke-direct {v4, v10, v11, v9}, Lxf;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 230
    .line 231
    .line 232
    iput-object v10, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 233
    .line 234
    const/4 v1, 0x1

    .line 235
    iput v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->o:I

    .line 236
    .line 237
    iget-object v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->s:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 238
    .line 239
    iget v3, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->q:F

    .line 240
    .line 241
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLxf;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-ne v1, v7, :cond_a

    .line 246
    .line 247
    goto/16 :goto_8

    .line 248
    .line 249
    :cond_a
    :goto_2
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 250
    .line 251
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationState;->b()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/Number;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iget-object v3, v6, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    check-cast v4, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 268
    .line 269
    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 270
    .line 271
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    check-cast v12, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 276
    .line 277
    iget-object v12, v12, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 278
    .line 279
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 280
    .line 281
    .line 282
    move-result v13

    .line 283
    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 284
    .line 285
    move/from16 v17, v15

    .line 286
    .line 287
    const/high16 v16, -0x800000    # Float.NEGATIVE_INFINITY

    .line 288
    .line 289
    :goto_3
    if-ge v9, v13, :cond_d

    .line 290
    .line 291
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v18

    .line 295
    check-cast v18, Landroidx/compose/foundation/pager/PageInfo;

    .line 296
    .line 297
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 298
    .line 299
    .line 300
    move-result-object v19

    .line 301
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->a(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 305
    .line 306
    .line 307
    move-result-object v19

    .line 308
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 309
    .line 310
    move-object/from16 v14, v19

    .line 311
    .line 312
    check-cast v14, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 313
    .line 314
    iget v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    .line 315
    .line 316
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    check-cast v14, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 321
    .line 322
    iget v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->d:I

    .line 323
    .line 324
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    check-cast v14, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 329
    .line 330
    iget v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 331
    .line 332
    move-object/from16 v14, v18

    .line 333
    .line 334
    check-cast v14, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 335
    .line 336
    iget v14, v14, Landroidx/compose/foundation/pager/MeasuredPage;->j:I

    .line 337
    .line 338
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    int-to-float v14, v14

    .line 345
    sub-float v14, v14, v20

    .line 346
    .line 347
    cmpg-float v18, v14, v20

    .line 348
    .line 349
    if-gtz v18, :cond_b

    .line 350
    .line 351
    cmpl-float v18, v14, v16

    .line 352
    .line 353
    if-lez v18, :cond_b

    .line 354
    .line 355
    move/from16 v16, v14

    .line 356
    .line 357
    :cond_b
    cmpl-float v18, v14, v20

    .line 358
    .line 359
    if-ltz v18, :cond_c

    .line 360
    .line 361
    cmpg-float v18, v14, v17

    .line 362
    .line 363
    if-gez v18, :cond_c

    .line 364
    .line 365
    move/from16 v17, v14

    .line 366
    .line 367
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_d
    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 371
    .line 372
    cmpg-float v4, v16, p1

    .line 373
    .line 374
    if-nez v4, :cond_e

    .line 375
    .line 376
    move/from16 v16, v17

    .line 377
    .line 378
    :cond_e
    cmpg-float v4, v17, v15

    .line 379
    .line 380
    if-nez v4, :cond_f

    .line 381
    .line 382
    move/from16 v17, v16

    .line 383
    .line 384
    :cond_f
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->d()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-nez v4, :cond_11

    .line 389
    .line 390
    invoke-static {v3, v2}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->b(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_10

    .line 395
    .line 396
    move/from16 v16, v20

    .line 397
    .line 398
    move/from16 v17, v16

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_10
    move/from16 v17, v20

    .line 402
    .line 403
    :cond_11
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->b()Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-nez v4, :cond_13

    .line 408
    .line 409
    invoke-static {v3, v2}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->b(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-nez v3, :cond_12

    .line 414
    .line 415
    move/from16 v3, v20

    .line 416
    .line 417
    move v4, v3

    .line 418
    goto :goto_5

    .line 419
    :cond_12
    move/from16 v4, v17

    .line 420
    .line 421
    move/from16 v3, v20

    .line 422
    .line 423
    goto :goto_5

    .line 424
    :cond_13
    move/from16 v3, v16

    .line 425
    .line 426
    move/from16 v4, v17

    .line 427
    .line 428
    :goto_5
    iget-object v6, v6, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->b:Li0;

    .line 429
    .line 430
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 439
    .line 440
    .line 441
    move-result-object v12

    .line 442
    invoke-virtual {v6, v2, v9, v12}, Li0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    check-cast v2, Ljava/lang/Number;

    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    cmpg-float v6, v2, v3

    .line 453
    .line 454
    if-nez v6, :cond_14

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_14
    cmpg-float v6, v2, v4

    .line 458
    .line 459
    if-nez v6, :cond_15

    .line 460
    .line 461
    goto :goto_6

    .line 462
    :cond_15
    cmpg-float v6, v2, v20

    .line 463
    .line 464
    if-nez v6, :cond_16

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v9, "Final Snapping Offset Should Be one of "

    .line 470
    .line 471
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v3, ", "

    .line 478
    .line 479
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v3, " or 0.0"

    .line 486
    .line 487
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    :goto_6
    cmpg-float v3, v2, v15

    .line 498
    .line 499
    if-nez v3, :cond_17

    .line 500
    .line 501
    goto :goto_7

    .line 502
    :cond_17
    cmpg-float v3, v2, p1

    .line 503
    .line 504
    if-nez v3, :cond_18

    .line 505
    .line 506
    :goto_7
    move/from16 v2, v20

    .line 507
    .line 508
    :cond_18
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-eqz v3, :cond_19

    .line 513
    .line 514
    const-string v3, "calculateSnapOffset returned NaN. Please use a valid value."

    .line 515
    .line 516
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_19
    iput v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 520
    .line 521
    const/16 v3, 0x1e

    .line 522
    .line 523
    move/from16 v14, v20

    .line 524
    .line 525
    invoke-static {v1, v14, v14, v3}, Landroidx/compose/animation/core/AnimationStateKt;->c(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    iget-object v4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 530
    .line 531
    new-instance v0, Lxf;

    .line 532
    .line 533
    const/4 v1, 0x1

    .line 534
    invoke-direct {v0, v10, v11, v1}, Lxf;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 535
    .line 536
    .line 537
    iput-object v8, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 538
    .line 539
    const/4 v1, 0x2

    .line 540
    iput v1, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->o:I

    .line 541
    .line 542
    move-object v1, v0

    .line 543
    iget-object v0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;->s:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 544
    .line 545
    move-object v5, v1

    .line 546
    move v1, v2

    .line 547
    move-object/from16 v6, p0

    .line 548
    .line 549
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->b(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    if-ne v0, v7, :cond_1a

    .line 554
    .line 555
    :goto_8
    return-object v7

    .line 556
    :cond_1a
    return-object v0
.end method
