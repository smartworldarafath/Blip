.class public Landroidx/media3/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public a:Landroidx/media3/extractor/ExtractorOutput;

.field public b:Landroidx/media3/extractor/ogg/StreamReader;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/OggExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final c(JJ)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->a:Landroidx/media3/extractor/ogg/OggPacket;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->a:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iput-wide v3, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->b:J

    .line 15
    .line 16
    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->c:I

    .line 17
    .line 18
    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->d:I

    .line 19
    .line 20
    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    iput v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->c:I

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/media3/extractor/ogg/OggPacket;->e:Z

    .line 31
    .line 32
    cmp-long p1, p1, v3

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iget-boolean p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    .line 37
    .line 38
    xor-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    .line 49
    .line 50
    int-to-long p1, p1

    .line 51
    mul-long/2addr p1, p3

    .line 52
    const-wide/32 p3, 0xf4240

    .line 53
    .line 54
    .line 55
    div-long/2addr p1, p3

    .line 56
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    .line 57
    .line 58
    iget-object p3, p0, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 59
    .line 60
    sget-object p4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {p3, p1, p2}, Landroidx/media3/extractor/ogg/OggSeeker;->c(J)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x2

    .line 66
    iput p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/ogg/OggExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "Failed to determine bitstream type"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->c:Z

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 39
    .line 40
    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 45
    .line 46
    invoke-interface {v5}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 52
    .line 53
    iput-object v6, v5, Landroidx/media3/extractor/ogg/StreamReader;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 54
    .line 55
    iput-object v2, v5, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    .line 58
    .line 59
    .line 60
    iput-boolean v4, v0, Landroidx/media3/extractor/ogg/OggExtractor;->c:Z

    .line 61
    .line 62
    :cond_2
    iget-object v8, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 63
    .line 64
    iget-object v0, v8, Landroidx/media3/extractor/ogg/StreamReader;->a:Landroidx/media3/extractor/ogg/OggPacket;

    .line 65
    .line 66
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 72
    .line 73
    iget v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 74
    .line 75
    const-wide/16 v5, -0x1

    .line 76
    .line 77
    const/4 v7, -0x1

    .line 78
    const/4 v9, 0x3

    .line 79
    const/4 v10, 0x2

    .line 80
    if-eqz v2, :cond_c

    .line 81
    .line 82
    if-eq v2, v4, :cond_b

    .line 83
    .line 84
    if-eq v2, v10, :cond_4

    .line 85
    .line 86
    if-ne v2, v9, :cond_3

    .line 87
    .line 88
    return v7

    .line 89
    :cond_3
    invoke-static {}, Lio/sentry/d;->d()V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_4
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 94
    .line 95
    invoke-interface {v2, v1}, Landroidx/media3/extractor/ogg/OggSeeker;->a(Landroidx/media3/extractor/ExtractorInput;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    const-wide/16 v12, 0x0

    .line 100
    .line 101
    cmp-long v2, v10, v12

    .line 102
    .line 103
    if-ltz v2, :cond_5

    .line 104
    .line 105
    move-object/from16 v2, p2

    .line 106
    .line 107
    iput-wide v10, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 108
    .line 109
    return v4

    .line 110
    :cond_5
    cmp-long v2, v10, v5

    .line 111
    .line 112
    if-gez v2, :cond_6

    .line 113
    .line 114
    const-wide/16 v14, 0x2

    .line 115
    .line 116
    add-long/2addr v10, v14

    .line 117
    neg-long v10, v10

    .line 118
    invoke-virtual {v8, v10, v11}, Landroidx/media3/extractor/ogg/StreamReader;->a(J)V

    .line 119
    .line 120
    .line 121
    :cond_6
    iget-boolean v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    .line 122
    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 126
    .line 127
    invoke-interface {v2}, Landroidx/media3/extractor/ogg/OggSeeker;->b()Landroidx/media3/extractor/SeekMap;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 135
    .line 136
    invoke-interface {v10, v2}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 137
    .line 138
    .line 139
    iget-object v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 140
    .line 141
    invoke-interface {v2}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 142
    .line 143
    .line 144
    move-result-wide v14

    .line 145
    invoke-interface {v10, v14, v15}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 146
    .line 147
    .line 148
    iput-boolean v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    .line 149
    .line 150
    :cond_7
    iget-wide v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    .line 151
    .line 152
    cmp-long v2, v10, v12

    .line 153
    .line 154
    if-gtz v2, :cond_9

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ogg/OggPacket;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    iput v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 164
    .line 165
    return v7

    .line 166
    :cond_9
    :goto_1
    iput-wide v12, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    .line 167
    .line 168
    iget-object v0, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 169
    .line 170
    invoke-virtual {v8, v0}, Landroidx/media3/extractor/ogg/StreamReader;->b(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    cmp-long v4, v1, v12

    .line 175
    .line 176
    if-ltz v4, :cond_a

    .line 177
    .line 178
    iget-wide v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    .line 179
    .line 180
    add-long v11, v9, v1

    .line 181
    .line 182
    iget-wide v13, v8, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    .line 183
    .line 184
    cmp-long v4, v11, v13

    .line 185
    .line 186
    if-ltz v4, :cond_a

    .line 187
    .line 188
    const-wide/32 v11, 0xf4240

    .line 189
    .line 190
    .line 191
    mul-long/2addr v9, v11

    .line 192
    iget v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    .line 193
    .line 194
    int-to-long v11, v4

    .line 195
    div-long v14, v9, v11

    .line 196
    .line 197
    iget-object v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 198
    .line 199
    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 200
    .line 201
    invoke-interface {v4, v7, v0}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 202
    .line 203
    .line 204
    iget-object v13, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 205
    .line 206
    iget v0, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 207
    .line 208
    const/16 v18, 0x0

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    const/16 v16, 0x1

    .line 213
    .line 214
    move/from16 v17, v0

    .line 215
    .line 216
    invoke-interface/range {v13 .. v19}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 217
    .line 218
    .line 219
    iput-wide v5, v8, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    .line 220
    .line 221
    :cond_a
    iget-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    .line 222
    .line 223
    add-long/2addr v4, v1

    .line 224
    iput-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    .line 225
    .line 226
    return v3

    .line 227
    :cond_b
    iget-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    .line 228
    .line 229
    long-to-int v0, v4

    .line 230
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 231
    .line 232
    .line 233
    iput v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 234
    .line 235
    return v3

    .line 236
    :cond_c
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ogg/OggPacket;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget-object v11, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 241
    .line 242
    if-nez v2, :cond_d

    .line 243
    .line 244
    iput v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 245
    .line 246
    return v7

    .line 247
    :cond_d
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 248
    .line 249
    .line 250
    move-result-wide v12

    .line 251
    iget-wide v14, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    .line 252
    .line 253
    sub-long/2addr v12, v14

    .line 254
    iput-wide v12, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    .line 255
    .line 256
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    .line 257
    .line 258
    invoke-virtual {v8, v11, v14, v15, v2}, Landroidx/media3/extractor/ogg/StreamReader;->c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_e

    .line 263
    .line 264
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 265
    .line 266
    .line 267
    move-result-wide v11

    .line 268
    iput-wide v11, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_e
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    .line 272
    .line 273
    iget-object v2, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 274
    .line 275
    iget v7, v2, Landroidx/media3/common/Format;->L:I

    .line 276
    .line 277
    iput v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    .line 278
    .line 279
    iget-boolean v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->m:Z

    .line 280
    .line 281
    if-nez v7, :cond_f

    .line 282
    .line 283
    iget-object v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    .line 284
    .line 285
    invoke-interface {v7, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 286
    .line 287
    .line 288
    iput-boolean v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->m:Z

    .line 289
    .line 290
    :cond_f
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    .line 291
    .line 292
    iget-object v2, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->b:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    .line 293
    .line 294
    if-eqz v2, :cond_10

    .line 295
    .line 296
    iput-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 297
    .line 298
    :goto_3
    move v2, v10

    .line 299
    move-object v0, v11

    .line 300
    goto :goto_5

    .line 301
    :cond_10
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 302
    .line 303
    .line 304
    move-result-wide v12

    .line 305
    cmp-long v2, v12, v5

    .line 306
    .line 307
    if-nez v2, :cond_11

    .line 308
    .line 309
    new-instance v0, Landroidx/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    iput-object v0, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_11
    iget-object v0, v0, Landroidx/media3/extractor/ogg/OggPacket;->a:Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 318
    .line 319
    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    .line 320
    .line 321
    and-int/lit8 v2, v2, 0x4

    .line 322
    .line 323
    if-eqz v2, :cond_12

    .line 324
    .line 325
    move/from16 v17, v4

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_12
    move/from16 v17, v3

    .line 329
    .line 330
    :goto_4
    new-instance v7, Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 331
    .line 332
    move v2, v10

    .line 333
    iget-wide v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    .line 334
    .line 335
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 336
    .line 337
    .line 338
    move-result-wide v4

    .line 339
    iget v1, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->d:I

    .line 340
    .line 341
    iget v6, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    .line 342
    .line 343
    add-int/2addr v1, v6

    .line 344
    int-to-long v13, v1

    .line 345
    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->b:J

    .line 346
    .line 347
    move-wide v15, v0

    .line 348
    move-object v0, v11

    .line 349
    move-wide v11, v4

    .line 350
    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;-><init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V

    .line 351
    .line 352
    .line 353
    iput-object v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    .line 354
    .line 355
    :goto_5
    iput v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    .line 356
    .line 357
    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 358
    .line 359
    array-length v2, v1

    .line 360
    const v4, 0xfe01

    .line 361
    .line 362
    .line 363
    if-ne v2, v4, :cond_13

    .line 364
    .line 365
    return v3

    .line 366
    :cond_13
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 367
    .line 368
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 377
    .line 378
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 379
    .line 380
    .line 381
    return v3
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    .line 1
    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->a(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    and-int/2addr v2, v4

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 35
    .line 36
    invoke-interface {p1, v4, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, 0x5

    .line 47
    if-lt p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x7f

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    const-wide/32 v6, 0x464c4143

    .line 62
    .line 63
    .line 64
    cmp-long p1, v4, v6

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    new-instance p1, Landroidx/media3/extractor/ogg/FlacReader;

    .line 69
    .line 70
    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 74
    .line 75
    return v1

    .line 76
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    invoke-static {v1, v2, v1}, Landroidx/media3/container/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move p1, v3

    .line 85
    :goto_0
    if-eqz p1, :cond_2

    .line 86
    .line 87
    new-instance p1, Landroidx/media3/extractor/ogg/VorbisReader;

    .line 88
    .line 89
    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    .line 99
    .line 100
    invoke-static {v2, p1}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    new-instance p1, Landroidx/media3/extractor/ogg/OpusReader;

    .line 107
    .line 108
    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    .line 112
    .line 113
    :goto_1
    return v1

    .line 114
    :cond_3
    :goto_2
    return v3
.end method
