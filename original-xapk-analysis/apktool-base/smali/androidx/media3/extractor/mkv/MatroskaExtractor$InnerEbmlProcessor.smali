.class final Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IILandroidx/media3/extractor/ExtractorInput;)V
    .locals 22

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 10
    .line 11
    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    .line 12
    .line 13
    iget-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    iget-object v7, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    const/16 v8, 0xa1

    .line 20
    .line 21
    const/16 v9, 0xa3

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x2

    .line 25
    const/4 v12, 0x4

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x1

    .line 28
    if-eq v0, v8, :cond_b

    .line 29
    .line 30
    if-eq v0, v9, :cond_b

    .line 31
    .line 32
    const/16 v2, 0xa5

    .line 33
    .line 34
    if-eq v0, v2, :cond_8

    .line 35
    .line 36
    const/16 v2, 0x41ed

    .line 37
    .line 38
    if-eq v0, v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0x4255

    .line 41
    .line 42
    if-eq v0, v2, :cond_4

    .line 43
    .line 44
    const/16 v2, 0x47e2

    .line 45
    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    const/16 v2, 0x53ab

    .line 49
    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x63a2

    .line 53
    .line 54
    if-eq v0, v2, :cond_1

    .line 55
    .line 56
    const/16 v2, 0x7672

    .line 57
    .line 58
    if-ne v0, v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 64
    .line 65
    new-array v2, v1, [B

    .line 66
    .line 67
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:[B

    .line 68
    .line 69
    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Unexpected id: "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    throw v0

    .line 92
    :cond_1
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 96
    .line 97
    new-array v2, v1, [B

    .line 98
    .line 99
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    .line 100
    .line 101
    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 106
    .line 107
    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 111
    .line 112
    rsub-int/lit8 v2, v1, 0x4

    .line 113
    .line 114
    invoke-interface {v3, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    long-to-int v0, v0

    .line 125
    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:I

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    new-array v2, v1, [B

    .line 129
    .line 130
    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 137
    .line 138
    new-instance v1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 139
    .line 140
    invoke-direct {v1, v14, v13, v13, v2}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(III[B)V

    .line 141
    .line 142
    .line 143
    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 150
    .line 151
    new-array v2, v1, [B

    .line 152
    .line 153
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:[B

    .line 154
    .line 155
    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_5
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 163
    .line 164
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:I

    .line 165
    .line 166
    const v4, 0x64767643

    .line 167
    .line 168
    .line 169
    if-eq v2, v4, :cond_7

    .line 170
    .line 171
    const v4, 0x64766343

    .line 172
    .line 173
    .line 174
    if-ne v2, v4, :cond_6

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_7
    :goto_0
    new-array v2, v1, [B

    .line 182
    .line 183
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    .line 184
    .line 185
    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 190
    .line 191
    if-eq v0, v11, :cond_9

    .line 192
    .line 193
    goto/16 :goto_11

    .line 194
    .line 195
    :cond_9
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    .line 196
    .line 197
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 202
    .line 203
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d0:I

    .line 204
    .line 205
    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Landroidx/media3/common/util/ParsableByteArray;

    .line 206
    .line 207
    if-ne v2, v12, :cond_a

    .line 208
    .line 209
    const-string v2, "V_VP9"

    .line 210
    .line 211
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 223
    .line 224
    invoke-interface {v3, v0, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_a
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_b
    iget v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 233
    .line 234
    const/16 v8, 0x8

    .line 235
    .line 236
    if-nez v6, :cond_c

    .line 237
    .line 238
    invoke-virtual {v2, v3, v13, v14, v8}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    long-to-int v9, v9

    .line 243
    iput v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    .line 244
    .line 245
    iget v2, v2, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    .line 246
    .line 247
    iput v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 248
    .line 249
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    iput-wide v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:J

    .line 255
    .line 256
    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 257
    .line 258
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 259
    .line 260
    .line 261
    :cond_c
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    .line 262
    .line 263
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object v5, v2

    .line 268
    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 269
    .line 270
    if-nez v5, :cond_d

    .line 271
    .line 272
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 273
    .line 274
    sub-int v0, v1, v0

    .line 275
    .line 276
    invoke-interface {v3, v0}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 277
    .line 278
    .line 279
    iput v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 280
    .line 281
    return-void

    .line 282
    :cond_d
    iget-object v2, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 288
    .line 289
    if-ne v2, v14, :cond_21

    .line 290
    .line 291
    const/4 v2, 0x3

    .line 292
    invoke-virtual {v4, v3, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 293
    .line 294
    .line 295
    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 296
    .line 297
    aget-byte v9, v9, v11

    .line 298
    .line 299
    and-int/lit8 v9, v9, 0x6

    .line 300
    .line 301
    shr-int/2addr v9, v14

    .line 302
    const/16 v10, 0xff

    .line 303
    .line 304
    if-nez v9, :cond_10

    .line 305
    .line 306
    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 307
    .line 308
    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 309
    .line 310
    if-nez v6, :cond_e

    .line 311
    .line 312
    new-array v6, v14, [I

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_e
    array-length v9, v6

    .line 316
    if-lt v9, v14, :cond_f

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_f
    array-length v6, v6

    .line 320
    mul-int/2addr v6, v11

    .line 321
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    new-array v6, v6, [I

    .line 326
    .line 327
    :goto_1
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 328
    .line 329
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 330
    .line 331
    sub-int/2addr v1, v9

    .line 332
    sub-int/2addr v1, v2

    .line 333
    aput v1, v6, v13

    .line 334
    .line 335
    :goto_2
    move/from16 v18, v8

    .line 336
    .line 337
    move/from16 v19, v11

    .line 338
    .line 339
    move/from16 v17, v13

    .line 340
    .line 341
    goto/16 :goto_b

    .line 342
    .line 343
    :cond_10
    invoke-virtual {v4, v3, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 344
    .line 345
    .line 346
    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 347
    .line 348
    aget-byte v15, v15, v2

    .line 349
    .line 350
    and-int/2addr v15, v10

    .line 351
    add-int/2addr v15, v14

    .line 352
    iput v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 353
    .line 354
    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 355
    .line 356
    if-nez v6, :cond_11

    .line 357
    .line 358
    new-array v6, v15, [I

    .line 359
    .line 360
    move/from16 v17, v12

    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_11
    move/from16 v17, v12

    .line 364
    .line 365
    array-length v12, v6

    .line 366
    if-lt v12, v15, :cond_12

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_12
    array-length v6, v6

    .line 370
    mul-int/2addr v6, v11

    .line 371
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    new-array v6, v6, [I

    .line 376
    .line 377
    :goto_3
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 378
    .line 379
    if-ne v9, v11, :cond_13

    .line 380
    .line 381
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 382
    .line 383
    sub-int/2addr v1, v2

    .line 384
    add-int/lit8 v1, v1, -0x4

    .line 385
    .line 386
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 387
    .line 388
    div-int/2addr v1, v2

    .line 389
    invoke-static {v6, v13, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 390
    .line 391
    .line 392
    goto :goto_2

    .line 393
    :cond_13
    if-ne v9, v14, :cond_16

    .line 394
    .line 395
    move v2, v13

    .line 396
    move v6, v2

    .line 397
    move/from16 v12, v17

    .line 398
    .line 399
    :goto_4
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 400
    .line 401
    sub-int/2addr v9, v14

    .line 402
    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 403
    .line 404
    if-ge v2, v9, :cond_15

    .line 405
    .line 406
    aput v13, v15, v2

    .line 407
    .line 408
    :goto_5
    add-int/lit8 v9, v12, 0x1

    .line 409
    .line 410
    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 411
    .line 412
    .line 413
    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 414
    .line 415
    aget-byte v12, v15, v12

    .line 416
    .line 417
    and-int/2addr v12, v10

    .line 418
    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 419
    .line 420
    aget v16, v15, v2

    .line 421
    .line 422
    add-int v16, v16, v12

    .line 423
    .line 424
    aput v16, v15, v2

    .line 425
    .line 426
    if-eq v12, v10, :cond_14

    .line 427
    .line 428
    add-int v6, v6, v16

    .line 429
    .line 430
    add-int/lit8 v2, v2, 0x1

    .line 431
    .line 432
    move v12, v9

    .line 433
    goto :goto_4

    .line 434
    :cond_14
    move v12, v9

    .line 435
    goto :goto_5

    .line 436
    :cond_15
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 437
    .line 438
    sub-int/2addr v1, v2

    .line 439
    sub-int/2addr v1, v12

    .line 440
    sub-int/2addr v1, v6

    .line 441
    aput v1, v15, v9

    .line 442
    .line 443
    goto :goto_2

    .line 444
    :cond_16
    if-ne v9, v2, :cond_22

    .line 445
    .line 446
    move v2, v13

    .line 447
    move v6, v2

    .line 448
    move/from16 v12, v17

    .line 449
    .line 450
    :goto_6
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 451
    .line 452
    sub-int/2addr v9, v14

    .line 453
    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 454
    .line 455
    if-ge v2, v9, :cond_1e

    .line 456
    .line 457
    aput v13, v15, v2

    .line 458
    .line 459
    add-int/lit8 v9, v12, 0x1

    .line 460
    .line 461
    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 462
    .line 463
    .line 464
    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 465
    .line 466
    aget-byte v15, v15, v12

    .line 467
    .line 468
    if-eqz v15, :cond_1d

    .line 469
    .line 470
    move v15, v13

    .line 471
    :goto_7
    if-ge v15, v8, :cond_19

    .line 472
    .line 473
    rsub-int/lit8 v17, v15, 0x7

    .line 474
    .line 475
    move/from16 v18, v8

    .line 476
    .line 477
    shl-int v8, v14, v17

    .line 478
    .line 479
    move/from16 v17, v13

    .line 480
    .line 481
    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 482
    .line 483
    aget-byte v13, v13, v12

    .line 484
    .line 485
    and-int/2addr v13, v8

    .line 486
    if-eqz v13, :cond_18

    .line 487
    .line 488
    add-int v13, v9, v15

    .line 489
    .line 490
    invoke-virtual {v4, v3, v13}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m(Landroidx/media3/extractor/ExtractorInput;I)V

    .line 491
    .line 492
    .line 493
    move/from16 v19, v11

    .line 494
    .line 495
    iget-object v11, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 496
    .line 497
    aget-byte v11, v11, v12

    .line 498
    .line 499
    and-int/2addr v11, v10

    .line 500
    not-int v8, v8

    .line 501
    and-int/2addr v8, v11

    .line 502
    int-to-long v11, v8

    .line 503
    :goto_8
    if-ge v9, v13, :cond_17

    .line 504
    .line 505
    shl-long v11, v11, v18

    .line 506
    .line 507
    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 508
    .line 509
    add-int/lit8 v20, v9, 0x1

    .line 510
    .line 511
    aget-byte v8, v8, v9

    .line 512
    .line 513
    and-int/2addr v8, v10

    .line 514
    int-to-long v8, v8

    .line 515
    or-long/2addr v11, v8

    .line 516
    move/from16 v9, v20

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_17
    if-lez v2, :cond_1a

    .line 520
    .line 521
    mul-int/lit8 v15, v15, 0x7

    .line 522
    .line 523
    add-int/lit8 v15, v15, 0x6

    .line 524
    .line 525
    const-wide/16 v8, 0x1

    .line 526
    .line 527
    shl-long v20, v8, v15

    .line 528
    .line 529
    sub-long v20, v20, v8

    .line 530
    .line 531
    sub-long v11, v11, v20

    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_18
    move/from16 v19, v11

    .line 535
    .line 536
    add-int/lit8 v15, v15, 0x1

    .line 537
    .line 538
    move/from16 v13, v17

    .line 539
    .line 540
    move/from16 v8, v18

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_19
    move/from16 v18, v8

    .line 544
    .line 545
    move/from16 v19, v11

    .line 546
    .line 547
    move/from16 v17, v13

    .line 548
    .line 549
    const-wide/16 v11, 0x0

    .line 550
    .line 551
    move v13, v9

    .line 552
    :cond_1a
    :goto_9
    const-wide/32 v8, -0x80000000

    .line 553
    .line 554
    .line 555
    cmp-long v8, v11, v8

    .line 556
    .line 557
    if-ltz v8, :cond_1c

    .line 558
    .line 559
    const-wide/32 v8, 0x7fffffff

    .line 560
    .line 561
    .line 562
    cmp-long v8, v11, v8

    .line 563
    .line 564
    if-gtz v8, :cond_1c

    .line 565
    .line 566
    long-to-int v8, v11

    .line 567
    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 568
    .line 569
    if-nez v2, :cond_1b

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_1b
    add-int/lit8 v11, v2, -0x1

    .line 573
    .line 574
    aget v11, v9, v11

    .line 575
    .line 576
    add-int/2addr v8, v11

    .line 577
    :goto_a
    aput v8, v9, v2

    .line 578
    .line 579
    add-int/2addr v6, v8

    .line 580
    add-int/lit8 v2, v2, 0x1

    .line 581
    .line 582
    move v12, v13

    .line 583
    move/from16 v13, v17

    .line 584
    .line 585
    move/from16 v8, v18

    .line 586
    .line 587
    move/from16 v11, v19

    .line 588
    .line 589
    goto/16 :goto_6

    .line 590
    .line 591
    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    .line 592
    .line 593
    const/4 v6, 0x0

    .line 594
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    throw v0

    .line 599
    :cond_1d
    const/4 v6, 0x0

    .line 600
    const-string v0, "No valid varint length mask found"

    .line 601
    .line 602
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    throw v0

    .line 607
    :cond_1e
    move/from16 v18, v8

    .line 608
    .line 609
    move/from16 v19, v11

    .line 610
    .line 611
    move/from16 v17, v13

    .line 612
    .line 613
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    .line 614
    .line 615
    sub-int/2addr v1, v2

    .line 616
    sub-int/2addr v1, v12

    .line 617
    sub-int/2addr v1, v6

    .line 618
    aput v1, v15, v9

    .line 619
    .line 620
    :goto_b
    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 621
    .line 622
    aget-byte v2, v1, v17

    .line 623
    .line 624
    shl-int/lit8 v2, v2, 0x8

    .line 625
    .line 626
    aget-byte v1, v1, v14

    .line 627
    .line 628
    and-int/2addr v1, v10

    .line 629
    or-int/2addr v1, v2

    .line 630
    iget-wide v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:J

    .line 631
    .line 632
    int-to-long v1, v1

    .line 633
    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(J)J

    .line 634
    .line 635
    .line 636
    move-result-wide v1

    .line 637
    add-long/2addr v1, v8

    .line 638
    iput-wide v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:J

    .line 639
    .line 640
    iget v1, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 641
    .line 642
    if-eq v1, v14, :cond_20

    .line 643
    .line 644
    const/16 v1, 0xa3

    .line 645
    .line 646
    if-ne v0, v1, :cond_1f

    .line 647
    .line 648
    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 649
    .line 650
    aget-byte v1, v1, v19

    .line 651
    .line 652
    const/16 v2, 0x80

    .line 653
    .line 654
    and-int/2addr v1, v2

    .line 655
    if-ne v1, v2, :cond_1f

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_1f
    move/from16 v1, v17

    .line 659
    .line 660
    goto :goto_d

    .line 661
    :cond_20
    :goto_c
    move v1, v14

    .line 662
    :goto_d
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 663
    .line 664
    move/from16 v1, v19

    .line 665
    .line 666
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 667
    .line 668
    move/from16 v1, v17

    .line 669
    .line 670
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 671
    .line 672
    :cond_21
    const/16 v1, 0xa3

    .line 673
    .line 674
    goto :goto_e

    .line 675
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    const-string v1, "Unexpected lacing value: "

    .line 678
    .line 679
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const/4 v6, 0x0

    .line 690
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    throw v0

    .line 695
    :goto_e
    if-ne v0, v1, :cond_24

    .line 696
    .line 697
    :goto_f
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 698
    .line 699
    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 700
    .line 701
    if-ge v0, v1, :cond_23

    .line 702
    .line 703
    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 704
    .line 705
    aget v0, v1, v0

    .line 706
    .line 707
    const/4 v1, 0x0

    .line 708
    invoke-virtual {v4, v3, v5, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    .line 709
    .line 710
    .line 711
    move-result v9

    .line 712
    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:J

    .line 713
    .line 714
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 715
    .line 716
    iget v6, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g:I

    .line 717
    .line 718
    mul-int/2addr v2, v6

    .line 719
    div-int/lit16 v2, v2, 0x3e8

    .line 720
    .line 721
    int-to-long v6, v2

    .line 722
    add-long/2addr v6, v0

    .line 723
    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    .line 724
    .line 725
    const/4 v10, 0x0

    .line 726
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 727
    .line 728
    .line 729
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 730
    .line 731
    add-int/2addr v0, v14

    .line 732
    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 733
    .line 734
    goto :goto_f

    .line 735
    :cond_23
    const/4 v1, 0x0

    .line 736
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    .line 737
    .line 738
    return-void

    .line 739
    :cond_24
    :goto_10
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 740
    .line 741
    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    .line 742
    .line 743
    if-ge v0, v1, :cond_25

    .line 744
    .line 745
    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    .line 746
    .line 747
    aget v2, v1, v0

    .line 748
    .line 749
    invoke-virtual {v4, v3, v5, v2, v14}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    aput v2, v1, v0

    .line 754
    .line 755
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 756
    .line 757
    add-int/2addr v0, v14

    .line 758
    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    .line 759
    .line 760
    goto :goto_10

    .line 761
    :cond_25
    :goto_11
    return-void
.end method

.method public final b(IJ)V
    .locals 9

    .line 1
    const/16 v0, 0x88

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq p1, v0, :cond_21

    .line 10
    .line 11
    const/16 v0, 0x89

    .line 12
    .line 13
    if-eq p1, v0, :cond_20

    .line 14
    .line 15
    const/16 v0, 0x91

    .line 16
    .line 17
    if-eq p1, v0, :cond_1f

    .line 18
    .line 19
    const/16 v0, 0x92

    .line 20
    .line 21
    if-eq p1, v0, :cond_1e

    .line 22
    .line 23
    const/16 v0, 0xf0

    .line 24
    .line 25
    const-wide/16 v5, -0x1

    .line 26
    .line 27
    if-eq p1, v0, :cond_1c

    .line 28
    .line 29
    const/16 v0, 0xf1

    .line 30
    .line 31
    if-eq p1, v0, :cond_1b

    .line 32
    .line 33
    const/16 v0, 0x5031

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v6, " not supported"

    .line 37
    .line 38
    if-eq p1, v0, :cond_19

    .line 39
    .line 40
    const/16 v0, 0x5032

    .line 41
    .line 42
    if-eq p1, v0, :cond_17

    .line 43
    .line 44
    const/16 v0, 0x73c4

    .line 45
    .line 46
    if-eq p1, v0, :cond_16

    .line 47
    .line 48
    const/16 v0, 0x73c5

    .line 49
    .line 50
    if-eq p1, v0, :cond_15

    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    const/4 v7, 0x3

    .line 54
    const/4 v8, 0x2

    .line 55
    sparse-switch p1, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 67
    .line 68
    long-to-int p1, p2

    .line 69
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 76
    .line 77
    long-to-int p1, p2

    .line 78
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 82
    .line 83
    .line 84
    long-to-int p1, p2

    .line 85
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->f(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eq p1, v0, :cond_1d

    .line 90
    .line 91
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 92
    .line 93
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 97
    .line 98
    .line 99
    long-to-int p1, p2

    .line 100
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->g(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eq p1, v0, :cond_1d

    .line 105
    .line 106
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 107
    .line 108
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 112
    .line 113
    .line 114
    long-to-int p1, p2

    .line 115
    if-eq p1, v4, :cond_1

    .line 116
    .line 117
    if-eq p1, v8, :cond_0

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 122
    .line 123
    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    .line 124
    .line 125
    return-void

    .line 126
    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 127
    .line 128
    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    .line 129
    .line 130
    return-void

    .line 131
    :sswitch_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    .line 132
    .line 133
    return-void

    .line 134
    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 138
    .line 139
    long-to-int p1, p2

    .line 140
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g:I

    .line 141
    .line 142
    return-void

    .line 143
    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 144
    .line 145
    .line 146
    long-to-int p1, p2

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    if-eq p1, v4, :cond_4

    .line 150
    .line 151
    if-eq p1, v8, :cond_3

    .line 152
    .line 153
    if-eq p1, v7, :cond_2

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 158
    .line 159
    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    .line 160
    .line 161
    return-void

    .line 162
    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 163
    .line 164
    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 168
    .line 169
    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    .line 170
    .line 171
    return-void

    .line 172
    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 173
    .line 174
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_3
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:J

    .line 178
    .line 179
    return-void

    .line 180
    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 184
    .line 185
    long-to-int p1, p2

    .line 186
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    .line 187
    .line 188
    return-void

    .line 189
    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 193
    .line 194
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:J

    .line 195
    .line 196
    return-void

    .line 197
    :sswitch_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 201
    .line 202
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    .line 203
    .line 204
    return-void

    .line 205
    :sswitch_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 209
    .line 210
    long-to-int p1, p2

    .line 211
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->h:I

    .line 212
    .line 213
    return-void

    .line 214
    :sswitch_8
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 218
    .line 219
    long-to-int p1, p2

    .line 220
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    .line 221
    .line 222
    return-void

    .line 223
    :sswitch_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 227
    .line 228
    cmp-long p1, p2, v2

    .line 229
    .line 230
    if-nez p1, :cond_6

    .line 231
    .line 232
    move v1, v4

    .line 233
    :cond_6
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Z

    .line 234
    .line 235
    return-void

    .line 236
    :sswitch_a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 240
    .line 241
    long-to-int p1, p2

    .line 242
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    .line 243
    .line 244
    return-void

    .line 245
    :sswitch_b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 246
    .line 247
    .line 248
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 249
    .line 250
    long-to-int p1, p2

    .line 251
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    .line 252
    .line 253
    return-void

    .line 254
    :sswitch_c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 258
    .line 259
    long-to-int p1, p2

    .line 260
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    .line 261
    .line 262
    return-void

    .line 263
    :sswitch_d
    long-to-int p2, p2

    .line 264
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 265
    .line 266
    .line 267
    if-eqz p2, :cond_a

    .line 268
    .line 269
    if-eq p2, v4, :cond_9

    .line 270
    .line 271
    if-eq p2, v7, :cond_8

    .line 272
    .line 273
    const/16 p1, 0xf

    .line 274
    .line 275
    if-eq p2, p1, :cond_7

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_7
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 280
    .line 281
    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 282
    .line 283
    return-void

    .line 284
    :cond_8
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 285
    .line 286
    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 287
    .line 288
    return-void

    .line 289
    :cond_9
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 290
    .line 291
    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 292
    .line 293
    return-void

    .line 294
    :cond_a
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 295
    .line 296
    iput v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 297
    .line 298
    return-void

    .line 299
    :sswitch_e
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    .line 300
    .line 301
    add-long/2addr p2, v0

    .line 302
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:J

    .line 303
    .line 304
    return-void

    .line 305
    :sswitch_f
    cmp-long p0, p2, v2

    .line 306
    .line 307
    if-nez p0, :cond_b

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string p1, "AESSettingsCipherMode "

    .line 314
    .line 315
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    throw p0

    .line 333
    :sswitch_10
    const-wide/16 p0, 0x5

    .line 334
    .line 335
    cmp-long p0, p2, p0

    .line 336
    .line 337
    if-nez p0, :cond_c

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string p1, "ContentEncAlgo "

    .line 344
    .line 345
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    throw p0

    .line 363
    :sswitch_11
    cmp-long p0, p2, v2

    .line 364
    .line 365
    if-nez p0, :cond_d

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string p1, "EBMLReadVersion "

    .line 372
    .line 373
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    throw p0

    .line 391
    :sswitch_12
    cmp-long p0, p2, v2

    .line 392
    .line 393
    if-ltz p0, :cond_e

    .line 394
    .line 395
    const-wide/16 p0, 0x2

    .line 396
    .line 397
    cmp-long p0, p2, p0

    .line 398
    .line 399
    if-gtz p0, :cond_e

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string p1, "DocTypeReadVersion "

    .line 406
    .line 407
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    throw p0

    .line 425
    :sswitch_13
    const-wide/16 p0, 0x3

    .line 426
    .line 427
    cmp-long p0, p2, p0

    .line 428
    .line 429
    if-nez p0, :cond_f

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string p1, "ContentCompAlgo "

    .line 436
    .line 437
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    throw p0

    .line 455
    :sswitch_14
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 456
    .line 457
    .line 458
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 459
    .line 460
    long-to-int p1, p2

    .line 461
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:I

    .line 462
    .line 463
    return-void

    .line 464
    :sswitch_15
    iput-boolean v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    .line 465
    .line 466
    return-void

    .line 467
    :sswitch_16
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 468
    .line 469
    if-nez v0, :cond_1d

    .line 470
    .line 471
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 472
    .line 473
    .line 474
    long-to-int p1, p2

    .line 475
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    .line 476
    .line 477
    return-void

    .line 478
    :sswitch_17
    long-to-int p1, p2

    .line 479
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d0:I

    .line 480
    .line 481
    return-void

    .line 482
    :sswitch_18
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(J)J

    .line 483
    .line 484
    .line 485
    move-result-wide p1

    .line 486
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:J

    .line 487
    .line 488
    return-void

    .line 489
    :sswitch_19
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 490
    .line 491
    .line 492
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 493
    .line 494
    long-to-int p1, p2

    .line 495
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    .line 496
    .line 497
    return-void

    .line 498
    :sswitch_1a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 499
    .line 500
    .line 501
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 502
    .line 503
    long-to-int p1, p2

    .line 504
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    .line 505
    .line 506
    return-void

    .line 507
    :sswitch_1b
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 508
    .line 509
    if-nez v0, :cond_1d

    .line 510
    .line 511
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(J)J

    .line 515
    .line 516
    .line 517
    move-result-wide p1

    .line 518
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    .line 519
    .line 520
    return-void

    .line 521
    :sswitch_1c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 522
    .line 523
    .line 524
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 525
    .line 526
    long-to-int p1, p2

    .line 527
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    .line 528
    .line 529
    return-void

    .line 530
    :sswitch_1d
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 531
    .line 532
    .line 533
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 534
    .line 535
    long-to-int p1, p2

    .line 536
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    .line 537
    .line 538
    return-void

    .line 539
    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(J)J

    .line 540
    .line 541
    .line 542
    move-result-wide p1

    .line 543
    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:J

    .line 544
    .line 545
    return-void

    .line 546
    :sswitch_1f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    cmp-long p1, p2, v2

    .line 551
    .line 552
    if-nez p1, :cond_10

    .line 553
    .line 554
    move v1, v4

    .line 555
    :cond_10
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->d:Z

    .line 556
    .line 557
    return-void

    .line 558
    :sswitch_20
    long-to-int p2, p2

    .line 559
    if-eq p2, v4, :cond_14

    .line 560
    .line 561
    if-eq p2, v8, :cond_13

    .line 562
    .line 563
    const/16 p3, 0x11

    .line 564
    .line 565
    if-eq p2, p3, :cond_12

    .line 566
    .line 567
    const/16 p3, 0x21

    .line 568
    .line 569
    if-eq p2, p3, :cond_11

    .line 570
    .line 571
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 572
    .line 573
    .line 574
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 575
    .line 576
    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 577
    .line 578
    return-void

    .line 579
    :cond_11
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 580
    .line 581
    .line 582
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 583
    .line 584
    const/4 p1, 0x5

    .line 585
    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 586
    .line 587
    return-void

    .line 588
    :cond_12
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 589
    .line 590
    .line 591
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 592
    .line 593
    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 594
    .line 595
    return-void

    .line 596
    :cond_13
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 597
    .line 598
    .line 599
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 600
    .line 601
    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 602
    .line 603
    return-void

    .line 604
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 605
    .line 606
    .line 607
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 608
    .line 609
    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    .line 610
    .line 611
    return-void

    .line 612
    :cond_15
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 613
    .line 614
    .line 615
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 616
    .line 617
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:J

    .line 618
    .line 619
    return-void

    .line 620
    :cond_16
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->a:J

    .line 625
    .line 626
    return-void

    .line 627
    :cond_17
    cmp-long p0, p2, v2

    .line 628
    .line 629
    if-nez p0, :cond_18

    .line 630
    .line 631
    goto :goto_0

    .line 632
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string p1, "ContentEncodingScope "

    .line 635
    .line 636
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p0

    .line 649
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    throw p0

    .line 654
    :cond_19
    const-wide/16 p0, 0x0

    .line 655
    .line 656
    cmp-long p0, p2, p0

    .line 657
    .line 658
    if-nez p0, :cond_1a

    .line 659
    .line 660
    goto :goto_0

    .line 661
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    const-string p1, "ContentEncodingOrder "

    .line 664
    .line 665
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    invoke-static {v5, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    throw p0

    .line 683
    :cond_1b
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 684
    .line 685
    if-nez v0, :cond_1d

    .line 686
    .line 687
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 688
    .line 689
    .line 690
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    .line 691
    .line 692
    cmp-long p1, v0, v5

    .line 693
    .line 694
    if-nez p1, :cond_1d

    .line 695
    .line 696
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    .line 697
    .line 698
    return-void

    .line 699
    :cond_1c
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 700
    .line 701
    if-nez v0, :cond_1d

    .line 702
    .line 703
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 704
    .line 705
    .line 706
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    .line 707
    .line 708
    cmp-long p1, v0, v5

    .line 709
    .line 710
    if-nez p1, :cond_1d

    .line 711
    .line 712
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    .line 713
    .line 714
    :cond_1d
    :goto_0
    return-void

    .line 715
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->c:J

    .line 720
    .line 721
    return-void

    .line 722
    :cond_1f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 723
    .line 724
    .line 725
    move-result-object p0

    .line 726
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->b:J

    .line 727
    .line 728
    return-void

    .line 729
    :cond_20
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->e:J

    .line 734
    .line 735
    return-void

    .line 736
    :cond_21
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 737
    .line 738
    .line 739
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 740
    .line 741
    cmp-long p1, p2, v2

    .line 742
    .line 743
    if-nez p1, :cond_22

    .line 744
    .line 745
    move v1, v4

    .line 746
    :cond_22
    iput-boolean v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Z

    .line 747
    .line 748
    return-void

    .line 749
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x98 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(IJJ)V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x80

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eq p1, v0, :cond_f

    .line 12
    .line 13
    const/16 v0, 0xa0

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq p1, v0, :cond_e

    .line 19
    .line 20
    const/16 v0, 0xae

    .line 21
    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eq p1, v0, :cond_d

    .line 25
    .line 26
    const/16 v0, 0xbb

    .line 27
    .line 28
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    if-eq p1, v0, :cond_b

    .line 34
    .line 35
    const/16 v0, 0x4dbb

    .line 36
    .line 37
    const-wide/16 v7, -0x1

    .line 38
    .line 39
    if-eq p1, v0, :cond_a

    .line 40
    .line 41
    const/16 v0, 0x5035

    .line 42
    .line 43
    if-eq p1, v0, :cond_9

    .line 44
    .line 45
    const v0, 0x18538067

    .line 46
    .line 47
    .line 48
    if-eq p1, v0, :cond_6

    .line 49
    .line 50
    const p2, 0x1c53bb6b

    .line 51
    .line 52
    .line 53
    if-eq p1, p2, :cond_5

    .line 54
    .line 55
    const p2, 0x1f43b675

    .line 56
    .line 57
    .line 58
    if-eq p1, p2, :cond_2

    .line 59
    .line 60
    const/16 p2, 0xb6

    .line 61
    .line 62
    if-eq p1, p2, :cond_1

    .line 63
    .line 64
    const/16 p2, 0xb7

    .line 65
    .line 66
    if-eq p1, p2, :cond_0

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_0
    iget-boolean p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 71
    .line 72
    if-nez p2, :cond_c

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 75
    .line 76
    .line 77
    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    .line 78
    .line 79
    iput-wide v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    .line 80
    .line 81
    iput-wide v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-wide v2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->b:J

    .line 90
    .line 91
    iput-wide v2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->c:J

    .line 92
    .line 93
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    iget-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:J

    .line 97
    .line 98
    cmp-long p1, p1, v7

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:Z

    .line 103
    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:Z

    .line 107
    .line 108
    :cond_3
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 109
    .line 110
    if-nez p1, :cond_c

    .line 111
    .line 112
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e:Z

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    iget-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    .line 117
    .line 118
    cmp-long p1, p1, v7

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:Z

    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    .line 126
    .line 127
    new-instance p2, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 128
    .line 129
    iget-wide p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    .line 130
    .line 131
    invoke-direct {p2, p3, p4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 135
    .line 136
    .line 137
    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 141
    .line 142
    if-nez p1, :cond_c

    .line 143
    .line 144
    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:Z

    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    .line 148
    .line 149
    cmp-long p1, v2, v7

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    cmp-long p1, v2, p2

    .line 154
    .line 155
    if-nez p1, :cond_7

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_7
    const-string p0, "Multiple Segment elements not supported"

    .line 159
    .line 160
    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    throw p0

    .line 165
    :cond_8
    :goto_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    .line 166
    .line 167
    iput-wide p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    .line 168
    .line 169
    return-void

    .line 170
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 174
    .line 175
    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:Z

    .line 176
    .line 177
    return-void

    .line 178
    :cond_a
    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:I

    .line 179
    .line 180
    iput-wide v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:J

    .line 181
    .line 182
    return-void

    .line 183
    :cond_b
    iget-boolean p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 184
    .line 185
    if-nez p2, :cond_c

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 188
    .line 189
    .line 190
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    .line 191
    .line 192
    :cond_c
    :goto_1
    return-void

    .line 193
    :cond_d
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 194
    .line 195
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    .line 199
    .line 200
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    .line 201
    .line 202
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    .line 203
    .line 204
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    .line 205
    .line 206
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    .line 207
    .line 208
    iput v4, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    .line 209
    .line 210
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    .line 211
    .line 212
    const/4 p2, 0x0

    .line 213
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    .line 214
    .line 215
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    .line 216
    .line 217
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    .line 218
    .line 219
    iput-object v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:[B

    .line 220
    .line 221
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 222
    .line 223
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    .line 224
    .line 225
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    .line 226
    .line 227
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    .line 228
    .line 229
    const/16 p2, 0x3e8

    .line 230
    .line 231
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    .line 232
    .line 233
    const/16 p2, 0xc8

    .line 234
    .line 235
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    .line 236
    .line 237
    const/high16 p2, -0x40800000    # -1.0f

    .line 238
    .line 239
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    .line 240
    .line 241
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    .line 242
    .line 243
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    .line 244
    .line 245
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    .line 246
    .line 247
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    .line 248
    .line 249
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    .line 250
    .line 251
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    .line 252
    .line 253
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    .line 254
    .line 255
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    .line 256
    .line 257
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    .line 258
    .line 259
    iput v6, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    .line 260
    .line 261
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    .line 262
    .line 263
    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    .line 264
    .line 265
    const/16 p2, 0x1f40

    .line 266
    .line 267
    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:I

    .line 268
    .line 269
    iput-wide v2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    .line 270
    .line 271
    iput-wide v2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:J

    .line 272
    .line 273
    iput-boolean v4, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    .line 274
    .line 275
    iput-boolean v6, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Z

    .line 276
    .line 277
    const-string p2, "eng"

    .line 278
    .line 279
    iput-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:Ljava/lang/String;

    .line 280
    .line 281
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 282
    .line 283
    iget-boolean p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->x:Z

    .line 284
    .line 285
    iput-boolean p0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a:Z

    .line 286
    .line 287
    return-void

    .line 288
    :cond_e
    iput-boolean v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    .line 289
    .line 290
    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:J

    .line 291
    .line 292
    return-void

    .line 293
    :cond_f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    iput-object v1, p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->h:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->i:Ljava/lang/String;

    .line 304
    .line 305
    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x85

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 4
    .line 5
    if-eq p1, v0, :cond_7

    .line 6
    .line 7
    const/16 v0, 0x86

    .line 8
    .line 9
    if-eq p1, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x4282

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0x437c

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/16 v0, 0x536e

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const v0, 0x22b59c

    .line 24
    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 33
    .line 34
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 41
    .line 42
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->i:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const-string p1, "webm"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    const-string v0, "matroska"

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, "DocType "

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " not supported"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 p1, 0x0

    .line 89
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0

    .line 94
    :cond_5
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->x:Z

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 105
    .line 106
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 107
    .line 108
    return-void

    .line 109
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(I)Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iput-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->h:Ljava/lang/String;

    .line 114
    .line 115
    return-void
.end method
