.class public final Landroidx/media3/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field public final c:Z

.field public final d:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

.field public e:I

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

.field public h:J

.field public i:[Landroidx/media3/extractor/avi/ChunkReader;

.field public j:J

.field public k:Landroidx/media3/extractor/avi/ChunkReader;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->d:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->c:Z

    .line 8
    .line 9
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 24
    .line 25
    new-instance p1, Landroidx/media3/extractor/NoOpExtractorOutput;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [Landroidx/media3/extractor/avi/ChunkReader;

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 40
    .line 41
    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const v0, 0x46464952

    .line 19
    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/4 p1, 0x4

    .line 25
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const p1, 0x20495641

    .line 33
    .line 34
    .line 35
    if-ne p0, p1, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    return v2
.end method

.method public final c(JJ)V
    .locals 5

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    .line 7
    .line 8
    iget-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 9
    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    iget v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iput v0, v2, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v3, p1, p2, v4}, Landroidx/media3/common/util/Util;->d([JJZ)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 32
    .line 33
    aget v3, v4, v3

    .line 34
    .line 35
    iput v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    .line 36
    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 p3, 0x0

    .line 41
    .line 42
    cmp-long p1, p1, p3

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 47
    .line 48
    array-length p1, p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/4 p1, 0x3

    .line 55
    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    const/4 p1, 0x6

    .line 59
    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 60
    .line 61
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/extractor/avi/AviExtractor;->d:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 21
    .line 22
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 6
    .line 7
    const-wide/16 v4, -0x1

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    iget-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 20
    .line 21
    cmp-long v2, v9, v7

    .line 22
    .line 23
    if-ltz v2, :cond_0

    .line 24
    .line 25
    const-wide/32 v11, 0x40000

    .line 26
    .line 27
    .line 28
    add-long/2addr v11, v7

    .line 29
    cmp-long v2, v9, v11

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object/from16 v2, p2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long/2addr v9, v7

    .line 37
    long-to-int v2, v9

    .line 38
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 43
    .line 44
    move v2, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    move v2, v6

    .line 47
    :goto_2
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    return v3

    .line 52
    :cond_3
    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 53
    .line 54
    const v7, 0x6c726468

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x6

    .line 58
    const/16 v10, 0x10

    .line 59
    .line 60
    const v11, 0x69766f6d

    .line 61
    .line 62
    .line 63
    const/4 v13, 0x4

    .line 64
    const v14, 0x5453494c

    .line 65
    .line 66
    .line 67
    const/16 v15, 0x8

    .line 68
    .line 69
    const-wide/16 v16, 0x8

    .line 70
    .line 71
    move-wide/from16 v18, v4

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    const/16 v5, 0xc

    .line 75
    .line 76
    const/16 p2, 0x3

    .line 77
    .line 78
    iget-object v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 79
    .line 80
    const/16 v20, 0x2

    .line 81
    .line 82
    iget-object v12, v0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 83
    .line 84
    packed-switch v2, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/lang/AssertionError;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :pswitch_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    iget-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    .line 98
    .line 99
    cmp-long v2, v7, v9

    .line 100
    .line 101
    if-ltz v2, :cond_4

    .line 102
    .line 103
    const/4 v0, -0x1

    .line 104
    return v0

    .line 105
    :cond_4
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    .line 106
    .line 107
    if-eqz v2, :cond_b

    .line 108
    .line 109
    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    .line 110
    .line 111
    iget-object v7, v2, Landroidx/media3/extractor/avi/ChunkReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 112
    .line 113
    invoke-interface {v7, v1, v5, v6}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    sub-int/2addr v5, v1

    .line 118
    iput v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    .line 119
    .line 120
    if-nez v5, :cond_5

    .line 121
    .line 122
    move v1, v3

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    move v1, v6

    .line 125
    :goto_3
    if-eqz v1, :cond_9

    .line 126
    .line 127
    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    .line 128
    .line 129
    if-lez v5, :cond_8

    .line 130
    .line 131
    iget-object v7, v2, Landroidx/media3/extractor/avi/ChunkReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 132
    .line 133
    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    .line 134
    .line 135
    iget-wide v8, v2, Landroidx/media3/extractor/avi/ChunkReader;->e:J

    .line 136
    .line 137
    int-to-long v10, v5

    .line 138
    mul-long/2addr v8, v10

    .line 139
    iget v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->g:I

    .line 140
    .line 141
    int-to-long v10, v10

    .line 142
    div-long/2addr v8, v10

    .line 143
    iget-boolean v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->f:Z

    .line 144
    .line 145
    if-nez v10, :cond_7

    .line 146
    .line 147
    iget-object v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 148
    .line 149
    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-ltz v5, :cond_6

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    move v10, v6

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    :goto_4
    move v10, v3

    .line 159
    :goto_5
    iget v11, v2, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    .line 167
    .line 168
    add-int/2addr v5, v3

    .line 169
    iput v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    .line 170
    .line 171
    :cond_9
    if-eqz v1, :cond_a

    .line 172
    .line 173
    iput-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    .line 174
    .line 175
    :cond_a
    return v6

    .line 176
    :cond_b
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 177
    .line 178
    .line 179
    move-result-wide v7

    .line 180
    const-wide/16 v9, 0x1

    .line 181
    .line 182
    and-long/2addr v7, v9

    .line 183
    cmp-long v2, v7, v9

    .line 184
    .line 185
    if-nez v2, :cond_c

    .line 186
    .line 187
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 188
    .line 189
    .line 190
    :cond_c
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 191
    .line 192
    invoke-interface {v1, v2, v6, v5}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ne v2, v14, :cond_e

    .line 203
    .line 204
    invoke-virtual {v12, v15}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-ne v0, v11, :cond_d

    .line 212
    .line 213
    move v15, v5

    .line 214
    :cond_d
    invoke-interface {v1, v15}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 218
    .line 219
    .line 220
    return v6

    .line 221
    :cond_e
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    const v5, 0x4b4e554a    # 1.352225E7f

    .line 226
    .line 227
    .line 228
    if-ne v2, v5, :cond_f

    .line 229
    .line 230
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    int-to-long v3, v3

    .line 235
    add-long/2addr v1, v3

    .line 236
    add-long v1, v1, v16

    .line 237
    .line 238
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 239
    .line 240
    return v6

    .line 241
    :cond_f
    invoke-interface {v1, v15}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 245
    .line 246
    .line 247
    iget-object v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 248
    .line 249
    array-length v7, v5

    .line 250
    move v8, v6

    .line 251
    :goto_6
    if-ge v8, v7, :cond_12

    .line 252
    .line 253
    aget-object v9, v5, v8

    .line 254
    .line 255
    iget v10, v9, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    .line 256
    .line 257
    if-eq v10, v2, :cond_11

    .line 258
    .line 259
    iget v10, v9, Landroidx/media3/extractor/avi/ChunkReader;->d:I

    .line 260
    .line 261
    if-ne v10, v2, :cond_10

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_11
    :goto_7
    move-object v4, v9

    .line 268
    :cond_12
    if-nez v4, :cond_13

    .line 269
    .line 270
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    int-to-long v3, v3

    .line 275
    add-long/2addr v1, v3

    .line 276
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 277
    .line 278
    return v6

    .line 279
    :cond_13
    iput v3, v4, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    .line 280
    .line 281
    iput v3, v4, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    .line 282
    .line 283
    iput-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    .line 284
    .line 285
    return v6

    .line 286
    :pswitch_1
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 287
    .line 288
    iget v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    .line 289
    .line 290
    invoke-direct {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 291
    .line 292
    .line 293
    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 294
    .line 295
    iget v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    .line 296
    .line 297
    invoke-interface {v1, v5, v6, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-ge v1, v10, :cond_14

    .line 305
    .line 306
    const-wide/16 v11, 0x0

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_14
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 310
    .line 311
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    int-to-long v14, v5

    .line 319
    iget-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 320
    .line 321
    cmp-long v5, v14, v11

    .line 322
    .line 323
    if-lez v5, :cond_15

    .line 324
    .line 325
    const-wide/16 v11, 0x0

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_15
    add-long v11, v11, v16

    .line 329
    .line 330
    :goto_8
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 331
    .line 332
    .line 333
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-lt v1, v10, :cond_1f

    .line 338
    .line 339
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    int-to-long v14, v7

    .line 352
    add-long/2addr v14, v11

    .line 353
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 354
    .line 355
    .line 356
    iget-object v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 357
    .line 358
    array-length v9, v7

    .line 359
    move v4, v6

    .line 360
    :goto_a
    if-ge v4, v9, :cond_17

    .line 361
    .line 362
    aget-object v13, v7, v4

    .line 363
    .line 364
    move/from16 v22, v6

    .line 365
    .line 366
    iget v6, v13, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    .line 367
    .line 368
    if-eq v6, v1, :cond_18

    .line 369
    .line 370
    iget v6, v13, Landroidx/media3/extractor/avi/ChunkReader;->d:I

    .line 371
    .line 372
    if-ne v6, v1, :cond_16

    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 376
    .line 377
    move/from16 v6, v22

    .line 378
    .line 379
    const/4 v13, 0x4

    .line 380
    goto :goto_a

    .line 381
    :cond_17
    move/from16 v22, v6

    .line 382
    .line 383
    const/4 v13, 0x0

    .line 384
    :cond_18
    :goto_b
    if-nez v13, :cond_19

    .line 385
    .line 386
    :goto_c
    move/from16 v6, v22

    .line 387
    .line 388
    const/4 v4, 0x0

    .line 389
    const/4 v13, 0x4

    .line 390
    goto :goto_9

    .line 391
    :cond_19
    and-int/lit8 v1, v5, 0x10

    .line 392
    .line 393
    if-ne v1, v10, :cond_1a

    .line 394
    .line 395
    move v1, v3

    .line 396
    goto :goto_d

    .line 397
    :cond_1a
    move/from16 v1, v22

    .line 398
    .line 399
    :goto_d
    iget-wide v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->m:J

    .line 400
    .line 401
    cmp-long v4, v4, v18

    .line 402
    .line 403
    if-nez v4, :cond_1b

    .line 404
    .line 405
    iput-wide v14, v13, Landroidx/media3/extractor/avi/ChunkReader;->m:J

    .line 406
    .line 407
    :cond_1b
    if-nez v1, :cond_1c

    .line 408
    .line 409
    iget-boolean v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->f:Z

    .line 410
    .line 411
    if-eqz v1, :cond_1e

    .line 412
    .line 413
    :cond_1c
    iget v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 414
    .line 415
    iget-object v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 416
    .line 417
    array-length v4, v4

    .line 418
    if-ne v1, v4, :cond_1d

    .line 419
    .line 420
    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 421
    .line 422
    array-length v4, v1

    .line 423
    mul-int/lit8 v4, v4, 0x3

    .line 424
    .line 425
    div-int/lit8 v4, v4, 0x2

    .line 426
    .line 427
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    iput-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 432
    .line 433
    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 434
    .line 435
    array-length v4, v1

    .line 436
    mul-int/lit8 v4, v4, 0x3

    .line 437
    .line 438
    div-int/lit8 v4, v4, 0x2

    .line 439
    .line 440
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    iput-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 445
    .line 446
    :cond_1d
    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 447
    .line 448
    iget v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 449
    .line 450
    aput-wide v14, v1, v4

    .line 451
    .line 452
    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 453
    .line 454
    iget v5, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    .line 455
    .line 456
    aput v5, v1, v4

    .line 457
    .line 458
    add-int/2addr v4, v3

    .line 459
    iput v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 460
    .line 461
    :cond_1e
    iget v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    .line 462
    .line 463
    add-int/2addr v1, v3

    .line 464
    iput v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_1f
    move/from16 v22, v6

    .line 468
    .line 469
    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 470
    .line 471
    array-length v2, v1

    .line 472
    move/from16 v4, v22

    .line 473
    .line 474
    :goto_e
    if-ge v4, v2, :cond_21

    .line 475
    .line 476
    aget-object v5, v1, v4

    .line 477
    .line 478
    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 479
    .line 480
    iget v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 481
    .line 482
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    iput-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->n:[J

    .line 487
    .line 488
    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 489
    .line 490
    iget v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 491
    .line 492
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    iput-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->o:[I

    .line 497
    .line 498
    iget-boolean v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->f:Z

    .line 499
    .line 500
    if-eqz v6, :cond_20

    .line 501
    .line 502
    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->a:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    .line 503
    .line 504
    iget v6, v6, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->f:I

    .line 505
    .line 506
    if-eqz v6, :cond_20

    .line 507
    .line 508
    iget v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->l:I

    .line 509
    .line 510
    if-lez v6, :cond_20

    .line 511
    .line 512
    iput v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->g:I

    .line 513
    .line 514
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 515
    .line 516
    goto :goto_e

    .line 517
    :cond_21
    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    .line 518
    .line 519
    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 520
    .line 521
    array-length v1, v1

    .line 522
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 523
    .line 524
    iget-wide v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 525
    .line 526
    if-nez v1, :cond_22

    .line 527
    .line 528
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 529
    .line 530
    invoke-direct {v1, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 531
    .line 532
    .line 533
    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 534
    .line 535
    .line 536
    goto :goto_f

    .line 537
    :cond_22
    new-instance v1, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;

    .line 538
    .line 539
    invoke-direct {v1, v0, v3, v4}, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;-><init>(Landroidx/media3/extractor/avi/AviExtractor;J)V

    .line 540
    .line 541
    .line 542
    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 543
    .line 544
    .line 545
    :goto_f
    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 546
    .line 547
    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 548
    .line 549
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 550
    .line 551
    return v22

    .line 552
    :pswitch_2
    move/from16 v22, v6

    .line 553
    .line 554
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 555
    .line 556
    move/from16 v4, v22

    .line 557
    .line 558
    invoke-interface {v1, v2, v4, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    const v5, 0x31786469

    .line 573
    .line 574
    .line 575
    if-ne v2, v5, :cond_23

    .line 576
    .line 577
    const/4 v1, 0x5

    .line 578
    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 579
    .line 580
    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    .line 581
    .line 582
    return v4

    .line 583
    :cond_23
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 584
    .line 585
    .line 586
    move-result-wide v1

    .line 587
    int-to-long v5, v3

    .line 588
    add-long/2addr v1, v5

    .line 589
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 590
    .line 591
    return v4

    .line 592
    :pswitch_3
    move v4, v6

    .line 593
    iget-wide v6, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 594
    .line 595
    cmp-long v2, v6, v18

    .line 596
    .line 597
    if-eqz v2, :cond_24

    .line 598
    .line 599
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 600
    .line 601
    .line 602
    move-result-wide v6

    .line 603
    move v13, v10

    .line 604
    iget-wide v10, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 605
    .line 606
    cmp-long v6, v6, v10

    .line 607
    .line 608
    if-eqz v6, :cond_25

    .line 609
    .line 610
    iput-wide v10, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 611
    .line 612
    return v4

    .line 613
    :cond_24
    move v13, v10

    .line 614
    :cond_25
    iget-object v6, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 615
    .line 616
    invoke-interface {v1, v6, v4, v5}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 617
    .line 618
    .line 619
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    iput v6, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    .line 633
    .line 634
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    iput v6, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    .line 639
    .line 640
    iput v4, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    .line 641
    .line 642
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    iget v7, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    .line 647
    .line 648
    const v10, 0x46464952

    .line 649
    .line 650
    .line 651
    if-ne v7, v10, :cond_26

    .line 652
    .line 653
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 654
    .line 655
    .line 656
    return v4

    .line 657
    :cond_26
    if-ne v7, v14, :cond_27

    .line 658
    .line 659
    const v2, 0x69766f6d

    .line 660
    .line 661
    .line 662
    if-eq v6, v2, :cond_28

    .line 663
    .line 664
    :cond_27
    const/4 v4, 0x0

    .line 665
    goto :goto_10

    .line 666
    :cond_28
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 667
    .line 668
    .line 669
    move-result-wide v4

    .line 670
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    .line 671
    .line 672
    iget v2, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    .line 673
    .line 674
    int-to-long v6, v2

    .line 675
    add-long/2addr v4, v6

    .line 676
    add-long v4, v4, v16

    .line 677
    .line 678
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    .line 679
    .line 680
    iget-boolean v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    .line 681
    .line 682
    if-nez v2, :cond_2a

    .line 683
    .line 684
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    .line 685
    .line 686
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    iget v2, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->b:I

    .line 690
    .line 691
    and-int/2addr v2, v13

    .line 692
    if-ne v2, v13, :cond_29

    .line 693
    .line 694
    const/4 v2, 0x4

    .line 695
    iput v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 696
    .line 697
    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    .line 698
    .line 699
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 700
    .line 701
    const/16 v22, 0x0

    .line 702
    .line 703
    return v22

    .line 704
    :cond_29
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 705
    .line 706
    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 707
    .line 708
    iget-wide v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 709
    .line 710
    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 711
    .line 712
    .line 713
    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 714
    .line 715
    .line 716
    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    .line 717
    .line 718
    :cond_2a
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 719
    .line 720
    .line 721
    move-result-wide v1

    .line 722
    const-wide/16 v3, 0xc

    .line 723
    .line 724
    add-long/2addr v1, v3

    .line 725
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 726
    .line 727
    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 728
    .line 729
    const/4 v4, 0x0

    .line 730
    return v4

    .line 731
    :goto_10
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 732
    .line 733
    .line 734
    move-result-wide v1

    .line 735
    iget v3, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    .line 736
    .line 737
    int-to-long v5, v3

    .line 738
    add-long/2addr v1, v5

    .line 739
    add-long v1, v1, v16

    .line 740
    .line 741
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    .line 742
    .line 743
    return v4

    .line 744
    :pswitch_4
    move v4, v6

    .line 745
    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    .line 746
    .line 747
    const/16 v21, 0x4

    .line 748
    .line 749
    add-int/lit8 v2, v2, -0x4

    .line 750
    .line 751
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 752
    .line 753
    invoke-direct {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 754
    .line 755
    .line 756
    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 757
    .line 758
    invoke-interface {v1, v6, v4, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 759
    .line 760
    .line 761
    invoke-static {v7, v5}, Landroidx/media3/extractor/avi/ListChunk;->c(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iget v2, v1, Landroidx/media3/extractor/avi/ListChunk;->b:I

    .line 766
    .line 767
    if-ne v2, v7, :cond_35

    .line 768
    .line 769
    const-class v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    .line 770
    .line 771
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/avi/ListChunk;->b(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    check-cast v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    .line 776
    .line 777
    if-eqz v2, :cond_34

    .line 778
    .line 779
    iput-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    .line 780
    .line 781
    iget v4, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->c:I

    .line 782
    .line 783
    int-to-long v4, v4

    .line 784
    iget v2, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->a:I

    .line 785
    .line 786
    int-to-long v6, v2

    .line 787
    mul-long/2addr v4, v6

    .line 788
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 789
    .line 790
    new-instance v2, Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .line 794
    .line 795
    iget-object v1, v1, Landroidx/media3/extractor/avi/ListChunk;->a:Lcom/google/common/collect/ImmutableList;

    .line 796
    .line 797
    const/4 v4, 0x0

    .line 798
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->p(I)Lcom/google/common/collect/UnmodifiableListIterator;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    const/4 v4, 0x0

    .line 803
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    if-eqz v5, :cond_33

    .line 808
    .line 809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    check-cast v5, Landroidx/media3/extractor/avi/AviChunk;

    .line 814
    .line 815
    invoke-interface {v5}, Landroidx/media3/extractor/avi/AviChunk;->a()I

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    const v7, 0x6c727473

    .line 820
    .line 821
    .line 822
    if-ne v6, v7, :cond_32

    .line 823
    .line 824
    check-cast v5, Landroidx/media3/extractor/avi/ListChunk;

    .line 825
    .line 826
    add-int/lit8 v6, v4, 0x1

    .line 827
    .line 828
    const-class v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    .line 829
    .line 830
    invoke-virtual {v5, v7}, Landroidx/media3/extractor/avi/ListChunk;->b(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    check-cast v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    .line 835
    .line 836
    const-class v8, Landroidx/media3/extractor/avi/StreamFormatChunk;

    .line 837
    .line 838
    invoke-virtual {v5, v8}, Landroidx/media3/extractor/avi/ListChunk;->b(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    .line 839
    .line 840
    .line 841
    move-result-object v8

    .line 842
    check-cast v8, Landroidx/media3/extractor/avi/StreamFormatChunk;

    .line 843
    .line 844
    const-string v9, "AviExtractor"

    .line 845
    .line 846
    if-nez v7, :cond_2c

    .line 847
    .line 848
    const-string v4, "Missing Stream Header"

    .line 849
    .line 850
    invoke-static {v9, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    :cond_2b
    :goto_12
    const/4 v9, 0x0

    .line 854
    goto :goto_13

    .line 855
    :cond_2c
    if-nez v8, :cond_2d

    .line 856
    .line 857
    const-string v4, "Missing Stream Format"

    .line 858
    .line 859
    invoke-static {v9, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    goto :goto_12

    .line 863
    :cond_2d
    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->d:I

    .line 864
    .line 865
    int-to-long v10, v9

    .line 866
    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->b:I

    .line 867
    .line 868
    int-to-long v12, v9

    .line 869
    const-wide/32 v14, 0xf4240

    .line 870
    .line 871
    .line 872
    mul-long/2addr v12, v14

    .line 873
    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->c:I

    .line 874
    .line 875
    int-to-long v14, v9

    .line 876
    sget-object v9, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 877
    .line 878
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 879
    .line 880
    invoke-static/range {v10 .. v16}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 881
    .line 882
    .line 883
    move-result-wide v9

    .line 884
    iget-object v8, v8, Landroidx/media3/extractor/avi/StreamFormatChunk;->a:Landroidx/media3/common/Format;

    .line 885
    .line 886
    invoke-virtual {v8}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 887
    .line 888
    .line 889
    move-result-object v11

    .line 890
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v12

    .line 894
    iput-object v12, v11, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 895
    .line 896
    iget v12, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->e:I

    .line 897
    .line 898
    if-eqz v12, :cond_2e

    .line 899
    .line 900
    iput v12, v11, Landroidx/media3/common/Format$Builder;->p:I

    .line 901
    .line 902
    :cond_2e
    const-class v12, Landroidx/media3/extractor/avi/StreamNameChunk;

    .line 903
    .line 904
    invoke-virtual {v5, v12}, Landroidx/media3/extractor/avi/ListChunk;->b(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    check-cast v5, Landroidx/media3/extractor/avi/StreamNameChunk;

    .line 909
    .line 910
    if-eqz v5, :cond_2f

    .line 911
    .line 912
    iget-object v5, v5, Landroidx/media3/extractor/avi/StreamNameChunk;->a:Ljava/lang/String;

    .line 913
    .line 914
    iput-object v5, v11, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    .line 915
    .line 916
    :cond_2f
    iget-object v5, v8, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 917
    .line 918
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    if-eq v5, v3, :cond_30

    .line 923
    .line 924
    move/from16 v8, v20

    .line 925
    .line 926
    if-ne v5, v8, :cond_2b

    .line 927
    .line 928
    :cond_30
    iget-object v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 929
    .line 930
    invoke-interface {v8, v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 931
    .line 932
    .line 933
    move-result-object v5

    .line 934
    new-instance v8, Landroidx/media3/common/Format;

    .line 935
    .line 936
    invoke-direct {v8, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 937
    .line 938
    .line 939
    invoke-interface {v5, v8}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 940
    .line 941
    .line 942
    invoke-interface {v5, v9, v10}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 943
    .line 944
    .line 945
    iget-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 946
    .line 947
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 948
    .line 949
    .line 950
    move-result-wide v9

    .line 951
    iput-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    .line 952
    .line 953
    new-instance v9, Landroidx/media3/extractor/avi/ChunkReader;

    .line 954
    .line 955
    iget-object v10, v8, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 956
    .line 957
    iget-object v8, v8, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 958
    .line 959
    invoke-static {v10, v8}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 960
    .line 961
    .line 962
    move-result v8

    .line 963
    invoke-direct {v9, v4, v7, v5, v8}, Landroidx/media3/extractor/avi/ChunkReader;-><init>(ILandroidx/media3/extractor/avi/AviStreamHeaderChunk;Landroidx/media3/extractor/TrackOutput;Z)V

    .line 964
    .line 965
    .line 966
    :goto_13
    if-eqz v9, :cond_31

    .line 967
    .line 968
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    :cond_31
    move v4, v6

    .line 972
    :cond_32
    const/16 v20, 0x2

    .line 973
    .line 974
    goto/16 :goto_11

    .line 975
    .line 976
    :cond_33
    const/4 v4, 0x0

    .line 977
    new-array v1, v4, [Landroidx/media3/extractor/avi/ChunkReader;

    .line 978
    .line 979
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    check-cast v1, [Landroidx/media3/extractor/avi/ChunkReader;

    .line 984
    .line 985
    iput-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    .line 986
    .line 987
    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 988
    .line 989
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 990
    .line 991
    .line 992
    move/from16 v1, p2

    .line 993
    .line 994
    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 995
    .line 996
    return v4

    .line 997
    :cond_34
    const-string v0, "AviHeader not found"

    .line 998
    .line 999
    const/4 v1, 0x0

    .line 1000
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    throw v0

    .line 1005
    :cond_35
    const/4 v1, 0x0

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    const-string v3, "Unexpected header list type "

    .line 1009
    .line 1010
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    throw v0

    .line 1025
    :pswitch_5
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1026
    .line 1027
    const/4 v4, 0x0

    .line 1028
    invoke-interface {v1, v2, v4, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    .line 1042
    .line 1043
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 1044
    .line 1045
    .line 1046
    move-result v1

    .line 1047
    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    .line 1048
    .line 1049
    iput v4, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    .line 1050
    .line 1051
    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    .line 1052
    .line 1053
    if-ne v1, v14, :cond_37

    .line 1054
    .line 1055
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 1056
    .line 1057
    .line 1058
    move-result v1

    .line 1059
    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    .line 1060
    .line 1061
    if-ne v1, v7, :cond_36

    .line 1062
    .line 1063
    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    .line 1064
    .line 1065
    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    .line 1066
    .line 1067
    const/4 v8, 0x2

    .line 1068
    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 1069
    .line 1070
    return v4

    .line 1071
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    const-string v1, "hdrl expected, found: "

    .line 1074
    .line 1075
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    .line 1079
    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    const/4 v2, 0x0

    .line 1088
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    throw v0

    .line 1093
    :cond_37
    const/4 v2, 0x0

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    const-string v1, "LIST expected, found: "

    .line 1097
    .line 1098
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    .line 1102
    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    throw v0

    .line 1115
    :pswitch_6
    move-object v2, v4

    .line 1116
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/avi/AviExtractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v4

    .line 1120
    if-eqz v4, :cond_38

    .line 1121
    .line 1122
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1123
    .line 1124
    .line 1125
    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    .line 1126
    .line 1127
    const/16 v22, 0x0

    .line 1128
    .line 1129
    return v22

    .line 1130
    :cond_38
    const-string v0, "AVI Header List not found"

    .line 1131
    .line 1132
    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    throw v0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
