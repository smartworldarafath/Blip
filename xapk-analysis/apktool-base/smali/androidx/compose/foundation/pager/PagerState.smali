.class public abstract Landroidx/compose/foundation/pager/PagerState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# instance fields
.field public final A:Landroidx/compose/runtime/MutableState;

.field public final B:Landroidx/compose/runtime/MutableState;

.field public final C:Landroidx/compose/runtime/MutableState;

.field public final D:Landroidx/compose/runtime/MutableState;

.field public final E:Landroidx/compose/runtime/MutableState;

.field public a:Z

.field public b:Landroidx/compose/foundation/pager/PagerMeasureResult;

.field public final c:Landroidx/compose/runtime/MutableState;

.field public final d:Landroidx/compose/foundation/pager/PagerScrollPosition;

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:F

.field public j:F

.field public final k:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final l:Z

.field public final m:Landroidx/compose/runtime/MutableState;

.field public n:Landroidx/compose/ui/unit/Density;

.field public o:I

.field public final p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final q:Landroidx/compose/runtime/MutableIntState;

.field public final r:Landroidx/compose/runtime/MutableIntState;

.field public final s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final t:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

.field public final u:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field public final v:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final w:Landroidx/compose/runtime/MutableState;

.field public final x:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

.field public final y:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final z:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(IF)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p2

    .line 5
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 6
    .line 7
    cmpg-double v2, v2, v0

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    cmpg-double v0, v0, v2

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "currentPageOffsetFraction "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " is not within the range -0.5 to 0.5"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->c:Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 54
    .line 55
    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/foundation/pager/PagerScrollPosition;-><init>(IFLandroidx/compose/foundation/pager/PagerState;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 59
    .line 60
    iput p1, p0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 61
    .line 62
    const-wide v0, 0x7fffffffffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v0, p0, Landroidx/compose/foundation/pager/PagerState;->g:J

    .line 68
    .line 69
    new-instance p2, Lyc;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-direct {p2, p0, v0}, Lyc;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Landroidx/compose/foundation/pager/PagerState;->l:Z

    .line 83
    .line 84
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 97
    .line 98
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 105
    .line 106
    const/4 v1, -0x1

    .line 107
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->q:Landroidx/compose/runtime/MutableIntState;

    .line 112
    .line 113
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->r:Landroidx/compose/runtime/MutableIntState;

    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance v1, Lia;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-direct {v1, p0, v2}, Lia;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v1, Lia;

    .line 137
    .line 138
    const/4 v2, 0x3

    .line 139
    invoke-direct {v1, p0, v2}, Lia;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v1}, Landroidx/compose/runtime/SnapshotStateKt;->d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 143
    .line 144
    .line 145
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 146
    .line 147
    new-instance v1, Lyc;

    .line 148
    .line 149
    invoke-direct {v1, p0, p2}, Lyc;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 156
    .line 157
    new-instance p2, Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;

    .line 158
    .line 159
    invoke-direct {p2, p0}, Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 163
    .line 164
    new-instance v2, Lia;

    .line 165
    .line 166
    const/4 v3, 0x4

    .line 167
    invoke-direct {v2, p0, v3}, Lia;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    .line 168
    .line 169
    .line 170
    invoke-direct {v1, p2, p1, v2}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;-><init>(Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lia;)V

    .line 171
    .line 172
    .line 173
    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->t:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 174
    .line 175
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 176
    .line 177
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->u:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 181
    .line 182
    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->v:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 188
    .line 189
    const/4 p1, 0x0

    .line 190
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/runtime/MutableState;

    .line 195
    .line 196
    new-instance p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->x:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 202
    .line 203
    const/16 p1, 0xf

    .line 204
    .line 205
    invoke-static {v0, v0, v0, v0, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 206
    .line 207
    .line 208
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 209
    .line 210
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->y:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 214
    .line 215
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->z:Landroidx/compose/runtime/MutableState;

    .line 220
    .line 221
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->A:Landroidx/compose/runtime/MutableState;

    .line 226
    .line 227
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->B:Landroidx/compose/runtime/MutableState;

    .line 234
    .line 235
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->C:Landroidx/compose/runtime/MutableState;

    .line 240
    .line 241
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->D:Landroidx/compose/runtime/MutableState;

    .line 246
    .line 247
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->E:Landroidx/compose/runtime/MutableState;

    .line 252
    .line 253
    return-void
.end method

.method public static synthetic g(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v0, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/pager/PagerState;->f(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static q(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->r:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$scroll$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->r:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->o:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 53
    .line 54
    move-object p2, p0

    .line 55
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->n:Landroidx/compose/foundation/MutatePriority;

    .line 58
    .line 59
    iget-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 60
    .line 61
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 69
    .line 70
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->n:Landroidx/compose/foundation/MutatePriority;

    .line 71
    .line 72
    move-object p3, p2

    .line 73
    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 74
    .line 75
    iput-object p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->o:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 76
    .line 77
    iput v5, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->r:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    if-ne p3, v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 87
    .line 88
    invoke-interface {p3}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->r:Landroidx/compose/runtime/MutableIntState;

    .line 101
    .line 102
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 103
    .line 104
    invoke-virtual {v2, p3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 108
    .line 109
    iput-object p0, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 110
    .line 111
    iput-object v3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->n:Landroidx/compose/foundation/MutatePriority;

    .line 112
    .line 113
    iput-object v3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->o:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 114
    .line 115
    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->r:I

    .line 116
    .line 117
    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v1, :cond_6

    .line 122
    .line 123
    :goto_2
    return-object v1

    .line 124
    :cond_6
    :goto_3
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->q:Landroidx/compose/runtime/MutableIntState;

    .line 125
    .line 126
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 127
    .line 128
    const/4 p1, -0x1

    .line 129
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 130
    .line 131
    .line 132
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->C:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->q(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->B:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final e(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->e(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f(ILandroidx/compose/animation/core/SpringSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v3, p3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 2
    .line 3
    if-eqz v3, :cond_0

    .line 4
    .line 5
    move-object v3, p3

    .line 6
    check-cast v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 7
    .line 8
    iget v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->q:I

    .line 9
    .line 10
    const/high16 v5, -0x80000000

    .line 11
    .line 12
    and-int v6, v4, v5

    .line 13
    .line 14
    if-eqz v6, :cond_0

    .line 15
    .line 16
    sub-int/2addr v4, v5

    .line 17
    iput v4, v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->q:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v3, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    .line 22
    .line 23
    invoke-direct {v3, p0, p3}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->o:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->q:I

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v5, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v9

    .line 49
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v8

    .line 55
    :cond_2
    iget v0, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->m:I

    .line 56
    .line 57
    iget-object v3, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->n:Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move v2, v4

    .line 63
    move-object v4, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ne p1, v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    cmpg-float v2, v2, v4

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    iput-object p2, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->n:Landroidx/compose/animation/core/SpringSpec;

    .line 93
    .line 94
    iput p1, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->m:I

    .line 95
    .line 96
    iput v5, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->q:I

    .line 97
    .line 98
    invoke-virtual {p0, v6}, Landroidx/compose/foundation/pager/PagerState;->i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-ne v3, v7, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move v0, p1

    .line 106
    move v2, v4

    .line 107
    move-object v4, p2

    .line 108
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->j(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v3, v3

    .line 117
    mul-float/2addr v3, v2

    .line 118
    move v2, v0

    .line 119
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    move-object v1, p0

    .line 123
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 124
    .line 125
    .line 126
    iput-object v8, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->n:Landroidx/compose/animation/core/SpringSpec;

    .line 127
    .line 128
    iput v10, v6, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->q:I

    .line 129
    .line 130
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->j:Landroidx/compose/foundation/MutatePriority;

    .line 131
    .line 132
    invoke-virtual {p0, v2, v0, v6}, Landroidx/compose/foundation/pager/PagerState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-ne v0, v7, :cond_7

    .line 137
    .line 138
    :goto_3
    return-object v7

    .line 139
    :cond_7
    :goto_4
    return-object v9
.end method

.method public final h(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->l:I

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->i:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->j:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 12
    .line 13
    iget v6, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->k:F

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 20
    .line 21
    iput v7, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->e:I

    .line 22
    .line 23
    iget v7, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 24
    .line 25
    iget v8, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 26
    .line 27
    add-int/2addr v7, v8

    .line 28
    iput v7, v0, Landroidx/compose/foundation/pager/PagerState;->o:I

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerState;->a:Z

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerState;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v7, 0x1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iput-boolean v7, v0, Landroidx/compose/foundation/pager/PagerState;->a:Z

    .line 43
    .line 44
    :cond_1
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState;->t:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 45
    .line 46
    iget-boolean v9, v0, Landroidx/compose/foundation/pager/PagerState;->l:Z

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 52
    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    iget-object v2, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 56
    .line 57
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 58
    .line 59
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 60
    .line 61
    .line 62
    :cond_2
    move/from16 v18, v7

    .line 63
    .line 64
    move v5, v9

    .line 65
    move v2, v10

    .line 66
    goto/16 :goto_10

    .line 67
    .line 68
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    iget-object v12, v5, Landroidx/compose/foundation/pager/MeasuredPage;->d:Ljava/lang/Object;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v12, v17

    .line 77
    .line 78
    :goto_0
    iput-object v12, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->e:Ljava/lang/Object;

    .line 79
    .line 80
    iget-boolean v12, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->d:Z

    .line 81
    .line 82
    if-nez v12, :cond_5

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_7

    .line 89
    .line 90
    :cond_5
    iput-boolean v7, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->d:Z

    .line 91
    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    iget v2, v5, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    move v2, v10

    .line 98
    :goto_1
    iget-object v5, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    .line 99
    .line 100
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 103
    .line 104
    .line 105
    iget-object v5, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 106
    .line 107
    invoke-virtual {v5, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->b(I)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v11, Landroidx/compose/foundation/pager/PagerScrollPosition;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 111
    .line 112
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 113
    .line 114
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 115
    .line 116
    .line 117
    :cond_7
    if-eqz v9, :cond_2

    .line 118
    .line 119
    move v2, v9

    .line 120
    iget-object v9, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->o:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 121
    .line 122
    iget-object v5, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 123
    .line 124
    iput-object v1, v9, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 125
    .line 126
    iget-object v6, v8, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 127
    .line 128
    iput-object v6, v9, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 129
    .line 130
    iget-object v6, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;

    .line 131
    .line 132
    iget v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:I

    .line 133
    .line 134
    const/4 v12, -0x1

    .line 135
    const/4 v13, 0x0

    .line 136
    if-eq v11, v12, :cond_d

    .line 137
    .line 138
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    if-eq v11, v14, :cond_d

    .line 143
    .line 144
    iput-boolean v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 145
    .line 146
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c()Z

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eqz v11, :cond_d

    .line 151
    .line 152
    iget v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 153
    .line 154
    if-gez v11, :cond_8

    .line 155
    .line 156
    move v11, v10

    .line 157
    :cond_8
    iput v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 158
    .line 159
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-eqz v11, :cond_9

    .line 170
    .line 171
    move v11, v12

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    sub-int/2addr v11, v7

    .line 178
    :goto_2
    if-eq v11, v12, :cond_b

    .line 179
    .line 180
    iget v14, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 181
    .line 182
    if-le v14, v11, :cond_a

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    move v11, v14

    .line 186
    :goto_3
    iput v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 187
    .line 188
    :cond_b
    iget v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 189
    .line 190
    cmpg-float v11, v11, v13

    .line 191
    .line 192
    if-gtz v11, :cond_c

    .line 193
    .line 194
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    iget v14, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    .line 199
    .line 200
    sub-int/2addr v14, v7

    .line 201
    invoke-virtual {v8, v11, v14}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e(II)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_c
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v8, v10, v11}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e(II)V

    .line 210
    .line 211
    .line 212
    :cond_d
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    iput v11, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    .line 217
    .line 218
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c()Z

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    if-eqz v11, :cond_1e

    .line 223
    .line 224
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    iget-object v14, v14, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    add-int/2addr v14, v11

    .line 245
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    add-int/2addr v11, v14

    .line 256
    move v14, v10

    .line 257
    :goto_5
    if-ge v14, v11, :cond_19

    .line 258
    .line 259
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Ljava/util/List;

    .line 264
    .line 265
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-ge v14, v15, :cond_e

    .line 280
    .line 281
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 292
    .line 293
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 294
    .line 295
    move/from16 p3, v13

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_e
    move/from16 p3, v13

    .line 299
    .line 300
    if-lt v14, v15, :cond_f

    .line 301
    .line 302
    add-int v13, v15, v10

    .line 303
    .line 304
    if-ge v14, v13, :cond_f

    .line 305
    .line 306
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    iget-object v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 311
    .line 312
    sub-int v13, v14, v15

    .line 313
    .line 314
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 319
    .line 320
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_f
    add-int v13, v15, v10

    .line 324
    .line 325
    if-lt v14, v13, :cond_10

    .line 326
    .line 327
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    .line 332
    .line 333
    sub-int v15, v14, v15

    .line 334
    .line 335
    sub-int/2addr v15, v10

    .line 336
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 341
    .line 342
    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_10
    move v10, v12

    .line 346
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Ljava/util/List;

    .line 351
    .line 352
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 357
    .line 358
    .line 359
    move-result-object v15

    .line 360
    iget-object v15, v15, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 361
    .line 362
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v15

    .line 366
    if-ge v14, v13, :cond_11

    .line 367
    .line 368
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 369
    .line 370
    .line 371
    move-result-object v13

    .line 372
    iget-object v13, v13, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Ljava/util/List;

    .line 373
    .line 374
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v13

    .line 378
    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 379
    .line 380
    iget-object v13, v13, Landroidx/compose/foundation/pager/MeasuredPage;->d:Ljava/lang/Object;

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_11
    if-lt v14, v13, :cond_12

    .line 384
    .line 385
    add-int v7, v13, v15

    .line 386
    .line 387
    if-ge v14, v7, :cond_12

    .line 388
    .line 389
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    iget-object v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 394
    .line 395
    sub-int v13, v14, v13

    .line 396
    .line 397
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 402
    .line 403
    iget-object v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->d:Ljava/lang/Object;

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_12
    add-int v7, v13, v15

    .line 407
    .line 408
    if-lt v14, v7, :cond_13

    .line 409
    .line 410
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    iget-object v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    .line 415
    .line 416
    sub-int v13, v14, v13

    .line 417
    .line 418
    sub-int/2addr v13, v15

    .line 419
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 424
    .line 425
    iget-object v13, v7, Landroidx/compose/foundation/pager/MeasuredPage;->d:Ljava/lang/Object;

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_13
    sget-object v13, Landroidx/compose/foundation/lazy/layout/CachedItem;->c:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 429
    .line 430
    :goto_7
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    iget v7, v7, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 435
    .line 436
    if-eq v10, v12, :cond_17

    .line 437
    .line 438
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    if-eqz v15, :cond_15

    .line 443
    .line 444
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    check-cast v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 452
    .line 453
    iget v15, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 454
    .line 455
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v16

    .line 459
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    move-object/from16 v12, v16

    .line 463
    .line 464
    check-cast v12, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 465
    .line 466
    iget-object v12, v12, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    .line 467
    .line 468
    if-ne v15, v7, :cond_14

    .line 469
    .line 470
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v12

    .line 474
    if-nez v12, :cond_15

    .line 475
    .line 476
    :cond_14
    const/4 v12, 0x1

    .line 477
    goto :goto_8

    .line 478
    :cond_15
    const/4 v12, 0x1

    .line 479
    goto :goto_9

    .line 480
    :goto_8
    iput-boolean v12, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 481
    .line 482
    :goto_9
    invoke-virtual {v5, v10}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v15

    .line 486
    check-cast v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 487
    .line 488
    if-eqz v15, :cond_16

    .line 489
    .line 490
    iput v7, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 491
    .line 492
    iput-object v13, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_16
    new-instance v15, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 496
    .line 497
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 498
    .line 499
    .line 500
    iput-object v13, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->a:Ljava/lang/Object;

    .line 501
    .line 502
    iput v7, v15, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 503
    .line 504
    :goto_a
    invoke-virtual {v5, v10, v15}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    iget v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 508
    .line 509
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    iput v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 514
    .line 515
    iget v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 516
    .line 517
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    iput v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 522
    .line 523
    iget-object v7, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->b:Landroidx/collection/MutableIntObjectMap;

    .line 524
    .line 525
    invoke-virtual {v7, v10}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    check-cast v7, Ljava/util/List;

    .line 530
    .line 531
    if-eqz v7, :cond_18

    .line 532
    .line 533
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    const/4 v13, 0x0

    .line 538
    :goto_b
    if-ge v13, v10, :cond_18

    .line 539
    .line 540
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v15

    .line 544
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 545
    .line 546
    invoke-interface {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 547
    .line 548
    .line 549
    add-int/lit8 v13, v13, 0x1

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_17
    const/4 v12, 0x1

    .line 553
    :cond_18
    add-int/lit8 v14, v14, 0x1

    .line 554
    .line 555
    move/from16 v13, p3

    .line 556
    .line 557
    move v7, v12

    .line 558
    const/4 v10, 0x0

    .line 559
    const/4 v12, -0x1

    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :cond_19
    move v12, v7

    .line 563
    move/from16 p3, v13

    .line 564
    .line 565
    iget-boolean v5, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 566
    .line 567
    if-eqz v5, :cond_1d

    .line 568
    .line 569
    iget v5, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 570
    .line 571
    cmpg-float v5, v5, p3

    .line 572
    .line 573
    if-gtz v5, :cond_1a

    .line 574
    .line 575
    move/from16 v16, v12

    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_1a
    const/16 v16, 0x0

    .line 579
    .line 580
    :goto_c
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c()Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_1c

    .line 585
    .line 586
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->h()I

    .line 587
    .line 588
    .line 589
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    iget-object v5, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->t:Landroidx/compose/ui/unit/Density;

    .line 594
    .line 595
    if-eqz v5, :cond_1b

    .line 596
    .line 597
    iget-object v5, v6, Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 598
    .line 599
    iget v5, v5, Landroidx/compose/foundation/pager/PagerState;->o:I

    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_1b
    const/4 v5, 0x0

    .line 603
    :goto_d
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b()I

    .line 604
    .line 605
    .line 606
    move-result v10

    .line 607
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->g()I

    .line 612
    .line 613
    .line 614
    move-result v14

    .line 615
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->f()I

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    const/4 v15, 0x0

    .line 620
    move/from16 v18, v12

    .line 621
    .line 622
    move v12, v5

    .line 623
    move v5, v2

    .line 624
    const/4 v2, 0x0

    .line 625
    invoke-virtual/range {v8 .. v16}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    .line 626
    .line 627
    .line 628
    goto :goto_e

    .line 629
    :cond_1c
    move v5, v2

    .line 630
    move/from16 v18, v12

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 633
    :goto_e
    iput-boolean v2, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->l:Z

    .line 634
    .line 635
    goto :goto_f

    .line 636
    :cond_1d
    move v5, v2

    .line 637
    move/from16 v18, v12

    .line 638
    .line 639
    const/4 v2, 0x0

    .line 640
    goto :goto_f

    .line 641
    :cond_1e
    move v5, v2

    .line 642
    move/from16 v18, v7

    .line 643
    .line 644
    move v2, v10

    .line 645
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f()V

    .line 646
    .line 647
    .line 648
    :goto_f
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 649
    .line 650
    .line 651
    move-result v6

    .line 652
    iput v6, v8, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g:I

    .line 653
    .line 654
    :goto_10
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 655
    .line 656
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 657
    .line 658
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    iget-boolean v6, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->m:Z

    .line 662
    .line 663
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerState;->B:Landroidx/compose/runtime/MutableState;

    .line 668
    .line 669
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 670
    .line 671
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    if-eqz v4, :cond_1f

    .line 675
    .line 676
    iget v10, v4, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 677
    .line 678
    goto :goto_11

    .line 679
    :cond_1f
    move v10, v2

    .line 680
    :goto_11
    if-nez v10, :cond_21

    .line 681
    .line 682
    if-eqz v3, :cond_20

    .line 683
    .line 684
    goto :goto_12

    .line 685
    :cond_20
    move v10, v2

    .line 686
    goto :goto_13

    .line 687
    :cond_21
    :goto_12
    move/from16 v10, v18

    .line 688
    .line 689
    :goto_13
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerState;->C:Landroidx/compose/runtime/MutableState;

    .line 694
    .line 695
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 696
    .line 697
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    if-eqz v4, :cond_22

    .line 701
    .line 702
    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    .line 703
    .line 704
    iput v4, v0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 705
    .line 706
    :cond_22
    iput v3, v0, Landroidx/compose/foundation/pager/PagerState;->f:I

    .line 707
    .line 708
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    if-eqz v3, :cond_23

    .line 713
    .line 714
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 715
    .line 716
    .line 717
    move-result-object v17

    .line 718
    :cond_23
    move-object/from16 v4, v17

    .line 719
    .line 720
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 721
    .line 722
    .line 723
    move-result-object v6

    .line 724
    const/16 v7, 0x20

    .line 725
    .line 726
    const-wide v9, 0xffffffffL

    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    if-nez v5, :cond_24

    .line 732
    .line 733
    :goto_14
    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 734
    .line 735
    .line 736
    goto :goto_16

    .line 737
    :cond_24
    :try_start_0
    iget v5, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:I

    .line 738
    .line 739
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 740
    .line 741
    .line 742
    move-result v11

    .line 743
    if-lt v5, v11, :cond_25

    .line 744
    .line 745
    goto :goto_14

    .line 746
    :cond_25
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->j:F

    .line 747
    .line 748
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 749
    .line 750
    .line 751
    move-result v5

    .line 752
    const/high16 v11, 0x3f000000    # 0.5f

    .line 753
    .line 754
    cmpg-float v5, v5, v11

    .line 755
    .line 756
    if-gtz v5, :cond_26

    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_26
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->j:F

    .line 760
    .line 761
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 762
    .line 763
    .line 764
    move-result-object v11

    .line 765
    check-cast v11, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 766
    .line 767
    iget-object v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 768
    .line 769
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 770
    .line 771
    if-ne v11, v12, :cond_27

    .line 772
    .line 773
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()J

    .line 778
    .line 779
    .line 780
    move-result-wide v11

    .line 781
    and-long/2addr v11, v9

    .line 782
    long-to-int v11, v11

    .line 783
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 784
    .line 785
    .line 786
    move-result v11

    .line 787
    neg-float v11, v11

    .line 788
    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    .line 789
    .line 790
    .line 791
    move-result v11

    .line 792
    cmpg-float v5, v5, v11

    .line 793
    .line 794
    if-nez v5, :cond_28

    .line 795
    .line 796
    goto :goto_15

    .line 797
    :cond_27
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()J

    .line 802
    .line 803
    .line 804
    move-result-wide v11

    .line 805
    shr-long/2addr v11, v7

    .line 806
    long-to-int v11, v11

    .line 807
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 808
    .line 809
    .line 810
    move-result v11

    .line 811
    neg-float v11, v11

    .line 812
    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    .line 813
    .line 814
    .line 815
    move-result v11

    .line 816
    cmpg-float v5, v5, v11

    .line 817
    .line 818
    if-nez v5, :cond_28

    .line 819
    .line 820
    goto :goto_15

    .line 821
    :cond_28
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->p()Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-eqz v5, :cond_29

    .line 826
    .line 827
    goto :goto_15

    .line 828
    :cond_29
    move/from16 v18, v2

    .line 829
    .line 830
    :goto_15
    if-nez v18, :cond_2a

    .line 831
    .line 832
    goto :goto_14

    .line 833
    :cond_2a
    iget v5, v0, Landroidx/compose/foundation/pager/PagerState;->j:F

    .line 834
    .line 835
    invoke-virtual {v8, v5, v1}, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->h(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    .line 837
    .line 838
    goto :goto_14

    .line 839
    :goto_16
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    invoke-static {v1, v3}, Landroidx/compose/foundation/pager/PagerStateKt;->a(Landroidx/compose/foundation/pager/PagerLayoutInfo;I)J

    .line 844
    .line 845
    .line 846
    move-result-wide v3

    .line 847
    iput-wide v3, v0, Landroidx/compose/foundation/pager/PagerState;->g:J

    .line 848
    .line 849
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 850
    .line 851
    .line 852
    iget-object v3, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 853
    .line 854
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 855
    .line 856
    if-ne v3, v4, :cond_2b

    .line 857
    .line 858
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->i()J

    .line 859
    .line 860
    .line 861
    move-result-wide v3

    .line 862
    shr-long/2addr v3, v7

    .line 863
    :goto_17
    long-to-int v3, v3

    .line 864
    goto :goto_18

    .line 865
    :cond_2b
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->i()J

    .line 866
    .line 867
    .line 868
    move-result-wide v3

    .line 869
    and-long/2addr v3, v9

    .line 870
    goto :goto_17

    .line 871
    :goto_18
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasureResult;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 872
    .line 873
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    .line 875
    .line 876
    invoke-static {v2, v2, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    int-to-long v1, v1

    .line 881
    iget-wide v3, v0, Landroidx/compose/foundation/pager/PagerState;->g:J

    .line 882
    .line 883
    cmp-long v5, v1, v3

    .line 884
    .line 885
    if-lez v5, :cond_2c

    .line 886
    .line 887
    move-wide v1, v3

    .line 888
    :cond_2c
    iput-wide v1, v0, Landroidx/compose/foundation/pager/PagerState;->h:J

    .line 889
    .line 890
    return-void

    .line 891
    :catchall_0
    move-exception v0

    .line 892
    invoke-static {v3, v6, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 893
    .line 894
    .line 895
    throw v0
.end method

.method public final i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/compose/foundation/pager/PagerStateKt;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->v:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->k(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public final j(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/lit8 p0, p0, -0x1

    .line 13
    .line 14
    invoke-static {p1, v1, p0}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    return v1
.end method

.method public final k()Landroidx/compose/foundation/pager/PagerLayoutInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 10
    .line 11
    return-object p0
.end method

.method public abstract l()I
.end method

.method public final m()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 10
    .line 11
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 12
    .line 13
    return p0
.end method

.method public final n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public final o()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->c:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final p()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->o()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v2

    .line 26
    long-to-int p0, v0

    .line 27
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    float-to-int p0, p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final r(IFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    cmpg-float v1, v1, p2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->t:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerScrollPosition;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->b(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerScrollPosition;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerScrollPosition;->e:Ljava/lang/Object;

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Landroidx/compose/ui/layout/Remeasurement;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->A:Landroidx/compose/runtime/MutableState;

    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
