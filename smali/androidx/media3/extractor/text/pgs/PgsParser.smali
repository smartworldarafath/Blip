.class public final Landroidx/media3/extractor/text/pgs/PgsParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

.field public d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int v2, v1, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/util/zip/Inflater;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->d:Ljava/util/zip/Inflater;

    .line 29
    .line 30
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/16 v4, 0x78

    .line 43
    .line 44
    if-ne v2, v4, :cond_1

    .line 45
    .line 46
    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 47
    .line 48
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->y(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 55
    .line 56
    iget v2, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 57
    .line 58
    invoke-virtual {v3, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->c:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->b:[I

    .line 67
    .line 68
    iget-object v4, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 69
    .line 70
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    .line 71
    .line 72
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    .line 73
    .line 74
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    .line 75
    .line 76
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 77
    .line 78
    iput v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 81
    .line 82
    .line 83
    iput-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    .line 84
    .line 85
    new-instance v10, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v6, 0x3

    .line 95
    if-lt v5, v6, :cond_15

    .line 96
    .line 97
    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 98
    .line 99
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    iget v9, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 108
    .line 109
    add-int/2addr v9, v8

    .line 110
    if-le v9, v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 113
    .line 114
    .line 115
    move v12, v1

    .line 116
    move-object/from16 v17, v2

    .line 117
    .line 118
    const/4 v11, 0x0

    .line 119
    goto/16 :goto_d

    .line 120
    .line 121
    :cond_2
    const/16 v5, 0x80

    .line 122
    .line 123
    if-eq v7, v5, :cond_c

    .line 124
    .line 125
    packed-switch v7, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    move-object/from16 v17, v2

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :pswitch_0
    const/16 v5, 0x13

    .line 133
    .line 134
    if-ge v8, v5, :cond_4

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    .line 142
    .line 143
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    .line 148
    .line 149
    const/16 v5, 0xb

    .line 150
    .line 151
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_1
    const/4 v7, 0x4

    .line 168
    if-ge v8, v7, :cond_5

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    and-int/2addr v5, v6

    .line 179
    if-eqz v5, :cond_6

    .line 180
    .line 181
    const/4 v12, 0x1

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move v12, v1

    .line 184
    :goto_2
    add-int/lit8 v5, v8, -0x4

    .line 185
    .line 186
    if-eqz v12, :cond_9

    .line 187
    .line 188
    const/4 v6, 0x7

    .line 189
    if-ge v5, v6, :cond_7

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->C()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-ge v5, v7, :cond_8

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_8
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 204
    .line 205
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 210
    .line 211
    add-int/lit8 v5, v5, -0x4

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v5, v8, -0xb

    .line 217
    .line 218
    :cond_9
    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 219
    .line 220
    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 221
    .line 222
    if-ge v6, v7, :cond_3

    .line 223
    .line 224
    if-lez v5, :cond_3

    .line 225
    .line 226
    sub-int/2addr v7, v6

    .line 227
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iget-object v7, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 232
    .line 233
    invoke-virtual {v3, v7, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 234
    .line 235
    .line 236
    add-int/2addr v6, v5

    .line 237
    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :pswitch_2
    rem-int/lit8 v6, v8, 0x5

    .line 242
    .line 243
    const/4 v7, 0x2

    .line 244
    if-eq v6, v7, :cond_a

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_a
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 251
    .line 252
    .line 253
    div-int/lit8 v8, v8, 0x5

    .line 254
    .line 255
    move v6, v1

    .line 256
    :goto_3
    if-ge v6, v8, :cond_b

    .line 257
    .line 258
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 275
    .line 276
    .line 277
    move-result v16

    .line 278
    move/from16 p0, v5

    .line 279
    .line 280
    move/from16 p1, v6

    .line 281
    .line 282
    int-to-double v5, v13

    .line 283
    add-int/lit8 v14, v14, -0x80

    .line 284
    .line 285
    int-to-double v13, v14

    .line 286
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    mul-double v17, v17, v13

    .line 292
    .line 293
    add-double v11, v17, v5

    .line 294
    .line 295
    double-to-int v11, v11

    .line 296
    add-int/lit8 v15, v15, -0x80

    .line 297
    .line 298
    move-object/from16 v17, v2

    .line 299
    .line 300
    int-to-double v1, v15

    .line 301
    const-wide v18, 0x3fd60663c74fb54aL    # 0.34414

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    mul-double v18, v18, v1

    .line 307
    .line 308
    sub-double v18, v5, v18

    .line 309
    .line 310
    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    mul-double v13, v13, v20

    .line 316
    .line 317
    sub-double v13, v18, v13

    .line 318
    .line 319
    double-to-int v13, v13

    .line 320
    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    mul-double/2addr v1, v14

    .line 326
    add-double/2addr v1, v5

    .line 327
    double-to-int v1, v1

    .line 328
    shl-int/lit8 v2, v16, 0x18

    .line 329
    .line 330
    const/16 v5, 0xff

    .line 331
    .line 332
    const/4 v12, 0x0

    .line 333
    invoke-static {v11, v12, v5}, Landroidx/media3/common/util/Util;->g(III)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    shl-int/lit8 v6, v6, 0x10

    .line 338
    .line 339
    or-int/2addr v2, v6

    .line 340
    invoke-static {v13, v12, v5}, Landroidx/media3/common/util/Util;->g(III)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    shl-int/lit8 v6, v6, 0x8

    .line 345
    .line 346
    or-int/2addr v2, v6

    .line 347
    invoke-static {v1, v12, v5}, Landroidx/media3/common/util/Util;->g(III)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    or-int/2addr v1, v2

    .line 352
    aput v1, v17, v7

    .line 353
    .line 354
    add-int/lit8 v6, p1, 0x1

    .line 355
    .line 356
    move/from16 v5, p0

    .line 357
    .line 358
    move-object/from16 v2, v17

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    goto :goto_3

    .line 362
    :cond_b
    move-object/from16 v17, v2

    .line 363
    .line 364
    const/4 v1, 0x1

    .line 365
    iput-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    .line 366
    .line 367
    :goto_4
    const/4 v11, 0x0

    .line 368
    const/4 v12, 0x0

    .line 369
    goto/16 :goto_c

    .line 370
    .line 371
    :cond_c
    move-object/from16 v17, v2

    .line 372
    .line 373
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    .line 374
    .line 375
    if-eqz v1, :cond_d

    .line 376
    .line 377
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    .line 378
    .line 379
    if-eqz v1, :cond_d

    .line 380
    .line 381
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 382
    .line 383
    if-eqz v1, :cond_d

    .line 384
    .line 385
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 386
    .line 387
    if-eqz v1, :cond_d

    .line 388
    .line 389
    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 390
    .line 391
    if-eqz v1, :cond_d

    .line 392
    .line 393
    iget v2, v4, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 394
    .line 395
    if-ne v2, v1, :cond_d

    .line 396
    .line 397
    iget-boolean v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    .line 398
    .line 399
    if-nez v1, :cond_e

    .line 400
    .line 401
    :cond_d
    const/4 v1, 0x0

    .line 402
    goto/16 :goto_a

    .line 403
    .line 404
    :cond_e
    const/4 v12, 0x0

    .line 405
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 406
    .line 407
    .line 408
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 409
    .line 410
    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 411
    .line 412
    mul-int/2addr v1, v2

    .line 413
    new-array v2, v1, [I

    .line 414
    .line 415
    const/4 v5, 0x0

    .line 416
    :cond_f
    :goto_5
    if-ge v5, v1, :cond_13

    .line 417
    .line 418
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_10

    .line 423
    .line 424
    add-int/lit8 v7, v5, 0x1

    .line 425
    .line 426
    aget v6, v17, v6

    .line 427
    .line 428
    aput v6, v2, v5

    .line 429
    .line 430
    :goto_6
    move v5, v7

    .line 431
    goto :goto_5

    .line 432
    :cond_10
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    if-eqz v6, :cond_f

    .line 437
    .line 438
    and-int/lit8 v7, v6, 0x40

    .line 439
    .line 440
    if-nez v7, :cond_11

    .line 441
    .line 442
    and-int/lit8 v7, v6, 0x3f

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_11
    and-int/lit8 v7, v6, 0x3f

    .line 446
    .line 447
    shl-int/lit8 v7, v7, 0x8

    .line 448
    .line 449
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    or-int/2addr v7, v8

    .line 454
    :goto_7
    and-int/lit16 v6, v6, 0x80

    .line 455
    .line 456
    if-nez v6, :cond_12

    .line 457
    .line 458
    const/4 v12, 0x0

    .line 459
    aget v6, v17, v12

    .line 460
    .line 461
    goto :goto_8

    .line 462
    :cond_12
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    aget v6, v17, v6

    .line 467
    .line 468
    :goto_8
    add-int/2addr v7, v5

    .line 469
    invoke-static {v2, v5, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 470
    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_13
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 474
    .line 475
    iget v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 476
    .line 477
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 478
    .line 479
    invoke-static {v2, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    new-instance v2, Landroidx/media3/common/text/Cue$Builder;

    .line 484
    .line 485
    invoke-direct {v2}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 486
    .line 487
    .line 488
    iput-object v1, v2, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 489
    .line 490
    const/4 v1, 0x0

    .line 491
    iput-object v1, v2, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 492
    .line 493
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    .line 494
    .line 495
    int-to-float v1, v1

    .line 496
    iget v5, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    .line 497
    .line 498
    int-to-float v5, v5

    .line 499
    div-float/2addr v1, v5

    .line 500
    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 501
    .line 502
    const/4 v12, 0x0

    .line 503
    iput v12, v2, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 504
    .line 505
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    .line 506
    .line 507
    int-to-float v1, v1

    .line 508
    iget v6, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    .line 509
    .line 510
    int-to-float v6, v6

    .line 511
    div-float/2addr v1, v6

    .line 512
    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 513
    .line 514
    iput v12, v2, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 515
    .line 516
    iput v12, v2, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 517
    .line 518
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 519
    .line 520
    int-to-float v1, v1

    .line 521
    div-float/2addr v1, v5

    .line 522
    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 523
    .line 524
    iget v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 525
    .line 526
    int-to-float v1, v1

    .line 527
    div-float/2addr v1, v6

    .line 528
    iput v1, v2, Landroidx/media3/common/text/Cue$Builder;->m:F

    .line 529
    .line 530
    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    :goto_9
    const/4 v12, 0x0

    .line 535
    goto :goto_b

    .line 536
    :goto_a
    move-object v11, v1

    .line 537
    goto :goto_9

    .line 538
    :goto_b
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->d:I

    .line 539
    .line 540
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->e:I

    .line 541
    .line 542
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->f:I

    .line 543
    .line 544
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->g:I

    .line 545
    .line 546
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->h:I

    .line 547
    .line 548
    iput v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->i:I

    .line 549
    .line 550
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 551
    .line 552
    .line 553
    iput-boolean v12, v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->c:Z

    .line 554
    .line 555
    :goto_c
    invoke-virtual {v3, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 556
    .line 557
    .line 558
    :goto_d
    if-eqz v11, :cond_14

    .line 559
    .line 560
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    :cond_14
    move v1, v12

    .line 564
    move-object/from16 v2, v17

    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :cond_15
    new-instance v5, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 569
    .line 570
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v0, p4

    .line 584
    .line 585
    invoke-interface {v0, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
