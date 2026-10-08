.class Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Landroidx/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->e:Landroidx/media3/extractor/ts/TsExtractor;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 15
    .line 16
    new-instance p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->b:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance p1, Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->c:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->d:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->e:Landroidx/media3/extractor/ts/TsExtractor;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/media3/extractor/ts/TsExtractor;->h:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x2

    .line 16
    if-eq v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v5, v2, Landroidx/media3/extractor/ts/TsExtractor;->b:Ljava/util/List;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroidx/media3/common/util/TimestampAdjuster;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    and-int/lit16 v8, v8, 0x80

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_1
    const/4 v8, 0x1

    .line 38
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const/4 v10, 0x3

    .line 46
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 47
    .line 48
    .line 49
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    .line 50
    .line 51
    iget-object v12, v11, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 52
    .line 53
    invoke-virtual {v1, v12, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 60
    .line 61
    .line 62
    const/16 v12, 0xd

    .line 63
    .line 64
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    iput v13, v2, Landroidx/media3/extractor/ts/TsExtractor;->q:I

    .line 69
    .line 70
    iget-object v13, v11, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 71
    .line 72
    invoke-virtual {v1, v13, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 76
    .line 77
    .line 78
    const/4 v13, 0x4

    .line 79
    invoke-virtual {v11, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 80
    .line 81
    .line 82
    const/16 v14, 0xc

    .line 83
    .line 84
    invoke-virtual {v11, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 89
    .line 90
    .line 91
    iget-object v15, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->b:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->c:Landroid/util/SparseIntArray;

    .line 97
    .line 98
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    :goto_1
    if-lez v16, :cond_21

    .line 106
    .line 107
    iget-object v6, v11, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 108
    .line 109
    const/4 v14, 0x5

    .line 110
    invoke-virtual {v1, v6, v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 114
    .line 115
    .line 116
    const/16 v6, 0x8

    .line 117
    .line 118
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual {v11, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 130
    .line 131
    .line 132
    const/16 v12, 0xc

    .line 133
    .line 134
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 139
    .line 140
    add-int v13, v12, v17

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const/16 v19, -0x1

    .line 145
    .line 146
    move-object/from16 v22, v18

    .line 147
    .line 148
    move-object/from16 v24, v22

    .line 149
    .line 150
    move/from16 v21, v19

    .line 151
    .line 152
    const/16 v23, 0x0

    .line 153
    .line 154
    :goto_2
    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 155
    .line 156
    if-ge v10, v13, :cond_2

    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 163
    .line 164
    .line 165
    move-result v20

    .line 166
    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 167
    .line 168
    add-int v14, v14, v20

    .line 169
    .line 170
    if-le v14, v13, :cond_3

    .line 171
    .line 172
    :cond_2
    move-object/from16 v29, v3

    .line 173
    .line 174
    move-object/from16 v28, v11

    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_3
    const/16 v20, 0x87

    .line 179
    .line 180
    const/16 v25, 0x81

    .line 181
    .line 182
    move-object/from16 v28, v11

    .line 183
    .line 184
    const/4 v11, 0x5

    .line 185
    if-ne v10, v11, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 188
    .line 189
    .line 190
    move-result-wide v10

    .line 191
    const-wide/32 v26, 0x41432d33

    .line 192
    .line 193
    .line 194
    cmp-long v26, v10, v26

    .line 195
    .line 196
    if-nez v26, :cond_4

    .line 197
    .line 198
    move/from16 v21, v25

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    const-wide/32 v26, 0x45414333

    .line 202
    .line 203
    .line 204
    cmp-long v25, v10, v26

    .line 205
    .line 206
    if-nez v25, :cond_5

    .line 207
    .line 208
    move/from16 v21, v20

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_5
    const-wide/32 v26, 0x41432d34

    .line 212
    .line 213
    .line 214
    cmp-long v20, v10, v26

    .line 215
    .line 216
    if-nez v20, :cond_6

    .line 217
    .line 218
    :goto_3
    const/16 v21, 0xac

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_6
    const-wide/32 v26, 0x48455643

    .line 222
    .line 223
    .line 224
    cmp-long v10, v10, v26

    .line 225
    .line 226
    if-nez v10, :cond_7

    .line 227
    .line 228
    const/16 v21, 0x24

    .line 229
    .line 230
    :cond_7
    :goto_4
    move-object/from16 v29, v3

    .line 231
    .line 232
    :goto_5
    move/from16 v20, v14

    .line 233
    .line 234
    goto/16 :goto_7

    .line 235
    .line 236
    :cond_8
    const/16 v11, 0x6a

    .line 237
    .line 238
    if-ne v10, v11, :cond_9

    .line 239
    .line 240
    move-object/from16 v29, v3

    .line 241
    .line 242
    move/from16 v20, v14

    .line 243
    .line 244
    move/from16 v21, v25

    .line 245
    .line 246
    goto/16 :goto_7

    .line 247
    .line 248
    :cond_9
    const/16 v11, 0x7a

    .line 249
    .line 250
    if-ne v10, v11, :cond_a

    .line 251
    .line 252
    move-object/from16 v29, v3

    .line 253
    .line 254
    move/from16 v21, v20

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_a
    const/16 v11, 0x7f

    .line 258
    .line 259
    if-ne v10, v11, :cond_d

    .line 260
    .line 261
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    const/16 v11, 0x15

    .line 266
    .line 267
    if-ne v10, v11, :cond_b

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_b
    const/16 v11, 0xe

    .line 271
    .line 272
    if-ne v10, v11, :cond_c

    .line 273
    .line 274
    const/16 v21, 0x88

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    const/16 v11, 0x21

    .line 278
    .line 279
    if-ne v10, v11, :cond_7

    .line 280
    .line 281
    const/16 v21, 0x8b

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_d
    const/16 v11, 0x7b

    .line 285
    .line 286
    if-ne v10, v11, :cond_e

    .line 287
    .line 288
    move-object/from16 v29, v3

    .line 289
    .line 290
    move/from16 v20, v14

    .line 291
    .line 292
    const/16 v21, 0x8a

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_e
    const/16 v11, 0xa

    .line 296
    .line 297
    if-ne v10, v11, :cond_f

    .line 298
    .line 299
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 300
    .line 301
    const/4 v11, 0x3

    .line 302
    invoke-virtual {v1, v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v22

    .line 310
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    move-object/from16 v29, v3

    .line 315
    .line 316
    move/from16 v23, v10

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_f
    const/16 v11, 0x59

    .line 320
    .line 321
    if-ne v10, v11, :cond_11

    .line 322
    .line 323
    new-instance v10, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    .line 328
    :goto_6
    iget v11, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 329
    .line 330
    if-ge v11, v14, :cond_10

    .line 331
    .line 332
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 333
    .line 334
    move/from16 v20, v14

    .line 335
    .line 336
    const/4 v14, 0x3

    .line 337
    invoke-virtual {v1, v14, v11}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 346
    .line 347
    .line 348
    const/4 v14, 0x4

    .line 349
    new-array v0, v14, [B

    .line 350
    .line 351
    move-object/from16 v29, v3

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-virtual {v1, v0, v3, v14}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 355
    .line 356
    .line 357
    new-instance v3, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 358
    .line 359
    invoke-direct {v3, v11, v0}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;[B)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-object/from16 v0, p0

    .line 366
    .line 367
    move/from16 v14, v20

    .line 368
    .line 369
    move-object/from16 v3, v29

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_10
    move-object/from16 v29, v3

    .line 373
    .line 374
    move/from16 v20, v14

    .line 375
    .line 376
    move-object/from16 v24, v10

    .line 377
    .line 378
    const/16 v21, 0x59

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_11
    move-object/from16 v29, v3

    .line 382
    .line 383
    move/from16 v20, v14

    .line 384
    .line 385
    const/16 v0, 0x6f

    .line 386
    .line 387
    if-ne v10, v0, :cond_12

    .line 388
    .line 389
    const/16 v21, 0x101

    .line 390
    .line 391
    :cond_12
    :goto_7
    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 392
    .line 393
    sub-int v14, v20, v0

    .line 394
    .line 395
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 396
    .line 397
    .line 398
    move-object/from16 v0, p0

    .line 399
    .line 400
    move-object/from16 v11, v28

    .line 401
    .line 402
    move-object/from16 v3, v29

    .line 403
    .line 404
    const/4 v14, 0x5

    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :goto_8
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 408
    .line 409
    .line 410
    new-instance v20, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    .line 411
    .line 412
    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 413
    .line 414
    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 415
    .line 416
    .line 417
    move-result-object v25

    .line 418
    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/ArrayList;[B)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v3, v20

    .line 422
    .line 423
    move-object/from16 v0, v22

    .line 424
    .line 425
    const/4 v10, 0x6

    .line 426
    if-eq v6, v10, :cond_13

    .line 427
    .line 428
    const/4 v11, 0x5

    .line 429
    if-ne v6, v11, :cond_14

    .line 430
    .line 431
    :cond_13
    move/from16 v6, v21

    .line 432
    .line 433
    :cond_14
    add-int/lit8 v17, v17, 0x5

    .line 434
    .line 435
    sub-int v16, v16, v17

    .line 436
    .line 437
    invoke-virtual {v4, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-eqz v10, :cond_15

    .line 442
    .line 443
    const/4 v13, 0x4

    .line 444
    const/4 v14, 0x3

    .line 445
    goto/16 :goto_b

    .line 446
    .line 447
    :cond_15
    iget-object v10, v2, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    .line 448
    .line 449
    const-string v11, "video/mp2t"

    .line 450
    .line 451
    const/4 v12, 0x2

    .line 452
    if-eq v6, v12, :cond_20

    .line 453
    .line 454
    const/4 v14, 0x3

    .line 455
    const/4 v13, 0x4

    .line 456
    if-eq v6, v14, :cond_1f

    .line 457
    .line 458
    if-eq v6, v13, :cond_1f

    .line 459
    .line 460
    const/16 v12, 0x15

    .line 461
    .line 462
    if-eq v6, v12, :cond_1e

    .line 463
    .line 464
    const/16 v12, 0x1b

    .line 465
    .line 466
    if-eq v6, v12, :cond_1d

    .line 467
    .line 468
    const/16 v12, 0x24

    .line 469
    .line 470
    if-eq v6, v12, :cond_1c

    .line 471
    .line 472
    const/16 v12, 0x2d

    .line 473
    .line 474
    if-eq v6, v12, :cond_1b

    .line 475
    .line 476
    const/16 v12, 0x59

    .line 477
    .line 478
    if-eq v6, v12, :cond_1a

    .line 479
    .line 480
    const/16 v12, 0xac

    .line 481
    .line 482
    if-eq v6, v12, :cond_19

    .line 483
    .line 484
    const/16 v12, 0x101

    .line 485
    .line 486
    if-eq v6, v12, :cond_18

    .line 487
    .line 488
    const/16 v12, 0x8a

    .line 489
    .line 490
    if-eq v6, v12, :cond_17

    .line 491
    .line 492
    const/16 v12, 0x8b

    .line 493
    .line 494
    if-eq v6, v12, :cond_16

    .line 495
    .line 496
    packed-switch v6, :pswitch_data_0

    .line 497
    .line 498
    .line 499
    packed-switch v6, :pswitch_data_1

    .line 500
    .line 501
    .line 502
    packed-switch v6, :pswitch_data_2

    .line 503
    .line 504
    .line 505
    :pswitch_0
    move-object/from16 v0, v18

    .line 506
    .line 507
    goto/16 :goto_a

    .line 508
    .line 509
    :pswitch_1
    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    .line 510
    .line 511
    new-instance v3, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    .line 512
    .line 513
    const-string v6, "application/x-scte35"

    .line 514
    .line 515
    invoke-direct {v3, v6}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-direct {v0, v3}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_a

    .line 522
    .line 523
    :pswitch_2
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 524
    .line 525
    new-instance v10, Landroidx/media3/extractor/ts/Ac3Reader;

    .line 526
    .line 527
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-direct {v10, v0, v3, v11}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 535
    .line 536
    .line 537
    :goto_9
    move-object v0, v6

    .line 538
    goto/16 :goto_a

    .line 539
    .line 540
    :pswitch_3
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 541
    .line 542
    new-instance v10, Landroidx/media3/extractor/ts/LatmReader;

    .line 543
    .line 544
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    invoke-direct {v10, v0, v3}, Landroidx/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 552
    .line 553
    .line 554
    goto :goto_9

    .line 555
    :pswitch_4
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 556
    .line 557
    new-instance v6, Landroidx/media3/extractor/ts/H263Reader;

    .line 558
    .line 559
    new-instance v11, Landroidx/media3/extractor/ts/UserDataReader;

    .line 560
    .line 561
    invoke-virtual {v10, v3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-direct {v11, v3}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    .line 566
    .line 567
    .line 568
    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    .line 569
    .line 570
    .line 571
    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_a

    .line 575
    .line 576
    :pswitch_5
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 577
    .line 578
    new-instance v10, Landroidx/media3/extractor/ts/AdtsReader;

    .line 579
    .line 580
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    const/4 v12, 0x0

    .line 585
    invoke-direct {v10, v3, v0, v11, v12}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 586
    .line 587
    .line 588
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 589
    .line 590
    .line 591
    goto :goto_9

    .line 592
    :cond_16
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 593
    .line 594
    new-instance v10, Landroidx/media3/extractor/ts/DtsReader;

    .line 595
    .line 596
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    const/16 v11, 0x1520

    .line 601
    .line 602
    invoke-direct {v10, v0, v3, v11}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    .line 603
    .line 604
    .line 605
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 606
    .line 607
    .line 608
    goto :goto_9

    .line 609
    :cond_17
    :pswitch_6
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 610
    .line 611
    new-instance v10, Landroidx/media3/extractor/ts/DtsReader;

    .line 612
    .line 613
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    const/16 v11, 0x1000

    .line 618
    .line 619
    invoke-direct {v10, v0, v3, v11}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;II)V

    .line 620
    .line 621
    .line 622
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 623
    .line 624
    .line 625
    goto :goto_9

    .line 626
    :cond_18
    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    .line 627
    .line 628
    new-instance v3, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;

    .line 629
    .line 630
    const-string v6, "application/vnd.dvb.ait"

    .line 631
    .line 632
    invoke-direct {v3, v6}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    invoke-direct {v0, v3}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    .line 636
    .line 637
    .line 638
    goto/16 :goto_a

    .line 639
    .line 640
    :cond_19
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 641
    .line 642
    new-instance v10, Landroidx/media3/extractor/ts/Ac4Reader;

    .line 643
    .line 644
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    invoke-direct {v10, v0, v3, v11}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 652
    .line 653
    .line 654
    goto :goto_9

    .line 655
    :cond_1a
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 656
    .line 657
    new-instance v6, Landroidx/media3/extractor/ts/DvbSubtitleReader;

    .line 658
    .line 659
    iget-object v3, v3, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->b:Ljava/util/List;

    .line 660
    .line 661
    invoke-direct {v6, v3}, Landroidx/media3/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    .line 662
    .line 663
    .line 664
    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 665
    .line 666
    .line 667
    goto :goto_a

    .line 668
    :cond_1b
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 669
    .line 670
    new-instance v3, Landroidx/media3/extractor/ts/MpeghReader;

    .line 671
    .line 672
    invoke-direct {v3}, Landroidx/media3/extractor/ts/MpeghReader;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-direct {v0, v3}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 676
    .line 677
    .line 678
    goto :goto_a

    .line 679
    :cond_1c
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 680
    .line 681
    new-instance v6, Landroidx/media3/extractor/ts/H265Reader;

    .line 682
    .line 683
    new-instance v11, Landroidx/media3/extractor/ts/SeiReader;

    .line 684
    .line 685
    invoke-virtual {v10, v3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-direct {v11, v3}, Landroidx/media3/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    .line 690
    .line 691
    .line 692
    invoke-direct {v6, v11}, Landroidx/media3/extractor/ts/H265Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;)V

    .line 693
    .line 694
    .line 695
    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 696
    .line 697
    .line 698
    goto :goto_a

    .line 699
    :cond_1d
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 700
    .line 701
    new-instance v6, Landroidx/media3/extractor/ts/H264Reader;

    .line 702
    .line 703
    new-instance v11, Landroidx/media3/extractor/ts/SeiReader;

    .line 704
    .line 705
    invoke-virtual {v10, v3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-direct {v11, v3}, Landroidx/media3/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    .line 710
    .line 711
    .line 712
    const/4 v3, 0x0

    .line 713
    invoke-direct {v6, v11, v3, v3}, Landroidx/media3/extractor/ts/H264Reader;-><init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V

    .line 714
    .line 715
    .line 716
    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 717
    .line 718
    .line 719
    goto :goto_a

    .line 720
    :cond_1e
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 721
    .line 722
    new-instance v3, Landroidx/media3/extractor/ts/Id3Reader;

    .line 723
    .line 724
    invoke-direct {v3}, Landroidx/media3/extractor/ts/Id3Reader;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-direct {v0, v3}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 728
    .line 729
    .line 730
    goto :goto_a

    .line 731
    :cond_1f
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    .line 732
    .line 733
    new-instance v10, Landroidx/media3/extractor/ts/MpegAudioReader;

    .line 734
    .line 735
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a()I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    invoke-direct {v10, v0, v3, v11}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 743
    .line 744
    .line 745
    goto/16 :goto_9

    .line 746
    .line 747
    :cond_20
    const/4 v13, 0x4

    .line 748
    const/4 v14, 0x3

    .line 749
    :pswitch_7
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    .line 750
    .line 751
    new-instance v6, Landroidx/media3/extractor/ts/H262Reader;

    .line 752
    .line 753
    new-instance v12, Landroidx/media3/extractor/ts/UserDataReader;

    .line 754
    .line 755
    invoke-virtual {v10, v3}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->a(Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    invoke-direct {v12, v3}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    .line 760
    .line 761
    .line 762
    invoke-direct {v6, v12, v11}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-direct {v0, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    .line 766
    .line 767
    .line 768
    :goto_a
    invoke-virtual {v8, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v15, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    :goto_b
    move-object/from16 v0, p0

    .line 775
    .line 776
    move v10, v14

    .line 777
    move-object/from16 v11, v28

    .line 778
    .line 779
    move-object/from16 v3, v29

    .line 780
    .line 781
    const/4 v6, 0x2

    .line 782
    const/4 v7, 0x0

    .line 783
    const/16 v12, 0xd

    .line 784
    .line 785
    const/16 v14, 0xc

    .line 786
    .line 787
    goto/16 :goto_1

    .line 788
    .line 789
    :cond_21
    move-object/from16 v29, v3

    .line 790
    .line 791
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    const/4 v3, 0x0

    .line 796
    :goto_c
    if-ge v3, v0, :cond_23

    .line 797
    .line 798
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 799
    .line 800
    .line 801
    move-result v1

    .line 802
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 803
    .line 804
    .line 805
    move-result v6

    .line 806
    const/4 v7, 0x1

    .line 807
    invoke-virtual {v4, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 808
    .line 809
    .line 810
    iget-object v10, v2, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseBooleanArray;

    .line 811
    .line 812
    invoke-virtual {v10, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v7

    .line 819
    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 820
    .line 821
    if-eqz v7, :cond_22

    .line 822
    .line 823
    iget-object v10, v2, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 824
    .line 825
    new-instance v11, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 826
    .line 827
    const/16 v12, 0x2000

    .line 828
    .line 829
    invoke-direct {v11, v9, v1, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 830
    .line 831
    .line 832
    invoke-interface {v7, v5, v10, v11}, Landroidx/media3/extractor/ts/TsPayloadReader;->c(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 833
    .line 834
    .line 835
    move-object/from16 v1, v29

    .line 836
    .line 837
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    goto :goto_d

    .line 841
    :cond_22
    move-object/from16 v1, v29

    .line 842
    .line 843
    :goto_d
    add-int/lit8 v3, v3, 0x1

    .line 844
    .line 845
    move-object/from16 v29, v1

    .line 846
    .line 847
    goto :goto_c

    .line 848
    :cond_23
    move-object/from16 v3, p0

    .line 849
    .line 850
    move-object/from16 v1, v29

    .line 851
    .line 852
    iget v0, v3, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->d:I

    .line 853
    .line 854
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 855
    .line 856
    .line 857
    const/4 v3, 0x0

    .line 858
    iput v3, v2, Landroidx/media3/extractor/ts/TsExtractor;->m:I

    .line 859
    .line 860
    iget-object v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 861
    .line 862
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 863
    .line 864
    .line 865
    const/4 v7, 0x1

    .line 866
    iput-boolean v7, v2, Landroidx/media3/extractor/ts/TsExtractor;->n:Z

    .line 867
    .line 868
    return-void

    .line 869
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public final c(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    .line 1
    return-void
.end method
