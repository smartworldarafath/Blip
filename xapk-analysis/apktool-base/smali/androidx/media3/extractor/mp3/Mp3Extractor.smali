.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final c:Landroidx/media3/extractor/GaplessInfoHolder;

.field public final d:Landroidx/media3/extractor/Id3Peeker;

.field public final e:Landroidx/media3/extractor/DiscardingTrackOutput;

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:Landroidx/media3/extractor/TrackOutput;

.field public i:I

.field public j:Landroidx/media3/common/Metadata;

.field public k:Landroidx/media3/common/Metadata;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:Landroidx/media3/extractor/mp3/Seeker;

.field public r:Z

.field public s:Z

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 19
    .line 20
    new-instance v0, Landroidx/media3/extractor/GaplessInfoHolder;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 33
    .line 34
    new-instance v0, Landroidx/media3/extractor/Id3Peeker;

    .line 35
    .line 36
    invoke-direct {v0}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/Id3Peeker;

    .line 40
    .line 41
    new-instance v0, Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 42
    .line 43
    invoke-direct {v0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->e:Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/TrackOutput;

    .line 49
    .line 50
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->i(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final c(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:I

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 16
    .line 17
    const-wide/16 p1, -0x1

    .line 18
    .line 19
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    .line 20
    .line 21
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->t:J

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 24
    .line 25
    instance-of p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/ExtractorOutput;

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
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/TrackOutput;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 59

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:I

    .line 13
    .line 14
    iget-object v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 15
    .line 16
    const/4 v14, 0x0

    .line 17
    iget-object v15, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, v1, v14}, Landroidx/media3/extractor/mp3/Mp3Extractor;->i(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-object v11, v8

    .line 26
    const/16 p2, 0x0

    .line 27
    .line 28
    const/4 v13, -0x1

    .line 29
    const/4 v14, -0x1

    .line 30
    const-wide/32 v16, 0xf4240

    .line 31
    .line 32
    .line 33
    const-wide/16 v18, 0x1

    .line 34
    .line 35
    const-wide/16 v20, 0x0

    .line 36
    .line 37
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    goto/16 :goto_2c

    .line 43
    .line 44
    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 45
    .line 46
    const/16 p2, 0x0

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 49
    .line 50
    const-wide/32 v16, 0xf4240

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    if-nez v2, :cond_35

    .line 55
    .line 56
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    iget v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 59
    .line 60
    invoke-direct {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 64
    .line 65
    const-wide/16 v18, 0x1

    .line 66
    .line 67
    iget v6, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 68
    .line 69
    invoke-interface {v1, v5, v14, v6}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 70
    .line 71
    .line 72
    iget v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->a:I

    .line 73
    .line 74
    and-int/2addr v5, v4

    .line 75
    iget v6, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    .line 76
    .line 77
    const/16 v7, 0x24

    .line 78
    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    if-eq v6, v4, :cond_1

    .line 82
    .line 83
    move v5, v7

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_1
    const/16 v5, 0x15

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    if-eq v6, v4, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const/16 v5, 0xd

    .line 92
    .line 93
    :goto_2
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 94
    .line 95
    const-wide/16 v20, 0x0

    .line 96
    .line 97
    add-int/lit8 v11, v5, 0x4

    .line 98
    .line 99
    const v12, 0x496e666f

    .line 100
    .line 101
    .line 102
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    const v9, 0x56425249

    .line 108
    .line 109
    .line 110
    const v10, 0x58696e67

    .line 111
    .line 112
    .line 113
    if-lt v6, v11, :cond_4

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eq v5, v10, :cond_6

    .line 123
    .line 124
    if-ne v5, v12, :cond_4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 128
    .line 129
    const/16 v6, 0x28

    .line 130
    .line 131
    if-lt v5, v6, :cond_5

    .line 132
    .line 133
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-ne v5, v9, :cond_5

    .line 141
    .line 142
    move v5, v9

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move v5, v14

    .line 145
    :cond_6
    :goto_3
    const/4 v11, 0x2

    .line 146
    const-wide/16 v24, -0x1

    .line 147
    .line 148
    if-eq v5, v12, :cond_7

    .line 149
    .line 150
    if-eq v5, v9, :cond_8

    .line 151
    .line 152
    if-eq v5, v10, :cond_7

    .line 153
    .line 154
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 155
    .line 156
    .line 157
    move-object/from16 v29, p2

    .line 158
    .line 159
    move-object/from16 v27, v3

    .line 160
    .line 161
    move-object v11, v8

    .line 162
    goto/16 :goto_19

    .line 163
    .line 164
    :cond_7
    move-object/from16 v31, v2

    .line 165
    .line 166
    move-object/from16 v27, v3

    .line 167
    .line 168
    move-object/from16 v28, v8

    .line 169
    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :cond_8
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 173
    .line 174
    .line 175
    move-result-wide v9

    .line 176
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 177
    .line 178
    .line 179
    move-result-wide v26

    .line 180
    const/4 v5, 0x6

    .line 181
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    iget v12, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 189
    .line 190
    move-object/from16 v28, v8

    .line 191
    .line 192
    int-to-long v7, v12

    .line 193
    add-long v34, v26, v7

    .line 194
    .line 195
    int-to-long v7, v5

    .line 196
    add-long v7, v34, v7

    .line 197
    .line 198
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-gtz v5, :cond_9

    .line 203
    .line 204
    move-object/from16 v29, p2

    .line 205
    .line 206
    move-object/from16 v27, v3

    .line 207
    .line 208
    goto/16 :goto_8

    .line 209
    .line 210
    :cond_9
    iget v12, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 211
    .line 212
    int-to-long v13, v5

    .line 213
    iget v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 214
    .line 215
    move-wide/from16 v29, v7

    .line 216
    .line 217
    int-to-long v6, v5

    .line 218
    mul-long/2addr v13, v6

    .line 219
    sub-long v13, v13, v18

    .line 220
    .line 221
    invoke-static {v12, v13, v14}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v32

    .line 225
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 238
    .line 239
    .line 240
    iget v8, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 241
    .line 242
    int-to-long v12, v8

    .line 243
    add-long v26, v26, v12

    .line 244
    .line 245
    new-array v8, v5, [J

    .line 246
    .line 247
    new-array v12, v5, [J

    .line 248
    .line 249
    move-wide/from16 v13, v26

    .line 250
    .line 251
    const/4 v11, 0x0

    .line 252
    :goto_4
    if-ge v11, v5, :cond_e

    .line 253
    .line 254
    move-object/from16 v31, v2

    .line 255
    .line 256
    move-object/from16 v27, v3

    .line 257
    .line 258
    int-to-long v2, v11

    .line 259
    mul-long v2, v2, v32

    .line 260
    .line 261
    move-wide/from16 v36, v2

    .line 262
    .line 263
    int-to-long v2, v5

    .line 264
    div-long v2, v36, v2

    .line 265
    .line 266
    aput-wide v2, v8, v11

    .line 267
    .line 268
    aput-wide v13, v12, v11

    .line 269
    .line 270
    if-eq v7, v4, :cond_d

    .line 271
    .line 272
    const/4 v2, 0x2

    .line 273
    if-eq v7, v2, :cond_c

    .line 274
    .line 275
    const/4 v2, 0x3

    .line 276
    if-eq v7, v2, :cond_b

    .line 277
    .line 278
    const/4 v2, 0x4

    .line 279
    if-eq v7, v2, :cond_a

    .line 280
    .line 281
    move-object/from16 v29, p2

    .line 282
    .line 283
    goto/16 :goto_8

    .line 284
    .line 285
    :cond_a
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    goto :goto_5

    .line 290
    :cond_b
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    goto :goto_5

    .line 295
    :cond_c
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    goto :goto_5

    .line 300
    :cond_d
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    :goto_5
    int-to-long v2, v2

    .line 305
    move/from16 v36, v5

    .line 306
    .line 307
    int-to-long v4, v6

    .line 308
    mul-long/2addr v2, v4

    .line 309
    add-long/2addr v13, v2

    .line 310
    add-int/lit8 v11, v11, 0x1

    .line 311
    .line 312
    move-object/from16 v3, v27

    .line 313
    .line 314
    move-object/from16 v2, v31

    .line 315
    .line 316
    move/from16 v5, v36

    .line 317
    .line 318
    const/4 v4, 0x1

    .line 319
    goto :goto_4

    .line 320
    :cond_e
    move-object/from16 v27, v3

    .line 321
    .line 322
    cmp-long v2, v9, v24

    .line 323
    .line 324
    const-string v3, ", "

    .line 325
    .line 326
    const-string v4, "VbriSeeker"

    .line 327
    .line 328
    if-eqz v2, :cond_f

    .line 329
    .line 330
    cmp-long v2, v9, v29

    .line 331
    .line 332
    if-eqz v2, :cond_f

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v5, "VBRI data size mismatch: "

    .line 337
    .line 338
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-wide/from16 v5, v29

    .line 348
    .line 349
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_f
    move-wide/from16 v5, v29

    .line 361
    .line 362
    :goto_6
    cmp-long v2, v5, v13

    .line 363
    .line 364
    if-eqz v2, :cond_10

    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v7, "VBRI bytes and ToC mismatch (using max): "

    .line 369
    .line 370
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v3, "\nSeeking will be inaccurate."

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    move-wide/from16 v36, v2

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_10
    move-wide/from16 v36, v5

    .line 402
    .line 403
    :goto_7
    new-instance v29, Landroidx/media3/extractor/mp3/VbriSeeker;

    .line 404
    .line 405
    move-object/from16 v30, v8

    .line 406
    .line 407
    move-object/from16 v31, v12

    .line 408
    .line 409
    invoke-direct/range {v29 .. v37}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJJ)V

    .line 410
    .line 411
    .line 412
    :goto_8
    iget v2, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 413
    .line 414
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v11, v28

    .line 418
    .line 419
    goto/16 :goto_19

    .line 420
    .line 421
    :goto_9
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    and-int/lit8 v3, v2, 0x1

    .line 426
    .line 427
    if-eqz v3, :cond_11

    .line 428
    .line 429
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    goto :goto_a

    .line 434
    :cond_11
    const/4 v3, -0x1

    .line 435
    :goto_a
    and-int/lit8 v4, v2, 0x2

    .line 436
    .line 437
    if-eqz v4, :cond_12

    .line 438
    .line 439
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 440
    .line 441
    .line 442
    move-result-wide v6

    .line 443
    move-wide/from16 v43, v6

    .line 444
    .line 445
    goto :goto_b

    .line 446
    :cond_12
    move-wide/from16 v43, v24

    .line 447
    .line 448
    :goto_b
    and-int/lit8 v4, v2, 0x4

    .line 449
    .line 450
    const/4 v6, 0x4

    .line 451
    if-ne v4, v6, :cond_14

    .line 452
    .line 453
    const/16 v4, 0x64

    .line 454
    .line 455
    new-array v6, v4, [J

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    :goto_c
    if-ge v7, v4, :cond_13

    .line 459
    .line 460
    invoke-virtual/range {v31 .. v31}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    int-to-long v8, v8

    .line 465
    aput-wide v8, v6, v7

    .line 466
    .line 467
    add-int/lit8 v7, v7, 0x1

    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_13
    move-object/from16 v45, v6

    .line 471
    .line 472
    goto :goto_d

    .line 473
    :cond_14
    move-object/from16 v45, p2

    .line 474
    .line 475
    :goto_d
    and-int/lit8 v2, v2, 0x8

    .line 476
    .line 477
    if-eqz v2, :cond_15

    .line 478
    .line 479
    move-object/from16 v2, v31

    .line 480
    .line 481
    const/4 v6, 0x4

    .line 482
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_15
    move-object/from16 v2, v31

    .line 487
    .line 488
    :goto_e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    const/16 v6, 0x18

    .line 493
    .line 494
    if-lt v4, v6, :cond_19

    .line 495
    .line 496
    const/16 v4, 0x9

    .line 497
    .line 498
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 499
    .line 500
    invoke-virtual {v2, v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    const/4 v6, 0x2

    .line 505
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    invoke-static {v7}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->a(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-static {v8}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->a(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    const/4 v9, 0x0

    .line 533
    cmpg-float v9, v6, v9

    .line 534
    .line 535
    if-gtz v9, :cond_16

    .line 536
    .line 537
    if-nez v7, :cond_16

    .line 538
    .line 539
    if-nez v8, :cond_16

    .line 540
    .line 541
    move-object/from16 v9, p2

    .line 542
    .line 543
    :goto_f
    const/4 v6, 0x2

    .line 544
    goto :goto_10

    .line 545
    :cond_16
    new-instance v9, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    .line 546
    .line 547
    invoke-direct {v9, v6, v7, v8}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;-><init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V

    .line 548
    .line 549
    .line 550
    goto :goto_f

    .line 551
    :goto_10
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    const v6, 0xfff000

    .line 559
    .line 560
    .line 561
    and-int/2addr v6, v2

    .line 562
    shr-int/lit8 v6, v6, 0xc

    .line 563
    .line 564
    and-int/lit16 v2, v2, 0xfff

    .line 565
    .line 566
    const-string v7, "LAME"

    .line 567
    .line 568
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    if-nez v7, :cond_17

    .line 573
    .line 574
    const-string v7, "Lavf"

    .line 575
    .line 576
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-nez v7, :cond_17

    .line 581
    .line 582
    const-string v7, "Lavc"

    .line 583
    .line 584
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_18

    .line 589
    .line 590
    :cond_17
    add-int/lit16 v6, v6, 0x211

    .line 591
    .line 592
    add-int/lit16 v2, v2, -0x211

    .line 593
    .line 594
    const/4 v4, 0x0

    .line 595
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    :cond_18
    move/from16 v48, v2

    .line 600
    .line 601
    move/from16 v47, v6

    .line 602
    .line 603
    move-object/from16 v46, v9

    .line 604
    .line 605
    goto :goto_11

    .line 606
    :cond_19
    move-object/from16 v46, p2

    .line 607
    .line 608
    const/16 v47, -0x1

    .line 609
    .line 610
    const/16 v48, -0x1

    .line 611
    .line 612
    :goto_11
    new-instance v39, Landroidx/media3/extractor/mp3/XingFrame;

    .line 613
    .line 614
    int-to-long v2, v3

    .line 615
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 616
    .line 617
    move-wide/from16 v41, v2

    .line 618
    .line 619
    move-object/from16 v40, v4

    .line 620
    .line 621
    invoke-direct/range {v39 .. v48}, Landroidx/media3/extractor/mp3/XingFrame;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v11, v28

    .line 625
    .line 626
    move-object/from16 v4, v39

    .line 627
    .line 628
    move-wide/from16 v8, v41

    .line 629
    .line 630
    move-wide/from16 v6, v43

    .line 631
    .line 632
    move/from16 v2, v47

    .line 633
    .line 634
    move/from16 v3, v48

    .line 635
    .line 636
    iget v12, v11, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 637
    .line 638
    const/4 v13, -0x1

    .line 639
    if-eq v12, v13, :cond_1a

    .line 640
    .line 641
    iget v12, v11, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 642
    .line 643
    if-eq v12, v13, :cond_1a

    .line 644
    .line 645
    goto :goto_12

    .line 646
    :cond_1a
    if-eq v2, v13, :cond_1b

    .line 647
    .line 648
    if-eq v3, v13, :cond_1b

    .line 649
    .line 650
    iput v2, v11, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 651
    .line 652
    iput v3, v11, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 653
    .line 654
    :cond_1b
    :goto_12
    if-eqz v46, :cond_1c

    .line 655
    .line 656
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 657
    .line 658
    const/4 v3, 0x1

    .line 659
    new-array v12, v3, [Landroidx/media3/common/Metadata$Entry;

    .line 660
    .line 661
    const/16 v38, 0x0

    .line 662
    .line 663
    aput-object v46, v12, v38

    .line 664
    .line 665
    invoke-direct {v2, v12}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 666
    .line 667
    .line 668
    goto :goto_13

    .line 669
    :cond_1c
    move-object/from16 v2, p2

    .line 670
    .line 671
    :goto_13
    iput-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:Landroidx/media3/common/Metadata;

    .line 672
    .line 673
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 674
    .line 675
    .line 676
    move-result-wide v46

    .line 677
    iget v2, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 678
    .line 679
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 680
    .line 681
    .line 682
    iget-object v2, v4, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 683
    .line 684
    if-ne v5, v10, :cond_20

    .line 685
    .line 686
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 687
    .line 688
    .line 689
    move-result-wide v8

    .line 690
    invoke-virtual {v4}, Landroidx/media3/extractor/mp3/XingFrame;->a()J

    .line 691
    .line 692
    .line 693
    move-result-wide v49

    .line 694
    cmp-long v3, v49, v22

    .line 695
    .line 696
    if-nez v3, :cond_1e

    .line 697
    .line 698
    :cond_1d
    :goto_14
    move-object/from16 v29, p2

    .line 699
    .line 700
    goto/16 :goto_19

    .line 701
    .line 702
    :cond_1e
    cmp-long v3, v6, v24

    .line 703
    .line 704
    if-eqz v3, :cond_1f

    .line 705
    .line 706
    cmp-long v3, v8, v24

    .line 707
    .line 708
    if-eqz v3, :cond_1f

    .line 709
    .line 710
    add-long v43, v46, v6

    .line 711
    .line 712
    cmp-long v3, v43, v8

    .line 713
    .line 714
    if-eqz v3, :cond_1f

    .line 715
    .line 716
    sub-long v8, v8, v46

    .line 717
    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v4, "Data size mismatch between stream ("

    .line 721
    .line 722
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v4, ") and Xing frame ("

    .line 729
    .line 730
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string v4, "), using smaller value."

    .line 737
    .line 738
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    const-string v4, "XingSeeker"

    .line 746
    .line 747
    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 751
    .line 752
    .line 753
    move-result-wide v43

    .line 754
    move-wide/from16 v51, v43

    .line 755
    .line 756
    :goto_15
    move-object/from16 v53, v45

    .line 757
    .line 758
    goto :goto_16

    .line 759
    :cond_1f
    move-wide/from16 v51, v6

    .line 760
    .line 761
    goto :goto_15

    .line 762
    :goto_16
    new-instance v45, Landroidx/media3/extractor/mp3/XingSeeker;

    .line 763
    .line 764
    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 765
    .line 766
    move/from16 v48, v2

    .line 767
    .line 768
    invoke-direct/range {v45 .. v53}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    .line 769
    .line 770
    .line 771
    move-object/from16 v29, v45

    .line 772
    .line 773
    goto :goto_19

    .line 774
    :cond_20
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 775
    .line 776
    .line 777
    move-result-wide v12

    .line 778
    invoke-virtual {v4}, Landroidx/media3/extractor/mp3/XingFrame;->a()J

    .line 779
    .line 780
    .line 781
    move-result-wide v3

    .line 782
    cmp-long v5, v3, v22

    .line 783
    .line 784
    if-nez v5, :cond_21

    .line 785
    .line 786
    goto :goto_14

    .line 787
    :cond_21
    cmp-long v5, v6, v24

    .line 788
    .line 789
    if-eqz v5, :cond_22

    .line 790
    .line 791
    add-long v12, v46, v6

    .line 792
    .line 793
    iget v5, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 794
    .line 795
    move-wide/from16 v43, v6

    .line 796
    .line 797
    int-to-long v5, v5

    .line 798
    sub-long v43, v43, v5

    .line 799
    .line 800
    :goto_17
    move-wide/from16 v49, v12

    .line 801
    .line 802
    move-wide/from16 v5, v43

    .line 803
    .line 804
    goto :goto_18

    .line 805
    :cond_22
    cmp-long v5, v12, v24

    .line 806
    .line 807
    if-eqz v5, :cond_1d

    .line 808
    .line 809
    sub-long v5, v12, v46

    .line 810
    .line 811
    iget v7, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 812
    .line 813
    move-wide/from16 v24, v5

    .line 814
    .line 815
    int-to-long v5, v7

    .line 816
    sub-long v43, v24, v5

    .line 817
    .line 818
    goto :goto_17

    .line 819
    :goto_18
    invoke-static {v5, v6, v3, v4}, Landroidx/media3/extractor/mp3/Mp3Util;->a(JJ)I

    .line 820
    .line 821
    .line 822
    move-result v7

    .line 823
    const v10, -0x7fffffff

    .line 824
    .line 825
    .line 826
    if-ne v7, v10, :cond_23

    .line 827
    .line 828
    goto/16 :goto_14

    .line 829
    .line 830
    :cond_23
    sget-object v10, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 831
    .line 832
    invoke-static {v5, v6, v8, v9, v10}, Lcom/google/common/math/LongMath;->b(JJLjava/math/RoundingMode;)J

    .line 833
    .line 834
    .line 835
    move-result-wide v5

    .line 836
    invoke-static {v5, v6}, Lcom/google/common/primitives/Ints;->b(J)I

    .line 837
    .line 838
    .line 839
    move-result v54

    .line 840
    new-instance v48, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 841
    .line 842
    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 843
    .line 844
    int-to-long v5, v2

    .line 845
    add-long v51, v46, v5

    .line 846
    .line 847
    const/16 v55, 0x0

    .line 848
    .line 849
    const/16 v56, 0x1

    .line 850
    .line 851
    move-wide/from16 v57, v3

    .line 852
    .line 853
    move/from16 v53, v7

    .line 854
    .line 855
    invoke-direct/range {v48 .. v58}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZJ)V

    .line 856
    .line 857
    .line 858
    move-object/from16 v29, v48

    .line 859
    .line 860
    :goto_19
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/common/Metadata;

    .line 861
    .line 862
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 863
    .line 864
    .line 865
    move-result-wide v3

    .line 866
    if-nez v2, :cond_24

    .line 867
    .line 868
    :goto_1a
    move-object/from16 v2, p2

    .line 869
    .line 870
    goto/16 :goto_23

    .line 871
    .line 872
    :cond_24
    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/Predicate;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    iget-object v6, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 877
    .line 878
    array-length v7, v6

    .line 879
    const/4 v8, 0x0

    .line 880
    :goto_1b
    if-ge v8, v7, :cond_27

    .line 881
    .line 882
    aget-object v9, v6, v8

    .line 883
    .line 884
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    move-result-object v10

    .line 888
    const-class v12, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    .line 889
    .line 890
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 891
    .line 892
    .line 893
    move-result v10

    .line 894
    if-eqz v10, :cond_25

    .line 895
    .line 896
    invoke-virtual {v12, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v9

    .line 900
    check-cast v9, Landroidx/media3/common/Metadata$Entry;

    .line 901
    .line 902
    invoke-interface {v5, v9}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v10

    .line 906
    if-eqz v10, :cond_25

    .line 907
    .line 908
    goto :goto_1c

    .line 909
    :cond_25
    move-object/from16 v9, p2

    .line 910
    .line 911
    :goto_1c
    if-eqz v9, :cond_26

    .line 912
    .line 913
    goto :goto_1d

    .line 914
    :cond_26
    add-int/lit8 v8, v8, 0x1

    .line 915
    .line 916
    goto :goto_1b

    .line 917
    :cond_27
    move-object/from16 v9, p2

    .line 918
    .line 919
    :goto_1d
    check-cast v9, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    .line 920
    .line 921
    if-nez v9, :cond_28

    .line 922
    .line 923
    goto :goto_1a

    .line 924
    :cond_28
    iget-object v5, v9, Landroidx/media3/extractor/metadata/id3/MlltFrame;->e:[I

    .line 925
    .line 926
    iget-object v2, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 927
    .line 928
    array-length v6, v2

    .line 929
    const/4 v7, 0x0

    .line 930
    :goto_1e
    if-ge v7, v6, :cond_2b

    .line 931
    .line 932
    aget-object v8, v2, v7

    .line 933
    .line 934
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    move-result-object v10

    .line 938
    const-class v12, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 939
    .line 940
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 941
    .line 942
    .line 943
    move-result v10

    .line 944
    if-eqz v10, :cond_29

    .line 945
    .line 946
    invoke-virtual {v12, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v8

    .line 950
    check-cast v8, Landroidx/media3/common/Metadata$Entry;

    .line 951
    .line 952
    move-object v10, v8

    .line 953
    check-cast v10, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 954
    .line 955
    iget-object v10, v10, Landroidx/media3/extractor/metadata/id3/Id3Frame;->a:Ljava/lang/String;

    .line 956
    .line 957
    const-string v12, "TLEN"

    .line 958
    .line 959
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v10

    .line 963
    if-eqz v10, :cond_29

    .line 964
    .line 965
    goto :goto_1f

    .line 966
    :cond_29
    move-object/from16 v8, p2

    .line 967
    .line 968
    :goto_1f
    if-eqz v8, :cond_2a

    .line 969
    .line 970
    goto :goto_20

    .line 971
    :cond_2a
    add-int/lit8 v7, v7, 0x1

    .line 972
    .line 973
    goto :goto_1e

    .line 974
    :cond_2b
    move-object/from16 v8, p2

    .line 975
    .line 976
    :goto_20
    check-cast v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    .line 977
    .line 978
    if-nez v8, :cond_2c

    .line 979
    .line 980
    move-wide/from16 v7, v22

    .line 981
    .line 982
    const/4 v6, 0x0

    .line 983
    goto :goto_21

    .line 984
    :cond_2c
    iget-object v2, v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->c:Lcom/google/common/collect/ImmutableList;

    .line 985
    .line 986
    const/4 v6, 0x0

    .line 987
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    check-cast v2, Ljava/lang/String;

    .line 992
    .line 993
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 994
    .line 995
    .line 996
    move-result-wide v7

    .line 997
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->D(J)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v7

    .line 1001
    :goto_21
    array-length v2, v5

    .line 1002
    add-int/lit8 v10, v2, 0x1

    .line 1003
    .line 1004
    new-array v12, v10, [J

    .line 1005
    .line 1006
    new-array v10, v10, [J

    .line 1007
    .line 1008
    aput-wide v3, v12, v6

    .line 1009
    .line 1010
    aput-wide v20, v10, v6

    .line 1011
    .line 1012
    move-wide v13, v3

    .line 1013
    move-wide/from16 v24, v20

    .line 1014
    .line 1015
    const/4 v3, 0x1

    .line 1016
    :goto_22
    if-gt v3, v2, :cond_2d

    .line 1017
    .line 1018
    iget v4, v9, Landroidx/media3/extractor/metadata/id3/MlltFrame;->c:I

    .line 1019
    .line 1020
    add-int/lit8 v6, v3, -0x1

    .line 1021
    .line 1022
    aget v26, v5, v6

    .line 1023
    .line 1024
    add-int v4, v4, v26

    .line 1025
    .line 1026
    move/from16 v26, v2

    .line 1027
    .line 1028
    move/from16 v28, v3

    .line 1029
    .line 1030
    int-to-long v2, v4

    .line 1031
    add-long/2addr v13, v2

    .line 1032
    iget v2, v9, Landroidx/media3/extractor/metadata/id3/MlltFrame;->d:I

    .line 1033
    .line 1034
    iget-object v3, v9, Landroidx/media3/extractor/metadata/id3/MlltFrame;->f:[I

    .line 1035
    .line 1036
    aget v3, v3, v6

    .line 1037
    .line 1038
    add-int/2addr v2, v3

    .line 1039
    int-to-long v2, v2

    .line 1040
    add-long v24, v24, v2

    .line 1041
    .line 1042
    aput-wide v13, v12, v28

    .line 1043
    .line 1044
    aput-wide v24, v10, v28

    .line 1045
    .line 1046
    add-int/lit8 v3, v28, 0x1

    .line 1047
    .line 1048
    move/from16 v2, v26

    .line 1049
    .line 1050
    goto :goto_22

    .line 1051
    :cond_2d
    new-instance v2, Landroidx/media3/extractor/mp3/MlltSeeker;

    .line 1052
    .line 1053
    invoke-direct {v2, v7, v8, v12, v10}, Landroidx/media3/extractor/mp3/MlltSeeker;-><init>(J[J[J)V

    .line 1054
    .line 1055
    .line 1056
    :goto_23
    iget-boolean v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:Z

    .line 1057
    .line 1058
    if-eqz v3, :cond_2e

    .line 1059
    .line 1060
    new-instance v2, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    .line 1061
    .line 1062
    move-wide/from16 v3, v22

    .line 1063
    .line 1064
    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 1065
    .line 1066
    .line 1067
    move-object v3, v2

    .line 1068
    move-object/from16 v2, v27

    .line 1069
    .line 1070
    goto :goto_25

    .line 1071
    :cond_2e
    if-eqz v2, :cond_2f

    .line 1072
    .line 1073
    move-object v3, v2

    .line 1074
    move-object/from16 v2, v27

    .line 1075
    .line 1076
    goto :goto_24

    .line 1077
    :cond_2f
    if-eqz v29, :cond_30

    .line 1078
    .line 1079
    move-object/from16 v2, v27

    .line 1080
    .line 1081
    move-object/from16 v3, v29

    .line 1082
    .line 1083
    goto :goto_24

    .line 1084
    :cond_30
    move-object/from16 v2, v27

    .line 1085
    .line 1086
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1087
    .line 1088
    const/4 v4, 0x0

    .line 1089
    const/4 v6, 0x4

    .line 1090
    invoke-interface {v1, v3, v4, v6}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1097
    .line 1098
    .line 1099
    move-result v3

    .line 1100
    invoke-virtual {v15, v3}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    .line 1101
    .line 1102
    .line 1103
    new-instance v39, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 1104
    .line 1105
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 1106
    .line 1107
    .line 1108
    move-result-wide v40

    .line 1109
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v42

    .line 1113
    iget v3, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    .line 1114
    .line 1115
    iget v4, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 1116
    .line 1117
    const-wide v48, -0x7fffffffffffffffL    # -4.9E-324

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    const/16 v47, 0x1

    .line 1123
    .line 1124
    const/16 v46, 0x0

    .line 1125
    .line 1126
    move/from16 v44, v3

    .line 1127
    .line 1128
    move/from16 v45, v4

    .line 1129
    .line 1130
    invoke-direct/range {v39 .. v49}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZJ)V

    .line 1131
    .line 1132
    .line 1133
    move-object/from16 v3, v39

    .line 1134
    .line 1135
    :goto_24
    instance-of v4, v3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 1136
    .line 1137
    if-eqz v4, :cond_31

    .line 1138
    .line 1139
    goto :goto_25

    .line 1140
    :cond_31
    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->b()Z

    .line 1141
    .line 1142
    .line 1143
    :goto_25
    iput-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1144
    .line 1145
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 1146
    .line 1147
    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 1148
    .line 1149
    .line 1150
    move-result-wide v5

    .line 1151
    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 1152
    .line 1153
    .line 1154
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 1155
    .line 1156
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1157
    .line 1158
    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/common/Metadata;

    .line 1162
    .line 1163
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:Landroidx/media3/common/Metadata;

    .line 1164
    .line 1165
    if-eqz v3, :cond_33

    .line 1166
    .line 1167
    if-eqz v4, :cond_32

    .line 1168
    .line 1169
    invoke-virtual {v3, v4}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v3

    .line 1173
    :cond_32
    move-object v4, v3

    .line 1174
    :cond_33
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 1175
    .line 1176
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    const-string v5, "audio/mpeg"

    .line 1180
    .line 1181
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v5

    .line 1185
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 1186
    .line 1187
    iget-object v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    .line 1188
    .line 1189
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v5

    .line 1193
    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 1194
    .line 1195
    const/16 v5, 0x1000

    .line 1196
    .line 1197
    iput v5, v3, Landroidx/media3/common/Format$Builder;->p:I

    .line 1198
    .line 1199
    iget v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    .line 1200
    .line 1201
    iput v5, v3, Landroidx/media3/common/Format$Builder;->I:I

    .line 1202
    .line 1203
    iget v5, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 1204
    .line 1205
    iput v5, v3, Landroidx/media3/common/Format$Builder;->K:I

    .line 1206
    .line 1207
    iget v5, v11, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 1208
    .line 1209
    iput v5, v3, Landroidx/media3/common/Format$Builder;->M:I

    .line 1210
    .line 1211
    iget v5, v11, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 1212
    .line 1213
    iput v5, v3, Landroidx/media3/common/Format$Builder;->N:I

    .line 1214
    .line 1215
    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 1216
    .line 1217
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1218
    .line 1219
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->f()I

    .line 1220
    .line 1221
    .line 1222
    move-result v4

    .line 1223
    const v10, -0x7fffffff

    .line 1224
    .line 1225
    .line 1226
    if-eq v4, v10, :cond_34

    .line 1227
    .line 1228
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1229
    .line 1230
    invoke-interface {v4}, Landroidx/media3/extractor/mp3/Seeker;->f()I

    .line 1231
    .line 1232
    .line 1233
    move-result v4

    .line 1234
    iput v4, v3, Landroidx/media3/common/Format$Builder;->i:I

    .line 1235
    .line 1236
    :cond_34
    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/TrackOutput;

    .line 1237
    .line 1238
    new-instance v5, Landroidx/media3/common/Format;

    .line 1239
    .line 1240
    invoke-direct {v5, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {v4, v5}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1247
    .line 1248
    .line 1249
    move-result-wide v3

    .line 1250
    iput-wide v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    .line 1251
    .line 1252
    goto :goto_26

    .line 1253
    :cond_35
    move-object v2, v3

    .line 1254
    move-object v11, v8

    .line 1255
    const-wide/16 v18, 0x1

    .line 1256
    .line 1257
    const-wide/16 v20, 0x0

    .line 1258
    .line 1259
    iget-wide v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    .line 1260
    .line 1261
    cmp-long v3, v3, v20

    .line 1262
    .line 1263
    if-eqz v3, :cond_36

    .line 1264
    .line 1265
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1266
    .line 1267
    .line 1268
    move-result-wide v3

    .line 1269
    iget-wide v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    .line 1270
    .line 1271
    cmp-long v7, v3, v5

    .line 1272
    .line 1273
    if-gez v7, :cond_36

    .line 1274
    .line 1275
    sub-long/2addr v5, v3

    .line 1276
    long-to-int v3, v5

    .line 1277
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1278
    .line 1279
    .line 1280
    :cond_36
    :goto_26
    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1281
    .line 1282
    if-nez v3, :cond_3c

    .line 1283
    .line 1284
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->h(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 1288
    .line 1289
    .line 1290
    move-result v3

    .line 1291
    if-eqz v3, :cond_37

    .line 1292
    .line 1293
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_2b

    .line 1299
    .line 1300
    :cond_37
    const/4 v4, 0x0

    .line 1301
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1305
    .line 1306
    .line 1307
    move-result v2

    .line 1308
    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:I

    .line 1309
    .line 1310
    int-to-long v3, v3

    .line 1311
    const v5, -0x1f400

    .line 1312
    .line 1313
    .line 1314
    and-int/2addr v5, v2

    .line 1315
    int-to-long v5, v5

    .line 1316
    const-wide/32 v7, -0x1f400

    .line 1317
    .line 1318
    .line 1319
    and-long/2addr v3, v7

    .line 1320
    cmp-long v3, v5, v3

    .line 1321
    .line 1322
    if-nez v3, :cond_3b

    .line 1323
    .line 1324
    invoke-static {v2}, Landroidx/media3/extractor/MpegAudioUtil;->a(I)I

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    const/4 v13, -0x1

    .line 1329
    if-ne v3, v13, :cond_38

    .line 1330
    .line 1331
    const/4 v3, 0x1

    .line 1332
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    goto :goto_28

    .line 1338
    :cond_38
    invoke-virtual {v15, v2}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    .line 1339
    .line 1340
    .line 1341
    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 1342
    .line 1343
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    cmp-long v2, v2, v22

    .line 1349
    .line 1350
    if-nez v2, :cond_39

    .line 1351
    .line 1352
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1353
    .line 1354
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1355
    .line 1356
    .line 1357
    move-result-wide v3

    .line 1358
    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/mp3/Seeker;->c(J)J

    .line 1359
    .line 1360
    .line 1361
    move-result-wide v2

    .line 1362
    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 1363
    .line 1364
    :cond_39
    iget v2, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 1365
    .line 1366
    iput v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1367
    .line 1368
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1369
    .line 1370
    .line 1371
    move-result-wide v2

    .line 1372
    iget v4, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 1373
    .line 1374
    int-to-long v4, v4

    .line 1375
    add-long/2addr v2, v4

    .line 1376
    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    .line 1377
    .line 1378
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1379
    .line 1380
    instance-of v2, v2, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 1381
    .line 1382
    if-nez v2, :cond_3a

    .line 1383
    .line 1384
    :goto_27
    const/4 v3, 0x1

    .line 1385
    goto :goto_2a

    .line 1386
    :cond_3a
    iget-wide v0, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 1387
    .line 1388
    iget v2, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 1389
    .line 1390
    int-to-long v2, v2

    .line 1391
    add-long/2addr v0, v2

    .line 1392
    mul-long v0, v0, v16

    .line 1393
    .line 1394
    iget v2, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 1395
    .line 1396
    int-to-long v2, v2

    .line 1397
    div-long/2addr v0, v2

    .line 1398
    throw p2

    .line 1399
    :cond_3b
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    const/4 v3, 0x1

    .line 1405
    :goto_28
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1406
    .line 1407
    .line 1408
    const/4 v4, 0x0

    .line 1409
    iput v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:I

    .line 1410
    .line 1411
    :goto_29
    const/4 v13, -0x1

    .line 1412
    const/4 v14, 0x0

    .line 1413
    goto :goto_2c

    .line 1414
    :cond_3c
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    goto :goto_27

    .line 1420
    :goto_2a
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/TrackOutput;

    .line 1421
    .line 1422
    iget v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1423
    .line 1424
    invoke-interface {v2, v1, v4, v3}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 1425
    .line 1426
    .line 1427
    move-result v1

    .line 1428
    const/4 v13, -0x1

    .line 1429
    if-ne v1, v13, :cond_3d

    .line 1430
    .line 1431
    :goto_2b
    const/4 v13, -0x1

    .line 1432
    const/4 v14, -0x1

    .line 1433
    goto :goto_2c

    .line 1434
    :cond_3d
    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1435
    .line 1436
    sub-int/2addr v2, v1

    .line 1437
    iput v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1438
    .line 1439
    if-lez v2, :cond_3e

    .line 1440
    .line 1441
    goto :goto_29

    .line 1442
    :cond_3e
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/TrackOutput;

    .line 1443
    .line 1444
    iget-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 1445
    .line 1446
    iget-wide v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 1447
    .line 1448
    mul-long v1, v1, v16

    .line 1449
    .line 1450
    iget v6, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 1451
    .line 1452
    int-to-long v6, v6

    .line 1453
    div-long/2addr v1, v6

    .line 1454
    add-long/2addr v4, v1

    .line 1455
    iget v7, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 1456
    .line 1457
    const/4 v8, 0x0

    .line 1458
    const/4 v9, 0x0

    .line 1459
    const/4 v6, 0x1

    .line 1460
    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1461
    .line 1462
    .line 1463
    iget-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 1464
    .line 1465
    iget v3, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 1466
    .line 1467
    int-to-long v3, v3

    .line 1468
    add-long/2addr v1, v3

    .line 1469
    iput-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 1470
    .line 1471
    const/4 v4, 0x0

    .line 1472
    iput v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:I

    .line 1473
    .line 1474
    move v14, v4

    .line 1475
    const/4 v13, -0x1

    .line 1476
    :goto_2c
    if-ne v14, v13, :cond_42

    .line 1477
    .line 1478
    iget-object v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1479
    .line 1480
    instance-of v2, v1, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 1481
    .line 1482
    if-eqz v2, :cond_42

    .line 1483
    .line 1484
    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:J

    .line 1485
    .line 1486
    sub-long v2, v2, v18

    .line 1487
    .line 1488
    cmp-long v4, v2, v20

    .line 1489
    .line 1490
    if-ltz v4, :cond_40

    .line 1491
    .line 1492
    iget v4, v11, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 1493
    .line 1494
    if-eq v4, v13, :cond_3f

    .line 1495
    .line 1496
    iget v5, v11, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 1497
    .line 1498
    if-eq v5, v13, :cond_3f

    .line 1499
    .line 1500
    int-to-long v6, v4

    .line 1501
    sub-long/2addr v2, v6

    .line 1502
    int-to-long v4, v5

    .line 1503
    sub-long/2addr v2, v4

    .line 1504
    :cond_3f
    cmp-long v4, v2, v20

    .line 1505
    .line 1506
    if-ltz v4, :cond_40

    .line 1507
    .line 1508
    iget-wide v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:J

    .line 1509
    .line 1510
    mul-long v2, v2, v16

    .line 1511
    .line 1512
    iget v6, v15, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 1513
    .line 1514
    int-to-long v6, v6

    .line 1515
    div-long/2addr v2, v6

    .line 1516
    add-long v9, v2, v4

    .line 1517
    .line 1518
    goto :goto_2d

    .line 1519
    :cond_40
    move-wide/from16 v9, v22

    .line 1520
    .line 1521
    :goto_2d
    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v1

    .line 1525
    cmp-long v1, v1, v9

    .line 1526
    .line 1527
    if-nez v1, :cond_41

    .line 1528
    .line 1529
    goto :goto_2e

    .line 1530
    :cond_41
    iget-object v0, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 1531
    .line 1532
    check-cast v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 1533
    .line 1534
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1535
    .line 1536
    .line 1537
    throw p2

    .line 1538
    :cond_42
    :goto_2e
    return v14
.end method

.method public final g()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    .line 16
    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 24
    .line 25
    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 34
    .line 35
    check-cast v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 36
    .line 37
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    .line 38
    .line 39
    new-instance v1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 40
    .line 41
    iget-wide v4, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->b:J

    .line 42
    .line 43
    iget v6, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->e:I

    .line 44
    .line 45
    iget v7, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->c:I

    .line 46
    .line 47
    iget-boolean v8, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->g:Z

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    iget-wide v10, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->i:J

    .line 51
    .line 52
    invoke-direct/range {v1 .. v11}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZJ)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 73
    .line 74
    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method public final h(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:Landroidx/media3/extractor/mp3/Seeker;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x4

    .line 21
    .line 22
    sub-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-interface {p1, p0, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    xor-int/2addr p0, v1

    .line 39
    return p0

    .line 40
    :catch_0
    :goto_0
    return v1
.end method

.method public final i(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    const/high16 v3, 0x20000

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/Id3Peeker;

    .line 23
    .line 24
    invoke-virtual {v5, v1, v2, v3}, Landroidx/media3/extractor/Id3Peeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/common/Metadata;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    long-to-int v2, v5

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    move v5, v4

    .line 48
    :goto_0
    move v6, v5

    .line 49
    move v7, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v4

    .line 52
    move v5, v2

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->h(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const/4 v9, 0x1

    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    if-lez v6, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->g()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/io/EOFException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_4
    iget-object v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 74
    .line 75
    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    int-to-long v10, v5

    .line 85
    const v12, -0x1f400

    .line 86
    .line 87
    .line 88
    and-int/2addr v12, v8

    .line 89
    int-to-long v12, v12

    .line 90
    const-wide/32 v14, -0x1f400

    .line 91
    .line 92
    .line 93
    and-long/2addr v10, v14

    .line 94
    cmp-long v10, v12, v10

    .line 95
    .line 96
    if-nez v10, :cond_6

    .line 97
    .line 98
    :cond_5
    invoke-static {v8}, Landroidx/media3/extractor/MpegAudioUtil;->a(I)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    const/4 v11, -0x1

    .line 103
    if-ne v10, v11, :cond_a

    .line 104
    .line 105
    :cond_6
    add-int/lit8 v5, v7, 0x1

    .line 106
    .line 107
    if-ne v7, v3, :cond_8

    .line 108
    .line 109
    if-eqz p2, :cond_7

    .line 110
    .line 111
    return v4

    .line 112
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->g()V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/io/EOFException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_8
    if-eqz p2, :cond_9

    .line 122
    .line 123
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 124
    .line 125
    .line 126
    add-int v6, v2, v5

    .line 127
    .line 128
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 133
    .line 134
    .line 135
    :goto_2
    move v6, v4

    .line 136
    move v7, v5

    .line 137
    move v5, v6

    .line 138
    goto :goto_1

    .line 139
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    if-ne v6, v9, :cond_b

    .line 142
    .line 143
    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 144
    .line 145
    invoke-virtual {v5, v8}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    .line 146
    .line 147
    .line 148
    move v5, v8

    .line 149
    goto :goto_5

    .line 150
    :cond_b
    const/4 v8, 0x4

    .line 151
    if-ne v6, v8, :cond_d

    .line 152
    .line 153
    :goto_3
    if-eqz p2, :cond_c

    .line 154
    .line 155
    add-int/2addr v2, v7

    .line 156
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_c
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 161
    .line 162
    .line 163
    :goto_4
    iput v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:I

    .line 164
    .line 165
    return v9

    .line 166
    :cond_d
    :goto_5
    add-int/lit8 v10, v10, -0x4

    .line 167
    .line 168
    invoke-interface {v1, v10}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1
.end method
