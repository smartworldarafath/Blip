.class public final Lcoil3/video/VideoFrameDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/video/VideoFrameDecoder$Factory;
    }
.end annotation


# instance fields
.field public final a:Lcoil3/decode/ImageSource;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/VideoFrameDecoder;->a:Lcoil3/decode/ImageSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/video/VideoFrameDecoder;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-string v2, "Failed to decode frame at "

    .line 6
    .line 7
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v14, 0x0

    .line 13
    :try_start_0
    iget-object v4, v0, Lcoil3/video/VideoFrameDecoder;->a:Lcoil3/decode/ImageSource;

    .line 14
    .line 15
    invoke-virtual {v0, v3, v4}, Lcoil3/video/VideoFrameDecoder;->c(Landroid/media/MediaMetadataRetriever;Lcoil3/decode/ImageSource;)V

    .line 16
    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-static {v4}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_13

    .line 39
    .line 40
    :cond_0
    move v4, v14

    .line 41
    :goto_0
    const/16 v5, 0x5a

    .line 42
    .line 43
    const/16 v6, 0x13

    .line 44
    .line 45
    const/16 v7, 0x12

    .line 46
    .line 47
    if-eq v4, v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x10e

    .line 50
    .line 51
    if-eq v4, v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-static {v4}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v4, v14

    .line 71
    :goto_1
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-static {v5}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move v5, v14

    .line 89
    :goto_2
    move v15, v4

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_4

    .line 96
    .line 97
    invoke-static {v4}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    move v4, v14

    .line 109
    :goto_3
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_2

    .line 126
    :goto_4
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 127
    .line 128
    iget-object v4, v0, Lcoil3/video/VideoFrameDecoder;->b:Lcoil3/request/Options;

    .line 129
    .line 130
    if-lez v15, :cond_6

    .line 131
    .line 132
    if-lez v5, :cond_6

    .line 133
    .line 134
    :try_start_1
    iget-object v6, v4, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 135
    .line 136
    iget-object v7, v4, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 137
    .line 138
    sget-object v8, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 139
    .line 140
    invoke-static {v4, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    check-cast v9, Lcoil3/size/Size;

    .line 145
    .line 146
    invoke-static {v15, v5, v6, v7, v9}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    const/16 v9, 0x20

    .line 151
    .line 152
    shr-long v10, v6, v9

    .line 153
    .line 154
    long-to-int v9, v10

    .line 155
    const-wide v10, 0xffffffffL

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    and-long/2addr v6, v10

    .line 161
    long-to-int v6, v6

    .line 162
    iget-object v7, v4, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 163
    .line 164
    invoke-static {v4, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    move-object/from16 v20, v8

    .line 169
    .line 170
    check-cast v20, Lcoil3/size/Size;

    .line 171
    .line 172
    move/from16 v16, v5

    .line 173
    .line 174
    move/from16 v18, v6

    .line 175
    .line 176
    move-object/from16 v19, v7

    .line 177
    .line 178
    move/from16 v17, v9

    .line 179
    .line 180
    invoke-static/range {v15 .. v20}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 181
    .line 182
    .line 183
    move-result-wide v5

    .line 184
    move/from16 v7, v16

    .line 185
    .line 186
    iget-object v8, v4, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 187
    .line 188
    sget-object v9, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 189
    .line 190
    if-ne v8, v9, :cond_5

    .line 191
    .line 192
    cmpl-double v8, v5, v21

    .line 193
    .line 194
    if-lez v8, :cond_5

    .line 195
    .line 196
    move-wide/from16 v5, v21

    .line 197
    .line 198
    :cond_5
    int-to-double v8, v15

    .line 199
    mul-double/2addr v8, v5

    .line 200
    invoke-static {v8, v9}, Lkotlin/math/MathKt;->a(D)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    int-to-double v9, v7

    .line 205
    mul-double/2addr v5, v9

    .line 206
    invoke-static {v5, v6}, Lkotlin/math/MathKt;->a(D)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    invoke-static {v8, v5}, Lcoil3/size/SizeKt;->a(II)Lcoil3/size/Size;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    :goto_5
    move-object v10, v5

    .line 215
    goto :goto_6

    .line 216
    :cond_6
    move v7, v5

    .line 217
    sget-object v5, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_6
    sget-object v5, Lcoil3/video/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    .line 221
    .line 222
    invoke-static {v4, v5}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    check-cast v5, Ljava/lang/Number;

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v5

    .line 232
    const-wide/16 v8, 0x0

    .line 233
    .line 234
    cmp-long v11, v5, v8

    .line 235
    .line 236
    if-ltz v11, :cond_7

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_7
    sget-object v5, Lcoil3/video/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    .line 240
    .line 241
    invoke-static {v4, v5}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Ljava/lang/Number;

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    const-wide/16 v16, 0x0

    .line 252
    .line 253
    cmpl-double v11, v5, v16

    .line 254
    .line 255
    if-ltz v11, :cond_9

    .line 256
    .line 257
    const/16 v11, 0x9

    .line 258
    .line 259
    invoke-virtual {v3, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    if-eqz v11, :cond_8

    .line 264
    .line 265
    invoke-static {v11}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    if-eqz v11, :cond_8

    .line 270
    .line 271
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 272
    .line 273
    .line 274
    move-result-wide v8

    .line 275
    :cond_8
    long-to-double v8, v8

    .line 276
    mul-double/2addr v5, v8

    .line 277
    invoke-static {v5, v6}, Lkotlin/math/MathKt;->c(D)J

    .line 278
    .line 279
    .line 280
    move-result-wide v5

    .line 281
    const-wide/16 v8, 0x3e8

    .line 282
    .line 283
    mul-long/2addr v5, v8

    .line 284
    goto :goto_7

    .line 285
    :cond_9
    move-wide v5, v8

    .line 286
    :goto_7
    iget-object v8, v10, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 287
    .line 288
    iget-object v9, v10, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 289
    .line 290
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 291
    .line 292
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    sget-object v13, Lcoil3/video/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 296
    .line 297
    invoke-static {v4, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    check-cast v13, Ljava/lang/Boolean;

    .line 302
    .line 303
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    if-eqz v13, :cond_b

    .line 310
    .line 311
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    if-eqz v13, :cond_b

    .line 316
    .line 317
    array-length v12, v13

    .line 318
    invoke-static {v13, v14, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    if-eqz v12, :cond_a

    .line 323
    .line 324
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    goto :goto_8

    .line 333
    :cond_a
    move-object/from16 v12, v16

    .line 334
    .line 335
    :goto_8
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 336
    .line 337
    :cond_b
    move v12, v7

    .line 338
    iget-object v7, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 339
    .line 340
    if-nez v7, :cond_12

    .line 341
    .line 342
    sget-object v7, Lcoil3/video/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 343
    .line 344
    invoke-static {v4, v7}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    check-cast v13, Ljava/lang/Number;

    .line 349
    .line 350
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-ltz v13, :cond_e

    .line 355
    .line 356
    invoke-static {v4, v7}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    check-cast v7, Ljava/lang/Number;

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    sget-object v8, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 367
    .line 368
    invoke-static {v4, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    check-cast v8, Landroid/graphics/Bitmap$Config;

    .line 373
    .line 374
    new-instance v9, Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 375
    .line 376
    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v9, v8}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v7, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    if-eqz v7, :cond_c

    .line 387
    .line 388
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 389
    .line 390
    .line 391
    move-result v15

    .line 392
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 393
    .line 394
    .line 395
    move-result v12

    .line 396
    move-wide/from16 v23, v5

    .line 397
    .line 398
    move-object v6, v4

    .line 399
    move-wide/from16 v4, v23

    .line 400
    .line 401
    goto/16 :goto_d

    .line 402
    .line 403
    :cond_c
    move-wide/from16 v23, v5

    .line 404
    .line 405
    move-object v6, v4

    .line 406
    move-wide/from16 v4, v23

    .line 407
    .line 408
    :cond_d
    :goto_9
    move-object/from16 v7, v16

    .line 409
    .line 410
    goto/16 :goto_d

    .line 411
    .line 412
    :cond_e
    instance-of v7, v8, Lcoil3/size/Dimension$Pixels;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .line 414
    sget-object v13, Lcoil3/video/ImageRequestsKt;->e:Lcoil3/Extras$Key;

    .line 415
    .line 416
    const/16 v14, 0x1e

    .line 417
    .line 418
    if-eqz v7, :cond_10

    .line 419
    .line 420
    :try_start_2
    instance-of v7, v9, Lcoil3/size/Dimension$Pixels;

    .line 421
    .line 422
    if-eqz v7, :cond_10

    .line 423
    .line 424
    invoke-static {v4, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    check-cast v7, Ljava/lang/Number;

    .line 429
    .line 430
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    check-cast v8, Lcoil3/size/Dimension$Pixels;

    .line 435
    .line 436
    iget v8, v8, Lcoil3/size/Dimension$Pixels;->a:I

    .line 437
    .line 438
    check-cast v9, Lcoil3/size/Dimension$Pixels;

    .line 439
    .line 440
    iget v9, v9, Lcoil3/size/Dimension$Pixels;->a:I

    .line 441
    .line 442
    sget-object v13, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 443
    .line 444
    invoke-static {v4, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v13

    .line 448
    check-cast v13, Landroid/graphics/Bitmap$Config;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    .line 450
    move-object/from16 v19, v3

    .line 451
    .line 452
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 453
    .line 454
    if-lt v3, v14, :cond_f

    .line 455
    .line 456
    move-object v3, v4

    .line 457
    move-wide v4, v5

    .line 458
    move v6, v7

    .line 459
    move v7, v8

    .line 460
    move v8, v9

    .line 461
    new-instance v9, Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 462
    .line 463
    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v13}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    .line 468
    .line 469
    move-object v13, v3

    .line 470
    move-object/from16 v3, v19

    .line 471
    .line 472
    :try_start_4
    invoke-static/range {v3 .. v9}, Lj;->f(Landroid/media/MediaMetadataRetriever;JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    :goto_a
    move-object/from16 v16, v6

    .line 477
    .line 478
    goto :goto_b

    .line 479
    :catchall_1
    move-exception v0

    .line 480
    move-object/from16 v3, v19

    .line 481
    .line 482
    goto/16 :goto_13

    .line 483
    .line 484
    :cond_f
    move-object v13, v4

    .line 485
    move-wide v4, v5

    .line 486
    move v6, v7

    .line 487
    move v7, v8

    .line 488
    move v8, v9

    .line 489
    move-object/from16 v3, v19

    .line 490
    .line 491
    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    goto :goto_a

    .line 496
    :goto_b
    move-object v6, v13

    .line 497
    goto :goto_9

    .line 498
    :cond_10
    move-wide/from16 v23, v5

    .line 499
    .line 500
    move-object v6, v4

    .line 501
    move-wide/from16 v4, v23

    .line 502
    .line 503
    invoke-static {v6, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    check-cast v7, Ljava/lang/Number;

    .line 508
    .line 509
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    sget-object v8, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 514
    .line 515
    invoke-static {v6, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    check-cast v8, Landroid/graphics/Bitmap$Config;

    .line 520
    .line 521
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 522
    .line 523
    if-lt v9, v14, :cond_11

    .line 524
    .line 525
    new-instance v9, Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 526
    .line 527
    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v9, v8}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 531
    .line 532
    .line 533
    invoke-static {v3, v4, v5, v7, v9}, Lj;->g(Landroid/media/MediaMetadataRetriever;JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    goto :goto_c

    .line 538
    :cond_11
    invoke-virtual {v3, v4, v5, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    :goto_c
    if-eqz v7, :cond_d

    .line 543
    .line 544
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 545
    .line 546
    .line 547
    move-result v15

    .line 548
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 549
    .line 550
    .line 551
    move-result v12

    .line 552
    :goto_d
    iput-object v7, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 553
    .line 554
    :goto_e
    move v8, v12

    .line 555
    move v7, v15

    .line 556
    goto :goto_f

    .line 557
    :cond_12
    move-wide/from16 v23, v5

    .line 558
    .line 559
    move-object v6, v4

    .line 560
    move-wide/from16 v4, v23

    .line 561
    .line 562
    goto :goto_e

    .line 563
    :goto_f
    iget-object v9, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 564
    .line 565
    if-eqz v9, :cond_1c

    .line 566
    .line 567
    check-cast v9, Landroid/graphics/Bitmap;

    .line 568
    .line 569
    invoke-virtual {v0, v9, v10}, Lcoil3/video/VideoFrameDecoder;->b(Landroid/graphics/Bitmap;Lcoil3/size/Size;)Landroid/graphics/Bitmap;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    if-lez v7, :cond_13

    .line 574
    .line 575
    if-lez v8, :cond_13

    .line 576
    .line 577
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    iget-object v11, v6, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 586
    .line 587
    sget-object v2, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 588
    .line 589
    invoke-static {v6, v2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    move-object v12, v2

    .line 594
    check-cast v12, Lcoil3/size/Size;

    .line 595
    .line 596
    invoke-static/range {v7 .. v12}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 597
    .line 598
    .line 599
    move-result-wide v4

    .line 600
    cmpg-double v2, v4, v21

    .line 601
    .line 602
    if-gez v2, :cond_14

    .line 603
    .line 604
    :cond_13
    const/4 v2, 0x1

    .line 605
    goto :goto_10

    .line 606
    :cond_14
    const/4 v2, 0x0

    .line 607
    :goto_10
    new-instance v4, Lcoil3/decode/DecodeResult;

    .line 608
    .line 609
    iget-object v5, v6, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 610
    .line 611
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 616
    .line 617
    invoke-direct {v6, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 618
    .line 619
    .line 620
    invoke-static {v6}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-direct {v4, v0, v2}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 625
    .line 626
    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 628
    .line 629
    const/16 v2, 0x1d

    .line 630
    .line 631
    if-lt v0, v2, :cond_1b

    .line 632
    .line 633
    instance-of v0, v3, Ljava/lang/AutoCloseable;

    .line 634
    .line 635
    if-eqz v0, :cond_15

    .line 636
    .line 637
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 638
    .line 639
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 640
    .line 641
    .line 642
    return-object v4

    .line 643
    :cond_15
    instance-of v0, v3, Ljava/util/concurrent/ExecutorService;

    .line 644
    .line 645
    if-eqz v0, :cond_1a

    .line 646
    .line 647
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 648
    .line 649
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    if-ne v3, v0, :cond_16

    .line 654
    .line 655
    goto :goto_12

    .line 656
    :cond_16
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_19

    .line 661
    .line 662
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 663
    .line 664
    .line 665
    const/4 v14, 0x0

    .line 666
    :cond_17
    :goto_11
    if-nez v0, :cond_18

    .line 667
    .line 668
    const-wide/16 v5, 0x1

    .line 669
    .line 670
    :try_start_5
    invoke-interface {v3, v5, v6, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 671
    .line 672
    .line 673
    move-result v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 674
    goto :goto_11

    .line 675
    :catch_0
    if-nez v14, :cond_17

    .line 676
    .line 677
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 678
    .line 679
    .line 680
    const/4 v14, 0x1

    .line 681
    goto :goto_11

    .line 682
    :cond_18
    if-eqz v14, :cond_19

    .line 683
    .line 684
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 689
    .line 690
    .line 691
    :cond_19
    :goto_12
    return-object v4

    .line 692
    :cond_1a
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 693
    .line 694
    .line 695
    return-object v4

    .line 696
    :cond_1b
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 697
    .line 698
    .line 699
    return-object v4

    .line 700
    :cond_1c
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    const-string v2, " microseconds."

    .line 709
    .line 710
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 727
    :goto_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 728
    .line 729
    const/16 v4, 0x1d

    .line 730
    .line 731
    if-lt v2, v4, :cond_21

    .line 732
    .line 733
    instance-of v2, v3, Ljava/lang/AutoCloseable;

    .line 734
    .line 735
    if-nez v2, :cond_20

    .line 736
    .line 737
    instance-of v2, v3, Ljava/util/concurrent/ExecutorService;

    .line 738
    .line 739
    if-eqz v2, :cond_1f

    .line 740
    .line 741
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 742
    .line 743
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    if-eq v3, v2, :cond_22

    .line 748
    .line 749
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-nez v2, :cond_22

    .line 754
    .line 755
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 756
    .line 757
    .line 758
    const/4 v14, 0x0

    .line 759
    :cond_1d
    :goto_14
    if-nez v2, :cond_1e

    .line 760
    .line 761
    const-wide/16 v5, 0x1

    .line 762
    .line 763
    :try_start_7
    invoke-interface {v3, v5, v6, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 764
    .line 765
    .line 766
    move-result v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 767
    goto :goto_14

    .line 768
    :catch_1
    if-nez v14, :cond_1d

    .line 769
    .line 770
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 771
    .line 772
    .line 773
    const/4 v14, 0x1

    .line 774
    goto :goto_14

    .line 775
    :cond_1e
    if-eqz v14, :cond_22

    .line 776
    .line 777
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 782
    .line 783
    .line 784
    goto :goto_15

    .line 785
    :cond_1f
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 786
    .line 787
    .line 788
    goto :goto_15

    .line 789
    :cond_20
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 790
    .line 791
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 792
    .line 793
    .line 794
    goto :goto_15

    .line 795
    :cond_21
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 796
    .line 797
    .line 798
    :cond_22
    :goto_15
    throw v0
.end method

.method public final b(Landroid/graphics/Bitmap;Lcoil3/size/Size;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    iget-object v0, p2, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 2
    .line 3
    iget-object p2, p2, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->b:Lcoil3/request/Options;

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-ne v1, v2, :cond_4

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 22
    .line 23
    sget-object v3, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 24
    .line 25
    if-ne v1, v3, :cond_1

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    instance-of v1, p2, Lcoil3/size/Dimension$Pixels;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    move-object v1, p2

    .line 41
    check-cast v1, Lcoil3/size/Dimension$Pixels;

    .line 42
    .line 43
    iget v1, v1, Lcoil3/size/Dimension$Pixels;->a:I

    .line 44
    .line 45
    :goto_0
    move v6, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    instance-of v1, v0, Lcoil3/size/Dimension$Pixels;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    move-object v1, v0

    .line 57
    check-cast v1, Lcoil3/size/Dimension$Pixels;

    .line 58
    .line 59
    iget v1, v1, Lcoil3/size/Dimension$Pixels;->a:I

    .line 60
    .line 61
    :goto_2
    move v7, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    iget-object v8, p0, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 69
    .line 70
    sget-object v1, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 71
    .line 72
    invoke-static {p0, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v9, v1

    .line 77
    check-cast v9, Lcoil3/size/Size;

    .line 78
    .line 79
    invoke-static/range {v4 .. v9}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 84
    .line 85
    cmpg-double v1, v3, v5

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    :goto_4
    return-object p1

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    instance-of v1, p2, Lcoil3/size/Dimension$Pixels;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    check-cast p2, Lcoil3/size/Dimension$Pixels;

    .line 103
    .line 104
    iget p2, p2, Lcoil3/size/Dimension$Pixels;->a:I

    .line 105
    .line 106
    :goto_5
    move v5, p2

    .line 107
    goto :goto_6

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    goto :goto_5

    .line 113
    :goto_6
    instance-of p2, v0, Lcoil3/size/Dimension$Pixels;

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 118
    .line 119
    iget p2, v0, Lcoil3/size/Dimension$Pixels;->a:I

    .line 120
    .line 121
    :goto_7
    move v6, p2

    .line 122
    goto :goto_8

    .line 123
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    goto :goto_7

    .line 128
    :goto_8
    iget-object v7, p0, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 129
    .line 130
    sget-object p2, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 131
    .line 132
    invoke-static {p0, p2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    move-object v8, p2

    .line 137
    check-cast v8, Lcoil3/size/Size;

    .line 138
    .line 139
    invoke-static/range {v3 .. v8}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    double-to-float p2, v0

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    int-to-float v0, v0

    .line 149
    mul-float/2addr v0, p2

    .line 150
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    int-to-float v1, v1

    .line 159
    mul-float/2addr v1, p2

    .line 160
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    sget-object v3, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 165
    .line 166
    invoke-static {p0, v3}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Landroid/graphics/Bitmap$Config;

    .line 171
    .line 172
    if-ne v4, v2, :cond_7

    .line 173
    .line 174
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_7
    invoke-static {p0, v3}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Landroid/graphics/Bitmap$Config;

    .line 182
    .line 183
    :goto_9
    new-instance v2, Landroid/graphics/Paint;

    .line 184
    .line 185
    const/4 v3, 0x3

    .line 186
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    new-instance v0, Landroid/graphics/Canvas;

    .line 194
    .line 195
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 199
    .line 200
    .line 201
    const/4 p2, 0x0

    .line 202
    invoke-virtual {v0, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    .line 207
    .line 208
    return-object p0
.end method

.method public final c(Landroid/media/MediaMetadataRetriever;Lcoil3/decode/ImageSource;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->e()Lcoil3/decode/ImageSource$Metadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 10
    .line 11
    iget-object p0, v0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;->a:Landroid/media/MediaDataSource;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    instance-of v1, v0, Lcoil3/decode/AssetMetadata;

    .line 18
    .line 19
    iget-object p0, p0, Lcoil3/video/VideoFrameDecoder;->b:Lcoil3/request/Options;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast v0, Lcoil3/decode/AssetMetadata;

    .line 30
    .line 31
    iget-object p2, v0, Lcoil3/decode/AssetMetadata;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    move-object v0, p1

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object p1, v0

    .line 59
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p2, v0

    .line 62
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_1
    instance-of v1, v0, Lcoil3/decode/ContentMetadata;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object p0, p0, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 71
    .line 72
    check-cast v0, Lcoil3/decode/ContentMetadata;

    .line 73
    .line 74
    iget-object p2, v0, Lcoil3/decode/ContentMetadata;->a:Lcoil3/Uri;

    .line 75
    .line 76
    iget-object p2, p2, Lcoil3/Uri;->a:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p0, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    instance-of p0, v0, Lcoil3/decode/ResourceMetadata;

    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    check-cast v0, Lcoil3/decode/ResourceMetadata;

    .line 91
    .line 92
    iget-object p0, v0, Lcoil3/decode/ResourceMetadata;->a:Ljava/lang/String;

    .line 93
    .line 94
    iget p2, v0, Lcoil3/decode/ResourceMetadata;->b:I

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "android.resource://"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, "/"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    sget-object v0, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 127
    .line 128
    if-ne p0, v0, :cond_4

    .line 129
    .line 130
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->d0()Lokio/Path;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-interface {p2}, Lcoil3/decode/ImageSource;->d0()Lokio/Path;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p0, p2}, Lokio/FileSystem;->R(Lokio/Path;)Lokio/FileHandle;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance p2, Lcoil3/video/internal/FileHandleMediaDataSource;

    .line 159
    .line 160
    invoke-direct {p2, p0}, Lcoil3/video/internal/FileHandleMediaDataSource;-><init>(Lokio/FileHandle;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
