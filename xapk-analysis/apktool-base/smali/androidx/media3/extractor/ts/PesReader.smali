.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# instance fields
.field public final a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public c:I

.field public d:I

.field public e:Landroidx/media3/common/util/TimestampAdjuster;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->h:Z

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 9
    .line 10
    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ts/PesReader;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    const-string v3, "PesReader"

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x3

    .line 18
    iget-object v8, v0, Landroidx/media3/extractor/ts/PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 19
    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    if-eq v2, v9, :cond_3

    .line 28
    .line 29
    if-eq v2, v5, :cond_2

    .line 30
    .line 31
    if-ne v2, v7, :cond_1

    .line 32
    .line 33
    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 34
    .line 35
    if-eq v2, v4, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v10, "Unexpected start indicator: expected "

    .line 40
    .line 41
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v10, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 45
    .line 46
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, " more bytes"

    .line 50
    .line 51
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-interface {v8}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->c()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lio/sentry/d;->d()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    .line 70
    .line 71
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    invoke-interface {v8}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->d()V

    .line 79
    .line 80
    .line 81
    :cond_4
    iput v9, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 82
    .line 83
    iput v6, v0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 84
    .line 85
    :cond_5
    move/from16 v2, p1

    .line 86
    .line 87
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-lez v10, :cond_14

    .line 92
    .line 93
    iget v10, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 94
    .line 95
    if-eqz v10, :cond_13

    .line 96
    .line 97
    iget-object v11, v0, Landroidx/media3/extractor/ts/PesReader;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 98
    .line 99
    if-eq v10, v9, :cond_e

    .line 100
    .line 101
    if-eq v10, v5, :cond_a

    .line 102
    .line 103
    if-ne v10, v7, :cond_9

    .line 104
    .line 105
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    iget v11, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 110
    .line 111
    if-ne v11, v4, :cond_6

    .line 112
    .line 113
    move v11, v6

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    sub-int v11, v10, v11

    .line 116
    .line 117
    :goto_2
    if-lez v11, :cond_7

    .line 118
    .line 119
    sub-int/2addr v10, v11

    .line 120
    iget v11, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 121
    .line 122
    add-int/2addr v11, v10

    .line 123
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-interface {v8, v1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->b(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 127
    .line 128
    .line 129
    iget v11, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 130
    .line 131
    if-eq v11, v4, :cond_8

    .line 132
    .line 133
    sub-int/2addr v11, v10

    .line 134
    iput v11, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 135
    .line 136
    if-nez v11, :cond_8

    .line 137
    .line 138
    invoke-interface {v8}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->c()V

    .line 139
    .line 140
    .line 141
    iput v9, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 142
    .line 143
    iput v6, v0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 144
    .line 145
    :cond_8
    move v10, v5

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_9
    invoke-static {}, Lio/sentry/d;->d()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_a
    const/16 v10, 0xa

    .line 153
    .line 154
    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->i:I

    .line 155
    .line 156
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    iget-object v12, v11, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 161
    .line 162
    invoke-virtual {v0, v1, v12, v10}, Landroidx/media3/extractor/ts/PesReader;->d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_8

    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->i:I

    .line 170
    .line 171
    invoke-virtual {v0, v1, v10, v12}, Landroidx/media3/extractor/ts/PesReader;->d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_8

    .line 176
    .line 177
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 178
    .line 179
    .line 180
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    iput-wide v12, v0, Landroidx/media3/extractor/ts/PesReader;->l:J

    .line 186
    .line 187
    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->f:Z

    .line 188
    .line 189
    const/4 v12, 0x4

    .line 190
    if-eqz v10, :cond_c

    .line 191
    .line 192
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    int-to-long v13, v10

    .line 200
    const/16 v10, 0x1e

    .line 201
    .line 202
    shl-long/2addr v13, v10

    .line 203
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 204
    .line 205
    .line 206
    const/16 v15, 0xf

    .line 207
    .line 208
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    move/from16 p1, v10

    .line 213
    .line 214
    shl-int/lit8 v10, v16, 0xf

    .line 215
    .line 216
    int-to-long v4, v10

    .line 217
    or-long/2addr v4, v13

    .line 218
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    int-to-long v13, v10

    .line 226
    or-long/2addr v4, v13

    .line 227
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 228
    .line 229
    .line 230
    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->h:Z

    .line 231
    .line 232
    if-nez v10, :cond_b

    .line 233
    .line 234
    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->g:Z

    .line 235
    .line 236
    if-eqz v10, :cond_b

    .line 237
    .line 238
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    int-to-long v13, v10

    .line 246
    shl-long v13, v13, p1

    .line 247
    .line 248
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    shl-int/2addr v10, v15

    .line 256
    move-wide/from16 v17, v13

    .line 257
    .line 258
    int-to-long v12, v10

    .line 259
    or-long v12, v17, v12

    .line 260
    .line 261
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    int-to-long v14, v10

    .line 269
    or-long/2addr v12, v14

    .line 270
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 271
    .line 272
    .line 273
    iget-object v10, v0, Landroidx/media3/extractor/ts/PesReader;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 274
    .line 275
    invoke-virtual {v10, v12, v13}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 276
    .line 277
    .line 278
    iput-boolean v9, v0, Landroidx/media3/extractor/ts/PesReader;->h:Z

    .line 279
    .line 280
    :cond_b
    iget-object v10, v0, Landroidx/media3/extractor/ts/PesReader;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 281
    .line 282
    invoke-virtual {v10, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    iput-wide v4, v0, Landroidx/media3/extractor/ts/PesReader;->l:J

    .line 287
    .line 288
    :cond_c
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/PesReader;->k:Z

    .line 289
    .line 290
    if-eqz v4, :cond_d

    .line 291
    .line 292
    const/4 v12, 0x4

    .line 293
    goto :goto_3

    .line 294
    :cond_d
    move v12, v6

    .line 295
    :goto_3
    or-int/2addr v2, v12

    .line 296
    iget-wide v4, v0, Landroidx/media3/extractor/ts/PesReader;->l:J

    .line 297
    .line 298
    invoke-interface {v8, v2, v4, v5}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->e(IJ)V

    .line 299
    .line 300
    .line 301
    iput v7, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 302
    .line 303
    iput v6, v0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 304
    .line 305
    const/4 v4, -0x1

    .line 306
    const/4 v5, 0x2

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_e
    iget-object v4, v11, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 310
    .line 311
    const/16 v5, 0x9

    .line 312
    .line 313
    invoke-virtual {v0, v1, v4, v5}, Landroidx/media3/extractor/ts/PesReader;->d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_12

    .line 318
    .line 319
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 320
    .line 321
    .line 322
    const/16 v4, 0x18

    .line 323
    .line 324
    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-eq v4, v9, :cond_f

    .line 329
    .line 330
    const-string v5, "Unexpected start code prefix: "

    .line 331
    .line 332
    invoke-static {v5, v4, v3}, Lq;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const/4 v4, -0x1

    .line 336
    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 337
    .line 338
    move v5, v6

    .line 339
    const/4 v10, 0x2

    .line 340
    goto :goto_5

    .line 341
    :cond_f
    const/16 v4, 0x8

    .line 342
    .line 343
    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 344
    .line 345
    .line 346
    const/16 v5, 0x10

    .line 347
    .line 348
    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    const/4 v10, 0x5

    .line 353
    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->k:Z

    .line 361
    .line 362
    const/4 v10, 0x2

    .line 363
    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->f:Z

    .line 371
    .line 372
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->g:Z

    .line 377
    .line 378
    const/4 v12, 0x6

    .line 379
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->i:I

    .line 387
    .line 388
    if-nez v5, :cond_10

    .line 389
    .line 390
    const/4 v11, -0x1

    .line 391
    iput v11, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 392
    .line 393
    move v4, v11

    .line 394
    goto :goto_4

    .line 395
    :cond_10
    add-int/lit8 v5, v5, -0x3

    .line 396
    .line 397
    sub-int/2addr v5, v4

    .line 398
    iput v5, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 399
    .line 400
    if-gez v5, :cond_11

    .line 401
    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v5, "Found negative packet payload size: "

    .line 405
    .line 406
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget v5, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 410
    .line 411
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/4 v4, -0x1

    .line 422
    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_11
    const/4 v4, -0x1

    .line 426
    :goto_4
    move v5, v10

    .line 427
    :goto_5
    iput v5, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 428
    .line 429
    iput v6, v0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_12
    const/4 v4, -0x1

    .line 433
    const/4 v10, 0x2

    .line 434
    goto :goto_6

    .line 435
    :cond_13
    move v10, v5

    .line 436
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 441
    .line 442
    .line 443
    :goto_6
    move v5, v10

    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :cond_14
    return-void
.end method

.method public final c(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->e:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 4
    .line 5
    invoke-interface {p0, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->f(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->d:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
.end method
