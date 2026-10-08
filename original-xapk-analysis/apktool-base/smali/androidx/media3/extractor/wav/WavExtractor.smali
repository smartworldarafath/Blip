.class public final Landroidx/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# instance fields
.field public a:Landroidx/media3/extractor/ExtractorOutput;

.field public b:Landroidx/media3/extractor/TrackOutput;

.field public c:I

.field public d:J

.field public e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

.field public f:I

.field public g:J


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
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
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
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-interface {p0, p3, p4}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->a(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

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
    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v2, :cond_18

    .line 19
    .line 20
    const/16 v7, 0x8

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const-wide/16 v9, -0x1

    .line 24
    .line 25
    if-eq v2, v5, :cond_16

    .line 26
    .line 27
    const/4 v11, 0x3

    .line 28
    if-eq v2, v8, :cond_6

    .line 29
    .line 30
    if-eq v2, v11, :cond_3

    .line 31
    .line 32
    if-ne v2, v4, :cond_2

    .line 33
    .line 34
    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 35
    .line 36
    cmp-long v2, v7, v9

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v5, v6

    .line 42
    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 43
    .line 44
    .line 45
    iget-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 46
    .line 47
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    sub-long/2addr v4, v7

    .line 52
    iget-object v0, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1, v4, v5}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->b(Landroidx/media3/extractor/ExtractorInput;J)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    return v6

    .line 65
    :cond_2
    invoke-static {}, Lio/sentry/d;->d()V

    .line 66
    .line 67
    .line 68
    return v6

    .line 69
    :cond_3
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 73
    .line 74
    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 75
    .line 76
    .line 77
    const v3, 0x64617461

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader;->b(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-wide v7, v2, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    .line 96
    .line 97
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    .line 114
    .line 115
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    .line 124
    .line 125
    cmp-long v5, v7, v9

    .line 126
    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    const-wide v11, 0xffffffffL

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    cmp-long v5, v2, v11

    .line 135
    .line 136
    if-nez v5, :cond_4

    .line 137
    .line 138
    move-wide v2, v7

    .line 139
    :cond_4
    iget v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    .line 140
    .line 141
    int-to-long v7, v5

    .line 142
    add-long/2addr v7, v2

    .line 143
    iput-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 144
    .line 145
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    cmp-long v3, v1, v9

    .line 150
    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 154
    .line 155
    cmp-long v3, v7, v1

    .line 156
    .line 157
    if-lez v3, :cond_5

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v5, "Data exceeds input length: "

    .line 162
    .line 163
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 167
    .line 168
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v5, ", "

    .line 172
    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v5, "WavExtractor"

    .line 184
    .line 185
    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iput-wide v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 189
    .line 190
    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    .line 196
    .line 197
    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    .line 198
    .line 199
    invoke-interface {v1, v2, v7, v8}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->c(IJ)V

    .line 200
    .line 201
    .line 202
    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 203
    .line 204
    return v6

    .line 205
    :cond_6
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 206
    .line 207
    const/16 v3, 0x10

    .line 208
    .line 209
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const v4, 0x666d7420

    .line 213
    .line 214
    .line 215
    invoke-static {v4, v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader;->b(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iget-wide v7, v4, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    .line 220
    .line 221
    const-wide/16 v9, 0x10

    .line 222
    .line 223
    cmp-long v4, v7, v9

    .line 224
    .line 225
    if-ltz v4, :cond_7

    .line 226
    .line 227
    move v4, v5

    .line 228
    goto :goto_1

    .line 229
    :cond_7
    move v4, v6

    .line 230
    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 231
    .line 232
    .line 233
    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 234
    .line 235
    invoke-interface {v1, v4, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    long-to-int v7, v7

    .line 265
    sub-int/2addr v7, v3

    .line 266
    const v3, 0xfffe

    .line 267
    .line 268
    .line 269
    if-lez v7, :cond_f

    .line 270
    .line 271
    new-array v8, v7, [B

    .line 272
    .line 273
    invoke-interface {v1, v8, v6, v7}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 274
    .line 275
    .line 276
    if-ne v4, v3, :cond_e

    .line 277
    .line 278
    const/16 v9, 0x18

    .line 279
    .line 280
    if-ne v7, v9, :cond_e

    .line 281
    .line 282
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 283
    .line 284
    invoke-direct {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-eqz v7, :cond_9

    .line 295
    .line 296
    if-ne v7, v2, :cond_8

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v1, "validBits ( "

    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v1, ")  != bitsPerSample( "

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v1, ") are not supported"

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    throw v0

    .line 331
    :cond_9
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    shr-int/lit8 v9, v7, 0x12

    .line 336
    .line 337
    if-nez v9, :cond_d

    .line 338
    .line 339
    if-eqz v7, :cond_a

    .line 340
    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-ne v9, v14, :cond_d

    .line 346
    .line 347
    :cond_a
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    const/16 v10, 0xe

    .line 352
    .line 353
    new-array v12, v10, [B

    .line 354
    .line 355
    invoke-virtual {v4, v12, v6, v10}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 356
    .line 357
    .line 358
    sget-object v4, Landroidx/media3/extractor/wav/WavHeaderReader;->a:[B

    .line 359
    .line 360
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-nez v4, :cond_c

    .line 365
    .line 366
    sget-object v4, Landroidx/media3/extractor/wav/WavHeaderReader;->b:[B

    .line 367
    .line 368
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_b

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_b
    const-string v0, "invalid wav format extension guid"

    .line 376
    .line 377
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    throw v0

    .line 382
    :cond_c
    :goto_3
    move/from16 v18, v7

    .line 383
    .line 384
    move-object/from16 v19, v8

    .line 385
    .line 386
    move v13, v9

    .line 387
    goto :goto_5

    .line 388
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v1, "Channel mask "

    .line 391
    .line 392
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, " is invalid or does not match channel count "

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    throw v0

    .line 415
    :cond_e
    :goto_4
    move v13, v4

    .line 416
    move/from16 v18, v6

    .line 417
    .line 418
    move-object/from16 v19, v8

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_f
    sget-object v8, Landroidx/media3/common/util/Util;->b:[B

    .line 422
    .line 423
    goto :goto_4

    .line 424
    :goto_5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 425
    .line 426
    .line 427
    move-result-wide v7

    .line 428
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 429
    .line 430
    .line 431
    move-result-wide v9

    .line 432
    sub-long/2addr v7, v9

    .line 433
    long-to-int v4, v7

    .line 434
    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 435
    .line 436
    .line 437
    new-instance v23, Landroidx/media3/extractor/wav/WavFormat;

    .line 438
    .line 439
    move/from16 v17, v2

    .line 440
    .line 441
    move-object/from16 v12, v23

    .line 442
    .line 443
    invoke-direct/range {v12 .. v19}, Landroidx/media3/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    .line 444
    .line 445
    .line 446
    move/from16 v1, v17

    .line 447
    .line 448
    const/16 v2, 0x11

    .line 449
    .line 450
    if-ne v13, v2, :cond_10

    .line 451
    .line 452
    new-instance v1, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    .line 453
    .line 454
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 455
    .line 456
    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 457
    .line 458
    invoke-direct {v1, v2, v3, v12}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V

    .line 459
    .line 460
    .line 461
    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 462
    .line 463
    goto/16 :goto_8

    .line 464
    .line 465
    :cond_10
    const/4 v2, 0x6

    .line 466
    if-ne v13, v2, :cond_11

    .line 467
    .line 468
    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    .line 469
    .line 470
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 471
    .line 472
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 473
    .line 474
    const-string v24, "audio/g711-alaw"

    .line 475
    .line 476
    const/16 v25, -0x1

    .line 477
    .line 478
    move-object/from16 v21, v1

    .line 479
    .line 480
    move-object/from16 v22, v2

    .line 481
    .line 482
    move-object/from16 v23, v12

    .line 483
    .line 484
    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v1, v20

    .line 488
    .line 489
    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_11
    move-object/from16 v23, v12

    .line 493
    .line 494
    const/4 v2, 0x7

    .line 495
    if-ne v13, v2, :cond_12

    .line 496
    .line 497
    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    .line 498
    .line 499
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 500
    .line 501
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 502
    .line 503
    const-string v24, "audio/g711-mlaw"

    .line 504
    .line 505
    const/16 v25, -0x1

    .line 506
    .line 507
    move-object/from16 v21, v1

    .line 508
    .line 509
    move-object/from16 v22, v2

    .line 510
    .line 511
    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    .line 512
    .line 513
    .line 514
    move-object/from16 v1, v20

    .line 515
    .line 516
    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_12
    if-eq v13, v5, :cond_14

    .line 520
    .line 521
    if-eq v13, v11, :cond_13

    .line 522
    .line 523
    if-eq v13, v3, :cond_14

    .line 524
    .line 525
    move/from16 v25, v6

    .line 526
    .line 527
    goto :goto_7

    .line 528
    :cond_13
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 529
    .line 530
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->r(ILjava/nio/ByteOrder;)I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    :goto_6
    move/from16 v25, v1

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_14
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 538
    .line 539
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    goto :goto_6

    .line 544
    :goto_7
    if-eqz v25, :cond_15

    .line 545
    .line 546
    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    .line 547
    .line 548
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    .line 549
    .line 550
    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    .line 551
    .line 552
    const-string v24, "audio/raw"

    .line 553
    .line 554
    move-object/from16 v21, v1

    .line 555
    .line 556
    move-object/from16 v22, v2

    .line 557
    .line 558
    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v1, v20

    .line 562
    .line 563
    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    .line 564
    .line 565
    :goto_8
    iput v11, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 566
    .line 567
    return v6

    .line 568
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    const-string v1, "Unsupported WAV format type: "

    .line 571
    .line 572
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    throw v0

    .line 587
    :cond_16
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 588
    .line 589
    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 590
    .line 591
    .line 592
    invoke-static {v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    iget v4, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    .line 597
    .line 598
    const v5, 0x64733634

    .line 599
    .line 600
    .line 601
    if-eq v4, v5, :cond_17

    .line 602
    .line 603
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 604
    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_17
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 611
    .line 612
    .line 613
    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 614
    .line 615
    invoke-interface {v1, v4, v6, v7}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->p()J

    .line 619
    .line 620
    .line 621
    move-result-wide v9

    .line 622
    iget-wide v2, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    .line 623
    .line 624
    long-to-int v2, v2

    .line 625
    add-int/2addr v2, v7

    .line 626
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 627
    .line 628
    .line 629
    :goto_9
    iput-wide v9, v0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    .line 630
    .line 631
    iput v8, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 632
    .line 633
    return v6

    .line 634
    :cond_18
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 635
    .line 636
    .line 637
    move-result-wide v7

    .line 638
    const-wide/16 v9, 0x0

    .line 639
    .line 640
    cmp-long v2, v7, v9

    .line 641
    .line 642
    if-nez v2, :cond_19

    .line 643
    .line 644
    move v2, v5

    .line 645
    goto :goto_a

    .line 646
    :cond_19
    move v2, v6

    .line 647
    :goto_a
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 648
    .line 649
    .line 650
    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    .line 651
    .line 652
    if-eq v2, v3, :cond_1a

    .line 653
    .line 654
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 655
    .line 656
    .line 657
    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 658
    .line 659
    return v6

    .line 660
    :cond_1a
    invoke-static {v1}, Landroidx/media3/extractor/wav/WavHeaderReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-eqz v2, :cond_1b

    .line 665
    .line 666
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 667
    .line 668
    .line 669
    move-result-wide v2

    .line 670
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 671
    .line 672
    .line 673
    move-result-wide v7

    .line 674
    sub-long/2addr v2, v7

    .line 675
    long-to-int v2, v2

    .line 676
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 677
    .line 678
    .line 679
    iput v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    .line 680
    .line 681
    return v6

    .line 682
    :cond_1b
    const-string v0, "Unsupported or unrecognized wav file type."

    .line 683
    .line 684
    const/4 v1, 0x0

    .line 685
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    throw v0
.end method
