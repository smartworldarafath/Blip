.class public final Landroidx/compose/ui/spatial/RectList;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:[J

.field public b:[J

.field public c:I


# virtual methods
.method public final a(IIIIIIIZZZ)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    move/from16 v2, p7

    .line 6
    .line 7
    const v3, 0x1ffffff

    .line 8
    .line 9
    .line 10
    and-int v4, p1, v3

    .line 11
    .line 12
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 13
    .line 14
    iget v6, v0, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 15
    .line 16
    add-int/lit8 v7, v6, 0x3

    .line 17
    .line 18
    iput v7, v0, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 19
    .line 20
    array-length v8, v5

    .line 21
    if-gt v8, v7, :cond_0

    .line 22
    .line 23
    mul-int/lit8 v8, v8, 0x2

    .line 24
    .line 25
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iput-object v5, v0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 36
    .line 37
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iput-object v5, v0, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 42
    .line 43
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 44
    .line 45
    move/from16 v5, p2

    .line 46
    .line 47
    int-to-long v7, v5

    .line 48
    const/16 v5, 0x20

    .line 49
    .line 50
    shl-long/2addr v7, v5

    .line 51
    move/from16 v9, p3

    .line 52
    .line 53
    int-to-long v9, v9

    .line 54
    const-wide v11, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v9, v11

    .line 60
    or-long/2addr v7, v9

    .line 61
    aput-wide v7, v0, v6

    .line 62
    .line 63
    add-int/lit8 v7, v6, 0x1

    .line 64
    .line 65
    move/from16 v8, p4

    .line 66
    .line 67
    int-to-long v8, v8

    .line 68
    shl-long/2addr v8, v5

    .line 69
    move/from16 v5, p5

    .line 70
    .line 71
    int-to-long v13, v5

    .line 72
    and-long v10, v13, v11

    .line 73
    .line 74
    or-long/2addr v8, v10

    .line 75
    aput-wide v8, v0, v7

    .line 76
    .line 77
    add-int/lit8 v5, v6, 0x2

    .line 78
    .line 79
    move/from16 v7, p10

    .line 80
    .line 81
    int-to-long v7, v7

    .line 82
    const/16 v9, 0x3f

    .line 83
    .line 84
    shl-long/2addr v7, v9

    .line 85
    move/from16 v9, p9

    .line 86
    .line 87
    int-to-long v9, v9

    .line 88
    const/16 v11, 0x3e

    .line 89
    .line 90
    shl-long/2addr v9, v11

    .line 91
    or-long/2addr v7, v9

    .line 92
    move/from16 v9, p8

    .line 93
    .line 94
    int-to-long v9, v9

    .line 95
    const/16 v11, 0x3d

    .line 96
    .line 97
    shl-long/2addr v9, v11

    .line 98
    or-long/2addr v7, v9

    .line 99
    const-wide/high16 v9, 0x1000000000000000L

    .line 100
    .line 101
    or-long/2addr v7, v9

    .line 102
    const/4 v9, 0x0

    .line 103
    const/16 v10, 0x3ff

    .line 104
    .line 105
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    int-to-long v11, v11

    .line 110
    const/16 v13, 0x32

    .line 111
    .line 112
    shl-long/2addr v11, v13

    .line 113
    or-long/2addr v7, v11

    .line 114
    and-int v11, v1, v3

    .line 115
    .line 116
    int-to-long v14, v11

    .line 117
    const/16 v12, 0x19

    .line 118
    .line 119
    shl-long/2addr v14, v12

    .line 120
    or-long/2addr v7, v14

    .line 121
    and-int v12, p1, v3

    .line 122
    .line 123
    int-to-long v14, v12

    .line 124
    or-long/2addr v7, v14

    .line 125
    aput-wide v7, v0, v5

    .line 126
    .line 127
    const/4 v5, -0x1

    .line 128
    if-ne v1, v5, :cond_1

    .line 129
    .line 130
    return v6

    .line 131
    :cond_1
    const/4 v1, -0x4

    .line 132
    const/4 v5, 0x1

    .line 133
    if-eq v2, v1, :cond_2

    .line 134
    .line 135
    move v1, v5

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    move v1, v9

    .line 138
    :goto_0
    const-string v7, "Inserted child "

    .line 139
    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v8, " without valid parent index"

    .line 151
    .line 152
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    add-int/lit8 v1, v2, 0x2

    .line 163
    .line 164
    aget-wide v14, v0, v1

    .line 165
    .line 166
    long-to-int v8, v14

    .line 167
    and-int/2addr v3, v8

    .line 168
    if-ne v3, v11, :cond_4

    .line 169
    .line 170
    move v9, v5

    .line 171
    :cond_4
    if-nez v9, :cond_5

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v4, " without valid parent index or parent "

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v4, " not found"

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    sub-int v2, v6, v2

    .line 202
    .line 203
    div-int/lit8 v2, v2, 0x3

    .line 204
    .line 205
    sget v3, Landroidx/compose/ui/spatial/RectListKt;->b:I

    .line 206
    .line 207
    const-wide v3, -0xffc000000000001L    # -3.8812952307517716E231

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    and-long/2addr v3, v14

    .line 213
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    int-to-long v7, v2

    .line 218
    shl-long/2addr v7, v13

    .line 219
    or-long v2, v3, v7

    .line 220
    .line 221
    aput-wide v2, v0, v1

    .line 222
    .line 223
    return v6
.end method

.method public final b(IIIJ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    shr-long v2, p4, v1

    .line 6
    .line 7
    long-to-int v2, v2

    .line 8
    const/16 v3, 0x3ff

    .line 9
    .line 10
    and-int/2addr v2, v3

    .line 11
    if-lez v2, :cond_4

    .line 12
    .line 13
    sget v2, Landroidx/compose/ui/spatial/RectListKt;->b:I

    .line 14
    .line 15
    const-wide v4, -0x3fffffe000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long v6, p4, v4

    .line 21
    .line 22
    const v2, 0x1ffffff

    .line 23
    .line 24
    .line 25
    and-int v8, p1, v2

    .line 26
    .line 27
    int-to-long v8, v8

    .line 28
    const/16 v10, 0x19

    .line 29
    .line 30
    shl-long/2addr v8, v10

    .line 31
    or-long/2addr v6, v8

    .line 32
    iget-object v8, v0, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 33
    .line 34
    iget-object v9, v0, Landroidx/compose/ui/spatial/RectList;->b:[J

    .line 35
    .line 36
    iget v0, v0, Landroidx/compose/ui/spatial/RectList;->c:I

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    aput-wide v6, v9, v11

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    :goto_0
    if-lez v6, :cond_4

    .line 43
    .line 44
    add-int/lit8 v6, v6, -0x1

    .line 45
    .line 46
    aget-wide v11, v9, v6

    .line 47
    .line 48
    long-to-int v7, v11

    .line 49
    and-int/2addr v7, v2

    .line 50
    shr-long v13, v11, v10

    .line 51
    .line 52
    long-to-int v13, v13

    .line 53
    and-int/2addr v13, v2

    .line 54
    shr-long/2addr v11, v1

    .line 55
    long-to-int v11, v11

    .line 56
    and-int/2addr v11, v3

    .line 57
    if-ne v11, v3, :cond_0

    .line 58
    .line 59
    move v11, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    mul-int/lit8 v11, v11, 0x3

    .line 62
    .line 63
    add-int/2addr v11, v13

    .line 64
    :goto_1
    if-ltz v13, :cond_4

    .line 65
    .line 66
    :goto_2
    add-int/lit8 v12, v0, -0x2

    .line 67
    .line 68
    if-ge v13, v12, :cond_3

    .line 69
    .line 70
    if-gt v13, v11, :cond_3

    .line 71
    .line 72
    add-int/lit8 v12, v13, 0x2

    .line 73
    .line 74
    aget-wide v14, v8, v12

    .line 75
    .line 76
    move/from16 v16, v1

    .line 77
    .line 78
    move/from16 p4, v2

    .line 79
    .line 80
    shr-long v1, v14, v10

    .line 81
    .line 82
    long-to-int v1, v1

    .line 83
    and-int v1, v1, p4

    .line 84
    .line 85
    if-ne v1, v7, :cond_1

    .line 86
    .line 87
    aget-wide v1, v8, v13

    .line 88
    .line 89
    add-int/lit8 v17, v13, 0x1

    .line 90
    .line 91
    move-wide/from16 v18, v4

    .line 92
    .line 93
    aget-wide v4, v8, v17

    .line 94
    .line 95
    const/16 v20, 0x20

    .line 96
    .line 97
    move/from16 p1, v10

    .line 98
    .line 99
    move/from16 p0, v11

    .line 100
    .line 101
    shr-long v10, v1, v20

    .line 102
    .line 103
    long-to-int v10, v10

    .line 104
    add-int v10, v10, p2

    .line 105
    .line 106
    long-to-int v1, v1

    .line 107
    add-int v1, v1, p3

    .line 108
    .line 109
    int-to-long v10, v10

    .line 110
    shl-long v10, v10, v20

    .line 111
    .line 112
    int-to-long v1, v1

    .line 113
    const-wide v21, 0xffffffffL

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    and-long v1, v1, v21

    .line 119
    .line 120
    or-long/2addr v1, v10

    .line 121
    aput-wide v1, v8, v13

    .line 122
    .line 123
    shr-long v1, v4, v20

    .line 124
    .line 125
    long-to-int v1, v1

    .line 126
    add-int v1, v1, p2

    .line 127
    .line 128
    long-to-int v2, v4

    .line 129
    add-int v2, v2, p3

    .line 130
    .line 131
    int-to-long v4, v1

    .line 132
    shl-long v4, v4, v20

    .line 133
    .line 134
    int-to-long v1, v2

    .line 135
    and-long v1, v1, v21

    .line 136
    .line 137
    or-long/2addr v1, v4

    .line 138
    aput-wide v1, v8, v17

    .line 139
    .line 140
    const/16 v1, 0x3f

    .line 141
    .line 142
    shr-long v1, v14, v1

    .line 143
    .line 144
    const-wide/16 v4, 0x1

    .line 145
    .line 146
    and-long/2addr v1, v4

    .line 147
    const/16 v4, 0x3c

    .line 148
    .line 149
    shl-long/2addr v1, v4

    .line 150
    or-long/2addr v1, v14

    .line 151
    aput-wide v1, v8, v12

    .line 152
    .line 153
    shr-long v1, v14, v16

    .line 154
    .line 155
    long-to-int v1, v1

    .line 156
    and-int/2addr v1, v3

    .line 157
    if-lez v1, :cond_2

    .line 158
    .line 159
    add-int/lit8 v1, v6, 0x1

    .line 160
    .line 161
    add-int/lit8 v2, v13, 0x3

    .line 162
    .line 163
    sget v4, Landroidx/compose/ui/spatial/RectListKt;->b:I

    .line 164
    .line 165
    and-long v4, v14, v18

    .line 166
    .line 167
    and-int v2, v2, p4

    .line 168
    .line 169
    int-to-long v10, v2

    .line 170
    shl-long v10, v10, p1

    .line 171
    .line 172
    or-long/2addr v4, v10

    .line 173
    aput-wide v4, v9, v6

    .line 174
    .line 175
    move v6, v1

    .line 176
    goto :goto_3

    .line 177
    :cond_1
    move-wide/from16 v18, v4

    .line 178
    .line 179
    move/from16 p1, v10

    .line 180
    .line 181
    move/from16 p0, v11

    .line 182
    .line 183
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x3

    .line 184
    .line 185
    move/from16 v11, p0

    .line 186
    .line 187
    move/from16 v10, p1

    .line 188
    .line 189
    move/from16 v2, p4

    .line 190
    .line 191
    move/from16 v1, v16

    .line 192
    .line 193
    move-wide/from16 v4, v18

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_3
    move/from16 v16, v1

    .line 198
    .line 199
    move/from16 p4, v2

    .line 200
    .line 201
    move-wide/from16 v18, v4

    .line 202
    .line 203
    move/from16 p1, v10

    .line 204
    .line 205
    move/from16 v10, p1

    .line 206
    .line 207
    move/from16 v2, p4

    .line 208
    .line 209
    move/from16 v1, v16

    .line 210
    .line 211
    move-wide/from16 v4, v18

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_4
    return-void
.end method
