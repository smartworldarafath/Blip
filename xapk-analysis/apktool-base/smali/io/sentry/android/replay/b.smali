.class public final synthetic Lio/sentry/android/replay/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Closeable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/sentry/android/replay/b;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/replay/b;->k:Ljava/io/Closeable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lio/sentry/android/replay/b;->j:I

    .line 4
    .line 5
    iget-object v0, v0, Lio/sentry/android/replay/b;->k:Ljava/io/Closeable;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Lio/sentry/android/replay/RootViewsSpy;

    .line 11
    .line 12
    iget-object v1, v0, Lio/sentry/android/replay/RootViewsSpy;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;-><init>(Lio/sentry/android/replay/RootViewsSpy;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object v0, Lio/sentry/android/replay/WindowManagerSpy;->b:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v2, Lio/sentry/android/replay/WindowManagerSpy;->c:Lkotlin/Lazy;

    .line 35
    .line 36
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/reflect/Field;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v3, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    const-string v1, "WindowManagerSpy"

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void

    .line 68
    :pswitch_0
    check-cast v0, Lio/sentry/android/replay/ReplayIntegration;

    .line 69
    .line 70
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 71
    .line 72
    const-string v2, "options"

    .line 73
    .line 74
    if-eqz v1, :cond_20

    .line 75
    .line 76
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v4, ""

    .line 81
    .line 82
    if-eqz v1, :cond_1f

    .line 83
    .line 84
    iget-object v5, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 85
    .line 86
    if-eqz v5, :cond_1e

    .line 87
    .line 88
    const-string v6, "replay.json"

    .line 89
    .line 90
    const-class v7, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v5, v6, v7}, Lio/sentry/cache/PersistingScopeObserver;->h(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/lang/String;

    .line 97
    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    goto/16 :goto_14

    .line 101
    .line 102
    :cond_2
    new-instance v11, Lio/sentry/protocol/SentryId;

    .line 103
    .line 104
    invoke-direct {v11, v5}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v6, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 108
    .line 109
    invoke-virtual {v11, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Lio/sentry/android/replay/ReplayIntegration;->R(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_15

    .line 119
    .line 120
    :cond_3
    iget-object v6, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 121
    .line 122
    if-eqz v6, :cond_1d

    .line 123
    .line 124
    invoke-static {v6, v11}, Lio/sentry/android/replay/ReplayCache$Companion;->a(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)Ljava/io/File;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    new-instance v8, Ljava/io/File;

    .line 129
    .line 130
    const-string v9, ".ongoing_segment"

    .line 131
    .line 132
    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_4

    .line 140
    .line 141
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 146
    .line 147
    const-string v9, "No ongoing segment found for replay: %s"

    .line 148
    .line 149
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-interface {v6, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v7}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 157
    .line 158
    .line 159
    move-object/from16 v28, v2

    .line 160
    .line 161
    const/16 p0, 0x0

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    goto/16 :goto_11

    .line 165
    .line 166
    :cond_4
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 167
    .line 168
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 169
    .line 170
    .line 171
    sget-object v10, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 172
    .line 173
    new-instance v12, Ljava/io/InputStreamReader;

    .line 174
    .line 175
    new-instance v13, Ljava/io/FileInputStream;

    .line 176
    .line 177
    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {v12, v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Ljava/io/BufferedReader;

    .line 184
    .line 185
    const/16 v10, 0x2000

    .line 186
    .line 187
    invoke-direct {v8, v12, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 188
    .line 189
    .line 190
    :try_start_1
    invoke-static {v8}, Lkotlin/io/TextStreamsKt;->a(Ljava/io/BufferedReader;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-virtual {v10}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    const/4 v13, 0x1

    .line 203
    const/4 v14, 0x0

    .line 204
    if-eqz v12, :cond_5

    .line 205
    .line 206
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    check-cast v12, Ljava/lang/String;

    .line 211
    .line 212
    const-string v15, "="

    .line 213
    .line 214
    filled-new-array {v15}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    const/16 p0, 0x0

    .line 219
    .line 220
    const/4 v3, 0x2

    .line 221
    invoke-static {v12, v15, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Ljava/lang/String;

    .line 230
    .line 231
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Ljava/lang/String;

    .line 236
    .line 237
    invoke-interface {v9, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    move-object v1, v0

    .line 243
    goto/16 :goto_13

    .line 244
    .line 245
    :cond_5
    const/16 p0, 0x0

    .line 246
    .line 247
    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 248
    .line 249
    .line 250
    const-string v3, "config.height"

    .line 251
    .line 252
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v3, :cond_6

    .line 259
    .line 260
    invoke-static {v3}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    goto :goto_2

    .line 265
    :cond_6
    move-object/from16 v3, p0

    .line 266
    .line 267
    :goto_2
    const-string v8, "config.width"

    .line 268
    .line 269
    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Ljava/lang/String;

    .line 274
    .line 275
    if-eqz v8, :cond_7

    .line 276
    .line 277
    invoke-static {v8}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    goto :goto_3

    .line 282
    :cond_7
    move-object/from16 v8, p0

    .line 283
    .line 284
    :goto_3
    const-string v10, "config.frame-rate"

    .line 285
    .line 286
    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    check-cast v10, Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v10, :cond_8

    .line 293
    .line 294
    invoke-static {v10}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    goto :goto_4

    .line 299
    :cond_8
    move-object/from16 v10, p0

    .line 300
    .line 301
    :goto_4
    const-string v12, "config.bit-rate"

    .line 302
    .line 303
    invoke-virtual {v9, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    check-cast v12, Ljava/lang/String;

    .line 308
    .line 309
    if-eqz v12, :cond_9

    .line 310
    .line 311
    invoke-static {v12}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    goto :goto_5

    .line 316
    :cond_9
    move-object/from16 v12, p0

    .line 317
    .line 318
    :goto_5
    const-string v15, "segment.id"

    .line 319
    .line 320
    invoke-virtual {v9, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    check-cast v15, Ljava/lang/String;

    .line 325
    .line 326
    if-eqz v15, :cond_a

    .line 327
    .line 328
    invoke-static {v15}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    goto :goto_6

    .line 333
    :cond_a
    move-object/from16 v15, p0

    .line 334
    .line 335
    :goto_6
    :try_start_2
    const-string v14, "segment.timestamp"

    .line 336
    .line 337
    invoke-virtual {v9, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v14

    .line 341
    check-cast v14, Ljava/lang/String;

    .line 342
    .line 343
    if-nez v14, :cond_b

    .line 344
    .line 345
    move-object v14, v4

    .line 346
    :cond_b
    invoke-static {v14}, Lio/sentry/DateUtils;->d(Ljava/lang/String;)Ljava/util/Date;

    .line 347
    .line 348
    .line 349
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 350
    goto :goto_7

    .line 351
    :catchall_2
    move-object/from16 v14, p0

    .line 352
    .line 353
    :goto_7
    :try_start_3
    const-string v13, "replay.type"

    .line 354
    .line 355
    invoke-virtual {v9, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    check-cast v13, Ljava/lang/String;

    .line 360
    .line 361
    if-nez v13, :cond_c

    .line 362
    .line 363
    move-object v13, v4

    .line 364
    :cond_c
    invoke-static {v13}, Lio/sentry/SentryReplayEvent$ReplayType;->valueOf(Ljava/lang/String;)Lio/sentry/SentryReplayEvent$ReplayType;

    .line 365
    .line 366
    .line 367
    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 368
    goto :goto_8

    .line 369
    :catchall_3
    move-object/from16 v13, p0

    .line 370
    .line 371
    :goto_8
    if-eqz v3, :cond_16

    .line 372
    .line 373
    if-eqz v8, :cond_16

    .line 374
    .line 375
    if-eqz v10, :cond_16

    .line 376
    .line 377
    if-eqz v12, :cond_16

    .line 378
    .line 379
    if-eqz v15, :cond_16

    .line 380
    .line 381
    move-object/from16 v28, v2

    .line 382
    .line 383
    const/4 v2, -0x1

    .line 384
    move-object/from16 v18, v3

    .line 385
    .line 386
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eq v3, v2, :cond_17

    .line 391
    .line 392
    if-eqz v14, :cond_17

    .line 393
    .line 394
    if-nez v13, :cond_d

    .line 395
    .line 396
    goto/16 :goto_10

    .line 397
    .line 398
    :cond_d
    new-instance v19, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 399
    .line 400
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v20

    .line 404
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v21

    .line 408
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 409
    .line 410
    .line 411
    move-result v24

    .line 412
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 413
    .line 414
    .line 415
    move-result v25

    .line 416
    const/high16 v22, 0x3f800000    # 1.0f

    .line 417
    .line 418
    const/high16 v23, 0x3f800000    # 1.0f

    .line 419
    .line 420
    invoke-direct/range {v19 .. v25}, Lio/sentry/android/replay/ScreenshotRecorderConfig;-><init>(IIFFII)V

    .line 421
    .line 422
    .line 423
    new-instance v2, Lio/sentry/android/replay/ReplayCache;

    .line 424
    .line 425
    invoke-direct {v2, v6, v11}, Lio/sentry/android/replay/ReplayCache;-><init>(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Lio/sentry/android/replay/ReplayCache;->n()Ljava/io/File;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    if-eqz v3, :cond_e

    .line 433
    .line 434
    new-instance v8, Lio/sentry/android/replay/a;

    .line 435
    .line 436
    invoke-direct {v8, v2}, Lio/sentry/android/replay/a;-><init>(Lio/sentry/android/replay/ReplayCache;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 440
    .line 441
    .line 442
    :cond_e
    iget-object v3, v2, Lio/sentry/android/replay/ReplayCache;->r:Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    if-eqz v8, :cond_f

    .line 449
    .line 450
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 455
    .line 456
    const-string v6, "No frames found for replay: %s, deleting the replay"

    .line 457
    .line 458
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-interface {v2, v3, v6, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v7}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 466
    .line 467
    .line 468
    :goto_9
    move-object/from16 v3, p0

    .line 469
    .line 470
    goto/16 :goto_11

    .line 471
    .line 472
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    const/4 v8, 0x1

    .line 477
    if-le v7, v8, :cond_10

    .line 478
    .line 479
    new-instance v7, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortBy$1;

    .line 480
    .line 481
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->P(Ljava/util/List;Ljava/util/Comparator;)V

    .line 485
    .line 486
    .line 487
    :cond_10
    sget-object v7, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 488
    .line 489
    if-ne v13, v7, :cond_11

    .line 490
    .line 491
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 492
    .line 493
    .line 494
    move-result v8

    .line 495
    move/from16 v22, v8

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_11
    const/16 v22, 0x0

    .line 499
    .line 500
    :goto_a
    if-ne v13, v7, :cond_12

    .line 501
    .line 502
    :goto_b
    move-object/from16 v21, v14

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :cond_12
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    check-cast v7, Lio/sentry/android/replay/ReplayFrame;

    .line 510
    .line 511
    iget-wide v7, v7, Lio/sentry/android/replay/ReplayFrame;->b:J

    .line 512
    .line 513
    invoke-static {v7, v8}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 514
    .line 515
    .line 516
    move-result-object v14

    .line 517
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    goto :goto_b

    .line 521
    :goto_c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Lio/sentry/android/replay/ReplayFrame;

    .line 526
    .line 527
    iget-wide v7, v3, Lio/sentry/android/replay/ReplayFrame;->b:J

    .line 528
    .line 529
    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    .line 530
    .line 531
    .line 532
    move-result-wide v14

    .line 533
    sub-long/2addr v7, v14

    .line 534
    const/16 v3, 0x3e8

    .line 535
    .line 536
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    div-int/2addr v3, v10

    .line 541
    int-to-long v14, v3

    .line 542
    add-long v23, v7, v14

    .line 543
    .line 544
    const-string v3, "replay.recording"

    .line 545
    .line 546
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    check-cast v3, Ljava/lang/String;

    .line 551
    .line 552
    if-eqz v3, :cond_15

    .line 553
    .line 554
    new-instance v7, Ljava/io/StringReader;

    .line 555
    .line 556
    invoke-direct {v7, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    const-class v6, Lio/sentry/ReplayRecording;

    .line 564
    .line 565
    invoke-interface {v3, v7, v6}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    check-cast v3, Lio/sentry/ReplayRecording;

    .line 570
    .line 571
    if-eqz v3, :cond_13

    .line 572
    .line 573
    iget-object v6, v3, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 574
    .line 575
    goto :goto_d

    .line 576
    :cond_13
    move-object/from16 v6, p0

    .line 577
    .line 578
    :goto_d
    if-eqz v6, :cond_14

    .line 579
    .line 580
    new-instance v6, Ljava/util/LinkedList;

    .line 581
    .line 582
    iget-object v3, v3, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-direct {v6, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 588
    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_14
    move-object/from16 v6, p0

    .line 592
    .line 593
    :goto_e
    if-eqz v6, :cond_15

    .line 594
    .line 595
    goto :goto_f

    .line 596
    :cond_15
    sget-object v6, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 597
    .line 598
    :goto_f
    new-instance v18, Lio/sentry/android/replay/LastSegmentData;

    .line 599
    .line 600
    const-string v3, "replay.screen-at-start"

    .line 601
    .line 602
    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    move-object/from16 v26, v3

    .line 607
    .line 608
    check-cast v26, Ljava/lang/String;

    .line 609
    .line 610
    new-instance v3, Lio/sentry/android/replay/ReplayCache$Companion$fromDisk$$inlined$sortedBy$1;

    .line 611
    .line 612
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v27

    .line 619
    move-object/from16 v20, v2

    .line 620
    .line 621
    move-object/from16 v25, v13

    .line 622
    .line 623
    invoke-direct/range {v18 .. v27}, Lio/sentry/android/replay/LastSegmentData;-><init>(Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/ReplayCache;Ljava/util/Date;IJLio/sentry/SentryReplayEvent$ReplayType;Ljava/lang/String;Ljava/util/List;)V

    .line 624
    .line 625
    .line 626
    move-object/from16 v3, v18

    .line 627
    .line 628
    goto :goto_11

    .line 629
    :cond_16
    move-object/from16 v28, v2

    .line 630
    .line 631
    :cond_17
    :goto_10
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 636
    .line 637
    const-string v6, "Incorrect segment values found for replay: %s, deleting the replay"

    .line 638
    .line 639
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    invoke-interface {v2, v3, v6, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    invoke-static {v7}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 647
    .line 648
    .line 649
    goto/16 :goto_9

    .line 650
    .line 651
    :goto_11
    if-nez v3, :cond_18

    .line 652
    .line 653
    invoke-virtual {v0, v4}, Lio/sentry/android/replay/ReplayIntegration;->R(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_15

    .line 657
    .line 658
    :cond_18
    iget-object v2, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 659
    .line 660
    if-eqz v2, :cond_1c

    .line 661
    .line 662
    const-string v4, "breadcrumbs.json"

    .line 663
    .line 664
    const-class v6, Ljava/util/List;

    .line 665
    .line 666
    invoke-virtual {v1, v2, v4, v6}, Lio/sentry/cache/PersistingScopeObserver;->h(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    instance-of v2, v1, Ljava/util/List;

    .line 671
    .line 672
    if-eqz v2, :cond_19

    .line 673
    .line 674
    check-cast v1, Ljava/util/List;

    .line 675
    .line 676
    move-object/from16 v20, v1

    .line 677
    .line 678
    goto :goto_12

    .line 679
    :cond_19
    move-object/from16 v20, p0

    .line 680
    .line 681
    :goto_12
    iget-object v6, v0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 682
    .line 683
    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->m:Lio/sentry/SentryOptions;

    .line 684
    .line 685
    if-eqz v7, :cond_1b

    .line 686
    .line 687
    iget-wide v8, v3, Lio/sentry/android/replay/LastSegmentData;->e:J

    .line 688
    .line 689
    iget-object v10, v3, Lio/sentry/android/replay/LastSegmentData;->c:Ljava/util/Date;

    .line 690
    .line 691
    iget v12, v3, Lio/sentry/android/replay/LastSegmentData;->d:I

    .line 692
    .line 693
    iget-object v1, v3, Lio/sentry/android/replay/LastSegmentData;->a:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 694
    .line 695
    iget v13, v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 696
    .line 697
    iget v14, v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 698
    .line 699
    iget v2, v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->e:I

    .line 700
    .line 701
    iget v1, v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;->f:I

    .line 702
    .line 703
    iget-object v4, v3, Lio/sentry/android/replay/LastSegmentData;->b:Lio/sentry/android/replay/ReplayCache;

    .line 704
    .line 705
    iget-object v15, v3, Lio/sentry/android/replay/LastSegmentData;->f:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 706
    .line 707
    move/from16 v18, v1

    .line 708
    .line 709
    iget-object v1, v3, Lio/sentry/android/replay/LastSegmentData;->g:Ljava/lang/String;

    .line 710
    .line 711
    move-object/from16 v19, v1

    .line 712
    .line 713
    new-instance v1, Ljava/util/LinkedList;

    .line 714
    .line 715
    iget-object v3, v3, Lio/sentry/android/replay/LastSegmentData;->h:Ljava/util/List;

    .line 716
    .line 717
    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 718
    .line 719
    .line 720
    move-object/from16 v21, v1

    .line 721
    .line 722
    move/from16 v17, v2

    .line 723
    .line 724
    move-object/from16 v16, v4

    .line 725
    .line 726
    invoke-static/range {v6 .. v21}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->a(Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    instance-of v2, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 731
    .line 732
    if-eqz v2, :cond_1a

    .line 733
    .line 734
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$PreviousReplayHint;

    .line 735
    .line 736
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 737
    .line 738
    .line 739
    invoke-static {v2}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 744
    .line 745
    iget-object v3, v0, Lio/sentry/android/replay/ReplayIntegration;->n:Lio/sentry/ScopesAdapter;

    .line 746
    .line 747
    if-eqz v3, :cond_1a

    .line 748
    .line 749
    iget-object v4, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a:Lio/sentry/SentryReplayEvent;

    .line 750
    .line 751
    iget-object v1, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->b:Lio/sentry/ReplayRecording;

    .line 752
    .line 753
    iput-object v1, v2, Lio/sentry/Hint;->g:Lio/sentry/ReplayRecording;

    .line 754
    .line 755
    invoke-virtual {v3, v4, v2}, Lio/sentry/ScopesAdapter;->r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 756
    .line 757
    .line 758
    :cond_1a
    invoke-virtual {v0, v5}, Lio/sentry/android/replay/ReplayIntegration;->R(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    goto :goto_15

    .line 762
    :cond_1b
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    throw p0

    .line 766
    :cond_1c
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw p0

    .line 770
    :goto_13
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 771
    :catchall_4
    move-exception v0

    .line 772
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 773
    .line 774
    .line 775
    throw v0

    .line 776
    :cond_1d
    move-object/from16 v28, v2

    .line 777
    .line 778
    const/16 p0, 0x0

    .line 779
    .line 780
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    throw p0

    .line 784
    :cond_1e
    move-object/from16 v28, v2

    .line 785
    .line 786
    const/16 p0, 0x0

    .line 787
    .line 788
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    throw p0

    .line 792
    :cond_1f
    :goto_14
    invoke-virtual {v0, v4}, Lio/sentry/android/replay/ReplayIntegration;->R(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    :goto_15
    return-void

    .line 796
    :cond_20
    move-object/from16 v28, v2

    .line 797
    .line 798
    const/16 p0, 0x0

    .line 799
    .line 800
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    throw p0

    .line 804
    nop

    .line 805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
