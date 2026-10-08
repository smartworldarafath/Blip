.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Landroidx/compose/ui/layout/MeasureResult;

.field public final f:F

.field public final g:Z

.field public final h:Lkotlinx/coroutines/CoroutineScope;

.field public final i:Landroidx/compose/ui/unit/Density;

.field public final j:I

.field public final k:Lkotlin/jvm/functions/Function1;

.field public final l:Lkotlin/jvm/functions/Function1;

.field public final m:I

.field public final n:Ljava/util/List;

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Landroidx/compose/foundation/gestures/Orientation;

.field public final s:I

.field public final t:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->c:Z

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->d:F

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->f:F

    .line 15
    .line 16
    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->g:Z

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->j:I

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->k:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->l:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    iput p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m:I

    .line 29
    .line 30
    iput-object p14, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 31
    .line 32
    iput p15, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->o:I

    .line 33
    .line 34
    move/from16 p1, p16

    .line 35
    .line 36
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->p:I

    .line 37
    .line 38
    move/from16 p1, p17

    .line 39
    .line 40
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->q:I

    .line 41
    .line 42
    move-object/from16 p1, p18

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 45
    .line 46
    move/from16 p1, p19

    .line 47
    .line 48
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->s:I

    .line 49
    .line 50
    move/from16 p1, p20

    .line 51
    .line 52
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->t:I

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->e()Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->f()Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->g()Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->g:Z

    .line 6
    .line 7
    if-nez v2, :cond_8

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_8

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 18
    .line 19
    if-eqz v3, :cond_8

    .line 20
    .line 21
    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    .line 22
    .line 23
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->b:I

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    if-ltz v5, :cond_8

    .line 28
    .line 29
    if-ge v5, v3, :cond_8

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 36
    .line 37
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 42
    .line 43
    iget-boolean v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:Z

    .line 44
    .line 45
    if-nez v6, :cond_8

    .line 46
    .line 47
    iget-boolean v6, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:Z

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :cond_0
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->p:I

    .line 54
    .line 55
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->o:I

    .line 56
    .line 57
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 58
    .line 59
    if-gez v1, :cond_1

    .line 60
    .line 61
    invoke-static {v3, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v9

    .line 70
    sub-int/2addr v3, v7

    .line 71
    invoke-static {v4, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    add-int/2addr v4, v7

    .line 80
    sub-int/2addr v4, v6

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    neg-int v4, v1

    .line 86
    if-le v3, v4, :cond_8

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v3, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sub-int/2addr v7, v3

    .line 94
    invoke-static {v4, v8}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sub-int/2addr v6, v3

    .line 99
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-le v3, v1, :cond_8

    .line 104
    .line 105
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const/4 v6, 0x0

    .line 110
    :goto_1
    if-ge v6, v3, :cond_5

    .line 111
    .line 112
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-boolean v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:Z

    .line 122
    .line 123
    if-eqz v9, :cond_2

    .line 124
    .line 125
    move-object v14, v2

    .line 126
    move/from16 v19, v3

    .line 127
    .line 128
    move v10, v5

    .line 129
    goto :goto_4

    .line 130
    :cond_2
    iget-wide v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 131
    .line 132
    const/16 v11, 0x20

    .line 133
    .line 134
    shr-long v12, v9, v11

    .line 135
    .line 136
    long-to-int v12, v12

    .line 137
    const-wide v13, 0xffffffffL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    and-long/2addr v9, v13

    .line 143
    long-to-int v9, v9

    .line 144
    add-int/2addr v9, v1

    .line 145
    move v10, v5

    .line 146
    int-to-long v4, v12

    .line 147
    shl-long/2addr v4, v11

    .line 148
    move/from16 v16, v11

    .line 149
    .line 150
    int-to-long v11, v9

    .line 151
    and-long/2addr v11, v13

    .line 152
    or-long/2addr v4, v11

    .line 153
    iput-wide v4, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 154
    .line 155
    if-eqz p2, :cond_4

    .line 156
    .line 157
    iget-object v4, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    const/4 v5, 0x0

    .line 164
    :goto_2
    if-ge v5, v4, :cond_4

    .line 165
    .line 166
    iget-object v9, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 167
    .line 168
    iget-object v11, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v9, v5, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    if-eqz v9, :cond_3

    .line 175
    .line 176
    iget-wide v11, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->j:J

    .line 177
    .line 178
    move-wide/from16 v17, v13

    .line 179
    .line 180
    shr-long v13, v11, v16

    .line 181
    .line 182
    long-to-int v13, v13

    .line 183
    and-long v11, v11, v17

    .line 184
    .line 185
    long-to-int v11, v11

    .line 186
    add-int/2addr v11, v1

    .line 187
    int-to-long v12, v13

    .line 188
    shl-long v12, v12, v16

    .line 189
    .line 190
    move-object v14, v2

    .line 191
    move/from16 v19, v3

    .line 192
    .line 193
    int-to-long v2, v11

    .line 194
    and-long v2, v2, v17

    .line 195
    .line 196
    or-long/2addr v2, v12

    .line 197
    iput-wide v2, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->j:J

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    move/from16 v19, v3

    .line 201
    .line 202
    move-wide/from16 v17, v13

    .line 203
    .line 204
    move-object v14, v2

    .line 205
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    move-object v2, v14

    .line 208
    move-wide/from16 v13, v17

    .line 209
    .line 210
    move/from16 v3, v19

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    move-object v14, v2

    .line 214
    move/from16 v19, v3

    .line 215
    .line 216
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 217
    .line 218
    move v5, v10

    .line 219
    move-object v2, v14

    .line 220
    move/from16 v3, v19

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    move-object v14, v2

    .line 224
    move v10, v5

    .line 225
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->c:Z

    .line 226
    .line 227
    if-nez v2, :cond_7

    .line 228
    .line 229
    if-lez v1, :cond_6

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_6
    const/4 v6, 0x0

    .line 233
    goto :goto_6

    .line 234
    :cond_7
    :goto_5
    const/4 v4, 0x1

    .line 235
    move v6, v4

    .line 236
    :goto_6
    int-to-float v7, v1

    .line 237
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 238
    .line 239
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 240
    .line 241
    move-object/from16 v21, v8

    .line 242
    .line 243
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 244
    .line 245
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->f:F

    .line 246
    .line 247
    move v5, v10

    .line 248
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->g:Z

    .line 249
    .line 250
    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 251
    .line 252
    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 253
    .line 254
    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->j:I

    .line 255
    .line 256
    move-object/from16 v17, v14

    .line 257
    .line 258
    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->k:Lkotlin/jvm/functions/Function1;

    .line 259
    .line 260
    iget-object v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->l:Lkotlin/jvm/functions/Function1;

    .line 261
    .line 262
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m:I

    .line 263
    .line 264
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->o:I

    .line 265
    .line 266
    move/from16 v16, v1

    .line 267
    .line 268
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->p:I

    .line 269
    .line 270
    move/from16 v19, v1

    .line 271
    .line 272
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->q:I

    .line 273
    .line 274
    move/from16 v20, v1

    .line 275
    .line 276
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->s:I

    .line 277
    .line 278
    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->t:I

    .line 279
    .line 280
    move/from16 v23, v0

    .line 281
    .line 282
    move/from16 v22, v1

    .line 283
    .line 284
    move/from16 v18, v2

    .line 285
    .line 286
    invoke-direct/range {v3 .. v23}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 287
    .line 288
    .line 289
    return-object v3

    .line 290
    :cond_8
    :goto_7
    const/4 v0, 0x0

    .line 291
    return-object v0
.end method

.method public final i()J
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-long v0, v0

    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    shl-long/2addr v0, v2

    .line 15
    int-to-long v2, p0

    .line 16
    const-wide v4, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v2, v4

    .line 22
    or-long/2addr v0, v2

    .line 23
    return-wide v0
.end method
