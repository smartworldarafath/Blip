.class public abstract Landroidx/media3/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;,
        Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;,
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public final b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

.field public c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/extractor/BinarySearchSeeker;->b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 5
    .line 6
    iput p13, p0, Landroidx/media3/extractor/BinarySearchSeeker;->d:I

    .line 7
    .line 8
    move-object p2, p1

    .line 9
    new-instance p1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 10
    .line 11
    invoke-direct/range {p1 .. p12}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJ)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 15
    .line 16
    return-void
.end method

.method public static b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, p1, v0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-wide p1, p3, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :goto_0
    iget-object v3, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    .line 13
    .line 14
    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    .line 15
    .line 16
    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    .line 17
    .line 18
    sub-long/2addr v6, v4

    .line 19
    iget v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->d:I

    .line 20
    .line 21
    int-to-long v10, v10

    .line 22
    cmp-long v6, v6, v10

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    iget-object v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    .line 26
    .line 27
    if-gtz v6, :cond_0

    .line 28
    .line 29
    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 30
    .line 31
    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v4, v5, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long v4, v8, v4

    .line 44
    .line 45
    const-wide/16 v11, 0x0

    .line 46
    .line 47
    cmp-long v6, v4, v11

    .line 48
    .line 49
    if-ltz v6, :cond_6

    .line 50
    .line 51
    const-wide/32 v13, 0x40000

    .line 52
    .line 53
    .line 54
    cmp-long v6, v4, v13

    .line 55
    .line 56
    if-gtz v6, :cond_6

    .line 57
    .line 58
    long-to-int v4, v4

    .line 59
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 63
    .line 64
    .line 65
    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    .line 66
    .line 67
    invoke-interface {v10, v1, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->a(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->a:I

    .line 72
    .line 73
    move-wide v15, v11

    .line 74
    iget-wide v11, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->b:J

    .line 75
    .line 76
    move-wide/from16 v17, v13

    .line 77
    .line 78
    iget-wide v13, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->c:J

    .line 79
    .line 80
    const/4 v4, -0x3

    .line 81
    if-eq v5, v4, :cond_5

    .line 82
    .line 83
    const/4 v4, -0x2

    .line 84
    if-eq v5, v4, :cond_4

    .line 85
    .line 86
    const/4 v4, -0x1

    .line 87
    if-eq v5, v4, :cond_3

    .line 88
    .line 89
    if-nez v5, :cond_2

    .line 90
    .line 91
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    sub-long v3, v13, v3

    .line 96
    .line 97
    cmp-long v5, v3, v15

    .line 98
    .line 99
    if-ltz v5, :cond_1

    .line 100
    .line 101
    cmp-long v5, v3, v17

    .line 102
    .line 103
    if-gtz v5, :cond_1

    .line 104
    .line 105
    long-to-int v3, v3

    .line 106
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 110
    .line 111
    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v13, v14, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    return v0

    .line 119
    :cond_2
    const-string v0, "Invalid case"

    .line 120
    .line 121
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    return v0

    .line 126
    :cond_3
    iput-wide v11, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->e:J

    .line 127
    .line 128
    iput-wide v13, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    .line 129
    .line 130
    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    .line 131
    .line 132
    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->d:J

    .line 133
    .line 134
    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    .line 135
    .line 136
    move-wide v15, v4

    .line 137
    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->c:J

    .line 138
    .line 139
    move-wide/from16 v25, v4

    .line 140
    .line 141
    move-wide/from16 v17, v6

    .line 142
    .line 143
    move-wide/from16 v21, v8

    .line 144
    .line 145
    move-wide/from16 v19, v11

    .line 146
    .line 147
    move-wide/from16 v23, v13

    .line 148
    .line 149
    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a(JJJJJJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_4
    move-wide v4, v11

    .line 158
    move-wide v6, v13

    .line 159
    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->d:J

    .line 160
    .line 161
    iput-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    .line 162
    .line 163
    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    .line 164
    .line 165
    iget-wide v10, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->e:J

    .line 166
    .line 167
    iget-wide v12, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    .line 168
    .line 169
    iget-wide v14, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->c:J

    .line 170
    .line 171
    move-wide/from16 v17, v4

    .line 172
    .line 173
    move-wide/from16 v21, v6

    .line 174
    .line 175
    move-wide/from16 v19, v10

    .line 176
    .line 177
    move-wide/from16 v23, v12

    .line 178
    .line 179
    move-wide/from16 v25, v14

    .line 180
    .line 181
    move-wide v15, v8

    .line 182
    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a(JJJJJJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_5
    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 191
    .line 192
    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    return v0

    .line 200
    :cond_6
    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    return v0
.end method

.method public final c(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v4, v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a:J

    .line 10
    .line 11
    cmp-long v1, v4, v2

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 17
    .line 18
    iget-object v4, v0, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 19
    .line 20
    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->a:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    .line 21
    .line 22
    invoke-interface {v5, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->f(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    move-wide v8, v5

    .line 27
    iget-wide v6, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->c:J

    .line 28
    .line 29
    move-wide v10, v8

    .line 30
    iget-wide v8, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->d:J

    .line 31
    .line 32
    move-wide v12, v10

    .line 33
    iget-wide v10, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->e:J

    .line 34
    .line 35
    iget-wide v4, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->f:J

    .line 36
    .line 37
    move-wide v14, v12

    .line 38
    move-wide v12, v4

    .line 39
    move-wide v4, v14

    .line 40
    invoke-direct/range {v1 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJ)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 44
    .line 45
    return-void
.end method
