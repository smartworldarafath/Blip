.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4SeekMap"
.end annotation


# instance fields
.field public final a:J

.field public final b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

.field public final c:I


# direct methods
.method public constructor <init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->b:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    sget-object v5, Landroidx/media3/extractor/SeekPoint;->c:Landroidx/media3/extractor/SeekPoint;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 13
    .line 14
    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget v0, v0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->c:I

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    const-wide/16 v8, -0x1

    .line 22
    .line 23
    if-eq v0, v4, :cond_3

    .line 24
    .line 25
    aget-object v10, v3, v0

    .line 26
    .line 27
    iget-object v10, v10, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 28
    .line 29
    sget v11, Landroidx/media3/extractor/mp4/Mp4Extractor;->I:I

    .line 30
    .line 31
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-ne v11, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    :cond_1
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 42
    .line 43
    iget-object v13, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 44
    .line 45
    if-ne v11, v4, :cond_2

    .line 46
    .line 47
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 48
    .line 49
    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    aget-wide v14, v13, v11

    .line 54
    .line 55
    aget-wide v16, v12, v11

    .line 56
    .line 57
    cmp-long v5, v14, v1

    .line 58
    .line 59
    if-gez v5, :cond_4

    .line 60
    .line 61
    iget v5, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 62
    .line 63
    add-int/lit8 v5, v5, -0x1

    .line 64
    .line 65
    if-ge v11, v5, :cond_4

    .line 66
    .line 67
    invoke-virtual {v10, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eq v1, v4, :cond_4

    .line 72
    .line 73
    if-eq v1, v11, :cond_4

    .line 74
    .line 75
    aget-wide v8, v13, v1

    .line 76
    .line 77
    aget-wide v1, v12, v1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const-wide v16, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    move-wide v14, v1

    .line 86
    :cond_4
    move-wide v1, v8

    .line 87
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :goto_0
    const/4 v5, 0x0

    .line 93
    move-wide/from16 v10, v16

    .line 94
    .line 95
    :goto_1
    array-length v12, v3

    .line 96
    if-ge v5, v12, :cond_b

    .line 97
    .line 98
    if-eq v5, v0, :cond_9

    .line 99
    .line 100
    aget-object v12, v3, v5

    .line 101
    .line 102
    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 103
    .line 104
    iget-object v13, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 105
    .line 106
    sget v16, Landroidx/media3/extractor/mp4/Mp4Extractor;->I:I

    .line 107
    .line 108
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v14, v15}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-ne v6, v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v12, v14, v15}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    :cond_5
    if-ne v6, v4, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    aget-wide v6, v13, v6

    .line 127
    .line 128
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    :goto_2
    cmp-long v6, v8, v16

    .line 133
    .line 134
    if-eqz v6, :cond_a

    .line 135
    .line 136
    invoke-virtual {v12, v8, v9}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-ne v6, v4, :cond_7

    .line 141
    .line 142
    invoke-virtual {v12, v8, v9}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    :cond_7
    if-ne v6, v4, :cond_8

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    aget-wide v6, v13, v6

    .line 150
    .line 151
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    goto :goto_3

    .line 156
    :cond_9
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_b
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    .line 170
    .line 171
    invoke-direct {v0, v14, v15, v10, v11}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 172
    .line 173
    .line 174
    cmp-long v3, v8, v16

    .line 175
    .line 176
    if-nez v3, :cond_c

    .line 177
    .line 178
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 179
    .line 180
    invoke-direct {v1, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_c
    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    .line 185
    .line 186
    invoke-direct {v3, v8, v9, v1, v2}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 190
    .line 191
    invoke-direct {v1, v0, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 192
    .line 193
    .line 194
    return-object v1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
