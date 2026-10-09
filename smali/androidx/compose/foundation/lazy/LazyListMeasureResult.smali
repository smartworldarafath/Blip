.class public final Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Landroidx/compose/ui/layout/MeasureResult;

.field public final f:F

.field public final g:Z

.field public final h:Lkotlinx/coroutines/CoroutineScope;

.field public final i:Landroidx/compose/ui/unit/Density;

.field public final j:J

.field public final k:I

.field public final l:Ljava/util/List;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Landroidx/compose/foundation/gestures/Orientation;

.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->a:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->c:Z

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->d:F

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->f:F

    .line 15
    .line 16
    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g:Z

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 21
    .line 22
    iput-wide p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->j:J

    .line 23
    .line 24
    iput p12, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->k:I

    .line 25
    .line 26
    iput-object p13, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 27
    .line 28
    iput p14, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 29
    .line 30
    iput p15, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->n:I

    .line 31
    .line 32
    move/from16 p1, p16

    .line 33
    .line 34
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->o:I

    .line 35
    .line 36
    move-object/from16 p1, p17

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 39
    .line 40
    move/from16 p1, p18

    .line 41
    .line 42
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->q:I

    .line 43
    .line 44
    move/from16 p1, p19

    .line 45
    .line 46
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->r:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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

.method public final h(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g:Z

    .line 6
    .line 7
    if-nez v2, :cond_a

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_a

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->a:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 18
    .line 19
    if-eqz v3, :cond_a

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->b:I

    .line 26
    .line 27
    sub-int v5, v4, v1

    .line 28
    .line 29
    if-ltz v5, :cond_a

    .line 30
    .line 31
    if-ge v5, v3, :cond_a

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 44
    .line 45
    iget-boolean v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:Z

    .line 46
    .line 47
    if-nez v6, :cond_a

    .line 48
    .line 49
    iget-boolean v6, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:Z

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_0
    iget v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 56
    .line 57
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->n:I

    .line 58
    .line 59
    iget v8, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 60
    .line 61
    if-gez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    add-int/2addr v3, v6

    .line 68
    sub-int/2addr v3, v8

    .line 69
    iget v6, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->j()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    add-int/2addr v4, v6

    .line 76
    sub-int/2addr v4, v7

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    neg-int v4, v1

    .line 82
    if-le v3, v4, :cond_a

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sub-int/2addr v8, v6

    .line 86
    iget v3, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 87
    .line 88
    sub-int/2addr v7, v3

    .line 89
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-le v3, v1, :cond_a

    .line 94
    .line 95
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v6, 0x0

    .line 100
    :goto_1
    if-ge v6, v3, :cond_7

    .line 101
    .line 102
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->v:[I

    .line 112
    .line 113
    iget-boolean v9, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:Z

    .line 114
    .line 115
    if-eqz v9, :cond_3

    .line 116
    .line 117
    :cond_2
    move v12, v5

    .line 118
    goto :goto_6

    .line 119
    :cond_3
    iget v9, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 120
    .line 121
    add-int/2addr v9, v1

    .line 122
    iput v9, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 123
    .line 124
    array-length v9, v8

    .line 125
    const/4 v10, 0x0

    .line 126
    :goto_2
    if-ge v10, v9, :cond_5

    .line 127
    .line 128
    and-int/lit8 v11, v10, 0x1

    .line 129
    .line 130
    if-nez v11, :cond_4

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    aget v11, v8, v10

    .line 134
    .line 135
    add-int/2addr v11, v1

    .line 136
    aput v11, v8, v10

    .line 137
    .line 138
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    if-eqz p2, :cond_2

    .line 142
    .line 143
    iget-object v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->b:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    const/4 v9, 0x0

    .line 150
    :goto_4
    if-ge v9, v8, :cond_2

    .line 151
    .line 152
    iget-object v10, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->k:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 153
    .line 154
    iget-object v11, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:Ljava/lang/Object;

    .line 155
    .line 156
    invoke-virtual {v10, v9, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    if-eqz v10, :cond_6

    .line 161
    .line 162
    iget-wide v11, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->j:J

    .line 163
    .line 164
    const/16 v13, 0x20

    .line 165
    .line 166
    shr-long v14, v11, v13

    .line 167
    .line 168
    long-to-int v14, v14

    .line 169
    const-wide v15, 0xffffffffL

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    and-long/2addr v11, v15

    .line 175
    long-to-int v11, v11

    .line 176
    add-int/2addr v11, v1

    .line 177
    move v12, v5

    .line 178
    int-to-long v4, v14

    .line 179
    shl-long/2addr v4, v13

    .line 180
    int-to-long v13, v11

    .line 181
    and-long/2addr v13, v15

    .line 182
    or-long/2addr v4, v13

    .line 183
    iput-wide v4, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->j:J

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    move v12, v5

    .line 187
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 188
    .line 189
    move v5, v12

    .line 190
    goto :goto_4

    .line 191
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 192
    .line 193
    move v5, v12

    .line 194
    goto :goto_1

    .line 195
    :cond_7
    move v12, v5

    .line 196
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->c:Z

    .line 197
    .line 198
    if-nez v3, :cond_9

    .line 199
    .line 200
    if-lez v1, :cond_8

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    const/4 v6, 0x0

    .line 204
    goto :goto_8

    .line 205
    :cond_9
    :goto_7
    const/4 v4, 0x1

    .line 206
    move v6, v4

    .line 207
    :goto_8
    int-to-float v7, v1

    .line 208
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 209
    .line 210
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->a:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 211
    .line 212
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

    .line 213
    .line 214
    iget v9, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->f:F

    .line 215
    .line 216
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g:Z

    .line 217
    .line 218
    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 219
    .line 220
    move v5, v12

    .line 221
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 222
    .line 223
    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->j:J

    .line 224
    .line 225
    iget v15, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->k:I

    .line 226
    .line 227
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 228
    .line 229
    move/from16 v17, v1

    .line 230
    .line 231
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->n:I

    .line 232
    .line 233
    move/from16 v18, v1

    .line 234
    .line 235
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->o:I

    .line 236
    .line 237
    move/from16 v19, v1

    .line 238
    .line 239
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 240
    .line 241
    move-object/from16 v20, v1

    .line 242
    .line 243
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->q:I

    .line 244
    .line 245
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->r:I

    .line 246
    .line 247
    move/from16 v22, v0

    .line 248
    .line 249
    move/from16 v21, v1

    .line 250
    .line 251
    move-object/from16 v16, v2

    .line 252
    .line 253
    invoke-direct/range {v3 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 254
    .line 255
    .line 256
    return-object v3

    .line 257
    :cond_a
    :goto_9
    const/4 v0, 0x0

    .line 258
    return-object v0
.end method

.method public final i()J
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e:Landroidx/compose/ui/layout/MeasureResult;

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
