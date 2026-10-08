.class public abstract Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 11
    .line 12
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-wide v5, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const-wide/16 v9, 0x0

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 27
    .line 28
    invoke-static {v4, v7}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 29
    .line 30
    .line 31
    iput v8, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 32
    .line 33
    iget-object v4, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 34
    .line 35
    invoke-static {v4, v7}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 36
    .line 37
    .line 38
    iput v8, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 39
    .line 40
    iput-wide v9, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 41
    .line 42
    :cond_0
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    move v12, v8

    .line 57
    :goto_0
    if-ge v12, v11, :cond_1

    .line 58
    .line 59
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    check-cast v13, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 64
    .line 65
    iget-wide v14, v13, Landroidx/compose/ui/input/pointer/HistoricalChange;->a:J

    .line 66
    .line 67
    iget-wide v7, v13, Landroidx/compose/ui/input/pointer/HistoricalChange;->e:J

    .line 68
    .line 69
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    invoke-virtual {v0, v14, v15, v7, v8}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-wide v7, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->n:J

    .line 82
    .line 83
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    iget-wide v7, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 97
    .line 98
    sub-long v7, v5, v7

    .line 99
    .line 100
    const-wide/16 v11, 0x28

    .line 101
    .line 102
    cmp-long v1, v7, v11

    .line 103
    .line 104
    if-lez v1, :cond_3

    .line 105
    .line 106
    iget-object v1, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    invoke-static {v1, v4}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    iput v1, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 114
    .line 115
    iget-object v3, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 116
    .line 117
    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 118
    .line 119
    .line 120
    iput v1, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 121
    .line 122
    iput-wide v9, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 123
    .line 124
    :cond_3
    iput-wide v5, v0, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->c:J

    .line 125
    .line 126
    return-void
.end method

.method public static final b([F[F)F
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget v4, p1, v2

    .line 9
    .line 10
    mul-float/2addr v3, v4

    .line 11
    add-float/2addr v1, v3

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1
.end method

.method public static final c([F[FI[F)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v1, "At least one point must be provided"

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-lt v1, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 v1, v0, -0x1

    .line 14
    .line 15
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    new-array v3, v2, [[F

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    if-ge v5, v2, :cond_2

    .line 22
    .line 23
    new-array v6, v0, [F

    .line 24
    .line 25
    aput-object v6, v3, v5

    .line 26
    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v5, v4

    .line 31
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-ge v5, v0, :cond_4

    .line 34
    .line 35
    aget-object v7, v3, v4

    .line 36
    .line 37
    aput v6, v7, v5

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    :goto_2
    if-ge v6, v2, :cond_3

    .line 41
    .line 42
    add-int/lit8 v7, v6, -0x1

    .line 43
    .line 44
    aget-object v7, v3, v7

    .line 45
    .line 46
    aget v7, v7, v5

    .line 47
    .line 48
    aget v8, p0, v5

    .line 49
    .line 50
    mul-float/2addr v7, v8

    .line 51
    aget-object v8, v3, v6

    .line 52
    .line 53
    aput v7, v8, v5

    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    new-array v5, v2, [[F

    .line 62
    .line 63
    move v7, v4

    .line 64
    :goto_3
    if-ge v7, v2, :cond_5

    .line 65
    .line 66
    new-array v8, v0, [F

    .line 67
    .line 68
    aput-object v8, v5, v7

    .line 69
    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    new-array v7, v2, [[F

    .line 74
    .line 75
    move v8, v4

    .line 76
    :goto_4
    if-ge v8, v2, :cond_6

    .line 77
    .line 78
    new-array v9, v2, [F

    .line 79
    .line 80
    aput-object v9, v7, v8

    .line 81
    .line 82
    add-int/lit8 v8, v8, 0x1

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    move v8, v4

    .line 86
    :goto_5
    if-ge v8, v2, :cond_d

    .line 87
    .line 88
    aget-object v9, v5, v8

    .line 89
    .line 90
    aget-object v10, v3, v8

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v10, v4, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    move v10, v4

    .line 102
    :goto_6
    if-ge v10, v8, :cond_8

    .line 103
    .line 104
    aget-object v11, v5, v10

    .line 105
    .line 106
    invoke-static {v9, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b([F[F)F

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    move v13, v4

    .line 111
    :goto_7
    if-ge v13, v0, :cond_7

    .line 112
    .line 113
    aget v14, v9, v13

    .line 114
    .line 115
    aget v15, v11, v13

    .line 116
    .line 117
    mul-float/2addr v15, v12

    .line 118
    sub-float/2addr v14, v15

    .line 119
    aput v14, v9, v13

    .line 120
    .line 121
    add-int/lit8 v13, v13, 0x1

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_8
    invoke-static {v9, v9}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b([F[F)F

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    float-to-double v10, v10

    .line 132
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v10

    .line 136
    double-to-float v10, v10

    .line 137
    const v11, 0x358637bd    # 1.0E-6f

    .line 138
    .line 139
    .line 140
    cmpg-float v12, v10, v11

    .line 141
    .line 142
    if-gez v12, :cond_9

    .line 143
    .line 144
    move v10, v11

    .line 145
    :cond_9
    div-float v10, v6, v10

    .line 146
    .line 147
    move v11, v4

    .line 148
    :goto_8
    if-ge v11, v0, :cond_a

    .line 149
    .line 150
    aget v12, v9, v11

    .line 151
    .line 152
    mul-float/2addr v12, v10

    .line 153
    aput v12, v9, v11

    .line 154
    .line 155
    add-int/lit8 v11, v11, 0x1

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_a
    aget-object v10, v7, v8

    .line 159
    .line 160
    move v11, v4

    .line 161
    :goto_9
    if-ge v11, v2, :cond_c

    .line 162
    .line 163
    if-ge v11, v8, :cond_b

    .line 164
    .line 165
    const/4 v12, 0x0

    .line 166
    goto :goto_a

    .line 167
    :cond_b
    aget-object v12, v3, v11

    .line 168
    .line 169
    invoke-static {v9, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b([F[F)F

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    :goto_a
    aput v12, v10, v11

    .line 174
    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_d
    move v0, v1

    .line 182
    :goto_b
    const/4 v2, -0x1

    .line 183
    if-ge v2, v0, :cond_f

    .line 184
    .line 185
    aget-object v2, v5, v0

    .line 186
    .line 187
    move-object/from16 v3, p1

    .line 188
    .line 189
    invoke-static {v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->b([F[F)F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    aget-object v4, v7, v0

    .line 194
    .line 195
    add-int/lit8 v6, v0, 0x1

    .line 196
    .line 197
    if-gt v6, v1, :cond_e

    .line 198
    .line 199
    move v8, v1

    .line 200
    :goto_c
    aget v9, v4, v8

    .line 201
    .line 202
    aget v10, p3, v8

    .line 203
    .line 204
    mul-float/2addr v9, v10

    .line 205
    sub-float/2addr v2, v9

    .line 206
    if-eq v8, v6, :cond_e

    .line 207
    .line 208
    add-int/lit8 v8, v8, -0x1

    .line 209
    .line 210
    goto :goto_c

    .line 211
    :cond_e
    aget v4, v4, v0

    .line 212
    .line 213
    div-float/2addr v2, v4

    .line 214
    aput v2, p3, v0

    .line 215
    .line 216
    add-int/lit8 v0, v0, -0x1

    .line 217
    .line 218
    goto :goto_b

    .line 219
    :cond_f
    return-void
.end method
