.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Z

.field public final d:Z

.field public final e:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:I

.field public i:Landroidx/media3/common/Metadata;

.field public j:Landroidx/media3/extractor/FlacStreamMetadata;

.field public k:I

.field public l:I

.field public m:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2a

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->a:[B

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    iput-boolean v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->c:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->d:Z

    .line 26
    .line 27
    new-instance v0, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->e:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 33
    .line 34
    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0, p0}, Landroidx/media3/extractor/FlacMetadataReader;->a(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/common/Metadata;

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 12
    .line 13
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 14
    .line 15
    invoke-virtual {p1, v2, p0, v1, p0}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const-wide/32 v2, 0x664c6143

    .line 23
    .line 24
    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    :cond_0
    return p0
.end method

.method public final c(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->m:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 26
    .line 27
    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 6
    .line 7
    iget-boolean v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->d:Z

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v2, :cond_28

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->a:[B

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    if-eq v2, v4, :cond_27

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x4

    .line 20
    const/4 v10, 0x3

    .line 21
    if-eq v2, v7, :cond_25

    .line 22
    .line 23
    const/4 v11, 0x7

    .line 24
    const/4 v12, 0x6

    .line 25
    if-eq v2, v10, :cond_1b

    .line 26
    .line 27
    const-wide/16 v13, -0x1

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    if-eq v2, v9, :cond_15

    .line 31
    .line 32
    if-ne v2, v3, :cond_14

    .line 33
    .line 34
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v3, v2, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    move-object/from16 v3, p2

    .line 53
    .line 54
    invoke-virtual {v2, v1, v3}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0

    .line 59
    :cond_0
    iget-wide v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 60
    .line 61
    cmp-long v2, v2, v13

    .line 62
    .line 63
    const/4 v3, -0x1

    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 67
    .line 68
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 72
    .line 73
    .line 74
    new-array v6, v4, [B

    .line 75
    .line 76
    invoke-interface {v1, v6, v5, v4}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 77
    .line 78
    .line 79
    aget-byte v6, v6, v5

    .line 80
    .line 81
    and-int/2addr v6, v4

    .line 82
    if-ne v6, v4, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move v4, v5

    .line 86
    :goto_0
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 87
    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move v11, v12

    .line 93
    :goto_1
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    .line 94
    .line 95
    invoke-direct {v6, v11}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iget-object v7, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 99
    .line 100
    move v9, v5

    .line 101
    :goto_2
    if-ge v9, v11, :cond_4

    .line 102
    .line 103
    sub-int v10, v11, v9

    .line 104
    .line 105
    invoke-interface {v1, v7, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->h([BII)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-ne v10, v3, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    add-int/2addr v9, v10

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    :goto_3
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 118
    .line 119
    .line 120
    new-instance v1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v2, v4, v1}, Landroidx/media3/extractor/FlacFrameReader;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    iget-wide v1, v1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    .line 132
    .line 133
    iput-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 134
    .line 135
    return v5

    .line 136
    :cond_5
    invoke-static {v8, v8}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    throw v0

    .line 141
    :cond_6
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 142
    .line 143
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 144
    .line 145
    const-wide/32 v7, 0xf4240

    .line 146
    .line 147
    .line 148
    const v9, 0x8000

    .line 149
    .line 150
    .line 151
    if-ge v6, v9, :cond_9

    .line 152
    .line 153
    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 154
    .line 155
    sub-int/2addr v9, v6

    .line 156
    invoke-interface {v1, v10, v6, v9}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v1, v3, :cond_7

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move v4, v5

    .line 164
    :goto_4
    if-nez v4, :cond_8

    .line 165
    .line 166
    add-int/2addr v6, v1

    .line 167
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_a

    .line 176
    .line 177
    iget-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 178
    .line 179
    mul-long/2addr v1, v7

    .line 180
    iget-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 181
    .line 182
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 183
    .line 184
    iget v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 185
    .line 186
    int-to-long v4, v4

    .line 187
    div-long v7, v1, v4

    .line 188
    .line 189
    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 190
    .line 191
    iget v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 192
    .line 193
    const/4 v11, 0x0

    .line 194
    const/4 v12, 0x0

    .line 195
    const/4 v9, 0x1

    .line 196
    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 197
    .line 198
    .line 199
    return v3

    .line 200
    :cond_9
    move v4, v5

    .line 201
    :cond_a
    :goto_5
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 202
    .line 203
    iget v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 204
    .line 205
    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    .line 206
    .line 207
    if-ge v3, v6, :cond_b

    .line 208
    .line 209
    sub-int/2addr v6, v3

    .line 210
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 219
    .line 220
    .line 221
    :cond_b
    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 227
    .line 228
    :goto_6
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 229
    .line 230
    const/16 v9, 0x10

    .line 231
    .line 232
    sub-int/2addr v6, v9

    .line 233
    iget-object v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->e:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 234
    .line 235
    if-gt v3, v6, :cond_d

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 238
    .line 239
    .line 240
    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 241
    .line 242
    iget v11, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:I

    .line 243
    .line 244
    invoke-static {v2, v6, v11, v10}, Landroidx/media3/extractor/FlacFrameReader;->b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_c

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 251
    .line 252
    .line 253
    iget-wide v3, v10, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_d
    if-eqz v4, :cond_11

    .line 260
    .line 261
    :goto_7
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 262
    .line 263
    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    .line 264
    .line 265
    sub-int v6, v4, v6

    .line 266
    .line 267
    if-gt v3, v6, :cond_10

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 270
    .line 271
    .line 272
    :try_start_0
    iget-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 273
    .line 274
    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:I

    .line 275
    .line 276
    invoke-static {v2, v4, v6, v10}, Landroidx/media3/extractor/FlacFrameReader;->b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    .line 277
    .line 278
    .line 279
    move-result v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_8

    .line 281
    :catch_0
    move v4, v5

    .line 282
    :goto_8
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 283
    .line 284
    iget v11, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 285
    .line 286
    if-le v6, v11, :cond_e

    .line 287
    .line 288
    move v4, v5

    .line 289
    :cond_e
    if-eqz v4, :cond_f

    .line 290
    .line 291
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 292
    .line 293
    .line 294
    iget-wide v3, v10, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_10
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_11
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 305
    .line 306
    .line 307
    :goto_9
    move-wide v3, v13

    .line 308
    :goto_a
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 309
    .line 310
    sub-int/2addr v6, v1

    .line 311
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 315
    .line 316
    invoke-interface {v1, v6, v2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 317
    .line 318
    .line 319
    iget v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 320
    .line 321
    add-int/2addr v1, v6

    .line 322
    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 323
    .line 324
    cmp-long v6, v3, v13

    .line 325
    .line 326
    if-eqz v6, :cond_12

    .line 327
    .line 328
    iget-wide v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 329
    .line 330
    mul-long/2addr v10, v7

    .line 331
    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 332
    .line 333
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 334
    .line 335
    iget v6, v6, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 336
    .line 337
    int-to-long v6, v6

    .line 338
    div-long v16, v10, v6

    .line 339
    .line 340
    iget-object v15, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 341
    .line 342
    const/16 v20, 0x0

    .line 343
    .line 344
    const/16 v21, 0x0

    .line 345
    .line 346
    const/16 v18, 0x1

    .line 347
    .line 348
    move/from16 v19, v1

    .line 349
    .line 350
    invoke-interface/range {v15 .. v21}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 351
    .line 352
    .line 353
    iput v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:I

    .line 354
    .line 355
    iput-wide v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->o:J

    .line 356
    .line 357
    :cond_12
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 358
    .line 359
    array-length v0, v0

    .line 360
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 361
    .line 362
    sub-int/2addr v0, v1

    .line 363
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-ge v1, v9, :cond_13

    .line 368
    .line 369
    if-ge v0, v9, :cond_13

    .line 370
    .line 371
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 376
    .line 377
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 378
    .line 379
    invoke-static {v1, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 386
    .line 387
    .line 388
    :cond_13
    return v5

    .line 389
    :cond_14
    invoke-static {}, Lio/sentry/d;->d()V

    .line 390
    .line 391
    .line 392
    return v5

    .line 393
    :cond_15
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 394
    .line 395
    .line 396
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 397
    .line 398
    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 399
    .line 400
    .line 401
    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 402
    .line 403
    invoke-interface {v1, v4, v5, v7}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    shr-int/lit8 v4, v2, 0x2

    .line 411
    .line 412
    const/16 v6, 0x3ffe

    .line 413
    .line 414
    if-ne v4, v6, :cond_1a

    .line 415
    .line 416
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 417
    .line 418
    .line 419
    iput v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:I

    .line 420
    .line 421
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 422
    .line 423
    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 424
    .line 425
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 430
    .line 431
    .line 432
    move-result-wide v24

    .line 433
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 439
    .line 440
    iget-object v4, v1, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 441
    .line 442
    if-eqz v4, :cond_16

    .line 443
    .line 444
    iget-object v4, v4, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->a:[J

    .line 445
    .line 446
    array-length v4, v4

    .line 447
    if-lez v4, :cond_16

    .line 448
    .line 449
    new-instance v4, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    .line 450
    .line 451
    invoke-direct {v4, v1, v6, v7}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    .line 452
    .line 453
    .line 454
    move/from16 v29, v5

    .line 455
    .line 456
    goto/16 :goto_e

    .line 457
    .line 458
    :cond_16
    cmp-long v4, v24, v13

    .line 459
    .line 460
    if-eqz v4, :cond_19

    .line 461
    .line 462
    iget-wide v8, v1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 463
    .line 464
    const-wide/16 v10, 0x0

    .line 465
    .line 466
    cmp-long v4, v8, v10

    .line 467
    .line 468
    if-lez v4, :cond_19

    .line 469
    .line 470
    new-instance v15, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 471
    .line 472
    iget v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:I

    .line 473
    .line 474
    iget v8, v1, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 475
    .line 476
    new-instance v9, Lp;

    .line 477
    .line 478
    const/16 v10, 0xa

    .line 479
    .line 480
    invoke-direct {v9, v10, v1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    new-instance v10, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    .line 484
    .line 485
    invoke-direct {v10, v1, v4}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    .line 489
    .line 490
    .line 491
    move-result-wide v18

    .line 492
    iget-wide v13, v1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 493
    .line 494
    iget v4, v1, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 495
    .line 496
    if-lez v4, :cond_17

    .line 497
    .line 498
    move/from16 v29, v5

    .line 499
    .line 500
    move-wide/from16 v22, v6

    .line 501
    .line 502
    int-to-long v5, v4

    .line 503
    int-to-long v3, v8

    .line 504
    add-long/2addr v5, v3

    .line 505
    const-wide/16 v3, 0x2

    .line 506
    .line 507
    div-long/2addr v5, v3

    .line 508
    const-wide/16 v3, 0x1

    .line 509
    .line 510
    add-long/2addr v5, v3

    .line 511
    :goto_b
    move-wide/from16 v26, v5

    .line 512
    .line 513
    goto :goto_d

    .line 514
    :cond_17
    move/from16 v29, v5

    .line 515
    .line 516
    move-wide/from16 v22, v6

    .line 517
    .line 518
    iget v3, v1, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 519
    .line 520
    iget v4, v1, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 521
    .line 522
    if-ne v3, v4, :cond_18

    .line 523
    .line 524
    if-lez v3, :cond_18

    .line 525
    .line 526
    int-to-long v3, v3

    .line 527
    goto :goto_c

    .line 528
    :cond_18
    const-wide/16 v3, 0x1000

    .line 529
    .line 530
    :goto_c
    iget v5, v1, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 531
    .line 532
    int-to-long v5, v5

    .line 533
    mul-long/2addr v3, v5

    .line 534
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 535
    .line 536
    int-to-long v5, v1

    .line 537
    mul-long/2addr v3, v5

    .line 538
    const-wide/16 v5, 0x8

    .line 539
    .line 540
    div-long/2addr v3, v5

    .line 541
    const-wide/16 v5, 0x40

    .line 542
    .line 543
    add-long/2addr v5, v3

    .line 544
    goto :goto_b

    .line 545
    :goto_d
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 546
    .line 547
    .line 548
    move-result v28

    .line 549
    move-object/from16 v16, v9

    .line 550
    .line 551
    move-object/from16 v17, v10

    .line 552
    .line 553
    move-wide/from16 v20, v13

    .line 554
    .line 555
    invoke-direct/range {v15 .. v28}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    .line 556
    .line 557
    .line 558
    iput-object v15, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 559
    .line 560
    iget-object v4, v15, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_19
    move/from16 v29, v5

    .line 564
    .line 565
    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 566
    .line 567
    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    .line 568
    .line 569
    .line 570
    move-result-wide v5

    .line 571
    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 572
    .line 573
    .line 574
    :goto_e
    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 575
    .line 576
    .line 577
    const/4 v1, 0x5

    .line 578
    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 579
    .line 580
    return v29

    .line 581
    :cond_1a
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 582
    .line 583
    .line 584
    const-string v0, "First frame does not start with sync code."

    .line 585
    .line 586
    invoke-static {v8, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    throw v0

    .line 591
    :cond_1b
    move/from16 v29, v5

    .line 592
    .line 593
    new-instance v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    .line 594
    .line 595
    iget-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 596
    .line 597
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 598
    .line 599
    .line 600
    iput-object v4, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 601
    .line 602
    move/from16 v4, v29

    .line 603
    .line 604
    :goto_f
    if-nez v4, :cond_24

    .line 605
    .line 606
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 607
    .line 608
    .line 609
    new-instance v4, Landroidx/media3/common/util/ParsableBitArray;

    .line 610
    .line 611
    new-array v5, v9, [B

    .line 612
    .line 613
    invoke-direct {v4, v9, v5}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 614
    .line 615
    .line 616
    move/from16 v7, v29

    .line 617
    .line 618
    invoke-interface {v1, v5, v7, v9}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 626
    .line 627
    .line 628
    move-result v8

    .line 629
    const/16 v13, 0x18

    .line 630
    .line 631
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    add-int/2addr v4, v9

    .line 636
    if-nez v8, :cond_1c

    .line 637
    .line 638
    const/16 v4, 0x26

    .line 639
    .line 640
    new-array v8, v4, [B

    .line 641
    .line 642
    invoke-interface {v1, v8, v7, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 643
    .line 644
    .line 645
    new-instance v4, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 646
    .line 647
    invoke-direct {v4, v9, v8}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(I[B)V

    .line 648
    .line 649
    .line 650
    iput-object v4, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 651
    .line 652
    :goto_10
    move/from16 p2, v5

    .line 653
    .line 654
    goto/16 :goto_15

    .line 655
    .line 656
    :cond_1c
    iget-object v7, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 657
    .line 658
    if-eqz v7, :cond_23

    .line 659
    .line 660
    iget-object v13, v7, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    .line 661
    .line 662
    if-ne v8, v10, :cond_1d

    .line 663
    .line 664
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    .line 665
    .line 666
    invoke-direct {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 667
    .line 668
    .line 669
    iget-object v13, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 670
    .line 671
    const/4 v14, 0x0

    .line 672
    invoke-interface {v1, v13, v14, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 673
    .line 674
    .line 675
    invoke-static {v8}, Landroidx/media3/extractor/FlacMetadataReader;->b(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 676
    .line 677
    .line 678
    move-result-object v25

    .line 679
    new-instance v15, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 680
    .line 681
    iget v4, v7, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 682
    .line 683
    iget v8, v7, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 684
    .line 685
    iget v13, v7, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 686
    .line 687
    iget v14, v7, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 688
    .line 689
    iget v11, v7, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 690
    .line 691
    iget v10, v7, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 692
    .line 693
    iget v12, v7, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 694
    .line 695
    move/from16 v21, v10

    .line 696
    .line 697
    iget-wide v9, v7, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 698
    .line 699
    iget-object v7, v7, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    .line 700
    .line 701
    move/from16 v16, v4

    .line 702
    .line 703
    move-object/from16 v26, v7

    .line 704
    .line 705
    move/from16 v17, v8

    .line 706
    .line 707
    move-wide/from16 v23, v9

    .line 708
    .line 709
    move/from16 v20, v11

    .line 710
    .line 711
    move/from16 v22, v12

    .line 712
    .line 713
    move/from16 v18, v13

    .line 714
    .line 715
    move/from16 v19, v14

    .line 716
    .line 717
    invoke-direct/range {v15 .. v26}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    .line 718
    .line 719
    .line 720
    iput-object v15, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 721
    .line 722
    goto :goto_10

    .line 723
    :cond_1d
    if-ne v8, v9, :cond_1f

    .line 724
    .line 725
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    .line 726
    .line 727
    invoke-direct {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 728
    .line 729
    .line 730
    iget-object v10, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 731
    .line 732
    const/4 v14, 0x0

    .line 733
    invoke-interface {v1, v10, v14, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 737
    .line 738
    .line 739
    invoke-static {v8, v14, v14}, Landroidx/media3/container/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    iget-object v4, v4, Landroidx/media3/container/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    .line 744
    .line 745
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-static {v4}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    if-nez v13, :cond_1e

    .line 754
    .line 755
    :goto_11
    move-object/from16 v19, v4

    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_1e
    invoke-virtual {v13, v4}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    goto :goto_11

    .line 763
    :goto_12
    new-instance v8, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 764
    .line 765
    iget v9, v7, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 766
    .line 767
    iget v10, v7, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 768
    .line 769
    iget v11, v7, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 770
    .line 771
    iget v12, v7, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 772
    .line 773
    iget v13, v7, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 774
    .line 775
    iget v14, v7, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 776
    .line 777
    iget v15, v7, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 778
    .line 779
    move/from16 p2, v5

    .line 780
    .line 781
    iget-wide v4, v7, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 782
    .line 783
    iget-object v7, v7, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 784
    .line 785
    move-wide/from16 v16, v4

    .line 786
    .line 787
    move-object/from16 v18, v7

    .line 788
    .line 789
    invoke-direct/range {v8 .. v19}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    .line 790
    .line 791
    .line 792
    iput-object v8, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 793
    .line 794
    goto :goto_15

    .line 795
    :cond_1f
    move/from16 p2, v5

    .line 796
    .line 797
    const/4 v5, 0x6

    .line 798
    if-ne v8, v5, :cond_22

    .line 799
    .line 800
    if-eqz v3, :cond_20

    .line 801
    .line 802
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 803
    .line 804
    .line 805
    goto :goto_15

    .line 806
    :cond_20
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    .line 807
    .line 808
    invoke-direct {v5, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 809
    .line 810
    .line 811
    iget-object v8, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 812
    .line 813
    const/4 v14, 0x0

    .line 814
    invoke-interface {v1, v8, v14, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 815
    .line 816
    .line 817
    const/4 v9, 0x4

    .line 818
    invoke-virtual {v5, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 819
    .line 820
    .line 821
    invoke-static {v5}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->d(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    new-instance v5, Landroidx/media3/common/Metadata;

    .line 830
    .line 831
    invoke-direct {v5, v4}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 832
    .line 833
    .line 834
    if-nez v13, :cond_21

    .line 835
    .line 836
    :goto_13
    move-object/from16 v19, v5

    .line 837
    .line 838
    goto :goto_14

    .line 839
    :cond_21
    invoke-virtual {v13, v5}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    goto :goto_13

    .line 844
    :goto_14
    new-instance v8, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 845
    .line 846
    iget v9, v7, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    .line 847
    .line 848
    iget v10, v7, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    .line 849
    .line 850
    iget v11, v7, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 851
    .line 852
    iget v12, v7, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    .line 853
    .line 854
    iget v13, v7, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    .line 855
    .line 856
    iget v14, v7, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    .line 857
    .line 858
    iget v15, v7, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    .line 859
    .line 860
    iget-wide v4, v7, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    .line 861
    .line 862
    iget-object v7, v7, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    .line 863
    .line 864
    move-wide/from16 v16, v4

    .line 865
    .line 866
    move-object/from16 v18, v7

    .line 867
    .line 868
    invoke-direct/range {v8 .. v19}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    .line 869
    .line 870
    .line 871
    iput-object v8, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 872
    .line 873
    goto :goto_15

    .line 874
    :cond_22
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 875
    .line 876
    .line 877
    :goto_15
    iget-object v4, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 878
    .line 879
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 880
    .line 881
    iput-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 882
    .line 883
    move/from16 v4, p2

    .line 884
    .line 885
    const/4 v9, 0x4

    .line 886
    const/4 v10, 0x3

    .line 887
    const/4 v11, 0x7

    .line 888
    const/4 v12, 0x6

    .line 889
    const/16 v29, 0x0

    .line 890
    .line 891
    goto/16 :goto_f

    .line 892
    .line 893
    :cond_23
    invoke-static {}, Lfe;->h()V

    .line 894
    .line 895
    .line 896
    const/16 v29, 0x0

    .line 897
    .line 898
    return v29

    .line 899
    :cond_24
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 900
    .line 901
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 905
    .line 906
    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    .line 907
    .line 908
    const/4 v5, 0x6

    .line 909
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    .line 914
    .line 915
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 916
    .line 917
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/common/Metadata;

    .line 918
    .line 919
    invoke-virtual {v1, v6, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 924
    .line 925
    invoke-virtual {v1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    const-string v3, "audio/flac"

    .line 930
    .line 931
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 936
    .line 937
    new-instance v3, Landroidx/media3/common/Format;

    .line 938
    .line 939
    invoke-direct {v3, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 940
    .line 941
    .line 942
    invoke-interface {v2, v3}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 943
    .line 944
    .line 945
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 946
    .line 947
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 948
    .line 949
    invoke-virtual {v2}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    .line 950
    .line 951
    .line 952
    move-result-wide v2

    .line 953
    invoke-interface {v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 954
    .line 955
    .line 956
    const/4 v9, 0x4

    .line 957
    iput v9, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 958
    .line 959
    const/4 v14, 0x0

    .line 960
    return v14

    .line 961
    :cond_25
    move v14, v5

    .line 962
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 963
    .line 964
    invoke-direct {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 965
    .line 966
    .line 967
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 968
    .line 969
    invoke-interface {v1, v3, v14, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 973
    .line 974
    .line 975
    move-result-wide v1

    .line 976
    const-wide/32 v3, 0x664c6143

    .line 977
    .line 978
    .line 979
    cmp-long v1, v1, v3

    .line 980
    .line 981
    if-nez v1, :cond_26

    .line 982
    .line 983
    const/4 v1, 0x3

    .line 984
    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 985
    .line 986
    return v14

    .line 987
    :cond_26
    const-string v0, "Failed to read FLAC stream marker."

    .line 988
    .line 989
    invoke-static {v8, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    throw v0

    .line 994
    :cond_27
    move v14, v5

    .line 995
    array-length v2, v6

    .line 996
    invoke-interface {v1, v6, v14, v2}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 997
    .line 998
    .line 999
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 1000
    .line 1001
    .line 1002
    iput v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 1003
    .line 1004
    return v14

    .line 1005
    :cond_28
    iget-boolean v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->c:Z

    .line 1006
    .line 1007
    xor-int/2addr v2, v4

    .line 1008
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 1009
    .line 1010
    .line 1011
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 1012
    .line 1013
    .line 1014
    move-result-wide v5

    .line 1015
    invoke-static {v1, v2, v3}, Landroidx/media3/extractor/FlacMetadataReader;->a(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/common/Metadata;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v7

    .line 1023
    sub-long/2addr v7, v5

    .line 1024
    long-to-int v3, v7

    .line 1025
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1026
    .line 1027
    .line 1028
    iput-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/common/Metadata;

    .line 1029
    .line 1030
    iput v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:I

    .line 1031
    .line 1032
    const/16 v29, 0x0

    .line 1033
    .line 1034
    return v29
.end method
