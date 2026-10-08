.class public final Landroidx/compose/animation/core/VectorizedKeyframesSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/MutableIntList;

.field public final b:Landroidx/collection/MutableIntObjectMap;

.field public final c:I

.field public final d:Landroidx/compose/animation/core/Easing;

.field public e:[I

.field public f:[F

.field public g:Landroidx/compose/animation/core/AnimationVector;

.field public h:Landroidx/compose/animation/core/AnimationVector;

.field public i:Landroidx/compose/animation/core/AnimationVector;

.field public j:Landroidx/compose/animation/core/AnimationVector;

.field public k:[F

.field public l:[F

.field public m:Landroidx/compose/animation/core/ArcSpline;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableIntList;Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/animation/core/Easing;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/MutableIntList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/MutableIntObjectMap;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->d:Landroidx/compose/animation/core/Easing;

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a:[I

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->e:[I

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->b:[F

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f:[F

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->k:[F

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->l:[F

    .line 23
    .line 24
    sget-object p1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final c(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 13

    .line 1
    move-object/from16 v5, p5

    .line 2
    .line 3
    const-wide/32 v6, 0xf4240

    .line 4
    .line 5
    .line 6
    div-long v0, p1, v6

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a:[I

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v8

    .line 16
    .line 17
    if-gez v4, :cond_0

    .line 18
    .line 19
    move-wide v0, v8

    .line 20
    :cond_0
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    move-wide v10, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-wide v10, v0

    .line 27
    :goto_0
    cmp-long v0, v10, v8

    .line 28
    .line 29
    if-gez v0, :cond_2

    .line 30
    .line 31
    return-object v5

    .line 32
    :cond_2
    move-object/from16 v3, p3

    .line 33
    .line 34
    move-object/from16 v4, p4

    .line 35
    .line 36
    invoke-virtual {p0, v3, v4, v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 37
    .line 38
    .line 39
    iget-object v8, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h:Landroidx/compose/animation/core/AnimationVector;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 45
    .line 46
    sget-object v1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    if-eq v0, v1, :cond_a

    .line 50
    .line 51
    long-to-int v0, v10

    .line 52
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p0, v1, v0, v9}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i(IIZ)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->l:[F

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/compose/animation/core/ArcSpline;->a:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 65
    .line 66
    aget-object v2, p0, v9

    .line 67
    .line 68
    aget-object v2, v2, v9

    .line 69
    .line 70
    iget v2, v2, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    .line 71
    .line 72
    array-length v3, p0

    .line 73
    const/4 v4, 0x1

    .line 74
    sub-int/2addr v3, v4

    .line 75
    aget-object v3, p0, v3

    .line 76
    .line 77
    aget-object v3, v3, v9

    .line 78
    .line 79
    iget v3, v3, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    .line 80
    .line 81
    cmpg-float v5, v0, v2

    .line 82
    .line 83
    if-gez v5, :cond_3

    .line 84
    .line 85
    move v0, v2

    .line 86
    :cond_3
    cmpl-float v2, v0, v3

    .line 87
    .line 88
    if-lez v2, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v3, v0

    .line 92
    :goto_1
    array-length v0, v1

    .line 93
    array-length v2, p0

    .line 94
    move v5, v9

    .line 95
    move v6, v5

    .line 96
    :goto_2
    if-ge v5, v2, :cond_9

    .line 97
    .line 98
    move v7, v9

    .line 99
    move v10, v7

    .line 100
    :goto_3
    add-int/lit8 v11, v0, -0x1

    .line 101
    .line 102
    if-ge v7, v11, :cond_7

    .line 103
    .line 104
    aget-object v11, p0, v5

    .line 105
    .line 106
    aget-object v11, v11, v10

    .line 107
    .line 108
    iget v12, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    .line 109
    .line 110
    cmpg-float v12, v3, v12

    .line 111
    .line 112
    if-gtz v12, :cond_6

    .line 113
    .line 114
    iget-boolean v6, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    .line 115
    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    iget v6, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    .line 119
    .line 120
    aput v6, v1, v7

    .line 121
    .line 122
    add-int/lit8 v6, v7, 0x1

    .line 123
    .line 124
    iget v11, v11, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    .line 125
    .line 126
    aput v11, v1, v6

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    invoke-virtual {v11, v3}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Landroidx/compose/animation/core/ArcSpline$Arc;->a()F

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    aput v6, v1, v7

    .line 137
    .line 138
    add-int/lit8 v6, v7, 0x1

    .line 139
    .line 140
    invoke-virtual {v11}, Landroidx/compose/animation/core/ArcSpline$Arc;->b()F

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    aput v11, v1, v6

    .line 145
    .line 146
    :goto_4
    move v6, v4

    .line 147
    :cond_6
    add-int/lit8 v7, v7, 0x2

    .line 148
    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    if-eqz v6, :cond_8

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_9
    :goto_5
    array-length p0, v1

    .line 159
    :goto_6
    if-ge v9, p0, :cond_b

    .line 160
    .line 161
    aget v0, v1, v9

    .line 162
    .line 163
    invoke-virtual {v8, v9, v0}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v9, v9, 0x1

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_a
    const-wide/16 v0, 0x1

    .line 170
    .line 171
    sub-long v0, v10, v0

    .line 172
    .line 173
    mul-long v1, v0, v6

    .line 174
    .line 175
    move-object v0, p0

    .line 176
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    mul-long v1, v10, v6

    .line 181
    .line 182
    move-object/from16 v3, p3

    .line 183
    .line 184
    move-object/from16 v4, p4

    .line 185
    .line 186
    move-object/from16 v5, p5

    .line 187
    .line 188
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {v12}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    :goto_7
    if-ge v9, v0, :cond_b

    .line 197
    .line 198
    invoke-virtual {v12, v9}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-virtual {p0, v9}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    sub-float/2addr v1, v2

    .line 207
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 208
    .line 209
    mul-float/2addr v1, v2

    .line 210
    invoke-virtual {v8, v9, v1}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v9, v9, 0x1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_b
    return-object v8
.end method

.method public final d()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-wide/32 v3, 0xf4240

    .line 8
    .line 9
    .line 10
    div-long v3, p1, v3

    .line 11
    .line 12
    sget-object v5, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->a:[I

    .line 13
    .line 14
    iget v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 15
    .line 16
    int-to-long v6, v5

    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    cmp-long v10, v3, v8

    .line 20
    .line 21
    if-gez v10, :cond_0

    .line 22
    .line 23
    move-wide v3, v8

    .line 24
    :cond_0
    cmp-long v8, v3, v6

    .line 25
    .line 26
    if-lez v8, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-wide v6, v3

    .line 30
    :goto_0
    long-to-int v3, v6

    .line 31
    iget-object v4, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/MutableIntObjectMap;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    iget-object v0, v6, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    if-lt v3, v5, :cond_3

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_3
    if-gtz v3, :cond_4

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_4
    move-object/from16 v5, p5

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v5}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:Landroidx/compose/animation/core/AnimationVector;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v6, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 61
    .line 62
    sget-object v7, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eq v6, v7, :cond_e

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, v3, v8}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i(IIZ)F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->k:[F

    .line 77
    .line 78
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 79
    .line 80
    iget-object v0, v0, Landroidx/compose/animation/core/ArcSpline;->a:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 81
    .line 82
    array-length v3, v0

    .line 83
    sub-int/2addr v3, v9

    .line 84
    aget-object v4, v0, v8

    .line 85
    .line 86
    aget-object v4, v4, v8

    .line 87
    .line 88
    iget v4, v4, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    .line 89
    .line 90
    aget-object v6, v0, v3

    .line 91
    .line 92
    aget-object v6, v6, v8

    .line 93
    .line 94
    iget v6, v6, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    .line 95
    .line 96
    array-length v7, v2

    .line 97
    cmpg-float v10, v1, v4

    .line 98
    .line 99
    if-ltz v10, :cond_a

    .line 100
    .line 101
    cmpl-float v10, v1, v6

    .line 102
    .line 103
    if-lez v10, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    array-length v3, v0

    .line 107
    move v4, v8

    .line 108
    move v6, v4

    .line 109
    :goto_1
    if-ge v4, v3, :cond_d

    .line 110
    .line 111
    move v10, v8

    .line 112
    move v11, v10

    .line 113
    :goto_2
    add-int/lit8 v12, v7, -0x1

    .line 114
    .line 115
    if-ge v10, v12, :cond_8

    .line 116
    .line 117
    aget-object v12, v0, v4

    .line 118
    .line 119
    aget-object v12, v12, v11

    .line 120
    .line 121
    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->b:F

    .line 122
    .line 123
    cmpg-float v13, v1, v13

    .line 124
    .line 125
    if-gtz v13, :cond_7

    .line 126
    .line 127
    iget-boolean v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    .line 128
    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    iget v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    .line 132
    .line 133
    sub-float v13, v1, v6

    .line 134
    .line 135
    iget v14, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->k:F

    .line 136
    .line 137
    mul-float/2addr v13, v14

    .line 138
    iget v15, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->c:F

    .line 139
    .line 140
    iget v8, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->e:F

    .line 141
    .line 142
    sub-float/2addr v8, v15

    .line 143
    mul-float/2addr v8, v13

    .line 144
    add-float/2addr v8, v15

    .line 145
    aput v8, v2, v10

    .line 146
    .line 147
    add-int/lit8 v8, v10, 0x1

    .line 148
    .line 149
    sub-float v6, v1, v6

    .line 150
    .line 151
    mul-float/2addr v6, v14

    .line 152
    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->d:F

    .line 153
    .line 154
    iget v12, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->f:F

    .line 155
    .line 156
    sub-float/2addr v12, v13

    .line 157
    mul-float/2addr v12, v6

    .line 158
    add-float/2addr v12, v13

    .line 159
    aput v12, v2, v8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    invoke-virtual {v12, v1}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    .line 163
    .line 164
    .line 165
    iget v6, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    .line 166
    .line 167
    iget v8, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->n:F

    .line 168
    .line 169
    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->h:F

    .line 170
    .line 171
    mul-float/2addr v8, v13

    .line 172
    add-float/2addr v8, v6

    .line 173
    aput v8, v2, v10

    .line 174
    .line 175
    add-int/lit8 v6, v10, 0x1

    .line 176
    .line 177
    iget v8, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    .line 178
    .line 179
    iget v13, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->o:F

    .line 180
    .line 181
    iget v12, v12, Landroidx/compose/animation/core/ArcSpline$Arc;->i:F

    .line 182
    .line 183
    mul-float/2addr v13, v12

    .line 184
    add-float/2addr v13, v8

    .line 185
    aput v13, v2, v6

    .line 186
    .line 187
    :goto_3
    move v6, v9

    .line 188
    :cond_7
    add-int/lit8 v10, v10, 0x2

    .line 189
    .line 190
    add-int/lit8 v11, v11, 0x1

    .line 191
    .line 192
    const/4 v8, 0x0

    .line 193
    goto :goto_2

    .line 194
    :cond_8
    if-eqz v6, :cond_9

    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 199
    .line 200
    const/4 v8, 0x0

    .line 201
    goto :goto_1

    .line 202
    :cond_a
    :goto_4
    cmpl-float v8, v1, v6

    .line 203
    .line 204
    if-lez v8, :cond_b

    .line 205
    .line 206
    move v4, v6

    .line 207
    goto :goto_5

    .line 208
    :cond_b
    const/4 v3, 0x0

    .line 209
    :goto_5
    sub-float/2addr v1, v4

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    :goto_6
    add-int/lit8 v10, v7, -0x1

    .line 213
    .line 214
    if-ge v6, v10, :cond_d

    .line 215
    .line 216
    aget-object v10, v0, v3

    .line 217
    .line 218
    aget-object v10, v10, v8

    .line 219
    .line 220
    iget-boolean v11, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->p:Z

    .line 221
    .line 222
    iget v12, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->r:F

    .line 223
    .line 224
    iget v13, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->q:F

    .line 225
    .line 226
    if-eqz v11, :cond_c

    .line 227
    .line 228
    iget v11, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->a:F

    .line 229
    .line 230
    sub-float v14, v4, v11

    .line 231
    .line 232
    iget v15, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->k:F

    .line 233
    .line 234
    mul-float/2addr v14, v15

    .line 235
    iget v9, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->c:F

    .line 236
    .line 237
    move-object/from16 p0, v0

    .line 238
    .line 239
    iget v0, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->e:F

    .line 240
    .line 241
    sub-float/2addr v0, v9

    .line 242
    mul-float/2addr v0, v14

    .line 243
    add-float/2addr v0, v9

    .line 244
    mul-float/2addr v13, v1

    .line 245
    add-float/2addr v13, v0

    .line 246
    aput v13, v2, v6

    .line 247
    .line 248
    add-int/lit8 v0, v6, 0x1

    .line 249
    .line 250
    sub-float v9, v4, v11

    .line 251
    .line 252
    mul-float/2addr v9, v15

    .line 253
    iget v11, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->d:F

    .line 254
    .line 255
    iget v10, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->f:F

    .line 256
    .line 257
    sub-float/2addr v10, v11

    .line 258
    mul-float/2addr v10, v9

    .line 259
    add-float/2addr v10, v11

    .line 260
    mul-float/2addr v12, v1

    .line 261
    add-float/2addr v12, v10

    .line 262
    aput v12, v2, v0

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_c
    move-object/from16 p0, v0

    .line 266
    .line 267
    invoke-virtual {v10, v4}, Landroidx/compose/animation/core/ArcSpline$Arc;->c(F)V

    .line 268
    .line 269
    .line 270
    iget v0, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->n:F

    .line 271
    .line 272
    iget v9, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->h:F

    .line 273
    .line 274
    mul-float/2addr v0, v9

    .line 275
    add-float/2addr v0, v13

    .line 276
    invoke-virtual {v10}, Landroidx/compose/animation/core/ArcSpline$Arc;->a()F

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    mul-float/2addr v9, v1

    .line 281
    add-float/2addr v9, v0

    .line 282
    aput v9, v2, v6

    .line 283
    .line 284
    add-int/lit8 v0, v6, 0x1

    .line 285
    .line 286
    iget v9, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->o:F

    .line 287
    .line 288
    iget v11, v10, Landroidx/compose/animation/core/ArcSpline$Arc;->i:F

    .line 289
    .line 290
    mul-float/2addr v9, v11

    .line 291
    add-float/2addr v9, v12

    .line 292
    invoke-virtual {v10}, Landroidx/compose/animation/core/ArcSpline$Arc;->b()F

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    mul-float/2addr v10, v1

    .line 297
    add-float/2addr v10, v9

    .line 298
    aput v10, v2, v0

    .line 299
    .line 300
    :goto_7
    add-int/lit8 v6, v6, 0x2

    .line 301
    .line 302
    add-int/lit8 v8, v8, 0x1

    .line 303
    .line 304
    const/4 v9, 0x1

    .line 305
    move-object/from16 v0, p0

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_d
    :goto_8
    array-length v0, v2

    .line 309
    const/4 v8, 0x0

    .line 310
    :goto_9
    if-ge v8, v0, :cond_13

    .line 311
    .line 312
    aget v1, v2, v8

    .line 313
    .line 314
    invoke-virtual {v5, v8, v1}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v8, v8, 0x1

    .line 318
    .line 319
    goto :goto_9

    .line 320
    :cond_e
    invoke-virtual {v0, v3}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h(I)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    const/4 v7, 0x1

    .line 325
    invoke-virtual {v0, v6, v3, v7}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i(IIZ)F

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/MutableIntList;

    .line 330
    .line 331
    invoke-virtual {v0, v6}, Landroidx/collection/IntList;->a(I)I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-virtual {v4, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 340
    .line 341
    if-eqz v7, :cond_10

    .line 342
    .line 343
    iget-object v7, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    .line 344
    .line 345
    if-nez v7, :cond_f

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_f
    move-object v1, v7

    .line 349
    :cond_10
    :goto_a
    const/4 v7, 0x1

    .line 350
    add-int/2addr v6, v7

    .line 351
    invoke-virtual {v0, v6}, Landroidx/collection/IntList;->a(I)I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-virtual {v4, v0}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 360
    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    .line 364
    .line 365
    if-nez v0, :cond_12

    .line 366
    .line 367
    :cond_11
    move-object v0, v2

    .line 368
    :cond_12
    invoke-virtual {v5}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    const/4 v8, 0x0

    .line 373
    :goto_b
    if-ge v8, v2, :cond_13

    .line 374
    .line 375
    invoke-virtual {v1, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {v0, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    const/high16 v7, 0x3f800000    # 1.0f

    .line 384
    .line 385
    sub-float/2addr v7, v3

    .line 386
    mul-float/2addr v7, v4

    .line 387
    mul-float/2addr v6, v3

    .line 388
    add-float/2addr v6, v7

    .line 389
    invoke-virtual {v5, v8, v6}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v8, v8, 0x1

    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_13
    return-object v5
.end method

.method public final g()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    iget v0, p0, Landroidx/collection/IntList;->b:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_4

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-gt v1, v0, :cond_1

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    ushr-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/collection/IntList;->a:[I

    .line 17
    .line 18
    aget v3, v3, v2

    .line 19
    .line 20
    if-ge v3, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-le v3, p1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v0, v2, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    neg-int v2, v1

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    neg-int p0, v2

    .line 39
    return p0

    .line 40
    :cond_3
    return v2

    .line 41
    :cond_4
    const-string p0, ""

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->o(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1
.end method

.method public final i(IIZ)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/IntList;->b:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 8
    .line 9
    if-lt p1, v1, :cond_0

    .line 10
    .line 11
    int-to-float p0, p2

    .line 12
    :goto_0
    div-float/2addr p0, v2

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/collection/IntList;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p2, v1, :cond_1

    .line 25
    .line 26
    int-to-float p0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sub-int/2addr p1, v1

    .line 29
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/MutableIntObjectMap;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->b:Landroidx/compose/animation/core/Easing;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->d:Landroidx/compose/animation/core/Easing;

    .line 44
    .line 45
    :cond_3
    sub-int/2addr p2, v1

    .line 46
    int-to-float p0, p2

    .line 47
    int-to-float p1, p1

    .line 48
    div-float/2addr p0, p1

    .line 49
    invoke-interface {v0, p0}, Landroidx/compose/animation/core/Easing;->e(F)F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p3, :cond_4

    .line 54
    .line 55
    return p0

    .line 56
    :cond_4
    mul-float/2addr p1, p0

    .line 57
    int-to-float p0, v1

    .line 58
    add-float/2addr p1, p0

    .line 59
    div-float/2addr p1, v2

    .line 60
    return p1
.end method

.method public final j(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->b:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->a:Landroidx/collection/MutableIntList;

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->g:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->h:Landroidx/compose/animation/core/AnimationVector;

    .line 30
    .line 31
    iget p3, v4, Landroidx/collection/IntList;->b:I

    .line 32
    .line 33
    new-array v1, p3, [F

    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_1
    if-ge v5, p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroidx/collection/IntList;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    int-to-float v6, v6

    .line 43
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 44
    .line 45
    div-float/2addr v6, v7

    .line 46
    aput v6, v1, v5

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f:[F

    .line 52
    .line 53
    iget p3, v4, Landroidx/collection/IntList;->b:I

    .line 54
    .line 55
    new-array v1, p3, [I

    .line 56
    .line 57
    move v5, v2

    .line 58
    :goto_2
    if-ge v5, p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroidx/collection/IntList;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v3, v6}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 69
    .line 70
    aput v2, v1, v5

    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->e:[I

    .line 76
    .line 77
    :cond_3
    if-nez v0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 81
    .line 82
    sget-object v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->c:Landroidx/compose/animation/core/ArcSpline;

    .line 83
    .line 84
    if-eq p3, v0, :cond_6

    .line 85
    .line 86
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i:Landroidx/compose/animation/core/AnimationVector;

    .line 87
    .line 88
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j:Landroidx/compose/animation/core/AnimationVector;

    .line 95
    .line 96
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-nez p3, :cond_5

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_3
    return-void

    .line 104
    :cond_6
    :goto_4
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->i:Landroidx/compose/animation/core/AnimationVector;

    .line 105
    .line 106
    iput-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->j:Landroidx/compose/animation/core/AnimationVector;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    rem-int/lit8 p3, p3, 0x2

    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    add-int/2addr v0, p3

    .line 119
    new-array p3, v0, [F

    .line 120
    .line 121
    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->k:[F

    .line 122
    .line 123
    new-array p3, v0, [F

    .line 124
    .line 125
    iput-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->l:[F

    .line 126
    .line 127
    iget p3, v4, Landroidx/collection/IntList;->b:I

    .line 128
    .line 129
    new-array v1, p3, [[F

    .line 130
    .line 131
    move v5, v2

    .line 132
    :goto_5
    if-ge v5, p3, :cond_b

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroidx/collection/IntList;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    invoke-virtual {v3, v6}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 143
    .line 144
    if-nez v6, :cond_7

    .line 145
    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    new-array v6, v0, [F

    .line 149
    .line 150
    move v7, v2

    .line 151
    :goto_6
    if-ge v7, v0, :cond_a

    .line 152
    .line 153
    invoke-virtual {p1, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    aput v8, v6, v7

    .line 158
    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_7
    iget v8, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->c:I

    .line 163
    .line 164
    if-ne v6, v8, :cond_8

    .line 165
    .line 166
    if-nez v7, :cond_8

    .line 167
    .line 168
    new-array v6, v0, [F

    .line 169
    .line 170
    move v7, v2

    .line 171
    :goto_7
    if-ge v7, v0, :cond_a

    .line 172
    .line 173
    invoke-virtual {p2, v7}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    aput v8, v6, v7

    .line 178
    .line 179
    add-int/lit8 v7, v7, 0x1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v6, v7, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;->a:Landroidx/compose/animation/core/AnimationVector;

    .line 186
    .line 187
    new-array v7, v0, [F

    .line 188
    .line 189
    move v8, v2

    .line 190
    :goto_8
    if-ge v8, v0, :cond_9

    .line 191
    .line 192
    invoke-virtual {v6, v8}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    aput v9, v7, v8

    .line 197
    .line 198
    add-int/lit8 v8, v8, 0x1

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_9
    move-object v6, v7

    .line 202
    :cond_a
    aput-object v6, v1, v5

    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    new-instance p1, Landroidx/compose/animation/core/ArcSpline;

    .line 208
    .line 209
    iget-object p2, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->e:[I

    .line 210
    .line 211
    iget-object p3, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->f:[F

    .line 212
    .line 213
    invoke-direct {p1, p2, p3, v1}, Landroidx/compose/animation/core/ArcSpline;-><init>([I[F[[F)V

    .line 214
    .line 215
    .line 216
    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedKeyframesSpec;->m:Landroidx/compose/animation/core/ArcSpline;

    .line 217
    .line 218
    return-void
.end method
