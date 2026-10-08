.class public final Lcoil3/memory/MemoryCacheService;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcoil3/RealImageLoader;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lcoil3/request/AndroidRequestService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcoil3/request/ImageRequest;Lcoil3/memory/MemoryCache$Key;Lcoil3/size/Size;Lcoil3/size/Scale;)Lcoil3/memory/MemoryCache$Value;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcoil3/request/ImageRequest;->i:Lcoil3/request/CachePolicy;

    .line 8
    .line 9
    iget-object v4, v0, Lcoil3/request/ImageRequest;->q:Lcoil3/size/Precision;

    .line 10
    .line 11
    iget-boolean v3, v3, Lcoil3/request/CachePolicy;->j:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    :cond_0
    move-object v2, v5

    .line 17
    goto/16 :goto_19

    .line 18
    .line 19
    :cond_1
    move-object/from16 v3, p0

    .line 20
    .line 21
    iget-object v3, v3, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/RealImageLoader;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcoil3/RealImageLoader;->d()Lcoil3/memory/MemoryCache;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz v3, :cond_c

    .line 29
    .line 30
    check-cast v3, Lcoil3/memory/RealMemoryCache;

    .line 31
    .line 32
    iget-object v8, v3, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v8

    .line 35
    :try_start_0
    iget-object v9, v3, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 36
    .line 37
    iget-object v9, v9, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 38
    .line 39
    iget-object v9, v9, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 46
    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    new-instance v10, Lcoil3/memory/MemoryCache$Value;

    .line 50
    .line 51
    iget-object v11, v9, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->a:Lcoil3/Image;

    .line 52
    .line 53
    iget-object v9, v9, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->b:Ljava/util/Map;

    .line 54
    .line 55
    invoke-direct {v10, v11, v9}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v10, v5

    .line 60
    :goto_0
    if-nez v10, :cond_7

    .line 61
    .line 62
    iget-object v9, v3, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 63
    .line 64
    iget-object v10, v9, Lcoil3/memory/RealWeakMemoryCache;->a:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    check-cast v10, Ljava/util/ArrayList;

    .line 71
    .line 72
    if-nez v10, :cond_3

    .line 73
    .line 74
    move-object v10, v5

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    move v12, v7

    .line 81
    :goto_1
    if-ge v12, v11, :cond_6

    .line 82
    .line 83
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Lcoil3/memory/RealWeakMemoryCache$InternalValue;

    .line 88
    .line 89
    iget-object v14, v13, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->a:Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    check-cast v14, Lcoil3/Image;

    .line 96
    .line 97
    if-eqz v14, :cond_4

    .line 98
    .line 99
    new-instance v15, Lcoil3/memory/MemoryCache$Value;

    .line 100
    .line 101
    iget-object v13, v13, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->b:Ljava/util/Map;

    .line 102
    .line 103
    invoke-direct {v15, v14, v13}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v15, v5

    .line 108
    :goto_2
    if-eqz v15, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    move-object v15, v5

    .line 115
    :goto_3
    invoke-virtual {v9}, Lcoil3/memory/RealWeakMemoryCache;->a()V

    .line 116
    .line 117
    .line 118
    move-object v10, v15

    .line 119
    goto :goto_4

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto :goto_8

    .line 122
    :cond_7
    :goto_4
    if-eqz v10, :cond_b

    .line 123
    .line 124
    iget-object v9, v10, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    .line 125
    .line 126
    invoke-interface {v9}, Lcoil3/Image;->j()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_b

    .line 131
    .line 132
    iget-object v9, v3, Lcoil3/memory/RealMemoryCache;->c:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v11, v3, Lcoil3/memory/RealMemoryCache;->a:Lcoil3/memory/RealStrongMemoryCache;

    .line 136
    .line 137
    iget-object v11, v11, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 138
    .line 139
    iget-object v12, v11, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-interface {v12, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    if-eqz v12, :cond_8

    .line 146
    .line 147
    invoke-virtual {v11}, Lcoil3/util/LruCache;->b()J

    .line 148
    .line 149
    .line 150
    move-result-wide v13

    .line 151
    invoke-virtual {v11, v1, v12}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v15

    .line 155
    sub-long/2addr v13, v15

    .line 156
    iput-wide v13, v11, Lcoil3/util/LruCache;->c:J

    .line 157
    .line 158
    invoke-virtual {v11, v1, v12, v5}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    if-eqz v12, :cond_9

    .line 162
    .line 163
    const/4 v11, 0x1

    .line 164
    goto :goto_5

    .line 165
    :cond_9
    move v11, v7

    .line 166
    :goto_5
    iget-object v3, v3, Lcoil3/memory/RealMemoryCache;->b:Lcoil3/memory/RealWeakMemoryCache;

    .line 167
    .line 168
    iget-object v3, v3, Lcoil3/memory/RealWeakMemoryCache;->a:Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    invoke-virtual {v3, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    if-eqz v3, :cond_a

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move v3, v7

    .line 179
    :goto_6
    :try_start_2
    monitor-exit v9

    .line 180
    goto :goto_7

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    monitor-exit v9

    .line 183
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_b
    :goto_7
    monitor-exit v8

    .line 185
    goto :goto_9

    .line 186
    :goto_8
    monitor-exit v8

    .line 187
    throw v0

    .line 188
    :cond_c
    move-object v10, v5

    .line 189
    :goto_9
    if-eqz v10, :cond_0

    .line 190
    .line 191
    iget-object v3, v10, Lcoil3/memory/MemoryCache$Value;->a:Lcoil3/Image;

    .line 192
    .line 193
    instance-of v8, v3, Lcoil3/BitmapImage;

    .line 194
    .line 195
    if-eqz v8, :cond_d

    .line 196
    .line 197
    move-object v8, v3

    .line 198
    check-cast v8, Lcoil3/BitmapImage;

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_d
    move-object v8, v5

    .line 202
    :goto_a
    if-nez v8, :cond_e

    .line 203
    .line 204
    const/4 v8, 0x1

    .line 205
    goto :goto_b

    .line 206
    :cond_e
    iget-object v8, v8, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    .line 207
    .line 208
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    if-nez v8, :cond_f

    .line 213
    .line 214
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 215
    .line 216
    :cond_f
    invoke-static {v0, v8}, Lcoil3/request/AndroidRequestService;->b(Lcoil3/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    :goto_b
    if-nez v8, :cond_12

    .line 221
    .line 222
    :cond_10
    move-object v2, v5

    .line 223
    :cond_11
    move v6, v7

    .line 224
    goto/16 :goto_18

    .line 225
    .line 226
    :cond_12
    iget-object v1, v1, Lcoil3/memory/MemoryCache$Key;->b:Ljava/util/Map;

    .line 227
    .line 228
    const-string v8, "coil#size"

    .line 229
    .line 230
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 235
    .line 236
    if-eqz v1, :cond_14

    .line 237
    .line 238
    invoke-virtual {v2}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_10

    .line 247
    .line 248
    :cond_13
    :goto_c
    move-object v2, v5

    .line 249
    const/4 v6, 0x1

    .line 250
    goto/16 :goto_18

    .line 251
    .line 252
    :cond_14
    iget-object v1, v10, Lcoil3/memory/MemoryCache$Value;->b:Ljava/util/Map;

    .line 253
    .line 254
    const-string v8, "coil#is_sampled"

    .line 255
    .line 256
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    instance-of v8, v1, Ljava/lang/Boolean;

    .line 261
    .line 262
    if-eqz v8, :cond_15

    .line 263
    .line 264
    check-cast v1, Ljava/lang/Boolean;

    .line 265
    .line 266
    goto :goto_d

    .line 267
    :cond_15
    move-object v1, v5

    .line 268
    :goto_d
    if-eqz v1, :cond_16

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    goto :goto_e

    .line 275
    :cond_16
    move v1, v7

    .line 276
    :goto_e
    if-nez v1, :cond_17

    .line 277
    .line 278
    sget-object v1, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    .line 279
    .line 280
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_13

    .line 285
    .line 286
    sget-object v1, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 287
    .line 288
    if-ne v4, v1, :cond_17

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :cond_17
    invoke-interface {v3}, Lcoil3/Image;->b()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-interface {v3}, Lcoil3/Image;->a()I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    instance-of v3, v3, Lcoil3/BitmapImage;

    .line 300
    .line 301
    if-eqz v3, :cond_18

    .line 302
    .line 303
    sget-object v3, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 304
    .line 305
    invoke-static {v0, v3}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lcoil3/size/Size;

    .line 310
    .line 311
    goto :goto_f

    .line 312
    :cond_18
    sget-object v0, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    .line 313
    .line 314
    :goto_f
    iget-object v3, v2, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 315
    .line 316
    instance-of v9, v3, Lcoil3/size/Dimension$Pixels;

    .line 317
    .line 318
    const v11, 0x7fffffff

    .line 319
    .line 320
    .line 321
    if-eqz v9, :cond_19

    .line 322
    .line 323
    check-cast v3, Lcoil3/size/Dimension$Pixels;

    .line 324
    .line 325
    iget v3, v3, Lcoil3/size/Dimension$Pixels;->a:I

    .line 326
    .line 327
    goto :goto_10

    .line 328
    :cond_19
    move v3, v11

    .line 329
    :goto_10
    iget-object v9, v0, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    .line 330
    .line 331
    instance-of v12, v9, Lcoil3/size/Dimension$Pixels;

    .line 332
    .line 333
    if-eqz v12, :cond_1a

    .line 334
    .line 335
    check-cast v9, Lcoil3/size/Dimension$Pixels;

    .line 336
    .line 337
    iget v9, v9, Lcoil3/size/Dimension$Pixels;->a:I

    .line 338
    .line 339
    goto :goto_11

    .line 340
    :cond_1a
    move v9, v11

    .line 341
    :goto_11
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    iget-object v2, v2, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 346
    .line 347
    instance-of v9, v2, Lcoil3/size/Dimension$Pixels;

    .line 348
    .line 349
    if-eqz v9, :cond_1b

    .line 350
    .line 351
    check-cast v2, Lcoil3/size/Dimension$Pixels;

    .line 352
    .line 353
    iget v2, v2, Lcoil3/size/Dimension$Pixels;->a:I

    .line 354
    .line 355
    goto :goto_12

    .line 356
    :cond_1b
    move v2, v11

    .line 357
    :goto_12
    iget-object v0, v0, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    .line 358
    .line 359
    instance-of v9, v0, Lcoil3/size/Dimension$Pixels;

    .line 360
    .line 361
    if-eqz v9, :cond_1c

    .line 362
    .line 363
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 364
    .line 365
    iget v0, v0, Lcoil3/size/Dimension$Pixels;->a:I

    .line 366
    .line 367
    goto :goto_13

    .line 368
    :cond_1c
    move v0, v11

    .line 369
    :goto_13
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    int-to-double v12, v3

    .line 374
    int-to-double v14, v1

    .line 375
    div-double/2addr v12, v14

    .line 376
    int-to-double v14, v0

    .line 377
    move-object v2, v5

    .line 378
    int-to-double v5, v8

    .line 379
    div-double/2addr v14, v5

    .line 380
    if-eq v3, v11, :cond_1d

    .line 381
    .line 382
    if-eq v0, v11, :cond_1d

    .line 383
    .line 384
    move-object/from16 v5, p4

    .line 385
    .line 386
    goto :goto_14

    .line 387
    :cond_1d
    sget-object v5, Lcoil3/size/Scale;->k:Lcoil3/size/Scale;

    .line 388
    .line 389
    :goto_14
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-eqz v5, :cond_20

    .line 394
    .line 395
    const/4 v6, 0x1

    .line 396
    if-ne v5, v6, :cond_1f

    .line 397
    .line 398
    cmpg-double v5, v12, v14

    .line 399
    .line 400
    if-gez v5, :cond_1e

    .line 401
    .line 402
    sub-int/2addr v3, v1

    .line 403
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    :goto_15
    const/4 v6, 0x1

    .line 408
    goto :goto_17

    .line 409
    :cond_1e
    sub-int/2addr v0, v8

    .line 410
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    :goto_16
    move-wide v12, v14

    .line 415
    goto :goto_15

    .line 416
    :cond_1f
    invoke-static {}, Lk8;->e()V

    .line 417
    .line 418
    .line 419
    return-object v2

    .line 420
    :cond_20
    cmpl-double v5, v12, v14

    .line 421
    .line 422
    if-lez v5, :cond_21

    .line 423
    .line 424
    sub-int/2addr v3, v1

    .line 425
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    goto :goto_15

    .line 430
    :cond_21
    sub-int/2addr v0, v8

    .line 431
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    goto :goto_16

    .line 436
    :goto_17
    if-gt v0, v6, :cond_22

    .line 437
    .line 438
    goto :goto_18

    .line 439
    :cond_22
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 444
    .line 445
    if-eqz v0, :cond_24

    .line 446
    .line 447
    if-ne v0, v6, :cond_23

    .line 448
    .line 449
    cmpg-double v0, v12, v3

    .line 450
    .line 451
    if-gtz v0, :cond_11

    .line 452
    .line 453
    goto :goto_18

    .line 454
    :cond_23
    invoke-static {}, Lk8;->e()V

    .line 455
    .line 456
    .line 457
    return-object v2

    .line 458
    :cond_24
    cmpg-double v0, v12, v3

    .line 459
    .line 460
    if-nez v0, :cond_11

    .line 461
    .line 462
    :goto_18
    if-eqz v6, :cond_25

    .line 463
    .line 464
    return-object v10

    .line 465
    :cond_25
    :goto_19
    return-object v2
.end method

.method public final b(Lcoil3/request/ImageRequest;Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/EventListener;)Lcoil3/memory/MemoryCache$Key;
    .locals 5

    .line 1
    iget-object p4, p1, Lcoil3/request/ImageRequest;->i:Lcoil3/request/CachePolicy;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/request/ImageRequest;->d:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v1, Lcoil3/request/CachePolicy;->m:Lcoil3/request/CachePolicy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p4, v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object p0, p0, Lcoil3/memory/MemoryCacheService;->a:Lcoil3/RealImageLoader;

    .line 12
    .line 13
    iget-object p0, p0, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/ComponentRegistry;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, p4, :cond_2

    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lkotlin/Pair;

    .line 29
    .line 30
    iget-object v4, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lcoil3/key/Keyer;

    .line 33
    .line 34
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lkotlin/reflect/KClass;

    .line 37
    .line 38
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 39
    .line 40
    invoke-virtual {v3, p2}, Lkotlin/jvm/internal/ClassReference;->d(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, p2, p3}, Lcoil3/key/Keyer;->a(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v3, v2

    .line 60
    :goto_1
    if-nez v3, :cond_3

    .line 61
    .line 62
    :goto_2
    return-object v2

    .line 63
    :cond_3
    sget-object p0, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 64
    .line 65
    invoke-static {p1, p0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_4

    .line 76
    .line 77
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p3, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcoil3/size/Size;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "coil#size"

    .line 89
    .line 90
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcoil3/memory/MemoryCache$Key;

    .line 94
    .line 95
    invoke-direct {p1, v3, p0}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_4
    new-instance p0, Lcoil3/memory/MemoryCache$Key;

    .line 100
    .line 101
    invoke-direct {p0, v3, v0}, Lcoil3/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method
