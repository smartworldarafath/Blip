.class public final synthetic Landroidx/media3/exoplayer/trackselection/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/c;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/c;->c:[I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/c;->d:Landroid/graphics/Point;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/c;->c:[I

    .line 8
    .line 9
    aget v8, v1, p1

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/c;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/c;->d:Landroid/graphics/Point;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v2, v5, Landroidx/media3/common/TrackSelectionParameters;->e:I

    .line 21
    .line 22
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget v1, v5, Landroidx/media3/common/TrackSelectionParameters;->f:I

    .line 28
    .line 29
    :goto_1
    iget-boolean v4, v5, Landroidx/media3/common/TrackSelectionParameters;->h:Z

    .line 30
    .line 31
    const v10, 0x7fffffff

    .line 32
    .line 33
    .line 34
    if-eq v2, v10, :cond_9

    .line 35
    .line 36
    if-ne v1, v10, :cond_2

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_2
    move v7, v10

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_2
    iget v9, v3, Landroidx/media3/common/TrackGroup;->a:I

    .line 43
    .line 44
    if-ge v6, v9, :cond_8

    .line 45
    .line 46
    iget-object v9, v3, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 47
    .line 48
    aget-object v9, v9, v6

    .line 49
    .line 50
    iget v13, v9, Landroidx/media3/common/Format;->w:I

    .line 51
    .line 52
    iget v14, v9, Landroidx/media3/common/Format;->x:I

    .line 53
    .line 54
    if-lez v13, :cond_7

    .line 55
    .line 56
    if-lez v14, :cond_7

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    if-le v13, v14, :cond_3

    .line 61
    .line 62
    const/4 v15, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v15, 0x0

    .line 65
    :goto_3
    if-le v2, v1, :cond_4

    .line 66
    .line 67
    const/4 v11, 0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/4 v11, 0x0

    .line 70
    :goto_4
    if-eq v15, v11, :cond_5

    .line 71
    .line 72
    move v15, v1

    .line 73
    move v11, v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v11, v1

    .line 76
    move v15, v2

    .line 77
    :goto_5
    mul-int v12, v13, v11

    .line 78
    .line 79
    mul-int v10, v14, v15

    .line 80
    .line 81
    if-lt v12, v10, :cond_6

    .line 82
    .line 83
    new-instance v11, Landroid/graphics/Point;

    .line 84
    .line 85
    invoke-static {v10, v13}, Landroidx/media3/common/util/Util;->e(II)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    invoke-direct {v11, v15, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 90
    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_6
    new-instance v10, Landroid/graphics/Point;

    .line 94
    .line 95
    invoke-static {v12, v14}, Landroidx/media3/common/util/Util;->e(II)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-direct {v10, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 100
    .line 101
    .line 102
    move-object v11, v10

    .line 103
    :goto_6
    iget v9, v9, Landroidx/media3/common/Format;->w:I

    .line 104
    .line 105
    mul-int v10, v9, v14

    .line 106
    .line 107
    iget v12, v11, Landroid/graphics/Point;->x:I

    .line 108
    .line 109
    int-to-float v12, v12

    .line 110
    const v13, 0x3f7ae148    # 0.98f

    .line 111
    .line 112
    .line 113
    mul-float/2addr v12, v13

    .line 114
    float-to-int v12, v12

    .line 115
    if-lt v9, v12, :cond_7

    .line 116
    .line 117
    iget v9, v11, Landroid/graphics/Point;->y:I

    .line 118
    .line 119
    int-to-float v9, v9

    .line 120
    mul-float/2addr v9, v13

    .line 121
    float-to-int v9, v9

    .line 122
    if-lt v14, v9, :cond_7

    .line 123
    .line 124
    if-ge v10, v7, :cond_7

    .line 125
    .line 126
    move v7, v10

    .line 127
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 128
    .line 129
    const v10, 0x7fffffff

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move v10, v7

    .line 134
    goto :goto_8

    .line 135
    :cond_9
    :goto_7
    const v10, 0x7fffffff

    .line 136
    .line 137
    .line 138
    :goto_8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    const/4 v4, 0x0

    .line 143
    :goto_9
    iget v1, v3, Landroidx/media3/common/TrackGroup;->a:I

    .line 144
    .line 145
    if-ge v4, v1, :cond_e

    .line 146
    .line 147
    iget-object v1, v3, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 148
    .line 149
    aget-object v1, v1, v4

    .line 150
    .line 151
    iget v2, v1, Landroidx/media3/common/Format;->w:I

    .line 152
    .line 153
    const/4 v6, -0x1

    .line 154
    if-eq v2, v6, :cond_b

    .line 155
    .line 156
    iget v1, v1, Landroidx/media3/common/Format;->x:I

    .line 157
    .line 158
    if-ne v1, v6, :cond_a

    .line 159
    .line 160
    goto :goto_b

    .line 161
    :cond_a
    mul-int/2addr v2, v1

    .line 162
    :goto_a
    const v12, 0x7fffffff

    .line 163
    .line 164
    .line 165
    goto :goto_c

    .line 166
    :cond_b
    :goto_b
    move v2, v6

    .line 167
    goto :goto_a

    .line 168
    :goto_c
    if-eq v10, v12, :cond_d

    .line 169
    .line 170
    if-eq v2, v6, :cond_c

    .line 171
    .line 172
    if-gt v2, v10, :cond_c

    .line 173
    .line 174
    goto :goto_d

    .line 175
    :cond_c
    const/4 v9, 0x0

    .line 176
    goto :goto_e

    .line 177
    :cond_d
    :goto_d
    const/4 v9, 0x1

    .line 178
    :goto_e
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 179
    .line 180
    aget v6, p3, v4

    .line 181
    .line 182
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/c;->b:Ljava/lang/String;

    .line 183
    .line 184
    move/from16 v2, p1

    .line 185
    .line 186
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    move-object/from16 v3, p2

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_e
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0
.end method
