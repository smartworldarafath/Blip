.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field public p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


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
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 36
    .line 37
    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 38
    .line 39
    new-instance v1, Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 40
    .line 41
    invoke-direct {v1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 45
    .line 46
    .line 47
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    iput-wide v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    new-array v2, v1, [J

    .line 56
    .line 57
    iput-object v2, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    .line 58
    .line 59
    new-array v1, v1, [J

    .line 60
    .line 61
    iput-object v1, v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 67
    .line 68
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
    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v2, 0x464c56

    .line 20
    .line 21
    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/lit16 v0, v0, 0xfa

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v1, p1, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->p(IZ)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :cond_2
    :goto_0
    return v1
.end method

.method public final c(JJ)V
    .locals 0

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 10
    .line 11
    iput-boolean p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 16
    .line 17
    :goto_0
    iput p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    .line 18
    .line 19
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 11
    .line 12
    const/16 v5, 0x8

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    if-eq v2, v8, :cond_28

    .line 19
    .line 20
    const/4 v10, 0x3

    .line 21
    if-eq v2, v6, :cond_27

    .line 22
    .line 23
    if-eq v2, v10, :cond_25

    .line 24
    .line 25
    if-ne v2, v7, :cond_24

    .line 26
    .line 27
    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    .line 28
    .line 29
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide/16 v17, 0x3e8

    .line 35
    .line 36
    iget-object v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->e:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->i:J

    .line 41
    .line 42
    move-wide/from16 v19, v3

    .line 43
    .line 44
    iget-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 45
    .line 46
    add-long v3, v19, v2

    .line 47
    .line 48
    :goto_1
    move-wide/from16 v20, v3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    .line 52
    .line 53
    cmp-long v2, v2, v13

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    const-wide/16 v20, 0x0

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_2
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->k:I

    .line 64
    .line 65
    const/4 v3, 0x7

    .line 66
    const-string v4, "video/x-flv"

    .line 67
    .line 68
    if-ne v2, v5, :cond_e

    .line 69
    .line 70
    iget-object v12, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 71
    .line 72
    if-eqz v12, :cond_e

    .line 73
    .line 74
    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 79
    .line 80
    new-instance v12, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 81
    .line 82
    invoke-direct {v12, v13, v14}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v2, v12}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 86
    .line 87
    .line 88
    iput-boolean v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 89
    .line 90
    :cond_3
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    iget-object v15, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 97
    .line 98
    move/from16 v16, v7

    .line 99
    .line 100
    iget-boolean v7, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->b:Z

    .line 101
    .line 102
    move/from16 v22, v10

    .line 103
    .line 104
    const/16 v10, 0xa

    .line 105
    .line 106
    if-nez v7, :cond_9

    .line 107
    .line 108
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    shr-int/lit8 v17, v7, 0x4

    .line 113
    .line 114
    and-int/lit8 v13, v17, 0xf

    .line 115
    .line 116
    iput v13, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    .line 117
    .line 118
    if-ne v13, v6, :cond_4

    .line 119
    .line 120
    shr-int/lit8 v3, v7, 0x2

    .line 121
    .line 122
    and-int/lit8 v3, v3, 0x3

    .line 123
    .line 124
    sget-object v5, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->e:[I

    .line 125
    .line 126
    aget v3, v5, v3

    .line 127
    .line 128
    new-instance v5, Landroidx/media3/common/Format$Builder;

    .line 129
    .line 130
    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 138
    .line 139
    const-string v7, "audio/mpeg"

    .line 140
    .line 141
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 146
    .line 147
    iput v8, v5, Landroidx/media3/common/Format$Builder;->I:I

    .line 148
    .line 149
    iput v3, v5, Landroidx/media3/common/Format$Builder;->K:I

    .line 150
    .line 151
    new-instance v3, Landroidx/media3/common/Format;

    .line 152
    .line 153
    invoke-direct {v3, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v15, v3}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 157
    .line 158
    .line 159
    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    if-eq v13, v3, :cond_7

    .line 163
    .line 164
    if-ne v13, v5, :cond_5

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    if-ne v13, v10, :cond_6

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_6
    new-instance v0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    .line 171
    .line 172
    iget v1, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v3, "Audio format not supported: "

    .line 177
    .line 178
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_7
    :goto_3
    if-ne v13, v3, :cond_8

    .line 193
    .line 194
    const-string v3, "audio/g711-alaw"

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    const-string v3, "audio/g711-mlaw"

    .line 198
    .line 199
    :goto_4
    new-instance v5, Landroidx/media3/common/Format$Builder;

    .line 200
    .line 201
    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    iput-object v7, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 215
    .line 216
    iput v8, v5, Landroidx/media3/common/Format$Builder;->I:I

    .line 217
    .line 218
    const/16 v3, 0x1f40

    .line 219
    .line 220
    iput v3, v5, Landroidx/media3/common/Format$Builder;->K:I

    .line 221
    .line 222
    new-instance v3, Landroidx/media3/common/Format;

    .line 223
    .line 224
    invoke-direct {v3, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v15, v3}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 228
    .line 229
    .line 230
    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    .line 231
    .line 232
    :goto_5
    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->b:Z

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    invoke-virtual {v12, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 236
    .line 237
    .line 238
    :goto_6
    iget-object v3, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 239
    .line 240
    iget v5, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    .line 241
    .line 242
    if-ne v5, v6, :cond_a

    .line 243
    .line 244
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-interface {v3, v4, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 252
    .line 253
    const/16 v24, 0x0

    .line 254
    .line 255
    const/16 v25, 0x0

    .line 256
    .line 257
    const/16 v22, 0x1

    .line 258
    .line 259
    move-object/from16 v19, v2

    .line 260
    .line 261
    move/from16 v23, v4

    .line 262
    .line 263
    invoke-interface/range {v19 .. v25}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 264
    .line 265
    .line 266
    :goto_7
    move v2, v8

    .line 267
    goto/16 :goto_11

    .line 268
    .line 269
    :cond_a
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-nez v5, :cond_c

    .line 274
    .line 275
    iget-boolean v7, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    .line 276
    .line 277
    if-nez v7, :cond_c

    .line 278
    .line 279
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    new-array v7, v5, [B

    .line 284
    .line 285
    invoke-virtual {v12, v7, v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 286
    .line 287
    .line 288
    new-instance v10, Landroidx/media3/common/util/ParsableBitArray;

    .line 289
    .line 290
    invoke-direct {v10, v5, v7}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 291
    .line 292
    .line 293
    invoke-static {v10, v9}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    new-instance v10, Landroidx/media3/common/Format$Builder;

    .line 298
    .line 299
    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 307
    .line 308
    const-string v4, "audio/mp4a-latm"

    .line 309
    .line 310
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 315
    .line 316
    iget-object v4, v5, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    .line 317
    .line 318
    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 319
    .line 320
    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->b:I

    .line 321
    .line 322
    iput v4, v10, Landroidx/media3/common/Format$Builder;->I:I

    .line 323
    .line 324
    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->a:I

    .line 325
    .line 326
    iput v4, v10, Landroidx/media3/common/Format$Builder;->K:I

    .line 327
    .line 328
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    iput-object v4, v10, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 333
    .line 334
    new-instance v4, Landroidx/media3/common/Format;

    .line 335
    .line 336
    invoke-direct {v4, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 337
    .line 338
    .line 339
    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 340
    .line 341
    .line 342
    iput-boolean v8, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->c:Z

    .line 343
    .line 344
    :cond_b
    move v2, v9

    .line 345
    goto/16 :goto_11

    .line 346
    .line 347
    :cond_c
    iget v4, v2, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->d:I

    .line 348
    .line 349
    if-ne v4, v10, :cond_d

    .line 350
    .line 351
    if-ne v5, v8, :cond_b

    .line 352
    .line 353
    :cond_d
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    invoke-interface {v3, v4, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 361
    .line 362
    const/16 v24, 0x0

    .line 363
    .line 364
    const/16 v25, 0x0

    .line 365
    .line 366
    const/16 v22, 0x1

    .line 367
    .line 368
    move-object/from16 v19, v2

    .line 369
    .line 370
    move/from16 v23, v4

    .line 371
    .line 372
    invoke-interface/range {v19 .. v25}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 373
    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_e
    move/from16 v16, v7

    .line 377
    .line 378
    move/from16 v22, v10

    .line 379
    .line 380
    const/16 v12, 0x9

    .line 381
    .line 382
    if-ne v2, v12, :cond_18

    .line 383
    .line 384
    iget-object v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 385
    .line 386
    if-eqz v7, :cond_18

    .line 387
    .line 388
    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 389
    .line 390
    if-nez v2, :cond_f

    .line 391
    .line 392
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 393
    .line 394
    new-instance v7, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 395
    .line 396
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    invoke-direct {v7, v12, v13}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v2, v7}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 405
    .line 406
    .line 407
    iput-boolean v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 408
    .line 409
    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 410
    .line 411
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 419
    .line 420
    .line 421
    move-result v10

    .line 422
    shr-int/lit8 v12, v10, 0x4

    .line 423
    .line 424
    and-int/lit8 v12, v12, 0xf

    .line 425
    .line 426
    and-int/lit8 v10, v10, 0xf

    .line 427
    .line 428
    if-ne v10, v3, :cond_17

    .line 429
    .line 430
    iput v12, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->g:I

    .line 431
    .line 432
    const/4 v3, 0x5

    .line 433
    if-eq v12, v3, :cond_10

    .line 434
    .line 435
    move v3, v8

    .line 436
    goto :goto_8

    .line 437
    :cond_10
    move v3, v9

    .line 438
    :goto_8
    if-eqz v3, :cond_16

    .line 439
    .line 440
    iget-object v3, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 441
    .line 442
    iget-object v10, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 443
    .line 444
    iget-object v12, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 445
    .line 446
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    move/from16 v14, v22

    .line 451
    .line 452
    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->f(I)V

    .line 453
    .line 454
    .line 455
    iget-object v14, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 456
    .line 457
    iget v15, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 458
    .line 459
    move/from16 v19, v5

    .line 460
    .line 461
    add-int/lit8 v5, v15, 0x1

    .line 462
    .line 463
    iput v5, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 464
    .line 465
    move/from16 v23, v6

    .line 466
    .line 467
    aget-byte v6, v14, v15

    .line 468
    .line 469
    and-int/lit16 v6, v6, 0xff

    .line 470
    .line 471
    shl-int/lit8 v6, v6, 0x18

    .line 472
    .line 473
    shr-int/lit8 v6, v6, 0x8

    .line 474
    .line 475
    add-int/lit8 v8, v15, 0x2

    .line 476
    .line 477
    iput v8, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 478
    .line 479
    aget-byte v5, v14, v5

    .line 480
    .line 481
    and-int/lit16 v5, v5, 0xff

    .line 482
    .line 483
    shl-int/lit8 v5, v5, 0x8

    .line 484
    .line 485
    or-int/2addr v5, v6

    .line 486
    const/16 v22, 0x3

    .line 487
    .line 488
    add-int/lit8 v15, v15, 0x3

    .line 489
    .line 490
    iput v15, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 491
    .line 492
    aget-byte v6, v14, v8

    .line 493
    .line 494
    and-int/lit16 v6, v6, 0xff

    .line 495
    .line 496
    or-int/2addr v5, v6

    .line 497
    int-to-long v5, v5

    .line 498
    mul-long v5, v5, v17

    .line 499
    .line 500
    add-long v29, v5, v20

    .line 501
    .line 502
    if-nez v13, :cond_12

    .line 503
    .line 504
    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    .line 505
    .line 506
    if-nez v5, :cond_12

    .line 507
    .line 508
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 509
    .line 510
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    new-array v5, v5, [B

    .line 515
    .line 516
    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 520
    .line 521
    .line 522
    move-result v6

    .line 523
    invoke-virtual {v7, v5, v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 524
    .line 525
    .line 526
    invoke-static {v3}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    iget v5, v3, Landroidx/media3/extractor/AvcConfig;->b:I

    .line 531
    .line 532
    iput v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    .line 533
    .line 534
    new-instance v5, Landroidx/media3/common/Format$Builder;

    .line 535
    .line 536
    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 544
    .line 545
    const-string v4, "video/avc"

    .line 546
    .line 547
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 552
    .line 553
    iget-object v4, v3, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    .line 554
    .line 555
    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 556
    .line 557
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->c:I

    .line 558
    .line 559
    iput v4, v5, Landroidx/media3/common/Format$Builder;->v:I

    .line 560
    .line 561
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->d:I

    .line 562
    .line 563
    iput v4, v5, Landroidx/media3/common/Format$Builder;->w:I

    .line 564
    .line 565
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->k:F

    .line 566
    .line 567
    iput v4, v5, Landroidx/media3/common/Format$Builder;->D:F

    .line 568
    .line 569
    iget-object v3, v3, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    .line 570
    .line 571
    iput-object v3, v5, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 572
    .line 573
    new-instance v3, Landroidx/media3/common/Format;

    .line 574
    .line 575
    invoke-direct {v3, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 576
    .line 577
    .line 578
    invoke-interface {v10, v3}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 579
    .line 580
    .line 581
    const/4 v4, 0x1

    .line 582
    iput-boolean v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    .line 583
    .line 584
    :cond_11
    :goto_9
    move v2, v9

    .line 585
    goto :goto_c

    .line 586
    :cond_12
    const/4 v4, 0x1

    .line 587
    if-ne v13, v4, :cond_11

    .line 588
    .line 589
    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->e:Z

    .line 590
    .line 591
    if-eqz v5, :cond_11

    .line 592
    .line 593
    iget v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->g:I

    .line 594
    .line 595
    if-ne v5, v4, :cond_13

    .line 596
    .line 597
    move/from16 v31, v4

    .line 598
    .line 599
    goto :goto_a

    .line 600
    :cond_13
    move/from16 v31, v9

    .line 601
    .line 602
    :goto_a
    iget-boolean v5, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->f:Z

    .line 603
    .line 604
    if-nez v5, :cond_14

    .line 605
    .line 606
    if-nez v31, :cond_14

    .line 607
    .line 608
    goto :goto_9

    .line 609
    :cond_14
    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 610
    .line 611
    aput-byte v9, v5, v9

    .line 612
    .line 613
    aput-byte v9, v5, v4

    .line 614
    .line 615
    aput-byte v9, v5, v23

    .line 616
    .line 617
    iget v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    .line 618
    .line 619
    rsub-int/lit8 v4, v4, 0x4

    .line 620
    .line 621
    move/from16 v32, v9

    .line 622
    .line 623
    :goto_b
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    if-lez v5, :cond_15

    .line 628
    .line 629
    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 630
    .line 631
    iget v6, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->d:I

    .line 632
    .line 633
    invoke-virtual {v7, v5, v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 640
    .line 641
    .line 642
    move-result v5

    .line 643
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 644
    .line 645
    .line 646
    move/from16 v6, v16

    .line 647
    .line 648
    invoke-interface {v10, v6, v3}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 649
    .line 650
    .line 651
    add-int/lit8 v32, v32, 0x4

    .line 652
    .line 653
    invoke-interface {v10, v5, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 654
    .line 655
    .line 656
    add-int v32, v32, v5

    .line 657
    .line 658
    const/16 v16, 0x4

    .line 659
    .line 660
    goto :goto_b

    .line 661
    :cond_15
    iget-object v3, v2, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 662
    .line 663
    const/16 v33, 0x0

    .line 664
    .line 665
    const/16 v34, 0x0

    .line 666
    .line 667
    move-object/from16 v28, v3

    .line 668
    .line 669
    invoke-interface/range {v28 .. v34}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 670
    .line 671
    .line 672
    const/4 v4, 0x1

    .line 673
    iput-boolean v4, v2, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->f:Z

    .line 674
    .line 675
    const/4 v2, 0x1

    .line 676
    :goto_c
    if-eqz v2, :cond_20

    .line 677
    .line 678
    const/4 v2, 0x1

    .line 679
    goto :goto_d

    .line 680
    :cond_16
    move/from16 v23, v6

    .line 681
    .line 682
    goto/16 :goto_10

    .line 683
    .line 684
    :goto_d
    const/4 v8, 0x1

    .line 685
    goto/16 :goto_11

    .line 686
    .line 687
    :cond_17
    new-instance v0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    .line 688
    .line 689
    const-string v1, "Video format not supported: "

    .line 690
    .line 691
    invoke-static {v10, v1}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0

    .line 699
    :cond_18
    move/from16 v19, v5

    .line 700
    .line 701
    move/from16 v23, v6

    .line 702
    .line 703
    const/16 v3, 0x12

    .line 704
    .line 705
    if-ne v2, v3, :cond_21

    .line 706
    .line 707
    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 708
    .line 709
    if-nez v2, :cond_21

    .line 710
    .line 711
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    move/from16 v4, v23

    .line 723
    .line 724
    if-eq v3, v4, :cond_19

    .line 725
    .line 726
    goto/16 :goto_f

    .line 727
    .line 728
    :cond_19
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    const-string v4, "onMetaData"

    .line 733
    .line 734
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    if-nez v3, :cond_1a

    .line 739
    .line 740
    goto/16 :goto_f

    .line 741
    .line 742
    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-nez v3, :cond_1b

    .line 747
    .line 748
    goto/16 :goto_f

    .line 749
    .line 750
    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    move/from16 v4, v19

    .line 755
    .line 756
    if-eq v3, v4, :cond_1c

    .line 757
    .line 758
    goto/16 :goto_f

    .line 759
    .line 760
    :cond_1c
    invoke-static {v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    const-string v3, "duration"

    .line 765
    .line 766
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    instance-of v4, v3, Ljava/lang/Double;

    .line 771
    .line 772
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    if-eqz v4, :cond_1d

    .line 778
    .line 779
    check-cast v3, Ljava/lang/Double;

    .line 780
    .line 781
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 782
    .line 783
    .line 784
    move-result-wide v3

    .line 785
    const-wide/16 v7, 0x0

    .line 786
    .line 787
    cmpl-double v7, v3, v7

    .line 788
    .line 789
    if-lez v7, :cond_1d

    .line 790
    .line 791
    mul-double/2addr v3, v5

    .line 792
    double-to-long v3, v3

    .line 793
    iput-wide v3, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    .line 794
    .line 795
    :cond_1d
    const-string v3, "keyframes"

    .line 796
    .line 797
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v2

    .line 801
    instance-of v3, v2, Ljava/util/Map;

    .line 802
    .line 803
    if-eqz v3, :cond_1f

    .line 804
    .line 805
    check-cast v2, Ljava/util/Map;

    .line 806
    .line 807
    const-string v3, "filepositions"

    .line 808
    .line 809
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    const-string v4, "times"

    .line 814
    .line 815
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    instance-of v4, v3, Ljava/util/List;

    .line 820
    .line 821
    if-eqz v4, :cond_1f

    .line 822
    .line 823
    instance-of v4, v2, Ljava/util/List;

    .line 824
    .line 825
    if-eqz v4, :cond_1f

    .line 826
    .line 827
    check-cast v3, Ljava/util/List;

    .line 828
    .line 829
    check-cast v2, Ljava/util/List;

    .line 830
    .line 831
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    new-array v7, v4, [J

    .line 836
    .line 837
    iput-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    .line 838
    .line 839
    new-array v7, v4, [J

    .line 840
    .line 841
    iput-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    .line 842
    .line 843
    move v7, v9

    .line 844
    :goto_e
    if-ge v7, v4, :cond_1f

    .line 845
    .line 846
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v10

    .line 854
    instance-of v12, v10, Ljava/lang/Double;

    .line 855
    .line 856
    if-eqz v12, :cond_1e

    .line 857
    .line 858
    instance-of v12, v8, Ljava/lang/Double;

    .line 859
    .line 860
    if-eqz v12, :cond_1e

    .line 861
    .line 862
    iget-object v12, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    .line 863
    .line 864
    check-cast v10, Ljava/lang/Double;

    .line 865
    .line 866
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 867
    .line 868
    .line 869
    move-result-wide v13

    .line 870
    mul-double/2addr v13, v5

    .line 871
    double-to-long v13, v13

    .line 872
    aput-wide v13, v12, v7

    .line 873
    .line 874
    iget-object v10, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    .line 875
    .line 876
    check-cast v8, Ljava/lang/Double;

    .line 877
    .line 878
    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    .line 879
    .line 880
    .line 881
    move-result-wide v12

    .line 882
    aput-wide v12, v10, v7

    .line 883
    .line 884
    add-int/lit8 v7, v7, 0x1

    .line 885
    .line 886
    goto :goto_e

    .line 887
    :cond_1e
    new-array v2, v9, [J

    .line 888
    .line 889
    iput-object v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    .line 890
    .line 891
    new-array v2, v9, [J

    .line 892
    .line 893
    iput-object v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    .line 894
    .line 895
    :cond_1f
    :goto_f
    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    .line 896
    .line 897
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    cmp-long v4, v2, v26

    .line 903
    .line 904
    if-eqz v4, :cond_20

    .line 905
    .line 906
    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 907
    .line 908
    new-instance v5, Landroidx/media3/extractor/IndexSeekMap;

    .line 909
    .line 910
    iget-object v6, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->d:[J

    .line 911
    .line 912
    iget-object v7, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->c:[J

    .line 913
    .line 914
    invoke-direct {v5, v2, v3, v6, v7}, Landroidx/media3/extractor/IndexSeekMap;-><init>(J[J[J)V

    .line 915
    .line 916
    .line 917
    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 918
    .line 919
    .line 920
    const/4 v4, 0x1

    .line 921
    iput-boolean v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->n:Z

    .line 922
    .line 923
    :cond_20
    :goto_10
    move v2, v9

    .line 924
    goto/16 :goto_d

    .line 925
    .line 926
    :cond_21
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    .line 927
    .line 928
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 929
    .line 930
    .line 931
    move v2, v9

    .line 932
    move v8, v2

    .line 933
    :goto_11
    iget-boolean v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    .line 934
    .line 935
    if-nez v3, :cond_23

    .line 936
    .line 937
    if-eqz v2, :cond_23

    .line 938
    .line 939
    const/4 v4, 0x1

    .line 940
    iput-boolean v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->h:Z

    .line 941
    .line 942
    iget-wide v2, v11, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->b:J

    .line 943
    .line 944
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    cmp-long v2, v2, v26

    .line 950
    .line 951
    if-nez v2, :cond_22

    .line 952
    .line 953
    iget-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 954
    .line 955
    neg-long v2, v2

    .line 956
    goto :goto_12

    .line 957
    :cond_22
    const-wide/16 v2, 0x0

    .line 958
    .line 959
    :goto_12
    iput-wide v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->i:J

    .line 960
    .line 961
    :cond_23
    const/4 v6, 0x4

    .line 962
    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    .line 963
    .line 964
    const/4 v4, 0x2

    .line 965
    iput v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 966
    .line 967
    if-eqz v8, :cond_0

    .line 968
    .line 969
    return v9

    .line 970
    :cond_24
    invoke-static {}, Lio/sentry/d;->d()V

    .line 971
    .line 972
    .line 973
    return v9

    .line 974
    :cond_25
    const-wide/16 v17, 0x3e8

    .line 975
    .line 976
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 977
    .line 978
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 979
    .line 980
    const/16 v4, 0xb

    .line 981
    .line 982
    const/4 v5, 0x1

    .line 983
    invoke-interface {v1, v3, v9, v4, v5}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 984
    .line 985
    .line 986
    move-result v3

    .line 987
    if-nez v3, :cond_26

    .line 988
    .line 989
    goto :goto_13

    .line 990
    :cond_26
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->k:I

    .line 998
    .line 999
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    .line 1004
    .line 1005
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    int-to-long v3, v3

    .line 1010
    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 1011
    .line 1012
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    shl-int/lit8 v3, v3, 0x18

    .line 1017
    .line 1018
    int-to-long v3, v3

    .line 1019
    iget-wide v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 1020
    .line 1021
    or-long/2addr v3, v5

    .line 1022
    mul-long v3, v3, v17

    .line 1023
    .line 1024
    iput-wide v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->m:J

    .line 1025
    .line 1026
    const/4 v14, 0x3

    .line 1027
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1028
    .line 1029
    .line 1030
    const/4 v6, 0x4

    .line 1031
    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 1032
    .line 1033
    goto/16 :goto_0

    .line 1034
    .line 1035
    :cond_27
    move v14, v10

    .line 1036
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    .line 1037
    .line 1038
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1039
    .line 1040
    .line 1041
    iput v9, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    .line 1042
    .line 1043
    iput v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 1044
    .line 1045
    goto/16 :goto_0

    .line 1046
    .line 1047
    :cond_28
    iget-object v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1048
    .line 1049
    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1050
    .line 1051
    const/16 v2, 0x9

    .line 1052
    .line 1053
    const/4 v5, 0x1

    .line 1054
    invoke-interface {v1, v4, v9, v2, v5}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v4

    .line 1058
    if-nez v4, :cond_29

    .line 1059
    .line 1060
    :goto_13
    const/4 v0, -0x1

    .line 1061
    return v0

    .line 1062
    :cond_29
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1063
    .line 1064
    .line 1065
    const/4 v6, 0x4

    .line 1066
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 1070
    .line 1071
    .line 1072
    move-result v4

    .line 1073
    and-int/lit8 v5, v4, 0x4

    .line 1074
    .line 1075
    if-eqz v5, :cond_2a

    .line 1076
    .line 1077
    const/4 v5, 0x1

    .line 1078
    goto :goto_14

    .line 1079
    :cond_2a
    move v5, v9

    .line 1080
    :goto_14
    and-int/lit8 v4, v4, 0x1

    .line 1081
    .line 1082
    if-eqz v4, :cond_2b

    .line 1083
    .line 1084
    const/4 v9, 0x1

    .line 1085
    :cond_2b
    if-eqz v5, :cond_2c

    .line 1086
    .line 1087
    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 1088
    .line 1089
    if-nez v4, :cond_2c

    .line 1090
    .line 1091
    new-instance v4, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 1092
    .line 1093
    iget-object v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 1094
    .line 1095
    const/16 v6, 0x8

    .line 1096
    .line 1097
    const/4 v7, 0x1

    .line 1098
    invoke-interface {v5, v6, v7}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    invoke-direct {v4, v5}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 1103
    .line 1104
    .line 1105
    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->o:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 1106
    .line 1107
    :cond_2c
    if-eqz v9, :cond_2d

    .line 1108
    .line 1109
    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 1110
    .line 1111
    if-nez v4, :cond_2d

    .line 1112
    .line 1113
    new-instance v4, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 1114
    .line 1115
    iget-object v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 1116
    .line 1117
    const/16 v2, 0x9

    .line 1118
    .line 1119
    const/4 v6, 0x2

    .line 1120
    invoke-interface {v5, v2, v6}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    invoke-direct {v4, v2}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 1125
    .line 1126
    .line 1127
    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->p:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 1128
    .line 1129
    goto :goto_15

    .line 1130
    :cond_2d
    const/4 v6, 0x2

    .line 1131
    :goto_15
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 1132
    .line 1133
    invoke-interface {v2}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1137
    .line 1138
    .line 1139
    move-result v2

    .line 1140
    const/4 v3, 0x5

    .line 1141
    sub-int/2addr v2, v3

    .line 1142
    iput v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->j:I

    .line 1143
    .line 1144
    iput v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->g:I

    .line 1145
    .line 1146
    goto/16 :goto_0
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    if-le v0, v3, :cond_0

    .line 10
    .line 11
    array-length v2, v2

    .line 12
    mul-int/lit8 v2, v2, 0x2

    .line 13
    .line 14
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    invoke-virtual {v1, v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 33
    .line 34
    iget p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->l:I

    .line 35
    .line 36
    invoke-interface {p1, v0, v4, p0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method
