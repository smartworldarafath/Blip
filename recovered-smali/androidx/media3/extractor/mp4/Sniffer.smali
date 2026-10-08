.class public abstract Landroidx/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/mp4/Sniffer;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    const-wide/16 v6, 0x1000

    .line 12
    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    cmp-long v8, v1, v6

    .line 16
    .line 17
    if-lez v8, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide v6, v1

    .line 21
    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 22
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    const/16 v8, 0x40

    .line 25
    .line 26
    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    move v9, v8

    .line 31
    move v10, v9

    .line 32
    :goto_1
    if-ge v9, v6, :cond_2

    .line 33
    .line 34
    const/16 v12, 0x8

    .line 35
    .line 36
    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 37
    .line 38
    .line 39
    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 40
    .line 41
    const/4 v14, 0x1

    .line 42
    invoke-interface {v0, v13, v8, v12, v14}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    if-nez v13, :cond_3

    .line 47
    .line 48
    :cond_2
    const/16 v20, 0x0

    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const-wide/16 v17, 0x1

    .line 61
    .line 62
    cmp-long v17, v15, v17

    .line 63
    .line 64
    if-nez v17, :cond_4

    .line 65
    .line 66
    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 67
    .line 68
    invoke-interface {v0, v15, v12, v12}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x10

    .line 72
    .line 73
    invoke-virtual {v7, v15}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    .line 77
    .line 78
    .line 79
    move-result-wide v16

    .line 80
    move/from16 v19, v9

    .line 81
    .line 82
    move-wide/from16 v3, v16

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const-wide/16 v17, 0x0

    .line 86
    .line 87
    cmp-long v17, v15, v17

    .line 88
    .line 89
    if-nez v17, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 92
    .line 93
    .line 94
    move-result-wide v17

    .line 95
    cmp-long v19, v17, v3

    .line 96
    .line 97
    if-eqz v19, :cond_5

    .line 98
    .line 99
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    sub-long v17, v17, v15

    .line 104
    .line 105
    const-wide/16 v15, 0x8

    .line 106
    .line 107
    add-long v15, v17, v15

    .line 108
    .line 109
    :cond_5
    move/from16 v19, v9

    .line 110
    .line 111
    move-wide v3, v15

    .line 112
    move v15, v12

    .line 113
    :goto_2
    int-to-long v8, v15

    .line 114
    cmp-long v20, v3, v8

    .line 115
    .line 116
    if-gez v20, :cond_7

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    const v11, 0x66726565

    .line 121
    .line 122
    .line 123
    if-ne v13, v11, :cond_6

    .line 124
    .line 125
    if-ne v15, v12, :cond_6

    .line 126
    .line 127
    move-wide v3, v8

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    new-instance v0, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    .line 130
    .line 131
    invoke-direct {v0, v13, v15, v3, v4}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IIJ)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_7
    const/16 v20, 0x0

    .line 136
    .line 137
    :goto_3
    add-int v11, v19, v15

    .line 138
    .line 139
    const v15, 0x6d6f6f76

    .line 140
    .line 141
    .line 142
    if-eq v13, v15, :cond_9

    .line 143
    .line 144
    const v14, 0x75756964

    .line 145
    .line 146
    .line 147
    if-ne v13, v14, :cond_8

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    move v14, v13

    .line 151
    goto :goto_6

    .line 152
    :cond_9
    :goto_4
    long-to-int v14, v3

    .line 153
    add-int/2addr v6, v14

    .line 154
    move v14, v13

    .line 155
    if-eqz v5, :cond_a

    .line 156
    .line 157
    int-to-long v12, v6

    .line 158
    cmp-long v12, v12, v1

    .line 159
    .line 160
    if-lez v12, :cond_a

    .line 161
    .line 162
    long-to-int v6, v1

    .line 163
    :cond_a
    if-ne v14, v15, :cond_b

    .line 164
    .line 165
    move v9, v11

    .line 166
    :goto_5
    const-wide/16 v3, -0x1

    .line 167
    .line 168
    const/4 v8, 0x0

    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_b
    :goto_6
    const v12, 0x7472616b

    .line 172
    .line 173
    .line 174
    if-eq v14, v12, :cond_c

    .line 175
    .line 176
    const v12, 0x6d646961

    .line 177
    .line 178
    .line 179
    if-eq v14, v12, :cond_c

    .line 180
    .line 181
    const v12, 0x6d696e66

    .line 182
    .line 183
    .line 184
    if-ne v14, v12, :cond_d

    .line 185
    .line 186
    :cond_c
    move-wide/from16 v21, v1

    .line 187
    .line 188
    goto/16 :goto_11

    .line 189
    .line 190
    :cond_d
    const v12, 0x6d6f6f66

    .line 191
    .line 192
    .line 193
    if-eq v14, v12, :cond_1e

    .line 194
    .line 195
    const v12, 0x6d766578

    .line 196
    .line 197
    .line 198
    if-ne v14, v12, :cond_e

    .line 199
    .line 200
    goto/16 :goto_10

    .line 201
    .line 202
    :cond_e
    const v12, 0x6d646174

    .line 203
    .line 204
    .line 205
    if-ne v14, v12, :cond_f

    .line 206
    .line 207
    const/4 v10, 0x1

    .line 208
    :cond_f
    const v12, 0x7374626c

    .line 209
    .line 210
    .line 211
    if-ne v14, v12, :cond_10

    .line 212
    .line 213
    const-wide/32 v12, 0xf4240

    .line 214
    .line 215
    .line 216
    cmp-long v12, v3, v12

    .line 217
    .line 218
    if-lez v12, :cond_10

    .line 219
    .line 220
    :goto_7
    const/4 v8, 0x0

    .line 221
    goto/16 :goto_12

    .line 222
    .line 223
    :cond_10
    int-to-long v12, v11

    .line 224
    add-long/2addr v12, v3

    .line 225
    sub-long/2addr v12, v8

    .line 226
    move-wide/from16 v21, v1

    .line 227
    .line 228
    int-to-long v1, v6

    .line 229
    cmp-long v1, v12, v1

    .line 230
    .line 231
    if-ltz v1, :cond_11

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_11
    sub-long/2addr v3, v8

    .line 235
    long-to-int v1, v3

    .line 236
    add-int v9, v11, v1

    .line 237
    .line 238
    const v2, 0x66747970

    .line 239
    .line 240
    .line 241
    if-ne v14, v2, :cond_1c

    .line 242
    .line 243
    const/16 v2, 0x8

    .line 244
    .line 245
    if-ge v1, v2, :cond_12

    .line 246
    .line 247
    new-instance v0, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    .line 248
    .line 249
    int-to-long v3, v1

    .line 250
    invoke-direct {v0, v14, v2, v3, v4}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IIJ)V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_12
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 255
    .line 256
    .line 257
    iget-object v2, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 258
    .line 259
    const/4 v3, 0x0

    .line 260
    invoke-interface {v0, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    ushr-int/lit8 v2, v1, 0x8

    .line 268
    .line 269
    const/16 v4, 0x1d

    .line 270
    .line 271
    sget-object v8, Landroidx/media3/extractor/mp4/Sniffer;->a:[I

    .line 272
    .line 273
    const v11, 0x336770

    .line 274
    .line 275
    .line 276
    if-ne v2, v11, :cond_13

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_13
    move v2, v3

    .line 280
    :goto_8
    if-ge v2, v4, :cond_15

    .line 281
    .line 282
    aget v12, v8, v2

    .line 283
    .line 284
    if-ne v12, v1, :cond_14

    .line 285
    .line 286
    :goto_9
    const/4 v10, 0x1

    .line 287
    goto :goto_a

    .line 288
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_15
    :goto_a
    const/4 v2, 0x4

    .line 292
    invoke-virtual {v7, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    div-int/2addr v12, v2

    .line 300
    if-nez v10, :cond_1a

    .line 301
    .line 302
    if-lez v12, :cond_1a

    .line 303
    .line 304
    new-array v2, v12, [I

    .line 305
    .line 306
    move v13, v3

    .line 307
    :goto_b
    if-ge v13, v12, :cond_19

    .line 308
    .line 309
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    aput v14, v2, v13

    .line 314
    .line 315
    ushr-int/lit8 v15, v14, 0x8

    .line 316
    .line 317
    if-ne v15, v11, :cond_16

    .line 318
    .line 319
    goto :goto_d

    .line 320
    :cond_16
    move v15, v3

    .line 321
    :goto_c
    if-ge v15, v4, :cond_18

    .line 322
    .line 323
    aget v3, v8, v15

    .line 324
    .line 325
    if-ne v3, v14, :cond_17

    .line 326
    .line 327
    :goto_d
    move-object v11, v2

    .line 328
    const/4 v14, 0x1

    .line 329
    goto :goto_e

    .line 330
    :cond_17
    add-int/lit8 v15, v15, 0x1

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    goto :goto_c

    .line 334
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 335
    .line 336
    const/4 v3, 0x0

    .line 337
    goto :goto_b

    .line 338
    :cond_19
    move-object v11, v2

    .line 339
    move v14, v10

    .line 340
    goto :goto_e

    .line 341
    :cond_1a
    move v14, v10

    .line 342
    move-object/from16 v11, v20

    .line 343
    .line 344
    :goto_e
    if-nez v14, :cond_1b

    .line 345
    .line 346
    new-instance v0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;

    .line 347
    .line 348
    invoke-direct {v0, v11, v1}, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;-><init>([II)V

    .line 349
    .line 350
    .line 351
    return-object v0

    .line 352
    :cond_1b
    move v10, v14

    .line 353
    goto :goto_f

    .line 354
    :cond_1c
    if-eqz v1, :cond_1d

    .line 355
    .line 356
    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 357
    .line 358
    .line 359
    :cond_1d
    :goto_f
    move-wide/from16 v1, v21

    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :cond_1e
    :goto_10
    const/4 v8, 0x1

    .line 364
    goto :goto_12

    .line 365
    :goto_11
    move v9, v11

    .line 366
    goto :goto_f

    .line 367
    :goto_12
    if-nez v10, :cond_1f

    .line 368
    .line 369
    sget-object v0, Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;->a:Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;

    .line 370
    .line 371
    return-object v0

    .line 372
    :cond_1f
    move/from16 v0, p1

    .line 373
    .line 374
    if-eq v0, v8, :cond_21

    .line 375
    .line 376
    if-eqz v8, :cond_20

    .line 377
    .line 378
    sget-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->b:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 379
    .line 380
    return-object v0

    .line 381
    :cond_20
    sget-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->c:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 382
    .line 383
    return-object v0

    .line 384
    :cond_21
    return-object v20
.end method
