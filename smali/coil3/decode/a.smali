.class public final synthetic Lcoil3/decode/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lcoil3/decode/BitmapFactoryDecoder;


# direct methods
.method public synthetic constructor <init>(Lcoil3/decode/BitmapFactoryDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/a;->j:Lcoil3/decode/BitmapFactoryDecoder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 23

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    iget-object v1, v1, Lcoil3/decode/a;->j:Lcoil3/decode/BitmapFactoryDecoder;

    .line 9
    .line 10
    iget-object v2, v1, Lcoil3/decode/BitmapFactoryDecoder;->b:Lcoil3/request/Options;

    .line 11
    .line 12
    new-instance v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    .line 13
    .line 14
    iget-object v4, v1, Lcoil3/decode/BitmapFactoryDecoder;->a:Lcoil3/decode/ImageSource;

    .line 15
    .line 16
    invoke-interface {v4}, Lcoil3/decode/ImageSource;->U0()Lokio/BufferedSource;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v3, v4}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lokio/RealBufferedSource;

    .line 24
    .line 25
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 30
    .line 31
    new-instance v6, Lokio/PeekSource;

    .line 32
    .line 33
    invoke-direct {v6, v4}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lokio/RealBufferedSource;

    .line 37
    .line 38
    invoke-direct {v7, v6}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lokio/RealBufferedSource$inputStream$1;

    .line 42
    .line 43
    invoke-direct {v6, v7}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 44
    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-static {v6, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    iget-object v6, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->k:Ljava/lang/Exception;

    .line 51
    .line 52
    if-nez v6, :cond_27

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    .line 57
    sget-object v8, Lcoil3/decode/ExifUtils;->a:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget-object v8, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, v1, Lcoil3/decode/BitmapFactoryDecoder;->d:Lcoil3/decode/ExifOrientationStrategy;

    .line 62
    .line 63
    invoke-interface {v1, v8}, Lcoil3/decode/ExifOrientationStrategy;->a(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v8, 0x10e

    .line 68
    .line 69
    const/16 v9, 0x5a

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    .line 74
    .line 75
    new-instance v10, Lcoil3/decode/ExifInterfaceInputStream;

    .line 76
    .line 77
    new-instance v11, Lokio/PeekSource;

    .line 78
    .line 79
    invoke-direct {v11, v4}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 80
    .line 81
    .line 82
    new-instance v12, Lokio/RealBufferedSource;

    .line 83
    .line 84
    invoke-direct {v12, v11}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 85
    .line 86
    .line 87
    new-instance v11, Lokio/RealBufferedSource$inputStream$1;

    .line 88
    .line 89
    invoke-direct {v11, v12}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v10, v11}, Lcoil3/decode/ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v10}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 96
    .line 97
    .line 98
    new-instance v10, Lcoil3/decode/ExifData;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->c()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const/4 v12, 0x2

    .line 105
    if-eq v11, v12, :cond_0

    .line 106
    .line 107
    const/4 v12, 0x7

    .line 108
    if-eq v11, v12, :cond_0

    .line 109
    .line 110
    const/4 v12, 0x4

    .line 111
    if-eq v11, v12, :cond_0

    .line 112
    .line 113
    const/4 v12, 0x5

    .line 114
    if-eq v11, v12, :cond_0

    .line 115
    .line 116
    move v11, v6

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    move v11, v5

    .line 119
    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->c()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    packed-switch v1, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    move v1, v6

    .line 127
    goto :goto_1

    .line 128
    :pswitch_0
    move v1, v9

    .line 129
    goto :goto_1

    .line 130
    :pswitch_1
    move v1, v8

    .line 131
    goto :goto_1

    .line 132
    :pswitch_2
    const/16 v1, 0xb4

    .line 133
    .line 134
    :goto_1
    invoke-direct {v10, v1, v11}, Lcoil3/decode/ExifData;-><init>(IZ)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_1
    sget-object v10, Lcoil3/decode/ExifData;->c:Lcoil3/decode/ExifData;

    .line 139
    .line 140
    :goto_2
    iget v1, v10, Lcoil3/decode/ExifData;->b:I

    .line 141
    .line 142
    iget-boolean v10, v10, Lcoil3/decode/ExifData;->a:Z

    .line 143
    .line 144
    iget-object v11, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->k:Ljava/lang/Exception;

    .line 145
    .line 146
    if-nez v11, :cond_26

    .line 147
    .line 148
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 149
    .line 150
    sget-object v11, Lcoil3/request/ImageRequests_androidKt;->c:Lcoil3/Extras$Key;

    .line 151
    .line 152
    invoke-static {v2, v11}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    check-cast v12, Landroid/graphics/ColorSpace;

    .line 157
    .line 158
    iget-object v13, v2, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 159
    .line 160
    if-eqz v12, :cond_2

    .line 161
    .line 162
    invoke-static {v2, v11}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    check-cast v11, Landroid/graphics/ColorSpace;

    .line 167
    .line 168
    iput-object v11, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 169
    .line 170
    :cond_2
    sget-object v11, Lcoil3/request/ImageRequests_androidKt;->d:Lcoil3/Extras$Key;

    .line 171
    .line 172
    invoke-static {v2, v11}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    check-cast v11, Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 183
    .line 184
    sget-object v11, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    .line 185
    .line 186
    invoke-static {v2, v11}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    check-cast v11, Landroid/graphics/Bitmap$Config;

    .line 191
    .line 192
    if-nez v10, :cond_3

    .line 193
    .line 194
    if-lez v1, :cond_5

    .line 195
    .line 196
    :cond_3
    if-eqz v11, :cond_4

    .line 197
    .line 198
    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 199
    .line 200
    if-ne v11, v12, :cond_5

    .line 201
    .line 202
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 203
    .line 204
    :cond_5
    sget-object v12, Lcoil3/request/ImageRequests_androidKt;->h:Lcoil3/Extras$Key;

    .line 205
    .line 206
    invoke-static {v2, v12}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    check-cast v12, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    if-eqz v12, :cond_6

    .line 217
    .line 218
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    .line 220
    if-ne v11, v12, :cond_6

    .line 221
    .line 222
    iget-object v12, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 223
    .line 224
    const-string v14, "image/jpeg"

    .line 225
    .line 226
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-eqz v12, :cond_6

    .line 231
    .line 232
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 233
    .line 234
    :cond_6
    iget-object v12, v0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    .line 236
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 237
    .line 238
    if-ne v12, v14, :cond_7

    .line 239
    .line 240
    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 241
    .line 242
    if-eq v11, v12, :cond_7

    .line 243
    .line 244
    move-object v11, v14

    .line 245
    :cond_7
    iput-object v11, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 246
    .line 247
    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 248
    .line 249
    if-lez v11, :cond_18

    .line 250
    .line 251
    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 252
    .line 253
    if-gtz v12, :cond_8

    .line 254
    .line 255
    move v9, v5

    .line 256
    move-object/from16 v18, v7

    .line 257
    .line 258
    move v7, v10

    .line 259
    move-object/from16 v17, v13

    .line 260
    .line 261
    goto/16 :goto_a

    .line 262
    .line 263
    :cond_8
    if-eq v1, v9, :cond_a

    .line 264
    .line 265
    if-ne v1, v8, :cond_9

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_9
    move v14, v11

    .line 269
    goto :goto_4

    .line 270
    :cond_a
    :goto_3
    move v14, v12

    .line 271
    :goto_4
    if-eq v1, v9, :cond_c

    .line 272
    .line 273
    if-ne v1, v8, :cond_b

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_b
    move v11, v12

    .line 277
    :cond_c
    :goto_5
    iget-object v12, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 278
    .line 279
    iget-object v15, v2, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 280
    .line 281
    sget-object v8, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 282
    .line 283
    invoke-static {v2, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v16

    .line 287
    move-object/from16 v9, v16

    .line 288
    .line 289
    check-cast v9, Lcoil3/size/Size;

    .line 290
    .line 291
    invoke-static {v14, v11, v12, v15, v9}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v17

    .line 295
    const/16 v9, 0x20

    .line 296
    .line 297
    move-object v12, v7

    .line 298
    shr-long v6, v17, v9

    .line 299
    .line 300
    long-to-int v6, v6

    .line 301
    const-wide v19, 0xffffffffL

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    move-object v9, v12

    .line 307
    move-object v7, v13

    .line 308
    and-long v12, v17, v19

    .line 309
    .line 310
    long-to-int v12, v12

    .line 311
    div-int v13, v14, v6

    .line 312
    .line 313
    invoke-static {v13}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    div-int v17, v11, v12

    .line 318
    .line 319
    move-object/from16 v18, v9

    .line 320
    .line 321
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    move-object/from16 v17, v7

    .line 326
    .line 327
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_e

    .line 332
    .line 333
    if-ne v7, v5, :cond_d

    .line 334
    .line 335
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    goto :goto_6

    .line 340
    :cond_d
    invoke-static {}, Lk8;->e()V

    .line 341
    .line 342
    .line 343
    return-object v18

    .line 344
    :cond_e
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    :goto_6
    if-ge v7, v5, :cond_f

    .line 349
    .line 350
    move v7, v5

    .line 351
    :cond_f
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 352
    .line 353
    int-to-double v13, v14

    .line 354
    move/from16 v19, v6

    .line 355
    .line 356
    int-to-double v5, v7

    .line 357
    div-double/2addr v13, v5

    .line 358
    move v7, v10

    .line 359
    int-to-double v9, v11

    .line 360
    div-double v5, v9, v5

    .line 361
    .line 362
    move/from16 v9, v19

    .line 363
    .line 364
    int-to-double v9, v9

    .line 365
    int-to-double v11, v12

    .line 366
    invoke-static {v2, v8}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    check-cast v8, Lcoil3/size/Size;

    .line 371
    .line 372
    div-double/2addr v9, v13

    .line 373
    div-double/2addr v11, v5

    .line 374
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    if-eqz v15, :cond_11

    .line 379
    .line 380
    move-wide/from16 v21, v5

    .line 381
    .line 382
    const/4 v5, 0x1

    .line 383
    if-ne v15, v5, :cond_10

    .line 384
    .line 385
    move-wide v5, v9

    .line 386
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 387
    .line 388
    .line 389
    move-result-wide v5

    .line 390
    goto :goto_7

    .line 391
    :cond_10
    invoke-static {}, Lk8;->e()V

    .line 392
    .line 393
    .line 394
    return-object v18

    .line 395
    :cond_11
    move-wide/from16 v21, v5

    .line 396
    .line 397
    move-wide v5, v9

    .line 398
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 399
    .line 400
    .line 401
    move-result-wide v5

    .line 402
    :goto_7
    iget-object v10, v8, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 403
    .line 404
    instance-of v11, v10, Lcoil3/size/Dimension$Pixels;

    .line 405
    .line 406
    if-eqz v11, :cond_12

    .line 407
    .line 408
    check-cast v10, Lcoil3/size/Dimension$Pixels;

    .line 409
    .line 410
    iget v10, v10, Lcoil3/size/Dimension$Pixels;->a:I

    .line 411
    .line 412
    int-to-double v10, v10

    .line 413
    div-double/2addr v10, v13

    .line 414
    cmpl-double v12, v5, v10

    .line 415
    .line 416
    if-lez v12, :cond_12

    .line 417
    .line 418
    move-wide v5, v10

    .line 419
    :cond_12
    iget-object v8, v8, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 420
    .line 421
    instance-of v10, v8, Lcoil3/size/Dimension$Pixels;

    .line 422
    .line 423
    if-eqz v10, :cond_13

    .line 424
    .line 425
    check-cast v8, Lcoil3/size/Dimension$Pixels;

    .line 426
    .line 427
    iget v8, v8, Lcoil3/size/Dimension$Pixels;->a:I

    .line 428
    .line 429
    int-to-double v10, v8

    .line 430
    div-double v10, v10, v21

    .line 431
    .line 432
    cmpl-double v8, v5, v10

    .line 433
    .line 434
    if-lez v8, :cond_13

    .line 435
    .line 436
    move-wide v5, v10

    .line 437
    :cond_13
    iget-object v2, v2, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 438
    .line 439
    sget-object v8, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 440
    .line 441
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 442
    .line 443
    if-ne v2, v8, :cond_14

    .line 444
    .line 445
    cmpl-double v2, v5, v10

    .line 446
    .line 447
    if-lez v2, :cond_14

    .line 448
    .line 449
    move-wide v5, v10

    .line 450
    :cond_14
    cmpg-double v2, v5, v10

    .line 451
    .line 452
    if-nez v2, :cond_15

    .line 453
    .line 454
    const/4 v2, 0x1

    .line 455
    goto :goto_8

    .line 456
    :cond_15
    const/4 v2, 0x0

    .line 457
    :goto_8
    xor-int/lit8 v8, v2, 0x1

    .line 458
    .line 459
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 460
    .line 461
    if-nez v2, :cond_16

    .line 462
    .line 463
    cmpl-double v2, v5, v10

    .line 464
    .line 465
    const v8, 0x7fffffff

    .line 466
    .line 467
    .line 468
    const-wide v10, 0x41dfffffffc00000L    # 2.147483647E9

    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    if-lez v2, :cond_17

    .line 474
    .line 475
    div-double/2addr v10, v5

    .line 476
    invoke-static {v10, v11}, Lkotlin/math/MathKt;->a(D)I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 481
    .line 482
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 483
    .line 484
    :cond_16
    :goto_9
    const/4 v2, 0x0

    .line 485
    goto :goto_b

    .line 486
    :cond_17
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 487
    .line 488
    mul-double/2addr v10, v5

    .line 489
    invoke-static {v10, v11}, Lkotlin/math/MathKt;->a(D)I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 494
    .line 495
    goto :goto_9

    .line 496
    :cond_18
    move-object/from16 v18, v7

    .line 497
    .line 498
    move v7, v10

    .line 499
    move-object/from16 v17, v13

    .line 500
    .line 501
    move v9, v5

    .line 502
    :goto_a
    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 506
    .line 507
    :goto_b
    :try_start_0
    new-instance v5, Lokio/RealBufferedSource$inputStream$1;

    .line 508
    .line 509
    invoke-direct {v5, v4}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 510
    .line 511
    .line 512
    move-object/from16 v12, v18

    .line 513
    .line 514
    invoke-static {v5, v12, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 515
    .line 516
    .line 517
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V

    .line 519
    .line 520
    .line 521
    iget-object v3, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->k:Ljava/lang/Exception;

    .line 522
    .line 523
    if-nez v3, :cond_25

    .line 524
    .line 525
    if-eqz v5, :cond_24

    .line 526
    .line 527
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 536
    .line 537
    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 538
    .line 539
    .line 540
    if-nez v7, :cond_19

    .line 541
    .line 542
    if-lez v1, :cond_21

    .line 543
    .line 544
    :cond_19
    new-instance v3, Landroid/graphics/Matrix;

    .line 545
    .line 546
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    int-to-float v4, v4

    .line 554
    const/high16 v6, 0x40000000    # 2.0f

    .line 555
    .line 556
    div-float/2addr v4, v6

    .line 557
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    int-to-float v8, v8

    .line 562
    div-float/2addr v8, v6

    .line 563
    if-eqz v7, :cond_1a

    .line 564
    .line 565
    const/high16 v6, -0x40800000    # -1.0f

    .line 566
    .line 567
    const/high16 v7, 0x3f800000    # 1.0f

    .line 568
    .line 569
    invoke-virtual {v3, v6, v7, v4, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 570
    .line 571
    .line 572
    :cond_1a
    if-lez v1, :cond_1b

    .line 573
    .line 574
    int-to-float v6, v1

    .line 575
    invoke-virtual {v3, v6, v4, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 576
    .line 577
    .line 578
    :cond_1b
    new-instance v4, Landroid/graphics/RectF;

    .line 579
    .line 580
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    int-to-float v6, v6

    .line 585
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    int-to-float v7, v7

    .line 590
    const/4 v8, 0x0

    .line 591
    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 595
    .line 596
    .line 597
    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 598
    .line 599
    cmpg-float v7, v6, v8

    .line 600
    .line 601
    if-nez v7, :cond_1c

    .line 602
    .line 603
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 604
    .line 605
    cmpg-float v7, v7, v8

    .line 606
    .line 607
    if-nez v7, :cond_1c

    .line 608
    .line 609
    :goto_c
    const/16 v4, 0x5a

    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_1c
    neg-float v6, v6

    .line 613
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 614
    .line 615
    neg-float v4, v4

    .line 616
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 617
    .line 618
    .line 619
    goto :goto_c

    .line 620
    :goto_d
    if-eq v1, v4, :cond_1f

    .line 621
    .line 622
    const/16 v4, 0x10e

    .line 623
    .line 624
    if-ne v1, v4, :cond_1d

    .line 625
    .line 626
    goto :goto_e

    .line 627
    :cond_1d
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    if-nez v6, :cond_1e

    .line 640
    .line 641
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 642
    .line 643
    :cond_1e
    invoke-static {v1, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    goto :goto_f

    .line 648
    :cond_1f
    :goto_e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    if-nez v6, :cond_20

    .line 661
    .line 662
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 663
    .line 664
    :cond_20
    invoke-static {v1, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    :goto_f
    new-instance v4, Landroid/graphics/Canvas;

    .line 669
    .line 670
    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 671
    .line 672
    .line 673
    sget-object v6, Lcoil3/decode/ExifUtils;->a:Landroid/graphics/Paint;

    .line 674
    .line 675
    invoke-virtual {v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    .line 680
    .line 681
    move-object v5, v1

    .line 682
    :cond_21
    new-instance v1, Lcoil3/decode/DecodeResult;

    .line 683
    .line 684
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 689
    .line 690
    invoke-direct {v4, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v4}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 698
    .line 699
    const/4 v9, 0x1

    .line 700
    if-gt v4, v9, :cond_23

    .line 701
    .line 702
    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 703
    .line 704
    if-eqz v0, :cond_22

    .line 705
    .line 706
    goto :goto_10

    .line 707
    :cond_22
    move v5, v2

    .line 708
    goto :goto_11

    .line 709
    :cond_23
    :goto_10
    move v5, v9

    .line 710
    :goto_11
    invoke-direct {v1, v3, v5}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 711
    .line 712
    .line 713
    return-object v1

    .line 714
    :cond_24
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 715
    .line 716
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    const/4 v12, 0x0

    .line 720
    return-object v12

    .line 721
    :cond_25
    throw v3

    .line 722
    :catchall_0
    move-exception v0

    .line 723
    move-object v1, v0

    .line 724
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 725
    :catchall_1
    move-exception v0

    .line 726
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 727
    .line 728
    .line 729
    throw v0

    .line 730
    :cond_26
    throw v11

    .line 731
    :cond_27
    throw v6

    .line 732
    nop

    .line 733
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
