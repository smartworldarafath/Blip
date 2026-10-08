.class public abstract Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/platform/ClipEntry;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/platform/ClipEntry;->a:Landroid/content/ClipData;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_22

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_22

    .line 18
    .line 19
    instance-of v3, v0, Landroid/text/Spanned;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    move-object v3, v0

    .line 34
    check-cast v3, Landroid/text/Spanned;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-class v5, Landroid/text/Annotation;

    .line 41
    .line 42
    invoke-interface {v3, v1, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, [Landroid/text/Annotation;

    .line 47
    .line 48
    new-instance v5, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    array-length v6, v4

    .line 57
    const/4 v7, 0x1

    .line 58
    sub-int/2addr v6, v7

    .line 59
    if-ltz v6, :cond_20

    .line 60
    .line 61
    move v8, v1

    .line 62
    :goto_0
    aget-object v9, v4, v8

    .line 63
    .line 64
    invoke-virtual {v9}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const-string v11, "androidx.compose.text.SpanStyle"

    .line 69
    .line 70
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-nez v10, :cond_1

    .line 75
    .line 76
    move-object/from16 v17, v0

    .line 77
    .line 78
    move/from16 v24, v1

    .line 79
    .line 80
    move-object/from16 v25, v2

    .line 81
    .line 82
    move v15, v8

    .line 83
    goto/16 :goto_e

    .line 84
    .line 85
    :cond_1
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    new-instance v12, Landroidx/compose/foundation/internal/DecodeHelper;

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-direct {v12, v9}, Landroidx/compose/foundation/internal/DecodeHelper;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v9, Landroidx/compose/foundation/internal/MutableSpanStyle;

    .line 103
    .line 104
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->h:J

    .line 105
    .line 106
    move v15, v8

    .line 107
    sget-wide v7, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 108
    .line 109
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-wide v13, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->a:J

    .line 113
    .line 114
    iput-wide v7, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->b:J

    .line 115
    .line 116
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 117
    .line 118
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 119
    .line 120
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 121
    .line 122
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->f:Ljava/lang/String;

    .line 123
    .line 124
    iput-wide v7, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->g:J

    .line 125
    .line 126
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->h:Landroidx/compose/ui/text/style/BaselineShift;

    .line 127
    .line 128
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->i:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 129
    .line 130
    iput-wide v13, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->j:J

    .line 131
    .line 132
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->k:Landroidx/compose/ui/text/style/TextDecoration;

    .line 133
    .line 134
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->l:Landroidx/compose/ui/graphics/Shadow;

    .line 135
    .line 136
    :goto_1
    iget-object v7, v12, Landroidx/compose/foundation/internal/DecodeHelper;->a:Landroid/os/Parcel;

    .line 137
    .line 138
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    const/4 v13, 0x1

    .line 143
    if-le v8, v13, :cond_3

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/os/Parcel;->readByte()B

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    const-wide/16 v16, 0x1

    .line 150
    .line 151
    const-wide/16 v18, -0x40

    .line 152
    .line 153
    const-wide/16 v20, 0x10

    .line 154
    .line 155
    const-wide/16 v22, 0x3f

    .line 156
    .line 157
    const/16 v14, 0x8

    .line 158
    .line 159
    if-ne v8, v13, :cond_6

    .line 160
    .line 161
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-lt v8, v14, :cond_3

    .line 166
    .line 167
    sget v8, Landroidx/compose/ui/graphics/Color;->i:I

    .line 168
    .line 169
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    .line 170
    .line 171
    .line 172
    move-result-wide v7

    .line 173
    and-long v13, v7, v22

    .line 174
    .line 175
    cmp-long v20, v13, v20

    .line 176
    .line 177
    if-gez v20, :cond_2

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_2
    and-long v7, v7, v18

    .line 181
    .line 182
    add-long v13, v13, v16

    .line 183
    .line 184
    or-long/2addr v7, v13

    .line 185
    :goto_2
    iput-wide v7, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->a:J

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_3
    move/from16 v24, v1

    .line 189
    .line 190
    :cond_4
    move-object/from16 v25, v2

    .line 191
    .line 192
    :cond_5
    move/from16 p0, v15

    .line 193
    .line 194
    goto/16 :goto_d

    .line 195
    .line 196
    :cond_6
    const/4 v13, 0x2

    .line 197
    move/from16 v24, v1

    .line 198
    .line 199
    const/4 v1, 0x5

    .line 200
    if-ne v8, v13, :cond_7

    .line 201
    .line 202
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-lt v7, v1, :cond_4

    .line 207
    .line 208
    invoke-virtual {v12}, Landroidx/compose/foundation/internal/DecodeHelper;->a()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    iput-wide v7, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->b:J

    .line 213
    .line 214
    move/from16 v1, v24

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_7
    move-object/from16 v25, v2

    .line 218
    .line 219
    const/4 v2, 0x3

    .line 220
    const/4 v14, 0x4

    .line 221
    if-ne v8, v2, :cond_9

    .line 222
    .line 223
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-lt v1, v14, :cond_5

    .line 228
    .line 229
    new-instance v1, Landroidx/compose/ui/text/font/FontWeight;

    .line 230
    .line 231
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 236
    .line 237
    .line 238
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 239
    .line 240
    :cond_8
    :goto_3
    move/from16 v1, v24

    .line 241
    .line 242
    move-object/from16 v2, v25

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_9
    if-ne v8, v14, :cond_c

    .line 246
    .line 247
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    const/4 v2, 0x1

    .line 252
    if-lt v1, v2, :cond_5

    .line 253
    .line 254
    invoke-virtual {v7}, Landroid/os/Parcel;->readByte()B

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-nez v1, :cond_b

    .line 259
    .line 260
    :cond_a
    move/from16 v13, v24

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    if-ne v1, v2, :cond_a

    .line 264
    .line 265
    move v13, v2

    .line 266
    :goto_4
    new-instance v1, Landroidx/compose/ui/text/font/FontStyle;

    .line 267
    .line 268
    invoke-direct {v1, v13}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 269
    .line 270
    .line 271
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_c
    const/4 v14, 0x1

    .line 275
    if-ne v8, v1, :cond_11

    .line 276
    .line 277
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-lt v1, v14, :cond_5

    .line 282
    .line 283
    invoke-virtual {v7}, Landroid/os/Parcel;->readByte()B

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_e

    .line 288
    .line 289
    :cond_d
    move/from16 v13, v24

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_e
    if-ne v1, v14, :cond_f

    .line 293
    .line 294
    const v13, 0xffff

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_f
    if-ne v1, v2, :cond_10

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_10
    if-ne v1, v13, :cond_d

    .line 302
    .line 303
    move v13, v14

    .line 304
    :goto_5
    new-instance v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 305
    .line 306
    invoke-direct {v1, v13}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 307
    .line 308
    .line 309
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_11
    const/4 v2, 0x6

    .line 313
    if-ne v8, v2, :cond_12

    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->f:Ljava/lang/String;

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_12
    const/4 v2, 0x7

    .line 323
    if-ne v8, v2, :cond_13

    .line 324
    .line 325
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-lt v2, v1, :cond_5

    .line 330
    .line 331
    invoke-virtual {v12}, Landroidx/compose/foundation/internal/DecodeHelper;->a()J

    .line 332
    .line 333
    .line 334
    move-result-wide v1

    .line 335
    iput-wide v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->g:J

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_13
    const/16 v1, 0x8

    .line 339
    .line 340
    if-ne v8, v1, :cond_14

    .line 341
    .line 342
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    const/4 v2, 0x4

    .line 347
    if-lt v1, v2, :cond_5

    .line 348
    .line 349
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    new-instance v2, Landroidx/compose/ui/text/style/BaselineShift;

    .line 354
    .line 355
    invoke-direct {v2, v1}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 356
    .line 357
    .line 358
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->h:Landroidx/compose/ui/text/style/BaselineShift;

    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_14
    const/16 v1, 0x9

    .line 362
    .line 363
    if-ne v8, v1, :cond_15

    .line 364
    .line 365
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    const/16 v2, 0x8

    .line 370
    .line 371
    if-lt v1, v2, :cond_5

    .line 372
    .line 373
    new-instance v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 374
    .line 375
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    invoke-direct {v1, v2, v7}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 384
    .line 385
    .line 386
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->i:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_15
    const/16 v2, 0x8

    .line 391
    .line 392
    const/16 v1, 0xa

    .line 393
    .line 394
    if-ne v8, v1, :cond_17

    .line 395
    .line 396
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-lt v1, v2, :cond_5

    .line 401
    .line 402
    sget v1, Landroidx/compose/ui/graphics/Color;->i:I

    .line 403
    .line 404
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    .line 405
    .line 406
    .line 407
    move-result-wide v1

    .line 408
    and-long v7, v1, v22

    .line 409
    .line 410
    cmp-long v13, v7, v20

    .line 411
    .line 412
    if-gez v13, :cond_16

    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_16
    and-long v1, v1, v18

    .line 416
    .line 417
    add-long v7, v7, v16

    .line 418
    .line 419
    or-long/2addr v1, v7

    .line 420
    :goto_6
    iput-wide v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->j:J

    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_17
    const/16 v1, 0xb

    .line 425
    .line 426
    if-ne v8, v1, :cond_1e

    .line 427
    .line 428
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    const/4 v2, 0x4

    .line 433
    if-lt v1, v2, :cond_5

    .line 434
    .line 435
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    and-int/lit8 v2, v1, 0x2

    .line 440
    .line 441
    if-eqz v2, :cond_18

    .line 442
    .line 443
    move v13, v14

    .line 444
    goto :goto_7

    .line 445
    :cond_18
    move/from16 v13, v24

    .line 446
    .line 447
    :goto_7
    and-int/lit8 v1, v1, 0x1

    .line 448
    .line 449
    if-eqz v1, :cond_19

    .line 450
    .line 451
    move v1, v14

    .line 452
    goto :goto_8

    .line 453
    :cond_19
    move/from16 v1, v24

    .line 454
    .line 455
    :goto_8
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    .line 456
    .line 457
    sget-object v7, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    .line 458
    .line 459
    if-eqz v13, :cond_1b

    .line 460
    .line 461
    if-eqz v1, :cond_1b

    .line 462
    .line 463
    filled-new-array {v2, v7}, [Landroidx/compose/ui/text/style/TextDecoration;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    move/from16 v8, v24

    .line 480
    .line 481
    :goto_9
    if-ge v8, v7, :cond_1a

    .line 482
    .line 483
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v13

    .line 487
    check-cast v13, Landroidx/compose/ui/text/style/TextDecoration;

    .line 488
    .line 489
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    iget v13, v13, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    .line 494
    .line 495
    or-int/2addr v2, v13

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    add-int/lit8 v8, v8, 0x1

    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    new-instance v2, Landroidx/compose/ui/text/style/TextDecoration;

    .line 508
    .line 509
    invoke-direct {v2, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 510
    .line 511
    .line 512
    goto :goto_a

    .line 513
    :cond_1b
    if-eqz v13, :cond_1c

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_1c
    if-eqz v1, :cond_1d

    .line 517
    .line 518
    move-object v2, v7

    .line 519
    goto :goto_a

    .line 520
    :cond_1d
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 521
    .line 522
    :goto_a
    iput-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->k:Landroidx/compose/ui/text/style/TextDecoration;

    .line 523
    .line 524
    goto/16 :goto_3

    .line 525
    .line 526
    :cond_1e
    const/16 v1, 0xc

    .line 527
    .line 528
    if-ne v8, v1, :cond_8

    .line 529
    .line 530
    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    const/16 v2, 0x14

    .line 535
    .line 536
    if-lt v1, v2, :cond_5

    .line 537
    .line 538
    new-instance v26, Landroidx/compose/ui/graphics/Shadow;

    .line 539
    .line 540
    sget v1, Landroidx/compose/ui/graphics/Color;->i:I

    .line 541
    .line 542
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    .line 543
    .line 544
    .line 545
    move-result-wide v1

    .line 546
    and-long v22, v1, v22

    .line 547
    .line 548
    cmp-long v8, v22, v20

    .line 549
    .line 550
    if-gez v8, :cond_1f

    .line 551
    .line 552
    :goto_b
    move-wide/from16 v27, v1

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_1f
    and-long v1, v1, v18

    .line 556
    .line 557
    add-long v22, v22, v16

    .line 558
    .line 559
    or-long v1, v1, v22

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :goto_c
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    move/from16 p0, v15

    .line 575
    .line 576
    int-to-long v14, v1

    .line 577
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    int-to-long v1, v1

    .line 582
    const/16 v8, 0x20

    .line 583
    .line 584
    shl-long/2addr v14, v8

    .line 585
    const-wide v16, 0xffffffffL

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    and-long v1, v1, v16

    .line 591
    .line 592
    or-long v29, v14, v1

    .line 593
    .line 594
    invoke-virtual {v7}, Landroid/os/Parcel;->readFloat()F

    .line 595
    .line 596
    .line 597
    move-result v31

    .line 598
    invoke-direct/range {v26 .. v31}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v1, v26

    .line 602
    .line 603
    iput-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->l:Landroidx/compose/ui/graphics/Shadow;

    .line 604
    .line 605
    move/from16 v15, p0

    .line 606
    .line 607
    goto/16 :goto_3

    .line 608
    .line 609
    :goto_d
    new-instance v26, Landroidx/compose/ui/text/SpanStyle;

    .line 610
    .line 611
    iget-wide v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->a:J

    .line 612
    .line 613
    iget-wide v7, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->b:J

    .line 614
    .line 615
    iget-object v12, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 616
    .line 617
    iget-object v14, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 618
    .line 619
    iget-object v15, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 620
    .line 621
    iget-object v13, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->f:Ljava/lang/String;

    .line 622
    .line 623
    move-object/from16 v17, v0

    .line 624
    .line 625
    move-wide/from16 v27, v1

    .line 626
    .line 627
    iget-wide v0, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->g:J

    .line 628
    .line 629
    iget-object v2, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->h:Landroidx/compose/ui/text/style/BaselineShift;

    .line 630
    .line 631
    move-wide/from16 v36, v0

    .line 632
    .line 633
    iget-object v0, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->i:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 634
    .line 635
    move-object/from16 v39, v0

    .line 636
    .line 637
    iget-wide v0, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->j:J

    .line 638
    .line 639
    move-wide/from16 v41, v0

    .line 640
    .line 641
    iget-object v0, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->k:Landroidx/compose/ui/text/style/TextDecoration;

    .line 642
    .line 643
    iget-object v1, v9, Landroidx/compose/foundation/internal/MutableSpanStyle;->l:Landroidx/compose/ui/graphics/Shadow;

    .line 644
    .line 645
    const v45, 0xc000

    .line 646
    .line 647
    .line 648
    const/16 v34, 0x0

    .line 649
    .line 650
    const/16 v40, 0x0

    .line 651
    .line 652
    move-object/from16 v43, v0

    .line 653
    .line 654
    move-object/from16 v44, v1

    .line 655
    .line 656
    move-object/from16 v38, v2

    .line 657
    .line 658
    move-wide/from16 v29, v7

    .line 659
    .line 660
    move-object/from16 v31, v12

    .line 661
    .line 662
    move-object/from16 v35, v13

    .line 663
    .line 664
    move-object/from16 v32, v14

    .line 665
    .line 666
    move-object/from16 v33, v15

    .line 667
    .line 668
    invoke-direct/range {v26 .. v45}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 669
    .line 670
    .line 671
    move-object/from16 v0, v26

    .line 672
    .line 673
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 674
    .line 675
    invoke-direct {v1, v10, v11, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move/from16 v15, p0

    .line 682
    .line 683
    :goto_e
    if-eq v15, v6, :cond_21

    .line 684
    .line 685
    add-int/lit8 v8, v15, 0x1

    .line 686
    .line 687
    move-object/from16 v0, v17

    .line 688
    .line 689
    move/from16 v1, v24

    .line 690
    .line 691
    move-object/from16 v2, v25

    .line 692
    .line 693
    const/4 v7, 0x1

    .line 694
    goto/16 :goto_0

    .line 695
    .line 696
    :cond_20
    move-object/from16 v17, v0

    .line 697
    .line 698
    :cond_21
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 699
    .line 700
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 705
    .line 706
    invoke-direct {v0, v1, v5, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 707
    .line 708
    .line 709
    return-object v0

    .line 710
    :cond_22
    move-object/from16 v25, v2

    .line 711
    .line 712
    return-object v25
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/platform/ClipEntry;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString;->l:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget-object v3, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v4, v2

    .line 14
    :goto_0
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/compose/foundation/internal/EncodeHelper;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    move-object v2, v3

    .line 43
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_1
    if-ge v6, v3, :cond_15

    .line 49
    .line 50
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 55
    .line 56
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    .line 59
    .line 60
    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 61
    .line 62
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iput-object v10, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 74
    .line 75
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 76
    .line 77
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 78
    .line 79
    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 80
    .line 81
    move v15, v6

    .line 82
    iget-wide v5, v8, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 83
    .line 84
    move-object/from16 v16, v2

    .line 85
    .line 86
    move/from16 v17, v3

    .line 87
    .line 88
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    move/from16 v18, v9

    .line 93
    .line 94
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->h:J

    .line 95
    .line 96
    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v3, 0x1

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 104
    .line 105
    .line 106
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 107
    .line 108
    move-object/from16 v19, v4

    .line 109
    .line 110
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    iget-object v2, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object/from16 v19, v4

    .line 121
    .line 122
    :goto_2
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 123
    .line 124
    invoke-static {v5, v6, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v20, v4

    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    if-nez v20, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->c(J)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 140
    .line 141
    const/4 v6, 0x3

    .line 142
    if-eqz v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 145
    .line 146
    .line 147
    iget v5, v5, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 148
    .line 149
    iget-object v6, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 155
    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    iget v5, v5, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 159
    .line 160
    const/4 v6, 0x4

    .line 161
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 162
    .line 163
    .line 164
    if-nez v5, :cond_7

    .line 165
    .line 166
    :cond_6
    const/4 v6, 0x0

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const/4 v6, 0x1

    .line 169
    if-ne v5, v6, :cond_6

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    :goto_3
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 173
    .line 174
    .line 175
    :cond_8
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 176
    .line 177
    if-eqz v5, :cond_d

    .line 178
    .line 179
    iget v5, v5, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    .line 180
    .line 181
    const/4 v6, 0x5

    .line 182
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 183
    .line 184
    .line 185
    if-nez v5, :cond_a

    .line 186
    .line 187
    :cond_9
    const/4 v4, 0x0

    .line 188
    goto :goto_4

    .line 189
    :cond_a
    const v6, 0xffff

    .line 190
    .line 191
    .line 192
    if-ne v5, v6, :cond_b

    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    goto :goto_4

    .line 196
    :cond_b
    const/4 v6, 0x1

    .line 197
    if-ne v5, v6, :cond_c

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    if-ne v5, v4, :cond_9

    .line 201
    .line 202
    const/4 v4, 0x3

    .line 203
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 204
    .line 205
    .line 206
    :cond_d
    iget-object v4, v8, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v4, :cond_e

    .line 209
    .line 210
    const/4 v5, 0x6

    .line 211
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 212
    .line 213
    .line 214
    iget-object v5, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 215
    .line 216
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_e
    invoke-static {v13, v14, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_f

    .line 224
    .line 225
    const/4 v2, 0x7

    .line 226
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v13, v14}, Landroidx/compose/foundation/internal/EncodeHelper;->c(J)V

    .line 230
    .line 231
    .line 232
    :cond_f
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    .line 233
    .line 234
    if-eqz v2, :cond_10

    .line 235
    .line 236
    iget v2, v2, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    .line 237
    .line 238
    const/16 v3, 0x8

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 244
    .line 245
    .line 246
    :cond_10
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 247
    .line 248
    if-eqz v2, :cond_11

    .line 249
    .line 250
    const/16 v3, 0x9

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 253
    .line 254
    .line 255
    iget v3, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 258
    .line 259
    .line 260
    iget v2, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 263
    .line 264
    .line 265
    :cond_11
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_12

    .line 270
    .line 271
    const/16 v2, 0xa

    .line 272
    .line 273
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 277
    .line 278
    invoke-virtual {v2, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    .line 280
    .line 281
    :cond_12
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 282
    .line 283
    if-eqz v2, :cond_13

    .line 284
    .line 285
    const/16 v3, 0xb

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 288
    .line 289
    .line 290
    iget v2, v2, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    .line 291
    .line 292
    iget-object v3, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 293
    .line 294
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    .line 296
    .line 297
    :cond_13
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 298
    .line 299
    if-eqz v2, :cond_14

    .line 300
    .line 301
    const/16 v3, 0xc

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    .line 304
    .line 305
    .line 306
    iget-wide v3, v2, Landroidx/compose/ui/graphics/Shadow;->a:J

    .line 307
    .line 308
    iget-object v5, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 309
    .line 310
    invoke-virtual {v5, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    .line 312
    .line 313
    iget-wide v3, v2, Landroidx/compose/ui/graphics/Shadow;->b:J

    .line 314
    .line 315
    const/16 v5, 0x20

    .line 316
    .line 317
    shr-long v5, v3, v5

    .line 318
    .line 319
    long-to-int v5, v5

    .line 320
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 325
    .line 326
    .line 327
    const-wide v5, 0xffffffffL

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    and-long/2addr v3, v5

    .line 333
    long-to-int v3, v3

    .line 334
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 339
    .line 340
    .line 341
    iget v2, v2, Landroidx/compose/ui/graphics/Shadow;->c:F

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    .line 344
    .line 345
    .line 346
    :cond_14
    new-instance v2, Landroid/text/Annotation;

    .line 347
    .line 348
    iget-object v3, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    .line 349
    .line 350
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const/4 v4, 0x0

    .line 355
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    const-string v5, "androidx.compose.text.SpanStyle"

    .line 360
    .line 361
    invoke-direct {v2, v5, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const/16 v3, 0x21

    .line 365
    .line 366
    move/from16 v6, v18

    .line 367
    .line 368
    move-object/from16 v5, v19

    .line 369
    .line 370
    invoke-virtual {v5, v2, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    .line 372
    .line 373
    add-int/lit8 v6, v15, 0x1

    .line 374
    .line 375
    move-object v4, v5

    .line 376
    move-object/from16 v2, v16

    .line 377
    .line 378
    move/from16 v3, v17

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_15
    move-object v5, v4

    .line 383
    move-object v0, v5

    .line 384
    :goto_5
    const-string v2, "plain text"

    .line 385
    .line 386
    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-direct {v1, v0}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    .line 391
    .line 392
    .line 393
    return-object v1
.end method
