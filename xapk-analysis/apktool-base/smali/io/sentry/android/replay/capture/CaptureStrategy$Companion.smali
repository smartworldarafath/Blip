.class public final Lio/sentry/android/replay/capture/CaptureStrategy$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/capture/CaptureStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 38

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    move/from16 v4, p6

    .line 8
    .line 9
    move-object/from16 v11, p10

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-eqz v11, :cond_23

    .line 18
    .line 19
    iget-object v13, v11, Lio/sentry/android/replay/ReplayCache;->j:Lio/sentry/SentryOptions;

    .line 20
    .line 21
    const-wide/32 v5, 0x493e0

    .line 22
    .line 23
    .line 24
    move-wide/from16 v7, p2

    .line 25
    .line 26
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v14

    .line 30
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    move-wide v7, v5

    .line 35
    new-instance v6, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v11}, Lio/sentry/android/replay/ReplayCache;->n()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v9, ".mp4"

    .line 50
    .line 51
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v11, Lio/sentry/android/replay/ReplayCache;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 62
    .line 63
    iget-object v9, v11, Lio/sentry/android/replay/ReplayCache;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 64
    .line 65
    iget-object v10, v11, Lio/sentry/android/replay/ReplayCache;->r:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-wide/16 v16, 0x0

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 76
    .line 77
    .line 78
    move-result-wide v18

    .line 79
    cmp-long v0, v18, v16

    .line 80
    .line 81
    if-lez v0, :cond_0

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    :cond_0
    move-object/from16 v18, v5

    .line 87
    .line 88
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    :goto_0
    move-object/from16 p2, v0

    .line 104
    .line 105
    move-wide/from16 v19, v14

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    move-object v1, v0

    .line 110
    goto/16 :goto_19

    .line 111
    .line 112
    :cond_1
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    goto :goto_0

    .line 117
    :goto_1
    const/4 v14, 0x0

    .line 118
    invoke-static {v5, v14}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const/4 v15, 0x0

    .line 126
    const/4 v5, 0x1

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v13}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 134
    .line 135
    const-string v7, "No captured frames, skipping generating a video segment"

    .line 136
    .line 137
    new-array v8, v15, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-interface {v0, v6, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    move/from16 v8, p7

    .line 143
    .line 144
    move/from16 v7, p8

    .line 145
    .line 146
    move/from16 v23, v5

    .line 147
    .line 148
    move-object v9, v14

    .line 149
    move-object v10, v9

    .line 150
    goto/16 :goto_f

    .line 151
    .line 152
    :cond_2
    invoke-virtual {v9}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    :try_start_1
    new-instance v0, Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 157
    .line 158
    move/from16 v21, v5

    .line 159
    .line 160
    new-instance v5, Lio/sentry/android/replay/video/MuxerConfig;

    .line 161
    .line 162
    move-wide/from16 v22, v7

    .line 163
    .line 164
    move-object/from16 v24, v10

    .line 165
    .line 166
    move/from16 v12, v21

    .line 167
    .line 168
    move/from16 v8, p7

    .line 169
    .line 170
    move/from16 v7, p8

    .line 171
    .line 172
    move/from16 v10, p12

    .line 173
    .line 174
    move-object/from16 v21, v9

    .line 175
    .line 176
    move/from16 v9, p11

    .line 177
    .line 178
    invoke-direct/range {v5 .. v10}, Lio/sentry/android/replay/video/MuxerConfig;-><init>(Ljava/io/File;IIII)V

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v13, v5}, Lio/sentry/android/replay/video/SimpleVideoEncoder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;)V

    .line 182
    .line 183
    .line 184
    iget-object v5, v0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->c:Landroid/media/MediaCodec;

    .line 185
    .line 186
    iget-object v10, v0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->d:Lkotlin/Lazy;

    .line 187
    .line 188
    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Landroid/media/MediaFormat;

    .line 193
    .line 194
    invoke-virtual {v5, v10, v14, v14, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    iput-object v10, v0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->g:Landroid/view/Surface;

    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 204
    .line 205
    .line 206
    const/4 v5, 0x0

    .line 207
    invoke-virtual {v0, v5}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 208
    .line 209
    .line 210
    invoke-static {v15, v14}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    iput-object v0, v11, Lio/sentry/android/replay/ReplayCache;->p:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 214
    .line 215
    move v5, v12

    .line 216
    move-object v10, v13

    .line 217
    int-to-long v12, v9

    .line 218
    const-wide/16 v25, 0x3e8

    .line 219
    .line 220
    div-long v12, v25, v12

    .line 221
    .line 222
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    move-object/from16 p12, v6

    .line 227
    .line 228
    move-wide/from16 v36, v22

    .line 229
    .line 230
    move/from16 v23, v5

    .line 231
    .line 232
    move-wide/from16 v5, v36

    .line 233
    .line 234
    add-long v14, v5, v19

    .line 235
    .line 236
    const-wide/high16 v19, -0x8000000000000000L

    .line 237
    .line 238
    cmp-long v19, v14, v19

    .line 239
    .line 240
    if-gtz v19, :cond_3

    .line 241
    .line 242
    sget-object v5, Lkotlin/ranges/LongRange;->m:Lkotlin/ranges/LongRange;

    .line 243
    .line 244
    move-object/from16 v19, v0

    .line 245
    .line 246
    move-object/from16 v20, v10

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_3
    move-object/from16 v19, v0

    .line 250
    .line 251
    new-instance v0, Lkotlin/ranges/LongRange;

    .line 252
    .line 253
    const-wide/16 v27, 0x1

    .line 254
    .line 255
    move-object/from16 v20, v10

    .line 256
    .line 257
    sub-long v9, v14, v27

    .line 258
    .line 259
    invoke-direct {v0, v5, v6, v9, v10}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 260
    .line 261
    .line 262
    move-object v5, v0

    .line 263
    :goto_2
    invoke-static {v5, v12, v13}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/LongRange;J)Lkotlin/ranges/LongProgression;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-wide v5, v0, Lkotlin/ranges/LongProgression;->j:J

    .line 268
    .line 269
    iget-wide v9, v0, Lkotlin/ranges/LongProgression;->k:J

    .line 270
    .line 271
    move-wide/from16 v27, v5

    .line 272
    .line 273
    iget-wide v5, v0, Lkotlin/ranges/LongProgression;->l:J

    .line 274
    .line 275
    cmp-long v0, v5, v16

    .line 276
    .line 277
    if-lez v0, :cond_4

    .line 278
    .line 279
    cmp-long v29, v27, v9

    .line 280
    .line 281
    if-lez v29, :cond_5

    .line 282
    .line 283
    :cond_4
    if-gez v0, :cond_d

    .line 284
    .line 285
    cmp-long v0, v9, v27

    .line 286
    .line 287
    if-gtz v0, :cond_d

    .line 288
    .line 289
    :cond_5
    move-object/from16 v0, v19

    .line 290
    .line 291
    const/16 v19, 0x0

    .line 292
    .line 293
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v29

    .line 297
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v30

    .line 301
    if-eqz v30, :cond_8

    .line 302
    .line 303
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v30

    .line 307
    move-object/from16 v31, v0

    .line 308
    .line 309
    move-object/from16 v0, v30

    .line 310
    .line 311
    check-cast v0, Lio/sentry/android/replay/ReplayFrame;

    .line 312
    .line 313
    add-long v32, v27, v12

    .line 314
    .line 315
    move-wide/from16 v34, v5

    .line 316
    .line 317
    iget-wide v5, v0, Lio/sentry/android/replay/ReplayFrame;->b:J

    .line 318
    .line 319
    cmp-long v30, v27, v5

    .line 320
    .line 321
    if-gtz v30, :cond_6

    .line 322
    .line 323
    cmp-long v30, v5, v32

    .line 324
    .line 325
    if-gtz v30, :cond_6

    .line 326
    .line 327
    move-object v5, v0

    .line 328
    goto :goto_6

    .line 329
    :cond_6
    cmp-long v0, v5, v32

    .line 330
    .line 331
    if-lez v0, :cond_7

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_7
    move-object/from16 v0, v31

    .line 335
    .line 336
    move-wide/from16 v5, v34

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_8
    move-object/from16 v31, v0

    .line 340
    .line 341
    move-wide/from16 v34, v5

    .line 342
    .line 343
    :goto_5
    move-object/from16 v5, v31

    .line 344
    .line 345
    :goto_6
    move-object v0, v5

    .line 346
    check-cast v0, Lio/sentry/android/replay/ReplayFrame;

    .line 347
    .line 348
    if-nez v0, :cond_9

    .line 349
    .line 350
    move-wide/from16 v29, v9

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_9
    :try_start_2
    iget-object v0, v0, Lio/sentry/android/replay/ReplayFrame;->a:Ljava/io/File;

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 364
    .line 365
    .line 366
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 367
    move-wide/from16 v29, v9

    .line 368
    .line 369
    :try_start_3
    iget-object v9, v11, Lio/sentry/android/replay/ReplayCache;->p:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 370
    .line 371
    if-eqz v9, :cond_a

    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9, v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->b(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 377
    .line 378
    .line 379
    :cond_a
    const/4 v9, 0x0

    .line 380
    goto :goto_7

    .line 381
    :catchall_1
    move-exception v0

    .line 382
    move-object v9, v0

    .line 383
    goto :goto_8

    .line 384
    :goto_7
    :try_start_4
    invoke-static {v6, v9}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 388
    .line 389
    .line 390
    add-int/lit8 v19, v19, 0x1

    .line 391
    .line 392
    move-object/from16 v10, p2

    .line 393
    .line 394
    move-object v0, v5

    .line 395
    move-object/from16 v9, v24

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :catchall_2
    move-exception v0

    .line 399
    goto :goto_9

    .line 400
    :goto_8
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 401
    :catchall_3
    move-exception v0

    .line 402
    :try_start_6
    invoke-static {v6, v9}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 406
    :catchall_4
    move-exception v0

    .line 407
    move-wide/from16 v29, v9

    .line 408
    .line 409
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    sget-object v9, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 414
    .line 415
    const-string v10, "Unable to decode bitmap and encode it into a video, skipping frame"

    .line 416
    .line 417
    invoke-interface {v6, v9, v10, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    .line 419
    .line 420
    :goto_a
    if-eqz v5, :cond_b

    .line 421
    .line 422
    move-object v0, v5

    .line 423
    check-cast v0, Lio/sentry/android/replay/ReplayFrame;

    .line 424
    .line 425
    iget-object v0, v0, Lio/sentry/android/replay/ReplayFrame;->a:Ljava/io/File;

    .line 426
    .line 427
    invoke-virtual {v11, v0}, Lio/sentry/android/replay/ReplayCache;->h(Ljava/io/File;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    :try_start_7
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 435
    .line 436
    .line 437
    move-object/from16 v9, v24

    .line 438
    .line 439
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 440
    .line 441
    .line 442
    const/4 v10, 0x0

    .line 443
    invoke-static {v6, v10}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 444
    .line 445
    .line 446
    move-object/from16 v10, p2

    .line 447
    .line 448
    invoke-interface {v10, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    goto :goto_b

    .line 453
    :catchall_5
    move-exception v0

    .line 454
    move-object v1, v0

    .line 455
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 456
    :catchall_6
    move-exception v0

    .line 457
    invoke-static {v6, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 458
    .line 459
    .line 460
    throw v0

    .line 461
    :cond_b
    move-object/from16 v10, p2

    .line 462
    .line 463
    move-object/from16 v9, v24

    .line 464
    .line 465
    move-object v0, v5

    .line 466
    :goto_b
    cmp-long v5, v27, v29

    .line 467
    .line 468
    if-eqz v5, :cond_c

    .line 469
    .line 470
    add-long v27, v27, v34

    .line 471
    .line 472
    move-object/from16 v24, v9

    .line 473
    .line 474
    move-object/from16 p2, v10

    .line 475
    .line 476
    move-wide/from16 v9, v29

    .line 477
    .line 478
    move-wide/from16 v5, v34

    .line 479
    .line 480
    goto/16 :goto_3

    .line 481
    .line 482
    :cond_c
    move/from16 v5, v19

    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_d
    const/4 v5, 0x0

    .line 486
    :goto_c
    if-nez v5, :cond_e

    .line 487
    .line 488
    invoke-virtual/range {v20 .. v20}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 493
    .line 494
    const-string v6, "Generated a video with no frames, not capturing a replay segment"

    .line 495
    .line 496
    const/4 v9, 0x0

    .line 497
    new-array v10, v9, [Ljava/lang/Object;

    .line 498
    .line 499
    invoke-interface {v0, v5, v6, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    move-object/from16 v6, p12

    .line 503
    .line 504
    invoke-virtual {v11, v6}, Lio/sentry/android/replay/ReplayCache;->h(Ljava/io/File;)V

    .line 505
    .line 506
    .line 507
    const/4 v9, 0x0

    .line 508
    const/4 v10, 0x0

    .line 509
    goto :goto_f

    .line 510
    :cond_e
    move-object/from16 v6, p12

    .line 511
    .line 512
    invoke-virtual/range {v21 .. v21}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    :try_start_9
    iget-object v0, v11, Lio/sentry/android/replay/ReplayCache;->p:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 517
    .line 518
    if-eqz v0, :cond_f

    .line 519
    .line 520
    invoke-virtual {v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->c()V

    .line 521
    .line 522
    .line 523
    goto :goto_d

    .line 524
    :catchall_7
    move-exception v0

    .line 525
    move-object v1, v0

    .line 526
    goto/16 :goto_16

    .line 527
    .line 528
    :cond_f
    :goto_d
    iget-object v0, v11, Lio/sentry/android/replay/ReplayCache;->p:Lio/sentry/android/replay/video/SimpleVideoEncoder;

    .line 529
    .line 530
    if-eqz v0, :cond_11

    .line 531
    .line 532
    iget-object v0, v0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->f:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    .line 533
    .line 534
    iget v10, v0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->e:I

    .line 535
    .line 536
    if-nez v10, :cond_10

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :cond_10
    iget-wide v12, v0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->f:J

    .line 540
    .line 541
    move-wide/from16 v16, v12

    .line 542
    .line 543
    iget-wide v12, v0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->a:J

    .line 544
    .line 545
    add-long v12, v16, v12

    .line 546
    .line 547
    div-long v16, v12, v25

    .line 548
    .line 549
    :cond_11
    :goto_e
    move-wide/from16 v12, v16

    .line 550
    .line 551
    const/4 v10, 0x0

    .line 552
    iput-object v10, v11, Lio/sentry/android/replay/ReplayCache;->p:Lio/sentry/android/replay/video/SimpleVideoEncoder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 553
    .line 554
    invoke-static {v9, v10}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v11, v14, v15}, Lio/sentry/android/replay/ReplayCache;->v(J)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    new-instance v9, Lio/sentry/android/replay/GeneratedVideo;

    .line 561
    .line 562
    invoke-direct {v9, v6, v5, v12, v13}, Lio/sentry/android/replay/GeneratedVideo;-><init>(Ljava/io/File;IJ)V

    .line 563
    .line 564
    .line 565
    :goto_f
    if-nez v9, :cond_12

    .line 566
    .line 567
    goto/16 :goto_1a

    .line 568
    .line 569
    :cond_12
    iget-object v0, v9, Lio/sentry/android/replay/GeneratedVideo;->a:Ljava/io/File;

    .line 570
    .line 571
    iget v5, v9, Lio/sentry/android/replay/GeneratedVideo;->b:I

    .line 572
    .line 573
    iget-wide v11, v9, Lio/sentry/android/replay/GeneratedVideo;->c:J

    .line 574
    .line 575
    if-nez p14, :cond_14

    .line 576
    .line 577
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 578
    .line 579
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 580
    .line 581
    .line 582
    sget-object v9, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 583
    .line 584
    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 585
    .line 586
    if-eqz v1, :cond_13

    .line 587
    .line 588
    new-instance v9, Lp;

    .line 589
    .line 590
    const/16 v13, 0x1a

    .line 591
    .line 592
    invoke-direct {v9, v13, v6}, Lp;-><init>(ILjava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v1, v9}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 596
    .line 597
    .line 598
    :cond_13
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v1, Ljava/util/List;

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_14
    move-object/from16 v1, p14

    .line 604
    .line 605
    :goto_10
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 606
    .line 607
    .line 608
    move-result-wide v13

    .line 609
    add-long/2addr v13, v11

    .line 610
    invoke-static {v13, v14}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    new-instance v9, Lio/sentry/SentryReplayEvent;

    .line 618
    .line 619
    invoke-direct {v9}, Lio/sentry/SentryReplayEvent;-><init>()V

    .line 620
    .line 621
    .line 622
    iput-object v3, v9, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 623
    .line 624
    iput-object v3, v9, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 625
    .line 626
    iput v4, v9, Lio/sentry/SentryReplayEvent;->C:I

    .line 627
    .line 628
    iput-object v6, v9, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 629
    .line 630
    iput-object v2, v9, Lio/sentry/SentryReplayEvent;->E:Ljava/util/Date;

    .line 631
    .line 632
    move-object/from16 v3, p9

    .line 633
    .line 634
    iput-object v3, v9, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 635
    .line 636
    iput-object v0, v9, Lio/sentry/SentryReplayEvent;->y:Ljava/io/File;

    .line 637
    .line 638
    new-instance v3, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .line 642
    .line 643
    new-instance v13, Lio/sentry/rrweb/RRWebMetaEvent;

    .line 644
    .line 645
    invoke-direct {v13}, Lio/sentry/rrweb/RRWebMetaEvent;-><init>()V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 649
    .line 650
    .line 651
    move-result-wide v14

    .line 652
    iput-wide v14, v13, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 653
    .line 654
    iput v8, v13, Lio/sentry/rrweb/RRWebMetaEvent;->m:I

    .line 655
    .line 656
    iput v7, v13, Lio/sentry/rrweb/RRWebMetaEvent;->n:I

    .line 657
    .line 658
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    new-instance v13, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 662
    .line 663
    invoke-direct {v13}, Lio/sentry/rrweb/RRWebVideoEvent;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 667
    .line 668
    .line 669
    move-result-wide v14

    .line 670
    iput-wide v14, v13, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 671
    .line 672
    iput v4, v13, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 673
    .line 674
    iput-wide v11, v13, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 675
    .line 676
    iput v5, v13, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 679
    .line 680
    .line 681
    move-result-wide v11

    .line 682
    iput-wide v11, v13, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 683
    .line 684
    move/from16 v5, p11

    .line 685
    .line 686
    iput v5, v13, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 687
    .line 688
    iput v8, v13, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 689
    .line 690
    iput v7, v13, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 691
    .line 692
    const/4 v5, 0x0

    .line 693
    iput v5, v13, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 694
    .line 695
    iput v5, v13, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 696
    .line 697
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    new-instance v0, Ljava/util/LinkedList;

    .line 701
    .line 702
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    move-object v7, v10

    .line 710
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    if-eqz v8, :cond_1d

    .line 715
    .line 716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    check-cast v8, Lio/sentry/Breadcrumb;

    .line 721
    .line 722
    if-eqz v7, :cond_16

    .line 723
    .line 724
    iget-object v11, v7, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 725
    .line 726
    const-string v12, "network.event"

    .line 727
    .line 728
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v11

    .line 732
    if-eqz v11, :cond_16

    .line 733
    .line 734
    iget-object v7, v7, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 735
    .line 736
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    const-string v11, "action"

    .line 740
    .line 741
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    if-nez v7, :cond_15

    .line 746
    .line 747
    move-object v7, v10

    .line 748
    :cond_15
    const-string v11, "NETWORK_AVAILABLE"

    .line 749
    .line 750
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    if-eqz v7, :cond_16

    .line 755
    .line 756
    iget-object v7, v8, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 757
    .line 758
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    if-eqz v7, :cond_16

    .line 763
    .line 764
    iget-object v7, v8, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 765
    .line 766
    const-string v11, "network_type"

    .line 767
    .line 768
    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v7

    .line 772
    if-eqz v7, :cond_16

    .line 773
    .line 774
    invoke-virtual {v8}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 779
    .line 780
    .line 781
    move-result-wide v11

    .line 782
    const-wide/16 v13, 0x1388

    .line 783
    .line 784
    add-long/2addr v11, v13

    .line 785
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 786
    .line 787
    .line 788
    move-result-wide v13

    .line 789
    cmp-long v7, v11, v13

    .line 790
    .line 791
    if-ltz v7, :cond_16

    .line 792
    .line 793
    move/from16 v7, v23

    .line 794
    .line 795
    goto :goto_12

    .line 796
    :cond_16
    move v7, v5

    .line 797
    :goto_12
    invoke-virtual {v8}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 798
    .line 799
    .line 800
    move-result-object v11

    .line 801
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 802
    .line 803
    .line 804
    move-result-wide v11

    .line 805
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 806
    .line 807
    .line 808
    move-result-wide v13

    .line 809
    cmp-long v11, v11, v13

    .line 810
    .line 811
    if-gez v11, :cond_17

    .line 812
    .line 813
    if-eqz v7, :cond_1c

    .line 814
    .line 815
    :cond_17
    invoke-virtual {v8}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 816
    .line 817
    .line 818
    move-result-object v7

    .line 819
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 820
    .line 821
    .line 822
    move-result-wide v11

    .line 823
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 824
    .line 825
    .line 826
    move-result-wide v13

    .line 827
    cmp-long v7, v11, v13

    .line 828
    .line 829
    if-gez v7, :cond_1c

    .line 830
    .line 831
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    invoke-interface {v7}, Lio/sentry/ReplayController;->P()Lio/sentry/ReplayBreadcrumbConverter;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    invoke-interface {v7, v8}, Lio/sentry/ReplayBreadcrumbConverter;->a(Lio/sentry/Breadcrumb;)Lio/sentry/rrweb/RRWebEvent;

    .line 840
    .line 841
    .line 842
    move-result-object v7

    .line 843
    if-eqz v7, :cond_1c

    .line 844
    .line 845
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    instance-of v11, v7, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 849
    .line 850
    if-eqz v11, :cond_18

    .line 851
    .line 852
    move-object v11, v7

    .line 853
    check-cast v11, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 854
    .line 855
    goto :goto_13

    .line 856
    :cond_18
    move-object v11, v10

    .line 857
    :goto_13
    if-eqz v11, :cond_19

    .line 858
    .line 859
    iget-object v11, v11, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->o:Ljava/lang/String;

    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_19
    move-object v11, v10

    .line 863
    :goto_14
    const-string v12, "navigation"

    .line 864
    .line 865
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    move-result v11

    .line 869
    if-eqz v11, :cond_1c

    .line 870
    .line 871
    check-cast v7, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 872
    .line 873
    iget-object v11, v7, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 874
    .line 875
    const-string v12, "to"

    .line 876
    .line 877
    if-eqz v11, :cond_1a

    .line 878
    .line 879
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v11

    .line 883
    if-nez v11, :cond_1b

    .line 884
    .line 885
    :cond_1a
    move-object v11, v10

    .line 886
    :cond_1b
    instance-of v11, v11, Ljava/lang/String;

    .line 887
    .line 888
    if-eqz v11, :cond_1c

    .line 889
    .line 890
    iget-object v7, v7, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 891
    .line 892
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v7

    .line 899
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    .line 901
    .line 902
    check-cast v7, Ljava/lang/String;

    .line 903
    .line 904
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    :cond_1c
    move-object v7, v8

    .line 908
    goto/16 :goto_11

    .line 909
    .line 910
    :cond_1d
    if-eqz p13, :cond_1e

    .line 911
    .line 912
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    move-object/from16 v12, p13

    .line 917
    .line 918
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v1

    .line 922
    if-nez v1, :cond_1e

    .line 923
    .line 924
    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    :cond_1e
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 928
    .line 929
    .line 930
    move-result-wide v5

    .line 931
    new-instance v1, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;

    .line 932
    .line 933
    invoke-direct {v1, v2, v3}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;-><init>(Ljava/util/Date;Ljava/util/ArrayList;)V

    .line 934
    .line 935
    .line 936
    move-object/from16 v2, p15

    .line 937
    .line 938
    invoke-static {v2, v5, v6, v1}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->b(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V

    .line 939
    .line 940
    .line 941
    if-nez v4, :cond_22

    .line 942
    .line 943
    new-instance v1, Lio/sentry/rrweb/RRWebOptionsEvent;

    .line 944
    .line 945
    sget-object v2, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    .line 946
    .line 947
    invoke-direct {v1, v2}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 948
    .line 949
    .line 950
    new-instance v2, Ljava/util/HashMap;

    .line 951
    .line 952
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 953
    .line 954
    .line 955
    iput-object v2, v1, Lio/sentry/rrweb/RRWebOptionsEvent;->m:Ljava/util/HashMap;

    .line 956
    .line 957
    const-string v5, "options"

    .line 958
    .line 959
    iput-object v5, v1, Lio/sentry/rrweb/RRWebOptionsEvent;->l:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    if-eqz v5, :cond_1f

    .line 966
    .line 967
    const-string v6, "nativeSdkName"

    .line 968
    .line 969
    iget-object v7, v5, Lio/sentry/protocol/SdkVersion;->j:Ljava/lang/String;

    .line 970
    .line 971
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    const-string v6, "nativeSdkVersion"

    .line 975
    .line 976
    iget-object v5, v5, Lio/sentry/protocol/SdkVersion;->k:Ljava/lang/String;

    .line 977
    .line 978
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->e:Ljava/lang/Double;

    .line 986
    .line 987
    iget-object v7, v5, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 988
    .line 989
    const-string v8, "errorSampleRate"

    .line 990
    .line 991
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    const-string v6, "sessionSampleRate"

    .line 995
    .line 996
    iget-object v8, v5, Lio/sentry/SentryReplayOptions;->d:Ljava/lang/Double;

    .line 997
    .line 998
    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    const-string v6, "android.widget.ImageView"

    .line 1002
    .line 1003
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v6

    .line 1007
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v6

    .line 1011
    const-string v8, "maskAllImages"

    .line 1012
    .line 1013
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    const-string v6, "android.widget.TextView"

    .line 1017
    .line 1018
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v6

    .line 1026
    const-string v8, "maskAllText"

    .line 1027
    .line 1028
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 1032
    .line 1033
    invoke-virtual {v6}, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->serializedName()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v6

    .line 1037
    const-string v8, "quality"

    .line 1038
    .line 1039
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    const-string v6, "maskedViewClasses"

    .line 1043
    .line 1044
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    const-string v6, "unmaskedViewClasses"

    .line 1048
    .line 1049
    iget-object v7, v5, Lio/sentry/SentryMaskingOptions;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1050
    .line 1051
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->n:Lio/sentry/ScreenshotStrategyType;

    .line 1055
    .line 1056
    sget-object v7, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    .line 1057
    .line 1058
    if-ne v6, v7, :cond_20

    .line 1059
    .line 1060
    const-string v6, "pixelCopy"

    .line 1061
    .line 1062
    goto :goto_15

    .line 1063
    :cond_20
    const-string v6, "canvas"

    .line 1064
    .line 1065
    :goto_15
    const-string v7, "screenshotStrategy"

    .line 1066
    .line 1067
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->p:Ljava/util/List;

    .line 1071
    .line 1072
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1073
    .line 1074
    .line 1075
    move-result v6

    .line 1076
    xor-int/lit8 v6, v6, 0x1

    .line 1077
    .line 1078
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v6

    .line 1082
    const-string v7, "networkDetailHasUrls"

    .line 1083
    .line 1084
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->p:Ljava/util/List;

    .line 1088
    .line 1089
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    if-nez v6, :cond_21

    .line 1094
    .line 1095
    const-string v6, "networkDetailAllowUrls"

    .line 1096
    .line 1097
    iget-object v7, v5, Lio/sentry/SentryReplayOptions;->p:Ljava/util/List;

    .line 1098
    .line 1099
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    const-string v6, "networkRequestHeaders"

    .line 1103
    .line 1104
    iget-object v7, v5, Lio/sentry/SentryReplayOptions;->s:Ljava/util/List;

    .line 1105
    .line 1106
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    const-string v6, "networkResponseHeaders"

    .line 1110
    .line 1111
    iget-object v7, v5, Lio/sentry/SentryReplayOptions;->t:Ljava/util/List;

    .line 1112
    .line 1113
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    iget-boolean v6, v5, Lio/sentry/SentryReplayOptions;->r:Z

    .line 1117
    .line 1118
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v6

    .line 1122
    const-string v7, "networkCaptureBodies"

    .line 1123
    .line 1124
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    iget-object v6, v5, Lio/sentry/SentryReplayOptions;->q:Ljava/util/List;

    .line 1128
    .line 1129
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v6

    .line 1133
    if-nez v6, :cond_21

    .line 1134
    .line 1135
    const-string v6, "networkDetailDenyUrls"

    .line 1136
    .line 1137
    iget-object v5, v5, Lio/sentry/SentryReplayOptions;->q:Ljava/util/List;

    .line 1138
    .line 1139
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    :cond_21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    .line 1144
    .line 1145
    :cond_22
    new-instance v1, Lio/sentry/ReplayRecording;

    .line 1146
    .line 1147
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    iput-object v2, v1, Lio/sentry/ReplayRecording;->j:Ljava/lang/Integer;

    .line 1155
    .line 1156
    new-instance v2, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$lambda$8$$inlined$sortedBy$1;

    .line 1157
    .line 1158
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v2

    .line 1165
    iput-object v2, v1, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 1166
    .line 1167
    iput-object v0, v9, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 1168
    .line 1169
    new-instance v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 1170
    .line 1171
    invoke-direct {v0, v9, v1}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;-><init>(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;)V

    .line 1172
    .line 1173
    .line 1174
    return-object v0

    .line 1175
    :goto_16
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1176
    :catchall_8
    move-exception v0

    .line 1177
    invoke-static {v9, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1178
    .line 1179
    .line 1180
    throw v0

    .line 1181
    :goto_17
    move-object v1, v0

    .line 1182
    goto :goto_18

    .line 1183
    :catchall_9
    move-exception v0

    .line 1184
    goto :goto_17

    .line 1185
    :goto_18
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 1186
    :catchall_a
    move-exception v0

    .line 1187
    invoke-static {v15, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1188
    .line 1189
    .line 1190
    throw v0

    .line 1191
    :goto_19
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 1192
    :catchall_b
    move-exception v0

    .line 1193
    invoke-static {v5, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1194
    .line 1195
    .line 1196
    throw v0

    .line 1197
    :cond_23
    :goto_1a
    sget-object v0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Failed;->a:Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Failed;

    .line 1198
    .line 1199
    return-object v0
.end method

.method public static b(Ljava/util/Deque;JLkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    .line 22
    .line 23
    iget-wide v1, v0, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 24
    .line 25
    cmp-long v1, v1, p1

    .line 26
    .line 27
    if-gez v1, :cond_0

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    move-object v1, p3

    .line 32
    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method
