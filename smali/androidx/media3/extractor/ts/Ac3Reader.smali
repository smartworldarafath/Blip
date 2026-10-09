.class public final Landroidx/media3/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Landroidx/media3/common/Format;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 5
    .line 6
    const/16 v1, 0x80

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 14
    .line 15
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->c:Ljava/lang/String;

    .line 35
    .line 36
    iput p2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->d:I

    .line 37
    .line 38
    iput-object p3, p0, Landroidx/media3/extractor/ts/Ac3Reader;->e:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->j:Z

    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 14
    .line 15
    return-void
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_3e

    .line 15
    .line 16
    iget v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 17
    .line 18
    const/16 v3, 0xb

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x1

    .line 25
    if-eqz v2, :cond_39

    .line 26
    .line 27
    if-eq v2, v7, :cond_3

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->m:I

    .line 37
    .line 38
    iget v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 39
    .line 40
    sub-int/2addr v3, v4

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 46
    .line 47
    invoke-interface {v3, v2, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 48
    .line 49
    .line 50
    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 51
    .line 52
    add-int/2addr v3, v2

    .line 53
    iput v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 54
    .line 55
    iget v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->m:I

    .line 56
    .line 57
    if-ne v3, v2, :cond_0

    .line 58
    .line 59
    iget-wide v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 60
    .line 61
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    cmp-long v2, v2, v4

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v7, v6

    .line 72
    :goto_1
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v8, v0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 76
    .line 77
    iget-wide v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 78
    .line 79
    iget v12, v0, Landroidx/media3/extractor/ts/Ac3Reader;->m:I

    .line 80
    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v14, 0x0

    .line 83
    const/4 v11, 0x1

    .line 84
    invoke-interface/range {v8 .. v14}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 85
    .line 86
    .line 87
    iget-wide v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 88
    .line 89
    iget-wide v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->k:J

    .line 90
    .line 91
    add-long/2addr v2, v4

    .line 92
    iput-wide v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 93
    .line 94
    iput v6, v0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 104
    .line 105
    const/16 v10, 0x80

    .line 106
    .line 107
    rsub-int v9, v9, 0x80

    .line 108
    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 114
    .line 115
    invoke-virtual {v1, v2, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 116
    .line 117
    .line 118
    iget v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 119
    .line 120
    add-int/2addr v2, v8

    .line 121
    iput v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 122
    .line 123
    if-ne v2, v10, :cond_0

    .line 124
    .line 125
    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 126
    .line 127
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->e()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    const/16 v9, 0x28

    .line 135
    .line 136
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 137
    .line 138
    .line 139
    const/4 v9, 0x5

    .line 140
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    const/16 v12, 0xa

    .line 145
    .line 146
    if-le v11, v12, :cond_4

    .line 147
    .line 148
    move v11, v7

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move v11, v6

    .line 151
    :goto_2
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 152
    .line 153
    .line 154
    const-string v8, "audio/ac3"

    .line 155
    .line 156
    sget-object v13, Landroidx/media3/extractor/Ac3Util;->d:[I

    .line 157
    .line 158
    sget-object v14, Landroidx/media3/extractor/Ac3Util;->b:[I

    .line 159
    .line 160
    const/16 v15, 0x8

    .line 161
    .line 162
    const/4 v6, 0x3

    .line 163
    if-eqz v11, :cond_30

    .line 164
    .line 165
    const/16 v11, 0x10

    .line 166
    .line 167
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_7

    .line 175
    .line 176
    if-eq v10, v7, :cond_6

    .line 177
    .line 178
    if-eq v10, v5, :cond_5

    .line 179
    .line 180
    const/4 v10, -0x1

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    move v10, v5

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    move v10, v7

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    const/4 v10, 0x0

    .line 187
    :goto_3
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    add-int/2addr v3, v7

    .line 195
    mul-int/2addr v3, v5

    .line 196
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-ne v11, v6, :cond_8

    .line 201
    .line 202
    sget-object v14, Landroidx/media3/extractor/Ac3Util;->c:[I

    .line 203
    .line 204
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    aget v14, v14, v16

    .line 209
    .line 210
    move/from16 v19, v6

    .line 211
    .line 212
    const/4 v5, 0x6

    .line 213
    goto :goto_4

    .line 214
    :cond_8
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    sget-object v18, Landroidx/media3/extractor/Ac3Util;->a:[I

    .line 219
    .line 220
    aget v18, v18, v16

    .line 221
    .line 222
    aget v14, v14, v11

    .line 223
    .line 224
    move/from16 v19, v16

    .line 225
    .line 226
    move/from16 v5, v18

    .line 227
    .line 228
    :goto_4
    mul-int/lit16 v7, v5, 0x100

    .line 229
    .line 230
    mul-int v16, v3, v14

    .line 231
    .line 232
    mul-int/lit8 v20, v5, 0x20

    .line 233
    .line 234
    div-int v16, v16, v20

    .line 235
    .line 236
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 241
    .line 242
    .line 243
    move-result v21

    .line 244
    aget v13, v13, v9

    .line 245
    .line 246
    add-int v13, v13, v21

    .line 247
    .line 248
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    if-eqz v12, :cond_9

    .line 256
    .line 257
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 258
    .line 259
    .line 260
    :cond_9
    if-nez v9, :cond_a

    .line 261
    .line 262
    const/4 v12, 0x5

    .line 263
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_a

    .line 271
    .line 272
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 273
    .line 274
    .line 275
    :cond_a
    const/4 v12, 0x1

    .line 276
    if-ne v10, v12, :cond_b

    .line 277
    .line 278
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    if-eqz v12, :cond_b

    .line 283
    .line 284
    const/16 v12, 0x10

    .line 285
    .line 286
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 287
    .line 288
    .line 289
    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-eqz v12, :cond_24

    .line 294
    .line 295
    const/4 v12, 0x2

    .line 296
    if-le v9, v12, :cond_c

    .line 297
    .line 298
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 299
    .line 300
    .line 301
    :cond_c
    and-int/lit8 v18, v9, 0x1

    .line 302
    .line 303
    if-eqz v18, :cond_d

    .line 304
    .line 305
    if-le v9, v12, :cond_d

    .line 306
    .line 307
    const/4 v12, 0x6

    .line 308
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_d
    const/4 v12, 0x6

    .line 313
    :goto_5
    and-int/lit8 v17, v9, 0x4

    .line 314
    .line 315
    if-eqz v17, :cond_e

    .line 316
    .line 317
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 318
    .line 319
    .line 320
    :cond_e
    if-eqz v21, :cond_f

    .line 321
    .line 322
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-eqz v12, :cond_f

    .line 327
    .line 328
    const/4 v12, 0x5

    .line 329
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 330
    .line 331
    .line 332
    :cond_f
    if-nez v10, :cond_24

    .line 333
    .line 334
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    if-eqz v12, :cond_10

    .line 339
    .line 340
    const/4 v12, 0x6

    .line 341
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_10
    const/4 v12, 0x6

    .line 346
    :goto_6
    if-nez v9, :cond_11

    .line 347
    .line 348
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 349
    .line 350
    .line 351
    move-result v17

    .line 352
    if-eqz v17, :cond_11

    .line 353
    .line 354
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 355
    .line 356
    .line 357
    :cond_11
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 358
    .line 359
    .line 360
    move-result v17

    .line 361
    if-eqz v17, :cond_12

    .line 362
    .line 363
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 364
    .line 365
    .line 366
    :cond_12
    const/4 v12, 0x2

    .line 367
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 368
    .line 369
    .line 370
    move-result v15

    .line 371
    const/4 v6, 0x1

    .line 372
    if-ne v15, v6, :cond_13

    .line 373
    .line 374
    const/4 v6, 0x5

    .line 375
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 376
    .line 377
    .line 378
    move v15, v12

    .line 379
    goto/16 :goto_a

    .line 380
    .line 381
    :cond_13
    const/4 v6, 0x5

    .line 382
    if-ne v15, v12, :cond_15

    .line 383
    .line 384
    const/16 v12, 0xc

    .line 385
    .line 386
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 387
    .line 388
    .line 389
    :cond_14
    const/4 v15, 0x2

    .line 390
    goto/16 :goto_a

    .line 391
    .line 392
    :cond_15
    const/4 v12, 0x3

    .line 393
    if-ne v15, v12, :cond_14

    .line 394
    .line 395
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 400
    .line 401
    .line 402
    move-result v15

    .line 403
    if-eqz v15, :cond_1e

    .line 404
    .line 405
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-eqz v6, :cond_16

    .line 413
    .line 414
    const/4 v6, 0x4

    .line 415
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_16
    const/4 v6, 0x4

    .line 420
    :goto_7
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    if-eqz v15, :cond_17

    .line 425
    .line 426
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 427
    .line 428
    .line 429
    :cond_17
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 430
    .line 431
    .line 432
    move-result v15

    .line 433
    if-eqz v15, :cond_18

    .line 434
    .line 435
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 436
    .line 437
    .line 438
    :cond_18
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    if-eqz v15, :cond_19

    .line 443
    .line 444
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 445
    .line 446
    .line 447
    :cond_19
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 448
    .line 449
    .line 450
    move-result v15

    .line 451
    if-eqz v15, :cond_1a

    .line 452
    .line 453
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 454
    .line 455
    .line 456
    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 457
    .line 458
    .line 459
    move-result v15

    .line 460
    if-eqz v15, :cond_1b

    .line 461
    .line 462
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 463
    .line 464
    .line 465
    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 466
    .line 467
    .line 468
    move-result v15

    .line 469
    if-eqz v15, :cond_1c

    .line 470
    .line 471
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 472
    .line 473
    .line 474
    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 475
    .line 476
    .line 477
    move-result v15

    .line 478
    if-eqz v15, :cond_1e

    .line 479
    .line 480
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 481
    .line 482
    .line 483
    move-result v15

    .line 484
    if-eqz v15, :cond_1d

    .line 485
    .line 486
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 487
    .line 488
    .line 489
    :cond_1d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 490
    .line 491
    .line 492
    move-result v15

    .line 493
    if-eqz v15, :cond_1e

    .line 494
    .line 495
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 496
    .line 497
    .line 498
    :cond_1e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    if-eqz v6, :cond_1f

    .line 503
    .line 504
    const/4 v6, 0x5

    .line 505
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_1f

    .line 513
    .line 514
    const/4 v6, 0x7

    .line 515
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_1f

    .line 523
    .line 524
    const/16 v6, 0x8

    .line 525
    .line 526
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 527
    .line 528
    .line 529
    :goto_8
    const/4 v15, 0x2

    .line 530
    goto :goto_9

    .line 531
    :cond_1f
    const/16 v6, 0x8

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :goto_9
    add-int/2addr v12, v15

    .line 535
    mul-int/2addr v12, v6

    .line 536
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 540
    .line 541
    .line 542
    :goto_a
    if-ge v9, v15, :cond_21

    .line 543
    .line 544
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    const/16 v12, 0xe

    .line 549
    .line 550
    if-eqz v6, :cond_20

    .line 551
    .line 552
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 553
    .line 554
    .line 555
    :cond_20
    if-nez v9, :cond_21

    .line 556
    .line 557
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-eqz v6, :cond_21

    .line 562
    .line 563
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 564
    .line 565
    .line 566
    :cond_21
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    if-eqz v6, :cond_24

    .line 571
    .line 572
    move/from16 v6, v19

    .line 573
    .line 574
    if-nez v6, :cond_22

    .line 575
    .line 576
    const/4 v12, 0x5

    .line 577
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 578
    .line 579
    .line 580
    goto :goto_c

    .line 581
    :cond_22
    const/4 v15, 0x0

    .line 582
    :goto_b
    const/4 v12, 0x5

    .line 583
    if-ge v15, v5, :cond_25

    .line 584
    .line 585
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 586
    .line 587
    .line 588
    move-result v19

    .line 589
    if-eqz v19, :cond_23

    .line 590
    .line 591
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 592
    .line 593
    .line 594
    :cond_23
    add-int/lit8 v15, v15, 0x1

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_24
    move/from16 v6, v19

    .line 598
    .line 599
    :cond_25
    :goto_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-eqz v5, :cond_2a

    .line 604
    .line 605
    const/4 v12, 0x5

    .line 606
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 607
    .line 608
    .line 609
    const/4 v12, 0x2

    .line 610
    if-ne v9, v12, :cond_26

    .line 611
    .line 612
    const/4 v5, 0x4

    .line 613
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 614
    .line 615
    .line 616
    :cond_26
    const/4 v5, 0x6

    .line 617
    if-lt v9, v5, :cond_27

    .line 618
    .line 619
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 620
    .line 621
    .line 622
    :cond_27
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    if-eqz v5, :cond_28

    .line 627
    .line 628
    const/16 v5, 0x8

    .line 629
    .line 630
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 631
    .line 632
    .line 633
    goto :goto_d

    .line 634
    :cond_28
    const/16 v5, 0x8

    .line 635
    .line 636
    :goto_d
    if-nez v9, :cond_29

    .line 637
    .line 638
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 639
    .line 640
    .line 641
    move-result v9

    .line 642
    if-eqz v9, :cond_29

    .line 643
    .line 644
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 645
    .line 646
    .line 647
    :cond_29
    const/4 v12, 0x3

    .line 648
    if-ge v11, v12, :cond_2b

    .line 649
    .line 650
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 651
    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_2a
    const/4 v12, 0x3

    .line 655
    :cond_2b
    :goto_e
    if-nez v10, :cond_2c

    .line 656
    .line 657
    if-eq v6, v12, :cond_2c

    .line 658
    .line 659
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 660
    .line 661
    .line 662
    :cond_2c
    const/4 v15, 0x2

    .line 663
    if-ne v10, v15, :cond_2e

    .line 664
    .line 665
    if-eq v6, v12, :cond_2d

    .line 666
    .line 667
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_2e

    .line 672
    .line 673
    :cond_2d
    const/4 v12, 0x6

    .line 674
    goto :goto_f

    .line 675
    :cond_2e
    const/4 v12, 0x6

    .line 676
    goto :goto_10

    .line 677
    :goto_f
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 678
    .line 679
    .line 680
    :goto_10
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_2f

    .line 685
    .line 686
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    const/4 v6, 0x1

    .line 691
    if-ne v5, v6, :cond_2f

    .line 692
    .line 693
    const/16 v5, 0x8

    .line 694
    .line 695
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    if-ne v2, v6, :cond_2f

    .line 700
    .line 701
    const-string v2, "audio/eac3-joc"

    .line 702
    .line 703
    goto :goto_11

    .line 704
    :cond_2f
    const-string v2, "audio/eac3"

    .line 705
    .line 706
    :goto_11
    move/from16 v5, v16

    .line 707
    .line 708
    goto :goto_16

    .line 709
    :cond_30
    const/16 v3, 0x20

    .line 710
    .line 711
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 712
    .line 713
    .line 714
    const/4 v12, 0x2

    .line 715
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    const/4 v12, 0x3

    .line 720
    if-ne v3, v12, :cond_31

    .line 721
    .line 722
    const/4 v5, 0x0

    .line 723
    :goto_12
    const/4 v12, 0x6

    .line 724
    goto :goto_13

    .line 725
    :cond_31
    move-object v5, v8

    .line 726
    goto :goto_12

    .line 727
    :goto_13
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 728
    .line 729
    .line 730
    move-result v6

    .line 731
    div-int/lit8 v7, v6, 0x2

    .line 732
    .line 733
    sget-object v9, Landroidx/media3/extractor/Ac3Util;->e:[I

    .line 734
    .line 735
    aget v7, v9, v7

    .line 736
    .line 737
    mul-int/lit16 v7, v7, 0x3e8

    .line 738
    .line 739
    invoke-static {v3, v6}, Landroidx/media3/extractor/Ac3Util;->a(II)I

    .line 740
    .line 741
    .line 742
    move-result v6

    .line 743
    const/16 v9, 0x8

    .line 744
    .line 745
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 746
    .line 747
    .line 748
    const/4 v12, 0x3

    .line 749
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 750
    .line 751
    .line 752
    move-result v9

    .line 753
    and-int/lit8 v10, v9, 0x1

    .line 754
    .line 755
    if-eqz v10, :cond_32

    .line 756
    .line 757
    const/4 v12, 0x1

    .line 758
    if-eq v9, v12, :cond_32

    .line 759
    .line 760
    const/4 v12, 0x2

    .line 761
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 762
    .line 763
    .line 764
    goto :goto_14

    .line 765
    :cond_32
    const/4 v12, 0x2

    .line 766
    :goto_14
    and-int/lit8 v10, v9, 0x4

    .line 767
    .line 768
    if-eqz v10, :cond_33

    .line 769
    .line 770
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 771
    .line 772
    .line 773
    :cond_33
    if-ne v9, v12, :cond_34

    .line 774
    .line 775
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 776
    .line 777
    .line 778
    :cond_34
    const/4 v12, 0x3

    .line 779
    if-ge v3, v12, :cond_35

    .line 780
    .line 781
    aget v15, v14, v3

    .line 782
    .line 783
    goto :goto_15

    .line 784
    :cond_35
    const/4 v15, -0x1

    .line 785
    :goto_15
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    aget v3, v13, v9

    .line 790
    .line 791
    add-int v13, v3, v2

    .line 792
    .line 793
    const/16 v2, 0x600

    .line 794
    .line 795
    move v3, v7

    .line 796
    move v7, v2

    .line 797
    move-object v2, v5

    .line 798
    move v5, v3

    .line 799
    move v3, v6

    .line 800
    move v14, v15

    .line 801
    :goto_16
    iget-object v6, v0, Landroidx/media3/extractor/ts/Ac3Reader;->l:Landroidx/media3/common/Format;

    .line 802
    .line 803
    if-eqz v6, :cond_36

    .line 804
    .line 805
    iget v9, v6, Landroidx/media3/common/Format;->J:I

    .line 806
    .line 807
    if-ne v13, v9, :cond_36

    .line 808
    .line 809
    iget v9, v6, Landroidx/media3/common/Format;->L:I

    .line 810
    .line 811
    if-ne v14, v9, :cond_36

    .line 812
    .line 813
    iget-object v6, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 814
    .line 815
    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    if-nez v6, :cond_38

    .line 820
    .line 821
    :cond_36
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 822
    .line 823
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 824
    .line 825
    .line 826
    iget-object v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->f:Ljava/lang/String;

    .line 827
    .line 828
    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 829
    .line 830
    iget-object v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->e:Ljava/lang/String;

    .line 831
    .line 832
    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v9

    .line 836
    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 837
    .line 838
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v9

    .line 842
    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 843
    .line 844
    iput v13, v6, Landroidx/media3/common/Format$Builder;->I:I

    .line 845
    .line 846
    iput v14, v6, Landroidx/media3/common/Format$Builder;->K:I

    .line 847
    .line 848
    iget-object v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->c:Ljava/lang/String;

    .line 849
    .line 850
    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 851
    .line 852
    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->d:I

    .line 853
    .line 854
    iput v9, v6, Landroidx/media3/common/Format$Builder;->f:I

    .line 855
    .line 856
    iput v5, v6, Landroidx/media3/common/Format$Builder;->j:I

    .line 857
    .line 858
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-eqz v2, :cond_37

    .line 863
    .line 864
    iput v5, v6, Landroidx/media3/common/Format$Builder;->i:I

    .line 865
    .line 866
    :cond_37
    new-instance v2, Landroidx/media3/common/Format;

    .line 867
    .line 868
    invoke-direct {v2, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 869
    .line 870
    .line 871
    iput-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->l:Landroidx/media3/common/Format;

    .line 872
    .line 873
    iget-object v5, v0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 874
    .line 875
    invoke-interface {v5, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 876
    .line 877
    .line 878
    :cond_38
    iput v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->m:I

    .line 879
    .line 880
    const-wide/32 v2, 0xf4240

    .line 881
    .line 882
    .line 883
    int-to-long v5, v7

    .line 884
    mul-long/2addr v5, v2

    .line 885
    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->l:Landroidx/media3/common/Format;

    .line 886
    .line 887
    iget v2, v2, Landroidx/media3/common/Format;->L:I

    .line 888
    .line 889
    int-to-long v2, v2

    .line 890
    div-long/2addr v5, v2

    .line 891
    iput-wide v5, v0, Landroidx/media3/extractor/ts/Ac3Reader;->k:J

    .line 892
    .line 893
    const/4 v2, 0x0

    .line 894
    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 895
    .line 896
    .line 897
    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 898
    .line 899
    const/16 v3, 0x80

    .line 900
    .line 901
    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 902
    .line 903
    .line 904
    const/4 v12, 0x2

    .line 905
    iput v12, v0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 906
    .line 907
    goto/16 :goto_0

    .line 908
    .line 909
    :cond_39
    :goto_17
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-lez v2, :cond_0

    .line 914
    .line 915
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->j:Z

    .line 916
    .line 917
    if-nez v2, :cond_3b

    .line 918
    .line 919
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    if-ne v2, v3, :cond_3a

    .line 924
    .line 925
    const/4 v12, 0x1

    .line 926
    goto :goto_18

    .line 927
    :cond_3a
    const/4 v12, 0x0

    .line 928
    :goto_18
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/Ac3Reader;->j:Z

    .line 929
    .line 930
    goto :goto_17

    .line 931
    :cond_3b
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 932
    .line 933
    .line 934
    move-result v2

    .line 935
    const/16 v5, 0x77

    .line 936
    .line 937
    if-ne v2, v5, :cond_3c

    .line 938
    .line 939
    const/4 v12, 0x0

    .line 940
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/Ac3Reader;->j:Z

    .line 941
    .line 942
    const/4 v6, 0x1

    .line 943
    iput v6, v0, Landroidx/media3/extractor/ts/Ac3Reader;->h:I

    .line 944
    .line 945
    iget-object v2, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 946
    .line 947
    aput-byte v3, v2, v12

    .line 948
    .line 949
    aput-byte v5, v2, v6

    .line 950
    .line 951
    const/4 v15, 0x2

    .line 952
    iput v15, v0, Landroidx/media3/extractor/ts/Ac3Reader;->i:I

    .line 953
    .line 954
    goto/16 :goto_0

    .line 955
    .line 956
    :cond_3c
    const/4 v6, 0x1

    .line 957
    const/4 v12, 0x0

    .line 958
    const/4 v15, 0x2

    .line 959
    if-ne v2, v3, :cond_3d

    .line 960
    .line 961
    move v2, v6

    .line 962
    goto :goto_19

    .line 963
    :cond_3d
    move v2, v12

    .line 964
    :goto_19
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->j:Z

    .line 965
    .line 966
    goto :goto_17

    .line 967
    :cond_3e
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->g:Landroidx/media3/extractor/TrackOutput;

    .line 22
    .line 23
    return-void
.end method
