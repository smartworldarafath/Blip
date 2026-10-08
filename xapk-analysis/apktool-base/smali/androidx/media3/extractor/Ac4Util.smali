.class public abstract Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$Ac4Presentation;,
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/Ac4Util;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, -0x54

    .line 9
    .line 10
    aput-byte v1, p1, v0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    aput-byte v1, p1, v0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, -0x1

    .line 19
    aput-byte v1, p1, v0

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    aput-byte v1, p1, v0

    .line 23
    .line 24
    shr-int/lit8 v0, p0, 0x10

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    int-to-byte v0, v0

    .line 29
    const/4 v1, 0x4

    .line 30
    aput-byte v0, p1, v1

    .line 31
    .line 32
    shr-int/lit8 v0, p0, 0x8

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    int-to-byte v0, v0

    .line 37
    const/4 v1, 0x5

    .line 38
    aput-byte v0, p1, v1

    .line 39
    .line 40
    and-int/lit16 p0, p0, 0xff

    .line 41
    .line 42
    int-to-byte p0, p0

    .line 43
    const/4 v0, 0x6

    .line 44
    aput-byte p0, p1, v0

    .line 45
    .line 46
    return-void
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 20

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-gt v3, v4, :cond_3a

    .line 22
    .line 23
    const/4 v5, 0x7

    .line 24
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    const v7, 0xbb80

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const v7, 0xac44

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 v8, 0x4

    .line 42
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 43
    .line 44
    .line 45
    const/16 v9, 0x9

    .line 46
    .line 47
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const/16 v10, 0x10

    .line 52
    .line 53
    if-le v6, v4, :cond_2

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-eqz v11, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_2

    .line 71
    .line 72
    const/16 v11, 0x80

    .line 73
    .line 74
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Invalid AC-4 DSI version: "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    throw v0

    .line 97
    :cond_2
    :goto_1
    const/16 v11, 0x42

    .line 98
    .line 99
    if-ne v3, v4, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-lt v12, v11, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    .line 115
    .line 116
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    throw v0

    .line 121
    :cond_4
    :goto_2
    new-instance v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    .line 122
    .line 123
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    .line 127
    .line 128
    const/4 v13, -0x1

    .line 129
    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 130
    .line 131
    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    .line 132
    .line 133
    iput-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    .line 134
    .line 135
    const/4 v14, 0x2

    .line 136
    iput v14, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    .line 137
    .line 138
    iput v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    .line 139
    .line 140
    const/4 v15, 0x0

    .line 141
    iput v15, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    .line 142
    .line 143
    :goto_3
    const/4 v13, 0x6

    .line 144
    const/4 v11, 0x5

    .line 145
    const/16 v5, 0x8

    .line 146
    .line 147
    if-ge v15, v9, :cond_2b

    .line 148
    .line 149
    if-nez v3, :cond_5

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 156
    .line 157
    .line 158
    move-result v16

    .line 159
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 160
    .line 161
    .line 162
    move-result v17

    .line 163
    move/from16 v18, v5

    .line 164
    .line 165
    move/from16 v8, v16

    .line 166
    .line 167
    move/from16 v14, v17

    .line 168
    .line 169
    const/4 v4, 0x0

    .line 170
    const/4 v5, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    move/from16 v18, v5

    .line 182
    .line 183
    const/16 v5, 0xff

    .line 184
    .line 185
    if-ne v4, v5, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    add-int/2addr v4, v5

    .line 192
    :cond_6
    if-le v8, v14, :cond_7

    .line 193
    .line 194
    mul-int/lit8 v4, v4, 0x8

    .line 195
    .line 196
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v15, v15, 0x1

    .line 200
    .line 201
    const/4 v4, 0x1

    .line 202
    const/4 v5, 0x7

    .line 203
    const/4 v8, 0x4

    .line 204
    const/16 v11, 0x42

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    sub-int v5, v1, v5

    .line 212
    .line 213
    div-int/lit8 v5, v5, 0x8

    .line 214
    .line 215
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    const/16 v10, 0x1f

    .line 220
    .line 221
    if-ne v9, v10, :cond_8

    .line 222
    .line 223
    const/4 v10, 0x1

    .line 224
    goto :goto_4

    .line 225
    :cond_8
    const/4 v10, 0x0

    .line 226
    :goto_4
    move v14, v8

    .line 227
    move v8, v9

    .line 228
    const/4 v9, 0x0

    .line 229
    :goto_5
    iput v14, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    .line 230
    .line 231
    const/16 v11, 0xf

    .line 232
    .line 233
    if-nez v9, :cond_9

    .line 234
    .line 235
    if-nez v10, :cond_9

    .line 236
    .line 237
    if-ne v8, v13, :cond_9

    .line 238
    .line 239
    const/4 v2, 0x1

    .line 240
    goto/16 :goto_17

    .line 241
    .line 242
    :cond_9
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    .line 247
    .line 248
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-eqz v13, :cond_a

    .line 253
    .line 254
    const/4 v13, 0x5

    .line 255
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 256
    .line 257
    .line 258
    :cond_a
    const/4 v13, 0x2

    .line 259
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 260
    .line 261
    .line 262
    const/4 v2, 0x1

    .line 263
    if-ne v3, v2, :cond_b

    .line 264
    .line 265
    if-eq v14, v2, :cond_c

    .line 266
    .line 267
    if-ne v14, v13, :cond_b

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_b
    :goto_6
    const/4 v13, 0x5

    .line 271
    goto :goto_8

    .line 272
    :cond_c
    :goto_7
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :goto_8
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 277
    .line 278
    .line 279
    const/16 v13, 0xa

    .line 280
    .line 281
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 282
    .line 283
    .line 284
    if-ne v3, v2, :cond_15

    .line 285
    .line 286
    if-lez v14, :cond_d

    .line 287
    .line 288
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    iput-boolean v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    .line 293
    .line 294
    :cond_d
    iget-boolean v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    .line 295
    .line 296
    if-eqz v13, :cond_12

    .line 297
    .line 298
    if-eq v14, v2, :cond_e

    .line 299
    .line 300
    const/4 v13, 0x2

    .line 301
    if-ne v14, v13, :cond_f

    .line 302
    .line 303
    :cond_e
    const/4 v13, 0x5

    .line 304
    goto :goto_a

    .line 305
    :cond_f
    :goto_9
    const/16 v2, 0x18

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :goto_a
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-ltz v2, :cond_10

    .line 313
    .line 314
    if-gt v2, v11, :cond_10

    .line 315
    .line 316
    iput v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 317
    .line 318
    :cond_10
    const/16 v13, 0xb

    .line 319
    .line 320
    if-lt v2, v13, :cond_11

    .line 321
    .line 322
    const/16 v13, 0xe

    .line 323
    .line 324
    if-gt v2, v13, :cond_11

    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    iput-boolean v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    .line 331
    .line 332
    const/4 v13, 0x2

    .line 333
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    iput v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_11
    const/4 v13, 0x2

    .line 341
    goto :goto_9

    .line 342
    :goto_b
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 343
    .line 344
    .line 345
    :goto_c
    const/4 v2, 0x1

    .line 346
    goto :goto_d

    .line 347
    :cond_12
    const/4 v13, 0x2

    .line 348
    goto :goto_c

    .line 349
    :goto_d
    if-eq v14, v2, :cond_13

    .line 350
    .line 351
    if-ne v14, v13, :cond_15

    .line 352
    .line 353
    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_14

    .line 358
    .line 359
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_14

    .line 364
    .line 365
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 366
    .line 367
    .line 368
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_15

    .line 373
    .line 374
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 375
    .line 376
    .line 377
    move/from16 v2, v18

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    const/4 v11, 0x0

    .line 384
    :goto_e
    if-ge v11, v13, :cond_15

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 387
    .line 388
    .line 389
    add-int/lit8 v11, v11, 0x1

    .line 390
    .line 391
    const/16 v2, 0x8

    .line 392
    .line 393
    goto :goto_e

    .line 394
    :cond_15
    if-nez v9, :cond_1d

    .line 395
    .line 396
    if-eqz v10, :cond_16

    .line 397
    .line 398
    goto/16 :goto_15

    .line 399
    .line 400
    :cond_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 401
    .line 402
    .line 403
    if-eqz v8, :cond_1b

    .line 404
    .line 405
    const/4 v2, 0x1

    .line 406
    if-eq v8, v2, :cond_1b

    .line 407
    .line 408
    const/4 v13, 0x2

    .line 409
    if-eq v8, v13, :cond_1b

    .line 410
    .line 411
    const/4 v2, 0x3

    .line 412
    if-eq v8, v2, :cond_19

    .line 413
    .line 414
    const/4 v2, 0x4

    .line 415
    if-eq v8, v2, :cond_19

    .line 416
    .line 417
    const/4 v13, 0x5

    .line 418
    if-eq v8, v13, :cond_17

    .line 419
    .line 420
    const/4 v2, 0x7

    .line 421
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    const/4 v2, 0x0

    .line 426
    :goto_f
    if-ge v2, v8, :cond_1f

    .line 427
    .line 428
    const/16 v9, 0x8

    .line 429
    .line 430
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 431
    .line 432
    .line 433
    add-int/lit8 v2, v2, 0x1

    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_17
    if-nez v14, :cond_18

    .line 437
    .line 438
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 439
    .line 440
    .line 441
    goto :goto_16

    .line 442
    :cond_18
    const/4 v2, 0x3

    .line 443
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    const/4 v2, 0x0

    .line 448
    :goto_10
    const/16 v19, 0x2

    .line 449
    .line 450
    add-int/lit8 v9, v8, 0x2

    .line 451
    .line 452
    if-ge v2, v9, :cond_1f

    .line 453
    .line 454
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v2, v2, 0x1

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_19
    if-nez v14, :cond_1a

    .line 461
    .line 462
    const/4 v2, 0x0

    .line 463
    const/4 v8, 0x3

    .line 464
    :goto_11
    if-ge v2, v8, :cond_1f

    .line 465
    .line 466
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 467
    .line 468
    .line 469
    add-int/lit8 v2, v2, 0x1

    .line 470
    .line 471
    goto :goto_11

    .line 472
    :cond_1a
    const/4 v2, 0x0

    .line 473
    :goto_12
    const/4 v8, 0x3

    .line 474
    if-ge v2, v8, :cond_1f

    .line 475
    .line 476
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 477
    .line 478
    .line 479
    add-int/lit8 v2, v2, 0x1

    .line 480
    .line 481
    goto :goto_12

    .line 482
    :cond_1b
    if-nez v14, :cond_1c

    .line 483
    .line 484
    const/4 v2, 0x0

    .line 485
    const/4 v13, 0x2

    .line 486
    :goto_13
    if-ge v2, v13, :cond_1f

    .line 487
    .line 488
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 489
    .line 490
    .line 491
    add-int/lit8 v2, v2, 0x1

    .line 492
    .line 493
    goto :goto_13

    .line 494
    :cond_1c
    const/4 v2, 0x0

    .line 495
    :goto_14
    const/4 v13, 0x2

    .line 496
    if-ge v2, v13, :cond_1f

    .line 497
    .line 498
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 499
    .line 500
    .line 501
    add-int/lit8 v2, v2, 0x1

    .line 502
    .line 503
    goto :goto_14

    .line 504
    :cond_1d
    :goto_15
    if-nez v14, :cond_1e

    .line 505
    .line 506
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 507
    .line 508
    .line 509
    goto :goto_16

    .line 510
    :cond_1e
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    .line 511
    .line 512
    .line 513
    :cond_1f
    :goto_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    :goto_17
    if-eqz v2, :cond_20

    .line 521
    .line 522
    const/4 v2, 0x7

    .line 523
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    const/4 v9, 0x0

    .line 528
    :goto_18
    if-ge v9, v8, :cond_21

    .line 529
    .line 530
    const/16 v10, 0xf

    .line 531
    .line 532
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 533
    .line 534
    .line 535
    add-int/lit8 v9, v9, 0x1

    .line 536
    .line 537
    goto :goto_18

    .line 538
    :cond_20
    const/4 v2, 0x7

    .line 539
    :cond_21
    if-lez v14, :cond_26

    .line 540
    .line 541
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 542
    .line 543
    .line 544
    move-result v8

    .line 545
    if-eqz v8, :cond_24

    .line 546
    .line 547
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 548
    .line 549
    .line 550
    move-result v8

    .line 551
    const/16 v9, 0x42

    .line 552
    .line 553
    if-ge v8, v9, :cond_22

    .line 554
    .line 555
    const/4 v8, 0x0

    .line 556
    goto :goto_19

    .line 557
    :cond_22
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 558
    .line 559
    .line 560
    const/4 v8, 0x1

    .line 561
    :goto_19
    if-eqz v8, :cond_23

    .line 562
    .line 563
    goto :goto_1a

    .line 564
    :cond_23
    const-string v0, "Can\'t parse bitrate DSI."

    .line 565
    .line 566
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    throw v0

    .line 571
    :cond_24
    :goto_1a
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    if-eqz v8, :cond_26

    .line 576
    .line 577
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 578
    .line 579
    .line 580
    const/16 v8, 0x10

    .line 581
    .line 582
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 587
    .line 588
    .line 589
    const/4 v13, 0x5

    .line 590
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 591
    .line 592
    .line 593
    move-result v8

    .line 594
    const/4 v9, 0x0

    .line 595
    :goto_1b
    if-ge v9, v8, :cond_25

    .line 596
    .line 597
    const/4 v10, 0x3

    .line 598
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 599
    .line 600
    .line 601
    const/16 v10, 0x8

    .line 602
    .line 603
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 604
    .line 605
    .line 606
    add-int/lit8 v9, v9, 0x1

    .line 607
    .line 608
    goto :goto_1b

    .line 609
    :cond_25
    const/16 v10, 0x8

    .line 610
    .line 611
    goto :goto_1c

    .line 612
    :cond_26
    const/16 v10, 0x8

    .line 613
    .line 614
    const/4 v13, 0x5

    .line 615
    :goto_1c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    .line 616
    .line 617
    .line 618
    const/4 v8, 0x1

    .line 619
    if-ne v3, v8, :cond_28

    .line 620
    .line 621
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    sub-int/2addr v1, v3

    .line 626
    div-int/2addr v1, v10

    .line 627
    sub-int/2addr v1, v5

    .line 628
    if-lt v4, v1, :cond_27

    .line 629
    .line 630
    sub-int/2addr v4, v1

    .line 631
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 632
    .line 633
    .line 634
    goto :goto_1d

    .line 635
    :cond_27
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    .line 636
    .line 637
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    throw v0

    .line 642
    :cond_28
    :goto_1d
    iget-boolean v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    .line 643
    .line 644
    if-eqz v0, :cond_2a

    .line 645
    .line 646
    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 647
    .line 648
    const/4 v1, -0x1

    .line 649
    if-eq v0, v1, :cond_29

    .line 650
    .line 651
    goto :goto_1e

    .line 652
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v1, "Can\'t determine channel mode of presentation "

    .line 655
    .line 656
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    throw v0

    .line 671
    :cond_2a
    const/4 v1, -0x1

    .line 672
    goto :goto_1e

    .line 673
    :cond_2b
    move v10, v5

    .line 674
    move v13, v11

    .line 675
    const/4 v1, -0x1

    .line 676
    const/4 v2, 0x7

    .line 677
    :goto_1e
    iget-boolean v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    .line 678
    .line 679
    const/16 v3, 0xc

    .line 680
    .line 681
    if-eqz v0, :cond_31

    .line 682
    .line 683
    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 684
    .line 685
    iget-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    .line 686
    .line 687
    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    .line 688
    .line 689
    const/16 v8, 0xd

    .line 690
    .line 691
    packed-switch v0, :pswitch_data_0

    .line 692
    .line 693
    .line 694
    move v2, v1

    .line 695
    :goto_1f
    :pswitch_0
    const/16 v13, 0xb

    .line 696
    .line 697
    goto :goto_20

    .line 698
    :pswitch_1
    const/16 v2, 0x18

    .line 699
    .line 700
    goto :goto_1f

    .line 701
    :pswitch_2
    const/16 v2, 0xe

    .line 702
    .line 703
    goto :goto_1f

    .line 704
    :pswitch_3
    move v2, v8

    .line 705
    goto :goto_1f

    .line 706
    :pswitch_4
    move v2, v3

    .line 707
    goto :goto_1f

    .line 708
    :pswitch_5
    const/16 v2, 0xb

    .line 709
    .line 710
    goto :goto_1f

    .line 711
    :pswitch_6
    move v2, v10

    .line 712
    goto :goto_1f

    .line 713
    :pswitch_7
    const/4 v2, 0x6

    .line 714
    goto :goto_1f

    .line 715
    :pswitch_8
    move v2, v13

    .line 716
    goto :goto_1f

    .line 717
    :pswitch_9
    const/4 v2, 0x3

    .line 718
    goto :goto_1f

    .line 719
    :pswitch_a
    const/4 v2, 0x2

    .line 720
    goto :goto_1f

    .line 721
    :pswitch_b
    const/4 v2, 0x1

    .line 722
    goto :goto_1f

    .line 723
    :goto_20
    if-eq v0, v13, :cond_2d

    .line 724
    .line 725
    if-eq v0, v3, :cond_2d

    .line 726
    .line 727
    if-eq v0, v8, :cond_2d

    .line 728
    .line 729
    const/16 v13, 0xe

    .line 730
    .line 731
    if-ne v0, v13, :cond_2c

    .line 732
    .line 733
    goto :goto_22

    .line 734
    :cond_2c
    :goto_21
    move v14, v2

    .line 735
    goto/16 :goto_24

    .line 736
    .line 737
    :cond_2d
    :goto_22
    if-nez v4, :cond_2e

    .line 738
    .line 739
    add-int/lit8 v2, v2, -0x2

    .line 740
    .line 741
    :cond_2e
    if-eqz v5, :cond_30

    .line 742
    .line 743
    const/4 v8, 0x1

    .line 744
    if-eq v5, v8, :cond_2f

    .line 745
    .line 746
    goto :goto_21

    .line 747
    :cond_2f
    add-int/lit8 v2, v2, -0x2

    .line 748
    .line 749
    goto :goto_21

    .line 750
    :cond_30
    add-int/lit8 v2, v2, -0x4

    .line 751
    .line 752
    goto :goto_21

    .line 753
    :cond_31
    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    .line 754
    .line 755
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    .line 756
    .line 757
    if-lez v0, :cond_33

    .line 758
    .line 759
    const/4 v2, 0x1

    .line 760
    add-int/2addr v0, v2

    .line 761
    const/4 v2, 0x4

    .line 762
    if-ne v1, v2, :cond_32

    .line 763
    .line 764
    const/16 v1, 0x11

    .line 765
    .line 766
    if-ne v0, v1, :cond_32

    .line 767
    .line 768
    const/16 v0, 0x15

    .line 769
    .line 770
    :cond_32
    move v14, v0

    .line 771
    goto :goto_24

    .line 772
    :cond_33
    const/4 v2, 0x1

    .line 773
    if-eqz v1, :cond_38

    .line 774
    .line 775
    if-eq v1, v2, :cond_37

    .line 776
    .line 777
    const/4 v13, 0x2

    .line 778
    if-eq v1, v13, :cond_36

    .line 779
    .line 780
    const/4 v2, 0x3

    .line 781
    if-eq v1, v2, :cond_35

    .line 782
    .line 783
    const/4 v2, 0x4

    .line 784
    if-eq v1, v2, :cond_34

    .line 785
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    const-string v1, "AC-4 level "

    .line 789
    .line 790
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    .line 794
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    const-string v1, " has not been defined."

    .line 799
    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    const-string v1, "Ac4Util"

    .line 808
    .line 809
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    :goto_23
    move v14, v13

    .line 813
    goto :goto_24

    .line 814
    :cond_34
    move v14, v3

    .line 815
    goto :goto_24

    .line 816
    :cond_35
    const/16 v14, 0xa

    .line 817
    .line 818
    goto :goto_24

    .line 819
    :cond_36
    move v14, v10

    .line 820
    goto :goto_24

    .line 821
    :cond_37
    const/4 v14, 0x6

    .line 822
    goto :goto_24

    .line 823
    :cond_38
    const/4 v13, 0x2

    .line 824
    goto :goto_23

    .line 825
    :goto_24
    if-lez v14, :cond_39

    .line 826
    .line 827
    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    .line 828
    .line 829
    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    .line 830
    .line 831
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 848
    .line 849
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 850
    .line 851
    const-string v2, "ac-4.%02d.%02d.%02d"

    .line 852
    .line 853
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 858
    .line 859
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 860
    .line 861
    .line 862
    move-object/from16 v2, p1

    .line 863
    .line 864
    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 865
    .line 866
    const-string v2, "audio/ac4"

    .line 867
    .line 868
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 873
    .line 874
    iput v14, v1, Landroidx/media3/common/Format$Builder;->I:I

    .line 875
    .line 876
    iput v7, v1, Landroidx/media3/common/Format$Builder;->K:I

    .line 877
    .line 878
    move-object/from16 v2, p3

    .line 879
    .line 880
    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 881
    .line 882
    move-object/from16 v2, p2

    .line 883
    .line 884
    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 885
    .line 886
    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 887
    .line 888
    new-instance v0, Landroidx/media3/common/Format;

    .line 889
    .line 890
    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 891
    .line 892
    .line 893
    return-object v0

    .line 894
    :cond_39
    const-string v0, "Cannot determine channel count of presentation."

    .line 895
    .line 896
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    throw v0

    .line 901
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    const-string v1, "Unsupported AC-4 DSI version: "

    .line 904
    .line 905
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    throw v0

    .line 920
    nop

    .line 921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v2, 0xffff

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    const v2, 0xac41

    .line 28
    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x3

    .line 40
    if-ne v2, v4, :cond_3

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    :cond_3
    const/16 v2, 0xa

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-lez v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const v6, 0xac44

    .line 77
    .line 78
    .line 79
    const v7, 0xbb80

    .line 80
    .line 81
    .line 82
    if-eqz v5, :cond_5

    .line 83
    .line 84
    move v5, v7

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v5, v6

    .line 87
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sget-object v8, Landroidx/media3/extractor/Ac4Util;->a:[I

    .line 92
    .line 93
    if-ne v5, v6, :cond_6

    .line 94
    .line 95
    const/16 v6, 0xd

    .line 96
    .line 97
    if-ne p0, v6, :cond_6

    .line 98
    .line 99
    aget p0, v8, p0

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_6
    if-ne v5, v7, :cond_c

    .line 103
    .line 104
    const/16 v6, 0xe

    .line 105
    .line 106
    if-ge p0, v6, :cond_c

    .line 107
    .line 108
    aget v6, v8, p0

    .line 109
    .line 110
    rem-int/lit8 v2, v2, 0x5

    .line 111
    .line 112
    const/16 v7, 0x8

    .line 113
    .line 114
    const/4 v8, 0x1

    .line 115
    if-eq v2, v8, :cond_a

    .line 116
    .line 117
    const/16 v8, 0xb

    .line 118
    .line 119
    if-eq v2, v1, :cond_9

    .line 120
    .line 121
    if-eq v2, v4, :cond_a

    .line 122
    .line 123
    if-eq v2, v3, :cond_7

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    if-eq p0, v4, :cond_8

    .line 127
    .line 128
    if-eq p0, v7, :cond_8

    .line 129
    .line 130
    if-ne p0, v8, :cond_b

    .line 131
    .line 132
    :cond_8
    :goto_2
    add-int/lit8 p0, v6, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_9
    if-eq p0, v7, :cond_8

    .line 136
    .line 137
    if-ne p0, v8, :cond_b

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_a
    if-eq p0, v4, :cond_8

    .line 141
    .line 142
    if-ne p0, v7, :cond_b

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_b
    :goto_3
    move p0, v6

    .line 146
    goto :goto_4

    .line 147
    :cond_c
    const/4 p0, 0x0

    .line 148
    :goto_4
    new-instance v1, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    .line 149
    .line 150
    invoke-direct {v1, v5, v0, p0}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(III)V

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public static d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x7

    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    if-ltz v1, :cond_3

    .line 46
    .line 47
    const/16 v2, 0xf

    .line 48
    .line 49
    if-gt v1, v2, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iput v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->f(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public static e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v4, 0x6

    .line 56
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    iput v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->f(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public static f(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x2a

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    .line 28
    .line 29
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method
